class Chef
  class Handler
    class OrchestrateIO < Chef::Handler
      def initialize(opts = {})
        raise "Required apikey!!" unless opts[:apikey]
        require 'orchestrate.io'
        @io = OrchestrateIo.new(api_key: opts[:apikey])
        @collection = opts[:collection]
        @key        = opts[:key]
      end

      def report
        run_data = data
        io_collection = @collection
        io_key        = @key || Time.now.strftime('%s')

        Chef::Log.info "sending report to collection #{io_collection} with key #{io_key}"

        rep = @io.key_value :put do
          collection io_collection
          key        io_key
          data       run_data.to_json
        end
        result =  rep.perform
        Chef::Log.info result.response
      end
    end
  end
end
