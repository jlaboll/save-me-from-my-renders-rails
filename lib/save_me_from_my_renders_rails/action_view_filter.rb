module SaveMeFromMyRendersRails
  module ActionViewFilter
    def render_template(event)
      super(event)
    end

    def render_partial(event)
      super(event)
    end

    def render_layout(event)
      super(event)
    end

    def render_collection(event)
      super(event)
    end
  end
end
