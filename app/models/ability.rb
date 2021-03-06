class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities

    alias_action :create, :read, :update, :destroy, :to => :crud


    case user.user_type_id
      when 1
        can :manage, :all
      when 2
        # USERS
        can :manage, Admin::User, department_id: user.department_id
        # DEPARTMENS
        can :update, Catalogs::Department, id: user.department_id

        # HEADQUARTES
        can :manage, Catalogs::Headquarter, department_id: user.department_id

        # DEPARTMEN CONFIGURATIONS
        can :manage, Admin::DeptConfig, department: {id: user.department_id}

        # MESSAGES
        can :manage, Agenda::ReservMsg, reservation: {department_id: user.department_id}

        # RESERVATIONS
        can :manage, Agenda::Reservation, department_id: user.department_id
        can :delegate, Agenda::Reservation, admin_user: {department_id: user.department_id }
      when 3
        can :delegate, Agenda::Reservation, admin_user: {department_id: user.department_id }
    end

  end
end
