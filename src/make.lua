package.path = package.path .. ';' .. arg[1] .. '\\src\\?.lua'
package.cpath = package.cpath .. ';' .. arg[1] .. '\\build\\?.dll'

require 'luabind'
require 'filesystem'
require 'utility'
require 'localization'

local w3x2txt  = require 'w3x2txt'
local stormlib = require 'stormlib'
local lni      = require 'lni'

local root_dir = fs.path(arg[1])
local lni_dir  = root_dir / 'lni'
local w3x_dir  = root_dir / 'w3x'
local meta_dir = root_dir / 'meta'

local function read_meta()
	w3x2txt:read_metadata(meta_dir / 'abilitybuffmetadata.slk')
	w3x2txt:read_metadata(meta_dir / 'abilitymetadata.slk')
	w3x2txt:read_metadata(meta_dir / 'destructablemetadata.slk')
	w3x2txt:read_metadata(meta_dir / 'doodadmetadata.slk')
	w3x2txt:read_metadata(meta_dir / 'miscmetadata.slk')
	w3x2txt:read_metadata(meta_dir / 'unitmetadata.slk')
	w3x2txt:read_metadata(meta_dir / 'upgradeeffectmetadata.slk')
	w3x2txt:read_metadata(meta_dir / 'upgrademetadata.slk')
end

local function init_lni()
	lni:set_marco('TableSearcher', 'lni\\')

	return setmetatable({}, { __index = function(self, name)
		local data = lni:packager(name, io.load)
		self[name] = data
		return data
	end})
end

local function main()
	local mode = arg[2]
	
	-- 创建目录
	fs.create_directory(lni_dir)
	fs.create_directory(w3x_dir)

	-- 读取meta表
	read_meta()
	
	if mode == "w3x2lni" then
		--读取字符串
		w3x2txt:read_wts(w3x_dir / 'war3map.wts')
		
		--转换二进制文件到txt
		w3x2txt:obj2lni(w3x_dir / 'war3map.w3u', lni_dir / 'war3map.w3u.ini', false)
		w3x2txt:obj2lni(w3x_dir / 'war3map.w3t', lni_dir / 'war3map.w3t.ini', false)
		w3x2txt:obj2lni(w3x_dir / 'war3map.w3b', lni_dir / 'war3map.w3b.ini', false)
		w3x2txt:obj2lni(w3x_dir / 'war3map.w3d', lni_dir / 'war3map.w3d.ini', true)
		w3x2txt:obj2lni(w3x_dir / 'war3map.w3a', lni_dir / 'war3map.w3a.ini', true)
		w3x2txt:obj2lni(w3x_dir / 'war3map.w3h', lni_dir / 'war3map.w3h.ini', false)
		w3x2txt:obj2lni(w3x_dir / 'war3map.w3q', lni_dir / 'war3map.w3q.ini', true)
		--w3x2txt:w3i2lni(w3x_dir / 'war3map.w3i', lni_dir / 'war3map.w3i.ini')

		--刷新字符串
		w3x2txt:fresh_wts(lni_dir / 'war3map.wts')
	end

	if mode == "lni2w3x" then
		-- 初始化lni
		local lni = init_lni()
	end
do return end
	if arg[2] then
		
	else

		--清空输入输出目录
		fs.remove_all(output_dir)
		fs.create_directories(output_dir)
		
		--转换txt到二进制文件
		w3x2txt.txt2obj(input_dir / 'war3map.w3u.txt', output_dir / 'war3map.w3u', false)
		w3x2txt.txt2obj(input_dir / 'war3map.w3t.txt', output_dir / 'war3map.w3t', false)
		w3x2txt.txt2obj(input_dir / 'war3map.w3b.txt', output_dir / 'war3map.w3b', false)
		w3x2txt.txt2obj(input_dir / 'war3map.w3d.txt', output_dir / 'war3map.w3d', true)
		w3x2txt.txt2obj(input_dir / 'war3map.w3a.txt', output_dir / 'war3map.w3a', true)
		w3x2txt.txt2obj(input_dir / 'war3map.w3h.txt', output_dir / 'war3map.w3h', false)
		w3x2txt.txt2obj(input_dir / 'war3map.w3q.txt', output_dir / 'war3map.w3q', true)

		w3x2txt.txt2w3i(input_dir / 'war3map.w3i.txt', output_dir / 'war3map.w3i')

	end
	
	print('[完毕]: 用时 ' .. os.clock() .. ' 秒') 
end

main()
