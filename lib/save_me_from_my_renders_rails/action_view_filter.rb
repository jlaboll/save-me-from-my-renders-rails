module SaveMeFromMyRendersRails
  module ActionViewFilter
    # def render_template(event)
    #   info do
    #     message = +"  Rendered #{from_rails_root(event.payload[:identifier])}"
    #     message << " within #{from_rails_root(event.payload[:layout])}" if event.payload[:layout]
    #     message << " (Duration: #{event.duration.round(1)}ms | Allocations: #{event.allocations})"
    #   end
    # end

    def render_partial(event)
      unless event.payload[:identifier].include? "apipies"
        super(event)
      end
    end

    # def render_layout(event)
    #   info do
    #     message = +"  Rendered layout #{from_rails_root(event.payload[:identifier])}"
    #     message << " (Duration: #{event.duration.round(1)}ms | Allocations: #{event.allocations})"
    #   end
    # end
    #
    # def render_collection(event)
    #   identifier = event.payload[:identifier] || "templates"
    #
    #   debug do
    #     message = +"  Rendered collection of #{from_rails_root(identifier)}"
    #     message << " within #{from_rails_root(event.payload[:layout])}" if event.payload[:layout]
    #     message << " #{render_count(event.payload)} (Duration: #{event.duration.round(1)}ms | Allocations: #{event.allocations})"
    #     message
    #   end
    # end
  end
end
