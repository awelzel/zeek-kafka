# 
#  Copyright 2020-2021 Zeek-Kafka
#  Copyright 2015-2020 The Apache Software Foundation
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

# @TEST-EXEC: zeek ../../../scripts/Seiso/Kafka/ %INPUT > output
# @TEST-EXEC: btest-diff output

module Kafka;

redef logs_to_send = set(HTTP::LOG, DHCP::LOG);
redef logs_to_exclude = set(Conn::LOG, DNS::LOG);

print send_to_kafka(HTTP::LOG);
print send_to_kafka(DHCP::LOG);
print send_to_kafka(Conn::LOG);
print send_to_kafka(DNS::LOG);