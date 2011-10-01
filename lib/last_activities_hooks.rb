class LastActivitiesHooks < Redmine::Hook::ViewListener
  
    def view_welcome_index_left(context = {})
      events = []
      Project.all.each do |project|
        activity = Redmine::Activity::Fetcher.new(User.current, :project => project,
                                                                :with_subprojects => Setting.display_subprojects_issues?)
        activity.default_scope!
        events += activity.events(nil, nil, :limit => 10)
      end
      context[:controller].render_to_string("/last_activities/home_box", :locals => { :events_by_day => events.group_by(&:event_date) }, :layout => false)
    end

end
