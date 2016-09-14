module MongoidMonkeypatching

  module Criteria
    def scoped_first
      in_order_to_order_mongo_monger
    end

    def first
      scoped_first.context.first
    end

    def scoped_last
      in_order_to_order_mongo_monger
    end

    def last
      scoped_last.context.last
    end

    protected
    def in_order_to_order_mongo_monger
      (self.scoped.options[:sort].nil?) ? self.asc(:id) : self
    end
  end

end
