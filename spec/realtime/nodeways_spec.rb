require 'spec_helper'

require_relative '../../import_scripts/osm_api/import_nodeways'

describe NodeWaysImport do
	before :all do
    @osm    = EpicOSM.new(analysis_window: 'spec/realtime/realtime_test.yml')
    @import = NodeWaysImport.new
    @changeset_ids = 	["17980745","17980796","17980916","17980976","18286882","18000594","18004497","18222475","18017166","18049840","18069041","18069076","18119666","18401719","18218238","18080545","18082008","18084215","18224219","18085618","18085804","18098485","18119657","18120819","18119817","18120833","18120909","18120981","18121056","18121130","18121155","18135890","18137250","18188929","18204917","18222454","18222489","18254403","18460573","18322070","18273546","18274067","18274107","18274143","18274235","18275639","18276368","18282177","18282620","18286621","18287000","18287045","18287267","18287514","18289838","18292759","18293380","18293482","18293505","18299800","18307414","18307884","18316524","18339603","18351187","18351563","18378212","18378245","18379083","18394920","18395062","18395108","18395530","18396391","18398951","18401749","18399107","18401686","18404455","18404728","18412311","18412374","18426111","18426174","18426199","18426489","18426602","18426839","18443526","18470547","18427472","18427479","18427521","18427554","18427655","18485089","18485399","18489340","18512901","18512930","18512944","18595603","18624164","18624216","18635641","18644381"]
	end

	xit "Can import the nodes for one changeset" do
		@import.import_nodeways_objects(changeset_ids: [@changeset_ids.first])
	end

	it "Can read from changesets collection properly" do
		@import.import_nodeways_objects
	end
end
