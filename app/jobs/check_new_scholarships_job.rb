class CheckNewScholarshipsJob < ApplicationJob
  queue_as :default

  def perform(scholarship_id)
    # Do something later
    puts "checking if new scholarship corresponds to alerts"
    @scholarship = Scholarship.find(scholarship_id)
    @alerts = Alert.where("(area_id = #{@scholarship.area_id} and institution_id = #{@scholarship.institution_id}) or (area_id = #{@scholarship.area_id} and institution_id is null) or (area_id is null and institution_id = #{@scholarship.institution_id})")
    unless @alerts.empty?
      puts "alert match!"
      @alerts.each do |alert|
        puts "creating new notification for alert #{alert.id}"
        @notification = Notification.new
        @notification.alert = alert
        @notification.status = "unread"
        @notification.save
        puts "new notification created!"
      end
    end
    puts "ending alert check"
  end

  private

  def create_alert
    puts "creating new notification for alert #{alert.id}"
    @notification = Notification.new
    @notification.alert = alert
    @notification.status = "unread"
    @notification.save
    puts "new notification created!"
  end
end
