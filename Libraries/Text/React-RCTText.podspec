# coding: utf-8
# Copyright (c) Facebook, Inc. and its affiliates.
#
# This source code is licensed under the MIT license found in the
# LICENSE file in the root directory of this source tree.

require "json"

version = "0.61.5"

source = { :git => 'https://github.com/czb365/React-RCTText.git' }
if version == '1000.0.0'
  # This is an unpublished version, use the latest commit hash of the react-native repo, which we’re presumably in.
  source[:commit] = `git rev-parse HEAD`.strip
else
  source[:tag] = "v#{version}"
end

Pod::Spec.new do |s|
  s.name                   = "React-RCTText"
  s.version                = version
  s.summary                = "A React component for displaying text." 
  s.homepage               = "http://facebook.github.io/react-native/"
  s.documentation_url      = "https://facebook.github.io/react-native/docs/text"
  s.license                = "MIT"
  s.author                 = "Facebook, Inc. and its affiliates"
  s.platforms              = { :ios => "9.0", :tvos => "9.2" }
  s.source                 = source
  s.source_files           = "**/*.{h,m}"
  s.preserve_paths         = "package.json", "LICENSE", "LICENSE-docs"
  s.header_dir             = "RCTText"

  s.dependency "React-Core/RCTTextHeaders", version
end