# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
	config.vm.box = "phusion/ubuntu-14.04-amd64"
	
	config.vm.provision "docker" do |d|
		d.pull_images "phusion/baseimage"
		d.build_image "/vagrant", args: "-t sbt-node"
	end
end
