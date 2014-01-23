chef_handler_orchestrate_io Cookbook
====================================

Send Chef reprot or exception report to [Orchestrate.io](http://orchestrate.io/)

Requirements
------------



Attributes
----------


## chef_handler_orchestrate_io::default

- node[:chef_handler_orchestrate_io][:apikey]
  - Orchestrate.io application apikey. (You can find at dashboard.)
  - requires
  - default: nil
- node[:chef_handler_orchestrate_io][:collection]
  - Collection name of application.
  - default: 'chef_reports'
- node[:chef_handler_orchestrate_io][:enable_report]
  - Add this handler to Chef::Config[:report_handlers]
  - default: true
- node[:chef_handler_orchestrate_io][:enable_exception]
  - Add this handler to Chef::Config[:exception_handlers]
  - default: true

Usage
-----

#### chef_handler_orchestrate_io::default

Just include `chef_handler_orchestrate_io` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef_handler_orchestrate_io]"
  ]
}
```

Test
----

- kitchen test


Example
----

Smaple Key/Value Response from Orchestrate.io.

```
HTTP/1.1 200 OK
Content-Encoding: gzip
Content-Location: /v0/chef_reports/1390453185/refs/3aab571c9bd5bf53
Content-Type: application/json
Date: Thu, 23 Jan 2014 05:13:52 GMT
Etag: "3aab571c9bd5bf53-gzip"
Server: nginx
Vary: Accept-Encoding, User-Agent
X-ORCHESTRATE-REQ-ID: 262f03b0-83ed-11e3-b891-12313d2f9238
Transfer-Encoding: chunked
Connection: keep-alive

{
    "node": {
        "name": "default-ubuntu-1204",
        "chef_environment": "_default",
        "json_class": "Chef::Node",
        "automatic": {
            "languages": {
                "ruby": {
                    "platform": "x86_64-linux",
                    "version": "1.9.3",
                    "release_date": "2013-11-22",
                    "target": "x86_64-unknown-linux-gnu",
                    "target_cpu": "x86_64",
                    "target_vendor": "unknown",
                    "target_os": "linux",
                    "host": "x86_64-unknown-linux-gnu",
                    "host_cpu": "x86_64",
                    "host_os": "linux-gnu",
                    "host_vendor": "unknown",
                    "bin_dir": "/opt/chef/embedded/bin",
                    "ruby_bin": "/opt/chef/embedded/bin/ruby",
                    "gems_dir": "/opt/chef/embedded/lib/ruby/gems/1.9.1",
                    "gem_bin": "/opt/chef/embedded/bin/gem"
                },
-- snip --
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Author: Yukihiko Sawanobori(<sawanoboriyu@higanworks.com>)

License: Apache2