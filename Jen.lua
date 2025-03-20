LOVELY_INTEGRITY = '5b5e6bd4ded3b36dd87ac7859f5e246dcc55fb9e86f512757f79a32536a1770e'

--Brought to you by the same person who made the quote "The Dark Ages of smods"

maxArrow = 2.5e4

Incantation.DelayStacking = Incantation.DelayStacking + 10

local maxfloat = 1.7976931348623157e308

local function checkerboard_text(txt)
	local str = ''
	local chars = jl.string_to_table(txt)
	local osc = false
	for i = 1, #chars do
		osc = not osc
		str = str .. '{X:' .. (osc and 'black' or 'inactive') .. ',C:' .. (osc and 'white' or 'black') .. '}' .. chars[i]
		if i == #chars then
			str = str .. '{}'
		end
	end
	return str
end

cry_misprintize = Cryptid.misprintize

local function suit_to_uno(suit)
	suit = string.lower(suit)
	return suit == 'hearts' and 'red' or suit == 'spades' and 'blue' or suit == 'clubs' and 'green' or suit == 'diamonds' and 'yellow' or 'n/a'
end

local edited_default_colours = false
-- from cryptid.lua
SMODS.current_mod.optional_features = {
	retrigger_joker = true,
	post_trigger = true,
	cardareas = {
		unscored = true,
		deck = true,
	},
	-- Here are some other ones Steamodded has
	-- Cryptid doesn't use them YET, but these should be uncommented if Cryptid uses them
	--[[
	quantum_enhancements = true,
	-- These ones add new card areas that Steamodded will calculate through
	-- Might already be useful for sticker calc
	cardareas = {
		discard = true,
	}
	]]
}

--COMMON STRINGS
local mayoverflow = '{C:inactive,s:0.65}(Does not require room, but may overflow)'
local redeemprev = '{s:0.75}Also redeems {C:attention,s:0.75}previous tier for free{s:0.75} if not yet acquired'

--INITIAL STUFF

SMODS.Atlas {
	key = "modicon",
	path = "almanac_avatar.png",
	px = 34,
	py = 34
}

Jen = {
	fusions = {
		['Mutate Leshy'] = {
			cost = 50,
			output = 'j_jen_pawn',
			ingredients = {
				'j_jen_leshy',
				'j_jen_godsmarble'
			}
		},
		['Mutate Heket'] = {
			cost = 50,
			output = 'j_jen_knight',
			ingredients = {
				'j_jen_heket',
				'j_jen_godsmarble'
			}
		},
		['Mutate Kallamar'] = {
			cost = 50,
			output = 'j_jen_jester',
			ingredients = {
				'j_jen_kallamar',
				'j_jen_godsmarble'
			}
		},
		['Mutate Shamura'] = {
			cost = 50,
			output = 'j_jen_arachnid',
			ingredients = {
				'j_jen_shamura',
				'j_jen_godsmarble'
			}
		},
		['Mutate Lambert'] = {
			cost = 50,
			output = 'j_jen_reign',
			ingredients = {
				'j_jen_lambert',
				'j_jen_godsmarble'
			}
		},
		['Mutate Narinder'] = {
			cost = 50,
			output = 'j_jen_feline',
			ingredients = {
				'j_jen_narinder',
				'j_jen_godsmarble'
			}
		},
		['A M A L G A M A T E'] = {
			cost = 1e100,
			output = 'j_jen_amalgam',
			ingredients = {
				'j_jen_pawn',
				'j_jen_knight',
				'j_jen_jester',
				'j_jen_arachnid',
				'j_jen_reign',
				'j_jen_feline',
				'j_jen_sigil'
			}
		},
		['Mutate Clauneck'] = {
			cost = 50,
			output = 'j_jen_fateeater',
			ingredients = {
				'j_jen_clauneck',
				'j_jen_godsmarble'
			}
		},
		['Mutate Kudaai'] = {
			cost = 50,
			output = 'j_jen_foundry',
			ingredients = {
				'j_jen_kudaai',
				'j_jen_godsmarble'
			}
		},
		['Mutate Chemach'] = {
			cost = 50,
			output = 'j_jen_broken',
			ingredients = {
				'j_jen_chemach',
				'j_jen_godsmarble'
			}
		},
		['Mutate Aster Flynn'] = {
			cost = 5e3,
			output = 'j_jen_astrophage',
			ingredients = {
				'j_jen_aster',
				'j_jen_godsmarble'
			}
		},
		['Empower Landa Veris'] = {
			cost = 1e4,
			output = 'j_jen_bulwark',
			ingredients = {
				'j_jen_landa',
				'j_jen_godsmarble'
			}
		},
		['Corrupt Crimbo'] = {
			cost = 250,
			output = 'j_jen_faceless',
			ingredients = {
				'j_jen_crimbo',
				'j_jen_godsmarble'
			}
		},
		['Corrupt Alice'] = {
			cost = 5e3	,
			output = 'j_jen_nexus',
			ingredients = {
				'j_jen_alice',
				'j_jen_godsmarble'
			}
		},
		['Corrupt Nyx'] = {
			cost = 1e3,
			output = 'j_jen_paragon',
			ingredients = {
				'j_jen_nyx',
				'j_jen_godsmarble'
			}
		},
		['Possess Oxy'] = {
			cost = 3e3,
			output = 'j_jen_inhabited',
			ingredients = {
				'j_jen_oxy',
				'j_jen_godsmarble'
			}
		},
		['Petrify Honey'] = {
			cost = 50,
			output = 'j_jen_cracked',
			ingredients = {
				'j_jen_honey',
				'j_jen_godsmarble'
			}
		},
		['Immolate Maxie'] = {
			cost = 2e3,
			output = 'j_jen_charred',
			ingredients = {
				'j_jen_maxie',
				'j_jen_godsmarble'
			}
		},
		['Empower Jen'] = {
			cost = 1e4,
			output = 'j_jen_wondergeist',
			ingredients = {
				'j_jen_jen',
				'j_jen_godsmarble'
			}
		},
		['Empower Jen (2nd Pass)'] = {
			cost = 1e6,
			output = 'j_jen_wondergeist2',
			ingredients = {
				'j_jen_wondergeist',
				'j_jen_godsmarble'
			}
		},
		['???'] = {
			cost = 1e100,
			output = 'c_jen_soul_omega',
			ingredients = {
				'c_soul',
				'c_black_hole',
				'c_jen_black_hole_omega',
				'c_cry_white_hole',
				'j_jen_godsmarble'
			}
		}
	},
	overpowered_rarities = {
		'jen_wondrous',
		'jen_extraordinary',
		'jen_ritualistic',
		'jen_transcendent',
		'jen_omegatranscendent',
		'jen_omnipotent',
		'jen_miscellaneous',
		'jen_junk'
	},
	locale_colours = {
		pink = 'FFAAD9',
		fuchsia = 'FF00B0',
		caramel = 'FFC14F',
		pastel_yellow = 'FFFC75',
		stone = '7A8087',
		darkstone = '53575B',
		lore = '9E2A9F',
		caption = '009A9A',
		uno = 'FF0000',
		almanac = '0000FF',
		blood = '880808'
	},
	config = {
		texture_pack = 'default',
		show_credits = true,
		show_captions = true,
		show_lore = true,
		astro = {
			initial = 0.70,
			increment = 0.002,
			decrement = 0.04,
			retrigger_mod = 2
		},
		suit_leveling = {
			Hearts = {
				chips = 1,
				mult = 5
			},
			Clubs = {
				chips = 5,
				mult = 1
			},
			Diamonds = {
				chips = 2,
				mult = 4
			},
			Spades = {
				chips = 4,
				mult = 2
			}
		},
		rank_leveling = {
			['2'] = {
				chips = 13,
				mult = 1
			},
			['3'] = {
				chips = 12,
				mult = 1
			},
			['4'] = {
				chips = 11,
				mult = 1
			},
			['5'] = {
				chips = 10,
				mult = 2
			},
			['6'] = {
				chips = 9,
				mult = 2
			},
			['7'] = {
				chips = 8,
				mult = 2
			},
			['8'] = {
				chips = 7,
				mult = 3
			},
			['9'] = {
				chips = 6,
				mult = 3
			},
			['10'] = {
				chips = 5,
				mult = 3
			},
			Jack = {
				chips = 4,
				mult = 4
			},
			Queen = {
				chips = 3,
				mult = 5
			},
			King = {
				chips = 2,
				mult = 6
			},
			Ace = {
				chips = 25,
				mult = 7
			},
		},
		save_compression_level = 9,
		punish_reroll_abuse = true,
		shop_size_buff = 3,
		shop_voucher_count_buff = 2,
		shop_booster_pack_count_buff = 2,
		consumable_slot_count_buff = 18,
		chess_cards = true,
		verbose_astronomicon = false,
		verbose_astronomicon_omega = false,
		mana_cost = 25,
		HQ_vanillashaders = true,
		malice_base = 3000,
		malice_increase = 1.13,
		omega_chance = 300,
		soul_omega_mod = 5,
		wee_sizemod = 1.5,
		safer_kosmos = false,
		kosmos_safety_threshold = 100,
		ante_threshold = 20,
		ante_pow10 = 100,
		ante_pow10_2 = 250,
		ante_pow10_3 = 500,
		ante_pow10_4 = 1000,
		ante_exponentiate = 50,
		ante_tetrate = 2500,
		ante_pentate = 5000,
		ante_polytate = 10000,
		polytate_factor = 1000,
		polytate_decrement = 1,
		scalar_base = 1,
		scalar_increment = .13,
		scalar_additivedivisor = 50,
		scalar_exponent = 1,
		straddle = {
			enabled = true,
			acceleration = true,
			skip_animation = false,
			backwards_mod = 2,
			progress_min = 3,
			progress_max = 7,
			progress_increment = 10
		},
		blind_scalar = {
		},
		--[[
			Some cards/items while Almanac is installed are banned for at least one reason.
			These reasons could be, but are not necessarily limited to:
			- It's unreasonably exploitable (ex. Copy/Paste or Colorem creating infinite Code/Colour cards)
			- It's buggy/crashy
			- It doesn't fit with the context of Almanac
			- It's rendered too obsolete by Almanac's content
			- There is another card/item in Almanac which replaces it or does effectively the same thing

			Almanac still sticks with being intentionally unbalanced to oblivion. The bans are not done as an act to balance the mod; it's done as an act to give the recommended experience.
			
			If hardbanning an item (deleting it from the game on startup) causes crashes
			(apart from trying to continue a saved run that had the card),
			you can softban it (keep it on startup, but ban it from showing up in runs ASAP)
			by appending an exclamation mark (!) to the start of the codename.
			
			Almanac is best experienced with the banlist unmodified, but everyone is entitled to experience a mod how they want to experience it.
			If there's an item on here you'd prefer unbanned, comment it out by appending two hyphens (-) to the line (I recommend doing it that way) or deleting the line (not recommended).
			If you want to remove all bans; it's better to change the boolean below this text ("disable_bans") to true.
		]]
		disable_bans = false,
		bans = {
			--'example_of_commented_out_ban',
			'!j_cry_chocolate_dice',
			'!j_cry_curse_sob',
			'!j_cry_filler',
			'j_mf_colorem',
			'betm_jokers_j_balatro_mobile',
			'betm_jokers_j_gameplay_update',
			'betm_jokers_j_friends_of_jimbo',
			'c_ortalab_lot_hand',
			'j_cry_formidiulosus',
			'j_cry_oil_lamp', --I don't want it, keep it my friend
			'j_cry_tropical_smoothie',
			'!j_cry_jawbreaker',
			'j_cry_necromancer',
			'j_cry_mask',
			'j_cry_exposed',
			'j_cry_equilib',
			'j_cry_error',
			'j_cry_ghost',
			'j_cry_spy',
			'j_cry_copypaste',
			'j_cry_flip_side',
			'j_cry_crustulum', --crusty shit
			'j_sdm_legionary_joker',
			'j_sdm_cupidon',
			'j_sdm_0',
			'p_mupack_favoritepack',
			'e_cry_double_sided',
			'c_cry_meld',
			'c_cry_crash',
			'c_cry_rework',
			'c_cry_multiply',
			'c_cry_ctrl_v',
			'c_cry_ritual',
			'c_cry_adversary',
			'c_cry_chambered',
			'v_cry_double_down',
			'v_cry_double_slit',
			'v_cry_double_vision',
			'v_cry_curate',
			'e_tentacle',
			'e_phantom',
			'e_cry_fragile',
			'bl_cruel_daring',
			'bl_cruel_reach',
			'bl_cry_obsidian_orb',
			'v_betm_vouchers_art_gallery',
			'v_betm_vouchers_undying',
			'v_betm_vouchers_reincarnate',
			'v_betm_vouchers_solar_system',
			'v_betm_vouchers_bonus_plus',
			'v_betm_vouchers_mult_plus',
			'v_betm_vouchers_b1g50',
			'v_betm_vouchers_b1g1',
			'v_betm_vouchers_b1ginf',
			'v_betm_vouchers_target',
			'v_betm_vouchers_bullseye',
			'v_betm_vouchers_overkill',
			'v_betm_vouchers_big_blast',
			'v_betm_vouchers_stow',
			'v_betm_vouchers_stash',
			'v_betm_vouchers_round_up',
			'v_betm_vouchers_round_up_plus',
			'v_betm_vouchers_chaos',
			'v_betm_vouchers_cryptozoology',
			'v_betm_vouchers_gravity_assist',
			'v_betm_vouchers_gravitational_wave',
			'v_betm_vouchers_eternity',
			'v_betm_vouchers_half_life',
			'v_betm_vouchers_heat_death',
			'v_betm_vouchers_bobby_pin',
			'v_betm_vouchers_3d_boosters',
			'v_betm_vouchers_4d_boosters',
			'v_betm_vouchers_4d_vouchers',
			'v_betm_vouchers_prologue',
			'v_betm_vouchers_epilogue',
			'v_betm_vouchers_laminator',
			'v_betm_vouchers_eliminator',
			'v_betm_vouchers_gilded_glider',
			'v_betm_vouchers_mirror',
			'v_betm_vouchers_engulfer',
			'v_betm_vouchers_event_horizon',
			'v_betm_vouchers_darkness',
			'v_betm_vouchers_real_random',
			'v_betm_vouchers_forbidden_area'
		}
	}
}

local function faceart(artist)
	return (Jen.config.texture_pack == 'default' and Jen.config.show_credits) and ('{C:dark_edition,s:0.7,E:2}Floating sprite by : ' .. artist) or ''
end

local function origin(world)
	return (Jen.config.texture_pack == 'default' and Jen.config.show_credits) and ('{C:cry_exotic,s:0.7,E:2}Origin : ' .. world)
end

local function au(world)
	return (Jen.config.texture_pack == 'default' and Jen.config.show_credits) and ('{C:cry_blossom,s:0.7,E:2}A.U. : ' .. world)
end

local function spriter(artist)
	return (Jen.config.texture_pack == 'default' and Jen.config.show_credits) and ('{C:dark_edition,s:0.7,E:2}Sprite by : ' .. artist)
end

local function caption(cap)
	return Jen.config.show_captions and ('{C:caption,s:0.7,E:1}' .. cap) or ''
end

local function lore(txt)
	return Jen.config.show_lore and ('{C:lore,s:0.7,E:2}' .. txt) or ''
end

function Jen:delete_hardbans()
	if not Jen.config.disable_bans then
		for k, v in ipairs(Jen.config.bans) do
			if string.sub(v, 1, 1) ~= '!' then
				if G.P_CENTERS[v] then
					SMODS.Center:get_obj(v):delete()
				elseif G.P_BLINDS[v] then
					G.P_BLINDS[v] = nil
				end
			end
		end
	end
end

if Jen.config.HQ_vanillashaders then
    local background_shader = NFS.read(SMODS.current_mod.path..'assets/shaders/background.fs')
    local splash_shader = NFS.read(SMODS.current_mod.path..'assets/shaders/splash.fs')
    local flame_shader = NFS.read(SMODS.current_mod.path..'assets/shaders/flame.fs')
    G.SHADERS['background'] = love.graphics.newShader(background_shader)
    G.SHADERS['splash'] = love.graphics.newShader(splash_shader)
    G.SHADERS['flame'] = love.graphics.newShader(flame_shader)
end

local jen_modifierbadges = {
	unique = {
		text = {
			'Unique',
			'Can only own one copy'
		},
		col = HEX('8f00ff'),
		tcol = G.C.EDITION
	},
	fusable = {
		text = {
			'Fusable',
			'Can be combined'
		},
		col = G.C.GREEN,
		tcol = G.C.EDITION
	},
	immutable = {
		text = {
			'Immutable',
			'Unmodifiable values'
		},
		col = G.C.MONEY,
		tcol = G.C.CRY_TWILIGHT
	},
	dangerous = {
		text = {
			'Dangerous',
			'Unstable behaviour'
		},
		col = HEX('1a1a1a'),
		tcol = HEX('ff0000')
	},
	longful = {
		text = {
			'Longful',
			'Lengthy animations'
		},
		col = G.C.WHITE,
		tcol = G.C.JOKER_GREY
	},
	experimental = {
		text = {
			'Experimental',
			'May be very buggy'
		},
		col = G.C.FILTER,
		tcol = G.C.UI.TEXT_LIGHT
	},
	debuff_immune = {
		text = {
			'Impervious',
			'Cannot be debuffed'
		},
		col = G.C.JOKER_GREY,
		tcol = G.C.FILTER
	},
	permaeternal = {
		text = {
			'Permaeternal',
			'Has Eternal 24/7'
		},
		col = G.C.RED,
		tcol = G.C.UI.TEXT_LIGHT
	},
	dissolve_immune = {
		text = {
			'Indestructible',
			'Cannot dissolve'
		},
		col = G.C.CRY_AZURE,
		tcol = G.C.CRY_BLOSSOM
	},
	unhighlightable = {
		text = {
			'Unplayable/Unhighlightable',
			'Cannot select'
		},
		col = G.C.SECONDARY_SET.Tarot,
		tcol = G.C.SECONDARY_SET.Planet
	}
}

local evalcard_ref = eval_card
function eval_card(card, context)
	if card.playing_card and jl.sc(context) then
		if card.edition and card.edition.jen_wee then
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = localize('k_upgrade_ex'), colour = G.C.FILTER})
			card.ability.wee_upgrades = (card.ability.wee_upgrades or 0) + (G.GAME.weeck and 3 or 1)
			card.ability.perma_bonus = (card.ability.perma_bonus or 0) + ((((card.ability.name or '') == 'Stone Card' or card.config.center.no_rank) and 25 or card:get_id() == 2 and 60 or (card:get_id() * 3)) * (G.GAME.weeck and 3 or 1))
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = number_format(card.ability.perma_bonus), colour = G.C.CHIPS})
		end
		if card.gc and card:gc().set == 'Colour' and Jen.hv('colour', 1) then
			trigger_colour_end_of_round(card)
		end
	end
	return evalcard_ref(card, context)
end

local function calculate_scalefactor(text)
	local size = 0.9
	local font = G.LANG.font
	local max_text_width = 2 - 2 * 0.05 - 4 * 0.03 * size - 2 * 0.03
	local calced_text_width = 0
	for _, c in utf8.chars(text) do
		local tx = font.FONT:getWidth(c) * (0.33 * size) * G.TILESCALE * font.FONTSCALE + 2.7 * 1 * G.TILESCALE * font.FONTSCALE
		calced_text_width = calced_text_width + tx / (G.TILESIZE * G.TILESCALE)
	end
	local scale_fac = calced_text_width > max_text_width and max_text_width / calced_text_width or 1
	return scale_fac
end

--borrowed from older version of cryptid
local smcmb = SMODS.create_mod_badges
function SMODS.create_mod_badges(obj, badges)
	smcmb(obj, badges)
	if obj and obj.misc_badge then
		local scale_fac = {}
		local scale_fac_len = 1
		if obj.misc_badge and obj.misc_badge.text then
			for i = 1, #obj.misc_badge.text do
				local calced_scale = calculate_scalefactor(obj.misc_badge.text[i])
				scale_fac[i] = calced_scale
				scale_fac_len = math.min(scale_fac_len, calced_scale)
			end
		end
		local ct = {}
		for i = 1, #obj.misc_badge.text do
			ct[i] = {
				string = obj.misc_badge.text[i]
			}
		end
		badges[#badges + 1] = {
			n = G.UIT.R,
			config = { align = "cm" },
			nodes = {
				{
					n = G.UIT.R,
					config = {
						align = "cm",
						colour = obj.misc_badge and obj.misc_badge.colour or G.C.RED,
						r = 0.1,
						minw = 2/scale_fac_len,
						minh = 0.36,
						emboss = 0.05,
						padding = 0.03 * 0.9,
					},
					nodes = {
						{ n = G.UIT.B, config = { h = 0.1, w = 0.03 } },
						{
							n = G.UIT.O,
							config = {
								object = DynaText({
									string = ct or "ERROR",
									colours = { obj.misc_badge and obj.misc_badge.text_colour or G.C.WHITE },
									silent = true,
									float = true,
									shadow = true,
									offset_y = -0.03,
									spacing = 1,
									scale = 0.33 * 0.9,
								}),
							},
						},
						{ n = G.UIT.B, config = { h = 0.1, w = 0.03 } },
					},
				},
			},
		}
	end
	if obj then
		for k, v in pairs(jen_modifierbadges) do
			if obj[k] then
				local scale_fac = {}
				local scale_fac_len = 1
				if v.text then
					for i = 1, #v.text do
						local calced_scale = calculate_scalefactor(v.text[i])
						scale_fac[i] = calced_scale
						scale_fac_len = math.min(scale_fac_len, calced_scale)
					end
				end
				local ct = {}
				for i = 1, #v.text do
					ct[i] = {
						string = v.text[i]
					}
				end
				badges[#badges + 1] = {
					n = G.UIT.R,
					config = { align = "cm" },
					nodes = {
						{
							n = G.UIT.R,
							config = {
								align = "cm",
								colour = v and v.col or G.C.RED,
								r = 0.1,
								minw = 2/scale_fac_len,
								minh = 0.36,
								emboss = 0.05,
								padding = 0.03 * 0.9,
							},
							nodes = {
								{ n = G.UIT.B, config = { h = 0.1, w = 0.03 } },
								{
									n = G.UIT.O,
									config = {
										object = DynaText({
											string = ct or "ERROR",
											colours = { v and v.tcol or G.C.WHITE },
											silent = true,
											float = true,
											shadow = true,
											offset_y = -0.03,
											spacing = 1,
											scale = 0.33 * 0.9,
										}),
									},
								},
								{ n = G.UIT.B, config = { h = 0.1, w = 0.03 } },
							},
						},
					},
				}
			end
		end
	end
end

--https://gist.github.com/efrederickson/4080372
local map = { 
    I = 1,
    V = 5,
    X = 10,
    L = 50,
    C = 100, 
    D = 500, 
    M = 1000,
}
local numbers_roman = { 1, 5, 10, 50, 100, 500, 1000 }
local chars_roman = { "I", "V", "X", "L", "C", "D", "M" }
function roman(s)
    s = tonumber(s)
    if not s or s ~= s then error"Unable to convert to number" end
    if s == math.huge then error"Unable to convert infinity" end
    s = math.floor(s)
    if s <= 0 then return s end
	local ret = ""
        for i = #numbers_roman, 1, -1 do
        local num = numbers_roman[i]
        while s - num >= 0 and s > 0 do
            ret = ret .. chars_roman[i]
            s = s - num
        end
        --for j = i - 1, 1, -1 do
        for j = 1, i - 1 do
            local n2 = numbers_roman[j]
            if s - (num - n2) >= 0 and s < num and s > 0 and num - n2 ~= n2 then
                ret = ret .. chars_roman[j] .. chars_roman[i]
                s = s - (num - n2)
                break
            end
        end
    end
    return ret
end
function unroman(s)
    s = s:upper()
    local ret = 0
    local i = 1
    while i <= s:len() do
        local c = s:sub(i, i)
        if c ~= " " then
            local m = map[c] or error("Unknown Roman Numeral '" .. c .. "'")
            
            local next = s:sub(i + 1, i + 1)
            local nextm = map[next]
            
            if next and nextm then
                if nextm > m then 
                    ret = ret + (nextm - m)
                    i = i + 1
                else
                    ret = ret + m
                end
            else
                ret = ret + m
            end
        end
        i = i + 1
    end
    return ret
end

function start_straddle()
	if Jen.config.straddle.enabled then
		G.GAME.straddle_active = true
		G.GAME.straddle = G.GAME.straddle or 0
		G.GAME.straddle_progress = G.GAME.straddle_progress or 0
	end
end

local win_game_ref = win_game
function win_game()
	start_straddle()
	win_game_ref()
end

SMODS.Rarity {
	key = 'junk',
	loc_txt = {
		name = 'Junk'
	},
	badge_colour = G.C.JOKER_GREY
}

SMODS.Rarity {
	key = 'wondrous',
	loc_txt = {
		name = 'Wondrous'
	},
	badge_colour = G.C.CRY_EMBER
}

SMODS.Rarity {
	key = 'extraordinary',
	loc_txt = {
		name = 'Extraordinary'
	},
	badge_colour = G.C.CRY_AZURE
}

SMODS.Rarity {
	key = 'ritualistic',
	loc_txt = {
		name = 'Ritualistic'
	},
	badge_colour = G.C.BLACK
}

SMODS.Rarity {
	key = 'transcendent',
	loc_txt = {
		name = 'Transcendent'
	},
	badge_colour = G.C.jen_RGB
}

SMODS.Rarity {
	key = 'omegatranscendent',
	loc_txt = {
		name = 'Omegatranscendent'
	},
	badge_colour = G.C.CRY_ASCENDANT
}

SMODS.Rarity {
	key = 'omnipotent',
	loc_txt = {
		name = 'Omnipotent'
	},
	badge_colour = G.C.CRY_BLOSSOM
}

SMODS.Rarity {
	key = 'miscellaneous',
	loc_txt = {
		name = 'Miscellaneous'
	},
	badge_colour = G.C.JOKER_GREY
}

function Jen.hiddencard(card)
	if type(card) ~= 'table' then return false end
	if not G.GAME then return false end
	return (((card.name or '') == 'Black Hole' or (card.name or '') == 'The Soul' or card.hidden) and not G.GAME.obsidian) or card.hidden2
end

function Jen.overpowered(rarity)
	if type(rarity) == 'number' then return false end
	return jl.bf(rarity, Jen.overpowered_rarities)
end

function Card:speak(text, col)
	if type(text) == 'table' then text = text[math.random(#text)] end
	card_eval_status_text(self, 'extra', nil, nil, nil, {message = text, colour = col or G.C.FILTER})
end

local random_editions = {
	'foil',
	'holo',
	'polychrome',
	'jen_chromatic',
	'jen_polygloss',
	'jen_gilded',
	'jen_sequin',
	'jen_laminated',
	'jen_ink',
	'jen_prismatic',
	'jen_watered',
	'jen_sepia',
	'jen_reversed',
	'jen_diplopia',
	'cry_gold',
	'cry_mosaic',
	'cry_oversat',
	'cry_astral',
	'cry_blur'
}

local card_draw_ref = Card.draw
function Card:draw(layer)
	local CEN = self.gc and self:gc()
	if CEN then
		if (self.facing or '') == 'front' then
			if self.config then
				local should_scare = not CEN.cant_scare and ((Jen.gods() and CEN.fusable) or Jen.sinister)
				local should_scare2 = not CEN.cant_scare and ((Jen.gods() and CEN.fusable) or Jen.dramatic)
				if CEN.key == 'j_jen_dandy' and math.random(800) == 1 then
					self.dandy_glitch = math.random(10, 80)
					if self.children then
						if self.children.center then
							self.children.center:set_sprite_pos({x = 0, y = 1})
						end
						if self.children.floating_sprite then
							self.children.floating_sprite:set_sprite_pos({x = 1, y = 1})
						end
					end
				elseif self.dandy_glitch then
					if self.dandy_glitch <= 1 then
						if self.children then
							if self.children.center then
								self.children.center:set_sprite_pos({x = 0, y = 0})
							end
							if self.children.floating_sprite then
								self.children.floating_sprite:set_sprite_pos({x = 1, y = 0})
							end
						end
						self.dandy_glitch = nil
					else
						self.dandy_glitch = self.dandy_glitch - 1
					end
				end
				if not CEN.update and self.children.floating_sprite then
					if ((CEN.drama and should_scare2) or (CEN.sinis and should_scare)) and (CEN.sinis or CEN.drama) and not self.in_drama_state then
						self.in_drama_state = true
						self.children.floating_sprite:set_sprite_pos(CEN.drama or CEN.sinis)
					elseif not ((CEN.drama and should_scare2) or (CEN.sinis and should_scare)) and self.in_drama_state then
						self.in_drama_state = nil
						self.children.floating_sprite:set_sprite_pos(CEN.soul_pos)
					end
				end
				if self.in_drama_state then
					self:juice_up(0, math.random()/(Jen.dramatic and 3 or 6))
				end
				if self.area and next(self.area) then
					if self.ability then 
						if CEN.permaeternal and G.jokers and self.area == G.jokers then
							self.ability.eternal = true
						end
						if CEN.debuff_immune or Jen.dandy_active then
							self.ability.perishable = false
							self.ability.perish_tally = 1e9
						end
					end
					if CEN.key == 'c_cry_pointer' and G.hand and self.area == G.hand and not self.lolnocryptidingpointerforyou then
						self.lolnocryptidingpointerforyou = true
						self:destroy()
						local pointer = create_card('Code', G.consumeables, nil, nil, nil, nil, 'c_cry_pointer', 'fuck_cryptiding_pointer_because_there_is_no_need_for_a_budget_creative_mode_please_come_the_fuck_on')
						pointer.no_omega = true
						pointer:add_to_deck()
						G.consumeables:emplace(pointer)
					end
				end
				if CEN.gloss then
					if CEN.gloss_contrast then
						for i = 1, CEN.gloss_contrast do
							self.children.center:draw_shader(type(CEN.gloss) == 'string' and CEN.gloss or 'voucher', nil, self.ARGS.send_to_shader)
						end
					else
						self.children.center:draw_shader(type(CEN.gloss) == 'string' and CEN.gloss or 'voucher', nil, self.ARGS.send_to_shader)
					end
				end
				if (self.added_to_deck or (self.area and self.area == G.hand)) and not self.edition then
					if not CEN.ignore_kudaai and Jen.kudaai_active and (CEN.set ~= 'Booster' or self.area == G.consumeables) and not CEN.cannot_edition then
						self:set_edition({[random_editions[pseudorandom('kudaai_edition', 1, #random_editions)]] = true}, true)
					end
				end
				if Jen.luke_active and self.ability and CEN.key ~= 'j_jen_hunter' and CEN.key ~= 'j_jen_luke' and CEN.set ~= 'jen_ability' then
					self.ability.cry_rigged = true
				end
			end
		else
			if CEN.key == 'c_cry_pointer' and G.hand and self.area == G.hand and not self.lolnocryptidingpointerforyou then
				self.lolnocryptidingpointerforyou = true
				self:destroy()
				local pointer = create_card('Code', G.consumeables, nil, nil, nil, nil, 'c_cry_pointer', 'fuck_cryptiding_pointer_because_there_is_no_need_for_a_budget_creative_mode_please_come_the_fuck_on')
				pointer.no_omega = true
				pointer:add_to_deck()
				G.consumeables:emplace(pointer)
			end
		end
	end
	CEN = nil
    card_draw_ref(self, layer)
end

function Jen.add_fusion(key, cost, output, ...)
	local inputs = { ... }
	Jen.fusions[key] = {cost = cost, output = output, ingredients = inputs}
end

function Jen.find_matching_recipe(items)
	if #items <= 0 then return nil end
	for k, v in pairs(Jen.fusions) do
		local matches = 0
		for _, w in ipairs(v.ingredients) do
			for __, x in ipairs(items) do
				if x:gc().key == w then
					matches = matches + 1
					break
				end
			end
		end
		if matches >= #v.ingredients then
			return k
		end
	end
	return nil
end

function Jen.has_ingredients(key)
	if not Jen.fusions[key] then return false end
	local inputs = Jen.fusions[key].ingredients
	if #inputs <= 0 then Jen.fusions[key] = nil; return false end
	local acquired = 0
	for k, v in ipairs(inputs) do
		if #SMODS.find_card(v, true) > 0 then
			acquired = acquired + 1
		end
	end
	return acquired >= #inputs
end

function Jen.get_cards_for_recipe(key)
	if not Jen.fusions[key] then return false end
	local inputs = Jen.fusions[key].ingredients
	if #inputs <= 0 then Jen.fusions[key] = nil; return false end
	local acquired = 0
	local ingreds = {}
	for k, v in ipairs(inputs) do
		if #SMODS.find_card(v, true) > 0 then
			acquired = acquired + 1
			table.insert(ingreds, next(SMODS.find_card(v, true)))
		end
	end
	if acquired >= #inputs then return ingreds else return false end
end

function Jen.is_fusable(center)
	for k, v in pairs(Jen.fusions) do
		for __, w in pairs(v.ingredients) do
			if (type(center) == 'table' and w == center.key) or (type(center) == 'string' and w == center) then
				return k
			end
		end
	end
	return false
end

function fuse_cards(cards, output, fast)
	if fast then
		Q(function()
			play_sound('whoosh')
			for k, v in ipairs(cards) do
				G['jen_merge' .. k] = CardArea(G.play.T.x, G.play.T.y, G.play.T.w, G.play.T.h, {type = 'play', card_limit = 5})
				if v.area then
					v.area:remove_card(v)
				end
				G['jen_merge' .. k]:emplace(v)
			end
		return true end)
		delay(1.5)
		Q(function()
			play_sound('explosion_release1')
			for k, v in ipairs(cards) do
				v:flip()
				if G['jen_merge' .. k] then
					G['jen_merge' .. k]:remove_card(v)
					G['jen_merge' .. k]:remove()
					G['jen_merge' .. k] = nil
				end
				v:destroy(nil, true, nil, true)
			end
		return true end)
		Q(function() if output then
			if type(output) == 'function' then
				output()
			elseif type(output) == 'string' then
				local new_card = create_card(G.P_CENTERS[output].set,G.P_CENTERS[output].set == 'Joker' and G.jokers or G.consumeables, nil, nil, nil, nil, output, 'fusion')
				G.play:emplace(new_card)
				delay(1.5)
				Q(function()
					G.play:remove_card(new_card)
					new_card:add_to_deck()
					if new_card.ability.set == 'Joker' then
						G.jokers:emplace(new_card)
					else
						G.consumeables:emplace(new_card)
					end
				return true end)
			end
		end return true end)
	else
		Q(function()
			play_sound('whoosh')
			for k, v in ipairs(cards) do
				G['jen_merge' .. k] = CardArea(G.play.T.x, G.play.T.y, G.play.T.w, G.play.T.h, {type = 'play', card_limit = 5})
				if v.area then
					v.area:remove_card(v)
				end
				G['jen_merge' .. k]:emplace(v)
			end
		return true end)
		delay(1.5)
		Q(function()
			for k, v in ipairs(cards) do
				v:flip()
				if k ~= 1 then
					if G['jen_merge' .. k] then
						G['jen_merge' .. k]:remove_card(v)
						G['jen_merge' .. k]:remove()
						G['jen_merge' .. k] = nil
					end
					v:destroy(nil, true, nil, true)
				end
			end
		return true end)
		delay(0.5)
		local card
		Q(function()
			card = G.jen_merge1.cards[1]
			card:explode()
			Q(function() if card then card:remove() end if G.jen_merge1 then G.jen_merge1:remove(); G.jen_merge1 = nil; end return true end)
			Q(function() if output then
				if type(output) == 'function' then
					output()
				elseif type(output) == 'string' then
					local new_card = create_card(G.P_CENTERS[output].set,G.P_CENTERS[output].set == 'Joker' and G.jokers or G.consumeables, nil, nil, nil, nil, output, 'fusion')
					G.play:emplace(new_card)
					delay(1.5)
					Q(function()
						G.play:remove_card(new_card)
						new_card:add_to_deck()
						if new_card.ability.set == 'Joker' then
							G.jokers:emplace(new_card)
						else
							G.consumeables:emplace(new_card)
						end
					return true end)
				end
			end return true end)
		return true end)
	end
end

for i = 1, Jen.config.ante_polytate do
	Jen.config.blind_scalar[i] = to_big(1 + (Jen.config.scalar_base + (i/Jen.config.scalar_additivedivisor))) ^ to_big(i * Jen.config.scalar_exponent)
end

if not IncantationAddons then
	IncantationAddons = {
		Stacking = {},
		Dividing = {},
		BulkUse = {},
		StackingIndividual = {},
		DividingIndividual = {},
		BulkUseIndividual = {}
	}
end

if not AurinkoAddons then
	AurinkoAddons = {}
end

local gsp = get_starting_params
function get_starting_params()
	newTable = gsp()
	newTable.consumable_slots = newTable.consumable_slots + Jen.config.consumable_slot_count_buff
	return newTable
end

function gameover()
	remove_save()

	if G.GAME.round_resets.ante <= G.GAME.win_ante then
		if not G.GAME.seeded and not G.GAME.challenge then
			inc_career_stat('c_losses', 1)
			set_deck_loss()
			set_joker_loss()
		end
	end

	play_sound('negative', 0.5, 0.7)
	play_sound('whoosh2', 0.9, 0.7)

	G.SETTINGS.paused = true
	G.FUNCS.overlay_menu{
		definition = create_UIBox_game_over(),
		config = {no_esc = true}
	}
	G.ROOM.jiggle = G.ROOM.jiggle + 3

	if G.GAME.round_resets.ante <= G.GAME.win_ante then
		local Jimbo = nil
		G.E_MANAGER:add_event(Event({
			trigger = 'after',
			delay = 2.5,
			blocking = false,
			func = (function()
				if G.OVERLAY_MENU and G.OVERLAY_MENU:get_UIE_by_ID('jimbo_spot') then 
					Jimbo = Card_Character({x = 0, y = 5})
					local spot = G.OVERLAY_MENU:get_UIE_by_ID('jimbo_spot')
					spot.config.object:remove()
					spot.config.object = Jimbo
					Jimbo.ui_object_updated = true
					Jimbo:add_speech_bubble('lq_'..math.random(1,10), nil, {quip = true})
					Jimbo:say_stuff(5)
				end
				return true
			end)
		}))
	end
	G.STATE_COMPLETE = true
end

AllowStacking('jen_chess')
AllowStacking('jen_ability')
AllowStacking('jen_omegaconsumable')
AllowStacking('jen_tokens')
AllowDividing('jen_uno')
AllowDividing('jen_chess')
AllowDividing('jen_ability')
AllowDividing('jen_omegaconsumable')
AllowDividing('jen_tokens')
AllowMassUsing('jen_uno')
AllowBulkUse('jen_tokens')

AurinkoAddons.jen_wee = function(card, hand, instant, amount)
	if card and not card.playing_card then
		local twos = {}
		local editioned_twos = {}
		for k, v in pairs(G.playing_cards) do
			if v:get_id() == 2 then
				table.insert(v.edition and editioned_twos or twos, v)
			end
		end
		if #twos > 0 or #editioned_twos > 0 then
			if not card.already_announced_message then
				card.already_announced_message = true
				Q(function()
					play_sound('gong', 0.94, 0.3)
					play_sound('gong', 0.94*1.5, 0.2)
					play_sound('tarot1', 1.5)
				return true end)
				jl.a(#twos + #editioned_twos .. 'x Twos', G.SETTINGS.GAMESPEED, 1.4, G.C.GREEN)
				jl.rd(1)
				QR(function() if card then card.already_announced_message = nil end return true end, 3)
			end
			if #twos > 0 then
				level_up_hand(nil, hand, true, #twos * amount, true, true, true)
			end
			for k, two in pairs(editioned_twos) do
				level_up_hand(two, hand, true, amount, true, true, true)
			end
			Q(function() twos = nil;editioned_twos = nil;return true end)
		end
	end
end

AurinkoAddons.jen_jumbo = function(card, hand, instant, amount)
	if card and not card.playing_card then
		local akqjs = {}
		local editioned_akqjs = {}
		for k, v in pairs(G.playing_cards) do
			if v:get_id() > 10 then
				table.insert(v.edition and editioned_akqjs or akqjs, v)
			end
		end
		if #akqjs > 0 or #editioned_akqjs > 0 then
			if not card.already_announced_message then
				card.already_announced_message = true
				Q(function()
					play_sound('gong', 0.94, 0.3)
					play_sound('gong', 0.94*1.5, 0.2)
					play_sound('tarot1', 1.5)
				return true end)
				jl.a(#akqjs + #editioned_akqjs .. 'x AKQJs', G.SETTINGS.GAMESPEED, 1.4, G.C.GREEN)
				jl.rd(1)
				QR(function() if card then card.already_announced_message = nil end return true end, 3)
			end
			if #akqjs > 0 then
				level_up_hand(nil, hand, true, #akqjs * amount, true, true, true)
			end
			for k, akqj in pairs(editioned_akqjs) do
				level_up_hand(akqj, hand, true, amount, true, true, true)
			end
			Q(function() akqjs = nil;editioned_akqjs = nil;return true end)
		end
	end
end

G.FUNCS.isomeganumenabled = function(e)
	if Big and Big.arrow then
		return true
	end
	return false
end

local function play_sound_q(sound, per, vol)
	G.E_MANAGER:add_event(Event({
		func = function()
			play_sound(sound,per,vol)
			return true
		end
	}))
end

local final_operations = {
	[-2] = {'/', 'IMPORTANT'},
	[-1] = {'-', 'GREY'},
	[0] = {'+', 'UI_CHIPS'},
	[1] = {'X', 'UI_MULT'},
	[2] = {'^', {0.8, 0.45, 0.85, 1}},
	[3] = {'^^', 'DARK_EDITION'},
	[4] = {'^^^', 'CRY_EXOTIC'},
	[5] = {'^^^^', 'CRY_EMBER'},
	[6] = {'^^^^^', 'CRY_ASCENDANT'},
}

local sumcache_limit = 100

local chipmult_sum_cache = {}

function get_chipmult_sum(chips, mult)
	chips = chips or 0
	mult = mult or 0
	if #chipmult_sum_cache > sumcache_limit then
		for i = 1, sumcache_limit do
			table.remove(chipmult_sum_cache)
		end
	end
	local op = get_final_operator()
	if to_big(chips) == to_big(0) or to_big(mult) == to_big(0) then
		chips = 0
		mult = 0
		op = 0
	end
	local sum
	for k, v in ipairs(chipmult_sum_cache) do
		if v.oper == op and v.c == to_big(chips) and v.m == to_big(mult) then
			return v.result
		end
	end
	if op > 2 then
		sum = to_big(chips):arrow(math.min(maxArrow, op - 1), to_big(mult))
	elseif op == 2 then
		sum = to_big(chips) ^ to_big(mult)
	elseif op == 1 then
		sum = to_big(chips) * to_big(mult)
	elseif op == -1 then
		sum = to_big(chips) - to_big(mult)
	elseif op <= -2 then
		sum = to_big(chips) / to_big(mult)
	else
		sum = to_big(chips) + to_big(mult)
	end
	table.insert(chipmult_sum_cache, {oper = op, c = chips, m = mult, result = sum})
	return sum
end

function update_operator_display()
	local op = get_final_operator()
	local txt = ''
	local col = G.C.WHITE
	if not final_operations[op] then
		txt = '{' .. number_format(op-1) .. '}'
		col = G.C.jen_RGB
	else
		txt = final_operations[op][1]
		col = type(final_operations[op][2]) == 'table' and final_operations[op][2] or G.C[final_operations[op][2]]
	end
	Q(function()
		play_sound('button', 1.1, 0.65)
		G.hand_text_area.op.config.text = txt
		G.hand_text_area.op.config.text_drawable:set(txt)
		G.hand_text_area.op.UIBox:recalculate()
		G.hand_text_area.op.config.colour = col
		G.hand_text_area.op:juice_up(0.8, 0.5)
	return true end)
end

function update_operator_display_custom(txt, col)
	Q(function()
		play_sound('button', 1.1, 0.65)
		G.hand_text_area.op.config.text = txt
		G.hand_text_area.op.config.text_drawable:set(txt)
		G.hand_text_area.op.UIBox:recalculate()
		G.hand_text_area.op.config.colour = (col or G.C.UI_MULT)
		G.hand_text_area.op:juice_up(0.8, 0.5)
	return true end)
end

function get_final_operator_offset()
	if not G.GAME then return 0 end
	if not G.GAME.finaloperator then G.GAME.finaloperator = 1 end
	if not G.GAME.finaloperator_offset then G.GAME.finaloperator_offset = 0 end
	return math.max(-1, G.GAME.finaloperator_offset)
end

function get_final_operator(absolute)
	if not G.GAME then return 0 end
	if not G.GAME.finaloperator then G.GAME.finaloperator = 1 end
	if not G.GAME.finaloperator_offset then G.GAME.finaloperator_offset = 0 end
	return math.max(0, math.min(maxArrow + 1, G.GAME.finaloperator + (absolute and 0 or get_final_operator_offset())))
end

function set_final_operator(value)
	G.GAME.finaloperator = math.min(math.max(value, 0), maxArrow + 1)
	update_operator_display()
end

function set_final_operator_offset(value)
	G.GAME.finaloperator_offset = math.min(math.max(value, -1), maxArrow)
	update_operator_display()
end

function change_final_operator(mod)
	set_final_operator(get_final_operator(true) + mod)
end

function offset_final_operator(mod)
	set_final_operator_offset(get_final_operator_offset() + mod)
end

function get_kosmos()
	return jl.fc('j_jen_kosmos')
end

function get_malice()
	if not G.GAME then return to_big(0) end
	if not G.GAME.malice then G.GAME.malice = to_big(0) end
	if jl.invalid_number(number_format(G.GAME.malice)) then G.GAME.malice = to_big(maxfloat) end
	return (get_final_operator() >= (maxArrow + 1)) and to_big(0) or to_big(G.GAME.malice)
end

function get_max_malice(offset)
	offset = offset or 0
	local mod = math.max(0, (get_final_operator(true) - 1) + offset)
	return get_final_operator(true) + offset > maxArrow and to_big(0) or ((to_big(Jen.config.malice_base) * to_big(math.max(1, mod+1))) * (to_big(Jen.config.malice_increase) ^ (to_big(mod) ^ to_big(mod + 1))))
end

function check_malice(check)
	if get_final_operator(true) >= (maxArrow + 1) then return end
	if get_malice() ~= (check or to_big(0)) then return end
	local kosmos = get_kosmos()
	if check >= get_max_malice() then
		local maxmalice = get_max_malice()
		local increments = 0
		while not Jen.config.safer_kosmos or increments < Jen.config.kosmos_safety_threshold do
			if collectgarbage("count") > 1048576 then
				collectgarbage("collect")
			end
			if G.GAME.malice >= maxmalice and maxmalice > to_big(0) then
				G.GAME.malice = G.GAME.malice - maxmalice
				increments = increments + 1
				maxmalice = get_max_malice(increments)
			else
				break
			end
		end
		if maxmalice <= to_big(0) then G.GAME.malice = to_big(0) end
		play_sound_q('jen_enchant', 0.75, 1)
		jl.a('Operator Increased' .. (increments > 1 and (' x ' .. tostring(increments)) or ''), G.SETTINGS.GAMESPEED * 2, 1, G.C.SECONDARY_SET.Tarot)
		jl.rd(2)
		G.jokers:change_size_absolute(increments)
		change_final_operator(increments)
		if Jen.config.safer_kosmos then
			maxmalice = get_max_malice()
			local next_check = get_malice()
			if G.GAME.malice >= maxmalice and maxmalice > to_big(0) then
				QR(function() check_malice(next_check) return true end, 99)
			end
		end
	end
end

function add_malice(mod, now, unscaled)
	if jl.invalid_number(number_format(mod)) then return end
	if now or not Jen.config.safer_kosmos then
		if get_final_operator(true) >= (maxArrow + 1) then return end
		local kosmos = get_kosmos()
		if not kosmos then return end
		if not G.GAME.malice then G.GAME.malice = to_big(0) end
		local orig_malice = G.GAME.malice * to_big(1)
		local orig_maxmalice = get_max_malice()
		mod = to_big(mod)
		if not unscaled then
			mod = (math.abs(mod) * (to_big(Jen.config.malice_increase) ^ to_big(G.GAME.round_resets.ante)))
		end
		G.GAME.malice = G.GAME.malice + mod
		if jl.invalid_number(number_format(G.GAME.malice)) then G.GAME.malice = to_big(maxfloat) end
		if not kosmos.cumulative_malice then
			kosmos.cumulative_malice = (kosmos.cumulative_malice or to_big(0)) + mod
			QR(function() if kosmos then
				card_status_text(kosmos, '+' .. number_format(kosmos.cumulative_malice or to_big(0)), nil, 0.05*kosmos.T.h, G.C.RED, 0.6, 0.6, 0.4, 0.4, 'bm', 'jen_enchant', 0.5, 1)
				jl.a('Malice : ' .. number_format(orig_malice + (kosmos.cumulative_malice or to_big(0))) .. ' / ' .. number_format(orig_maxmalice), 3, 0.75, G.C.RED)
				kosmos.cumulative_malice = nil
				check_malice(G.GAME.malice)
			end return true end, 50)
		else
			kosmos.cumulative_malice = (kosmos.cumulative_malice or to_big(0)) + mod
		end
	else
		Q(function() add_malice(mod, true, unscaled) return true end)
	end
end

function get_amalgam_value(rarity)
	rarity = tostring(rarity) or ''
	local malice = to_big(0)
	if rarity == '3' and get_final_operator(true) < 25 then
		malice = get_max_malice() / 10
	elseif rarity == 'cry_epic' and get_final_operator(true) < 100 then
		malice = get_max_malice() / (get_final_operator(true) < 50 and 1 or .25)
	elseif rarity == '4' and get_final_operator(true) < 1000 then
		malice = get_max_malice(get_final_operator(true) < 300 and 2 or get_final_operator(true) < 400 and 1 or 0) / (get_final_operator(true) < 500 and 1 or .25)
	elseif rarity == 'cry_exotic' and get_final_operator(true) < 3000 then
		malice = get_max_malice(get_final_operator(true) < 1500 and 4 or get_final_operator(true) < 1800 and 3 or get_final_operator(true) < 2100 and 2 or get_final_operator(true) < 2400 and 1 or 0)
	elseif rarity == 'jen_ritualistic' and get_final_operator(true) < 8000 then
		malice = get_max_malice(get_final_operator(true) < 5000 and 9 or get_final_operator(true) < 5500 and 4 or get_final_operator(true) < 6000 and 3 or get_final_operator(true) < 6500 and 2 or get_final_operator(true) < 7000 and 1 or 0)
	elseif rarity == 'jen_wondrous' and get_final_operator(true) < 20000 then
		malice = get_max_malice(get_final_operator(true) < 10000 and 24 or get_final_operator(true) < 12000 and 14 or get_final_operator(true) < 14000 and 9 or get_final_operator(true) < 16000 and 4 or get_final_operator(true) < 18000 and 2 or 0)
	elseif rarity == 'jen_extraordinary' then
		malice = get_max_malice(get_final_operator(true) < 21000 and 49 or get_final_operator(true) < 21500 and 29 or get_final_operator(true) < 22000 and 14 or get_final_operator(true) < 22500 and 7 or 0)
	elseif rarity == 'jen_transcendent' then
		malice = get_max_malice(get_final_operator(true) < 22500 and 99 or get_final_operator(true) < 23000 and 49 or get_final_operator(true) < 23500 and 24 or get_final_operator(true) < 24000 and 11 or 4)
	end
	return to_big(0)
end

function set_dollars(mod)
	mod = mod or 0
	Q(function()
		local dollar_UI = G.HUD:get_UIE_by_ID('dollar_text_UI')
		local text = '='..localize('$')
		local col = G.C.FILTER
        G.GAME.dollars = mod
        dollar_UI.config.object:update()
        G.HUD:recalculate()
        attention_text({
          text = text..tostring(mod),
          scale = 0.8, 
          hold = 0.7,
          cover = dollar_UI.parent,
          cover_colour = col,
          align = 'cm',
          })
        play_sound('coin1')
	return true end)
end

local edr = ease_dollars
function ease_dollars(mod, instant, force_update)
	if to_big((G.GAME.dollars + mod ~= G.GAME.dollars and math.abs(mod))) > to_big((G.GAME.dollars / 1e6)) or force_update then
		edr(mod,instant)
		local should_clamp = jl.invalid_number(number_format(G.GAME.dollars)) or to_big(G.GAME.dollars) > to_big(1e100) or to_big(G.GAME.dollars) < to_big(-1e100)
		if should_clamp then
			G.GAME.dollars = jl.invalid_number(number_format(G.GAME.dollars)) and to_big(1e100) or to_big(math.min(math.max(G.GAME.dollars, -1e100), 1e100))
			ease_dollars(0, true, true)
		end
	end
end

function ease_tension(mod)
	Q(function()
		local tension_UI = G.HUD:get_UIE_by_ID('tension_UI_count')
		mod = mod or 0
		local text = '+'
		local col = G.C.CRY_TWILIGHT
		if mod < 0 then
			text = ''
			col = G.C.CRY_VERDANT
		end
		G.GAME.tension = G.GAME.tension + mod
		tension_UI.config.object:update()
		G.HUD:recalculate()
		attention_text({
			text = text..mod,
			scale = 0.8, 
			hold = 0.7,
			cover = tension_UI.parent,
			cover_colour = col,
			align = 'cm',
		})
		play_sound('jen_tension', mod < 0 and .6 or 1)
		play_sound('generic1')
	return true end)
	delay(.2)
end

function ease_relief(mod)
	Q(function()
		local relief_UI = G.HUD:get_UIE_by_ID('relief_UI_count')
		mod = mod or 0
		local text = '+'
		local col = G.C.CRY_EXOTIC
		if mod < 0 then
			text = ''
			col = G.C.CRY_EMBER
		end
		G.GAME.relief = G.GAME.relief + mod
		relief_UI.config.object:update()
		G.HUD:recalculate()
		attention_text({
			text = text..mod,
			scale = 0.8, 
			hold = 0.7,
			cover = relief_UI.parent,
			cover_colour = col,
			align = 'cm',
		})
		play_sound('jen_relief', mod < 0 and .6 or 1)
		play_sound('generic1')
	return true end)
	delay(.2)
end

function ease_straddle_display(mod)
	local should_update_to_straddle = false
	if not mod then
		if not tonumber(G.GAME.straddle_disp) then G.GAME.straddle_disp = 0 end
		mod = G.GAME.straddle - G.GAME.straddle_disp
		should_update_to_straddle = true
	end
	Q(function()
		local straddle_UI = G.HUD:get_UIE_by_ID('straddle_UI_count')
		mod = mod or 0
		local text = '+'
		local col = G.C.CRY_BLOSSOM
		if mod < 0 then
			text = ''
			col = G.C.CRY_AZURE
		end
		G.GAME.straddle_disp = should_update_to_straddle and G.GAME.straddle or ((tonumber(G.GAME.straddle_disp) or 0) + mod)
		straddle_UI.config.object:update()
		G.HUD:recalculate()
		attention_text({
			text = text..mod,
			scale = 0.8, 
			hold = 0.7,
			cover = straddle_UI.parent,
			cover_colour = col,
			align = 'cm',
		})
		play_sound('highlight2', 0.5, 0.2)
		play_sound('generic1')
	return true end)
	delay(.2)
end

function progress_straddle(add)
	if not G.GAME.straddle_active or not Jen.config.straddle.enabled then return end
	local length_multiplier = 1
	if #SMODS.find_card('j_jen_pickel') > 0 then
		length_multiplier = length_multiplier * 2
	end
	if G.GAME.tortoise then
		length_multiplier = length_multiplier * 2
	end
	local MIN = Jen.config.straddle.progress_min * length_multiplier
	local MAX = Jen.config.straddle.progress_max * length_multiplier
	local spd = math.min(4, 1 + (G.GAME.straddle / 100))
	local spd_additive = .1 * spd
	local orig_straddle = G.GAME.straddle
	local to_next = math.min(MAX, MIN + math.floor(G.GAME.straddle / Jen.config.straddle.progress_increment))
	local progressbar = {}
	for i = 1, MAX do
		progressbar[i] = jl.rawcard(i > to_next and 'm_stone' or G.GAME.straddle >= 100 and 'm_gold' or 'c_base', 1 / ((1 + (MAX/10)) ^ .5), (2/MAX) * i)
		progressbar[i].states.drag.can = false
		progressbar[i].no_ui = true
		if i <= G.GAME.straddle_progress then
			progressbar[i]:set_edition({negative = true}, true, true)
		end
	end
	if (progressbar or {})[1] then progressbar[1]:add_dynatext('Straddle ' .. number_format(G.GAME.straddle)) end
	if (progressbar or {})[to_next] then progressbar[to_next]:add_dynatext(nil, 'Straddle ' .. number_format(G.GAME.straddle + 1)) end
	jl.rd(0.5)
	while add > 0 and (spd < 8 or to_next < MAX) and not Jen.config.straddle.skip_animation do
		add = add - 1
		G.GAME.straddle_progress = G.GAME.straddle_progress + 1
		local target = progressbar[math.min(G.GAME.straddle_progress, MAX)]
		local silent_increase = spd > 4
		local should_gold = G.GAME.straddle >= 100
		local pitch_mod = .9 + (G.GAME.straddle_progress / 10)
		Q(function() if target then target:set_edition({negative = true}, true, true) target:juice_up(0.8,0.5) end if not silent_increase then play_sound('generic1', pitch_mod) play_sound('jen_straddle_tick', pitch_mod) end return true end)
		if G.GAME.straddle_progress >= to_next then
			G.GAME.straddle_progress = 0
			G.GAME.straddle = G.GAME.straddle + 1
			orig_straddle = orig_straddle + 1
			if target then target:remove_dynatext() end
			if (progressbar or {})[1] then progressbar[1]:remove_dynatext() end
			local new_next = math.min(MAX, MIN + math.floor(G.GAME.straddle / Jen.config.straddle.progress_increment))
			to_next = new_next
			if spd < 4 then jl.rd(1/spd) end
			jl.a('Straddle ' .. number_format(G.GAME.straddle), G.SETTINGS.GAMESPEED * 2, 1, mix_colours(G.C.RED, G.C.UI.TEXT_LIGHT, math.min(1 + (Jen.config.straddle.progress_increment / 10), G.GAME.straddle / Jen.config.straddle.progress_increment) - (Jen.config.straddle.progress_increment / 10)))
			Q(function()
				for i = 1, MAX do
					if (progressbar or {})[i] then
						progressbar[i]:juice_up(1,1)
						progressbar[i]:set_edition({jen_prismatic = true}, true, true)
					end
				end
				play_sound('jen_straddle_increase')
				play_sound('generic1')
			return true end)
			if spd < 4 then jl.rd(1/spd) end
			for i = 1, MAX do
				Q(function() if (progressbar or {})[i] then progressbar[i]:fake_dissolve() end return true end, spd < 4 and 0.1 or 0)
			end
			if spd < 4 then jl.rd(1/spd) end
			Q(function()
				for i = 1, MAX do
					if (progressbar or {})[i] then
						progressbar[i]:start_materialize()
						progressbar[i]:set_ability(G.P_CENTERS[i > new_next and 'm_stone' or should_gold and 'm_gold' or 'c_base'])
						progressbar[i]:set_edition(nil, true, true)
					end
				end
			return true end, spd < 4 and 0.1 or 0)
			for i = 1, MAX do
				if i == 1 or i == to_next then
					if (progressbar or {})[i] then
						progressbar[i]:add_dynatext(i == 1 and ('Straddle ' .. number_format(G.GAME.straddle)), i == to_next and ('Straddle ' .. number_format(G.GAME.straddle + 1)))
					end
				end
			end
			ease_straddle_display(1)
			spd = spd + spd_additive
			spd_additive = math.min(spd_additive * 1.5, 4)
		end
		if spd < 4 then jl.rd(.25/spd) end
	end
	if spd >= 8 or Jen.config.straddle.skip_animation then
		G.GAME.straddle_progress = G.GAME.straddle_progress + add
		local mass_add = math.floor(G.GAME.straddle_progress / to_next)
		G.GAME.straddle_progress = G.GAME.straddle_progress - (to_next * mass_add)
		G.GAME.straddle = G.GAME.straddle + mass_add
		local nxt = math.min(MAX, MIN + math.floor(G.GAME.straddle / Jen.config.straddle.progress_increment))
		Q(function()
			for i = 1, MAX do
				if (progressbar or {})[i] then
					progressbar[i]:remove_dynatext()
					if i == 1 or i == to_next then
						progressbar[i]:add_dynatext(i == 1 and ('Straddle ' .. number_format(G.GAME.straddle)), i == to_next and ('Straddle ' .. number_format(G.GAME.straddle + 1)))
					end
					progressbar[i]:set_ability(G.P_CENTERS[i > nxt and 'm_stone' or G.GAME.straddle >= 100 and 'm_gold' or 'c_base'])
					if i <= G.GAME.straddle_progress then
						progressbar[i]:set_edition({negative = true}, true, true)
					else
						progressbar[i]:set_edition(nil, true, true)
					end
				end
			end
		return true end)
		if orig_straddle ~= G.GAME.straddle then jl.a('Straddle ' .. number_format(G.GAME.straddle), G.SETTINGS.GAMESPEED * 2, 1, mix_colours(G.C.RED, G.C.UI.TEXT_LIGHT, math.min(1 + (Jen.config.straddle.progress_increment / 10), G.GAME.straddle / Jen.config.straddle.progress_increment) - (Jen.config.straddle.progress_increment / 10))) end
		Q(function()
			play_sound('jen_straddle_increase')
			play_sound('generic1')
		return true end)
		ease_straddle_display()
	end
	jl.rd(1)
	if (progressbar or {})[1] then progressbar[1]:remove_dynatext() end
	if (progressbar or {})[to_next] then progressbar[to_next]:remove_dynatext() end
	Q(function() for i = 1, #progressbar do if (progressbar or {})[i] then progressbar[i]:destroy() end end return true end)
end

local crcr = calculate_reroll_cost
function calculate_reroll_cost(final_free)
	crcr(final_free)
	local numrolls = G.GAME.tension or 0
	if Jen.config.punish_reroll_abuse then
		if numrolls > 1 then
			G.GAME.current_round.reroll_cost = math.min(math.ceil(G.GAME.current_round.reroll_cost * (1.13 ^ (numrolls-1))), 1e100)
		end
	end
end

local gfcor = G.FUNCS.cash_out
G.FUNCS.cash_out = function(e)
	if (G.GAME.relief or 0) > 0 then
		local mod = math.min(5, G.GAME.relief)
		if mod > G.GAME.tension then mod = G.GAME.tension end
		if mod > 0 then
			ease_tension(-mod)
		end
	end
	Q(function()
		if G.GAME.tension > 0 then
			ease_relief(1)
		elseif G.GAME.relief > 0 then
			ease_relief(-G.GAME.relief)
		end
	return true end)
	if #SMODS.find_card('j_jen_arin') > 0 then
		for k, v in pairs(SMODS.find_card('j_jen_arin')) do v:juice_up(0.6, 1) end
		for i = 1, #SMODS.find_card('j_jen_arin') * 3 do
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2/(#SMODS.find_card('j_jen_arin')/3), func = function()
				local duplicate = create_card('Booster', G.consumeables, nil, nil, nil, nil, k, 'arin_pack')
				if duplicate.gc and duplicate:gc().set ~= 'Booster' then
					duplicate:set_ability(jl.rnd('arin_booster_equilibrium', nil, G.P_CENTER_POOLS.Booster), true, nil)
					duplicate:set_cost()
				end
				duplicate:add_to_deck()
				G.consumeables:emplace(duplicate)
			return true end }))
		end
	end
	if #SMODS.find_card('j_jen_lugia') > 0 then
		for k, v in pairs(SMODS.find_card('j_jen_lugia')) do v:juice_up(0.6, 1) end
		for i = 1, #SMODS.find_card('j_jen_lugia') do
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2/(#SMODS.find_card('j_jen_lugia')/3), func = function()
				local duplicate = create_card('Voucher', G.consumeables, nil, nil, nil, nil, k, 'lugia_voucher')
				if duplicate.gc and duplicate:gc().set ~= 'Voucher' then
					duplicate:set_ability(jl.rnd('lugia_voucher_equilibrium', nil, G.P_CENTER_POOLS.Voucher), true, nil)
					duplicate:set_cost()
				end
				duplicate:add_to_deck()
				G.consumeables:emplace(duplicate)
			return true end }))
		end
	end
	QR(function()
		if Jen.config.punish_reroll_abuse then
			local numrolls = G.GAME.tension or 0
			if numrolls > 1 then
				G.GAME.current_round.reroll_cost = math.min(math.ceil(G.GAME.current_round.reroll_cost * (1.13 ^ (numrolls-1))), 1e100)
			end
		end
	return true end, 99)
	gfcor(e)
end

local gfrsr = G.FUNCS.reroll_shop
G.FUNCS.reroll_shop = function(e)
	if Jen.config.punish_reroll_abuse then
		if G.GAME.relief > 0 then
			ease_relief(-G.GAME.relief)
		end
		ease_tension(jl.round((3 ^ #SMODS.find_card('j_jen_aym')) / (G.GAME.current_round.reroll_cost <= 0 and 4 or 1), 2)) 
		if Jen.config.straddle.enabled and Jen.config.punish_reroll_abuse and G.GAME.tension >= 20 then
			if not G.GAME.straddle_active then start_straddle() end
			progress_straddle(math.ceil((2 ^ math.min(1000, G.GAME.tension - 20))))
		end
	end
	gfrsr(e)
end

local anteref = ease_ante
function ease_ante(mod, no_straddle, no_ante_boost, safe_rewind)
	if mod > 0 then
		if G.GAME.tortoise then
			mod = mod / 2
		end
		add_malice(to_big(Jen.config.malice_base / 8) * (to_big(Jen.config.malice_increase) ^ mod))
	end
	if Jen.config.straddle.enabled then
		if mod < 0 and not safe_rewind then
			G.GAME.cumulative_ante_rewind = (G.GAME.cumulative_ante_rewind or 0) + mod
		end
		if G.GAME.straddle_active and mod > 0 and not no_ante_boost then
			mod = mod + (G.GAME.tortoise and (G.GAME.straddle / 2) or G.GAME.straddle)
		elseif not no_straddle and not G.GAME.straddle_active and ((G.GAME.round_resets.ante + mod) < 0 or (G.GAME.cumulative_ante_rewind or 0) > Jen.config.ante_threshold) then
			start_straddle()
		end
	end
	anteref(mod)
	if jl.invalid_number(G.GAME.round_resets.ante) then
		G.GAME.round_resets.ante = maxfloat
	end
	local ANTE = G.GAME.round_resets.ante
	Q(function()
		if Jen.config.straddle.enabled and G.GAME.straddle_active and mod ~= 0 and not no_straddle then
			if math.ceil(mod) > 1 then mod = mod - G.GAME.straddle end
			local add = (math.abs(mod) * (Jen.config.straddle.acceleration and math.ceil(math.max(1, (G.GAME.straddle - (Jen.config.straddle.progress_max ^ 2))) / Jen.config.straddle.progress_increment) or 1) * (mod < 0 and Jen.config.straddle.backwards_mod or 1))
			if ANTE < 0 then
				add = add + math.ceil(math.abs(ANTE) ^ 2)
			end
			if G.GAME.nitro then add = add * Jen.config.straddle.progress_min end
			add = math.min(add, 9e15)
			progress_straddle(add)
		end return true
	end)
	QR(function() G.GAME.round_resets.blind_ante = G.GAME.round_resets.ante return true end, 99)
end

function bulk_sell_cards(cards, include_eternal, doublesell)
	local value = 0
	for k, v in pairs(cards) do
		if include_eternal or not (v.ability or {}).eternal then
			if doublesell and (v.edition or {}).jen_diplopia then
				v:sell_card()
				QR(function() if v then v:sell_card() end return true end, 5)
			else
				v:sell_card()
			end
		end
	end
end

function fastlv(card, hand, instant, amount, no_astronomy, no_astronomy_omega, no_jokers)
	if instant then
		level_up_hand(card, hand, instant, amount, no_astronomy, no_astronomy_omega, no_jokers)
	else
		jl.h(localize(hand, 'poker_hands'), G.GAME.hands[hand].chips + (G.GAME.hands[hand].l_chips * amount), G.GAME.hands[hand].mult + (G.GAME.hands[hand].l_mult * amount), G.GAME.hands[hand].level + amount, true)
		level_up_hand(card, hand, true, amount, no_astronomy, no_astronomy_omega, no_jokers)
		delay(0.1)
	end
end

local scr = Card.sell_card

function Card:sell_card()
	local CEN = self.gc and self:gc()
	if CEN and CEN.set ~= 'Planet' and CEN.key ~= 'c_black_hole' and Jen.hv('astronomy', 5) and not (self.edition or {}).negative and not (self.base or {}).value and not (self.base or {}).suit then
		for i = 1, self:getEvalQty() do
			Q(function()
				local card2 = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'astronomy5_planet')
				card2.no_omega = true
				play_sound('jen_draw')
				card2:add_to_deck()
				G.consumeables:emplace(card2)
			return true end)
		end
	end
	if Jen.hv('astronomy', 6) and CEN and not CEN.cant_astronomy then
		local hand = jl.rndhand()
		jl.th(hand)
		fastlv(self, hand, nil, self.sell_cost / 4)
		jl.ch()
	end
	if CEN and (CEN.key == 'j_cry_altgoogol' or CEN.key == 'j_blueprint') then
		for k, v in ipairs(G.jokers.cards) do
			if v.gc and v ~= self then
				local key = v:gc().key
				if key == 'j_cry_altgoogol' or key == 'j_blueprint' or key == 'c_cry_pointer' then
					v:remove_from_deck()
					v.area:remove_card(v)
					QR(function() if v then v:add_to_deck() G.jokers:emplace(v) end return true end, 99)
				end
				key = nil
			end
		end
	end
	if CEN and CEN.set == 'Joker' and #SMODS.find_card('j_jen_amalgam') > 0 and get_kosmos() then
		local rare = tostring(CEN.rarity)
		local value = get_amalgam_value(rare)
		if value and to_big(value) > to_big(0) then
			add_malice(value, nil, true)
		end
	end
	scr(self)
end

function Card:sell_card_jokercalc()
	jl.jokers({selling_card = true, card = self})
	self:sell_card()
end

function lvupallhands(amnt, card, fast)
	if not amnt then return end
	if amnt == 0 then return end
	if (G.SETTINGS.FASTFORWARD or 0) > 1 then fast = true end
	if fast then
		Q(function() if card then
			card:juice_up(0.8, 0.5)
		end return true end)
		jl.h(localize('k_all_hands'), (amnt > 0 and '+' or '-'), (amnt > 0 and '+' or '-'), (amnt > 0 and '+' or '-') .. number_format(math.abs(amnt)), true)
	else
		jl.th('all')
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
			play_sound('tarot1')
			if card then card:juice_up(0.8, 0.5) end
		return true end }))
		jl.h(localize('k_all_hands'), (amnt > 0 and '+' or '-'), (amnt > 0 and '+' or '-'), (amnt > 0 and '+' or '-') .. number_format(math.abs(amnt)), true)
		delay(1.3)
	end
	for k, v in pairs(G.GAME.hands) do
		level_up_hand(card, k, true, amnt)
	end
	jl.ch()
end

function black_hole_effect(card, amnt)
	if (G.SETTINGS.FASTFORWARD or 0) > 0 then
		lvupallhands(amnt, card)
	else
			update_hand_text(
				{ sound = "button", volume = 0.7, pitch = 0.8, delay = 0.3 },
				{ handname = localize("k_all_hands"), chips = "...", mult = "...", level = "" }
			)
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = true
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { mult = "+", StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { chips = "+", StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = nil
					return true
				end,
			}))
			update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, { level = "+" .. amnt })
			delay(1.3)
			for k, v in pairs(G.GAME.hands) do
				level_up_hand(card, k, true, amnt)
			end
			jl.ch()
	end
end

function Card:blackhole(amnt)
	black_hole_effect(self, amnt)
end

function Card:apply_cumulative_levels(hand)
	G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
			if self then
				if hand and G.GAME.hands[hand] then
					jl.th(hand)
					level_up_hand(self, hand, false, (self.cumulative_lvs or 1))
					self.cumulative_lvs = nil
					jl.ch()
				else
					lvupallhands(self.cumulative_lvs, self)
					self.cumulative_lvs = nil
				end
			end
		return true end }))
	return true end }))
end

local function change_blind_size(newsize, instant, silent)
	newsize = to_big(newsize)
	G.GAME.blind.chips = newsize
	local chips_UI = G.hand_text_area.blind_chips
	if instant then
		G.GAME.blind.chip_text = number_format(newsize)
		G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
		G.HUD_blind:recalculate() 
		chips_UI:juice_up()
		if not silent then play_sound('chips2') end
	else
		G.E_MANAGER:add_event(Event({func = function()
			G.GAME.blind.chip_text = number_format(newsize)
			G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
			G.HUD_blind:recalculate() 
			chips_UI:juice_up()
			if not silent then play_sound('chips2') end
		return true end }))
	end
end

function card_status_text(card, text, xoffset, yoffset, colour, size, DELAY, juice, jiggle, align, sound, volume, pitch, trig, F)
	if (DELAY or 0) <= 0 then
		if F and type(F) == 'function' then F(card) end
		attention_text({
			text = text,
			scale = size or 1, 
			hold = 0.7,
			backdrop_colour = colour or (G.C.FILTER),
			align = align or 'bm',
			major = card,
			offset = {x = xoffset or 0, y = yoffset or (-0.05*G.CARD_H)}
		})
		if sound then
			play_sound(sound, pitch or (0.9 + (0.2*math.random())), volume or 1)
		end
		if juice then
			if type(juice) == 'table' then
				card:juice_up(juice[1], juice[2])
			elseif type(juice) == 'number' and juice ~= 0 then
				card:juice_up(juice, juice / 6)
			end
		end
		if jiggle then
			G.ROOM.jiggle = G.ROOM.jiggle + jiggle
		end
	else
		G.E_MANAGER:add_event(Event({
			trigger = trig,
			delay = DELAY,
			func = function()
				if F and type(F) == 'function' then F(card) end
				attention_text({
					text = text,
					scale = size or 1, 
					hold = 0.7 + (DELAY or 0),
					backdrop_colour = colour or (G.C.FILTER),
					align = align or 'bm',
					major = card,
					offset = {x = xoffset or 0, y = yoffset or (-0.05*G.CARD_H)}
				})
				if sound then
					play_sound(sound, pitch or (0.9 + (0.2*math.random())), volume or 1)
				end
				if juice then
					if type(juice) == 'table' then
						card:juice_up(juice[1], juice[2])
					elseif type(juice) == 'number' and juice ~= 0 then
						card:juice_up(juice, juice / 6)
					end
				end
				if jiggle then
					G.ROOM.jiggle = G.ROOM.jiggle + jiggle
				end
				return true
			end
		}))
	end
end

function Jen.gods()
	return #SMODS.find_card('j_jen_godsmarble') > 0
end

local cacsr = CardArea.change_size
function CardArea:change_size(mod, silent)
	cacsr(self, mod)
	if not silent then self:announce_sizechange(mod) end
end

function CardArea:announce_sizechange(mod, set)
	if (mod or 0) ~= 0 then
		G.E_MANAGER:add_event(Event({
			trigger = 'immediate',
			func = function()
				mod = mod or 0
				local text = 'Max +'
				local col = G.C.GREEN
				if set then
					text = 'Max ='
					col = G.C.FILTER
				elseif mod < 0 then
					text = 'Max -'
					col = G.C.RED
				end
				attention_text({
					text = text..tostring(math.abs(mod)),
					scale = 1, 
					hold = 1,
					cover = self,
					cover_colour = col,
					align = 'cm',
				})
				play_sound('highlight2', 0.715, 0.2)
				play_sound('generic1')
				return true
			end
		}))
		delay(0.5)
	end
end

function CardArea:change_size_absolute(mod, silent)
	self.config.card_limit = self.config.card_limit + (mod or 0)
	if not silent then self:announce_sizechange(mod) end
end

function CardArea:set_size_absolute(mod, silent)
	self.config.card_limit = (mod or self.config.card_limit)
	if not silent then self:announce_sizechange(mod, true) end
end

function CardArea:announce_highlightchange(mod)
	if (mod or 0) ~= 0 then
		G.E_MANAGER:add_event(Event({
			trigger = 'immediate',
			func = function()
				mod = mod or 0
				local text = 'Highlights +'
				local col = G.C.PURPLE
				if mod < 0 then
					text = 'Highlights -'
					col = G.C.FILTER
				end
				attention_text({
					text = text..tostring(math.abs(mod)),
					scale = 1, 
					hold = 1,
					cover = self,
					cover_colour = col,
					align = 'cm',
				})
				play_sound('highlight2', 0.715, 0.2)
				play_sound('generic1')
				return true
			end
		}))
		delay(0.5)
	end
end

function CardArea:change_max_highlight(mod, silent)
	self.config.highlighted_limit = self.config.highlighted_limit + (mod or 0)
	if not silent then self:announce_highlightchange(mod) end
end

function ease_winante(mod)
	G.E_MANAGER:add_event(Event({
		trigger = 'immediate',
		func = function()
			local ante_UI = G.hand_text_area.ante
			mod = mod or 0
			local text = 'Max'
			local col = G.C.PURPLE
			if mod < 0 then
				text = text .. ' -'
				col = G.C.GREEN
			else
				text = text .. ' +'
			end
			ante_UI.config.object:update()
			G.GAME.win_ante=G.GAME.win_ante+mod
			G.HUD:recalculate()
			attention_text({
				text = text..tostring(math.abs(mod)),
				scale = 0.6, 
				hold = 0.9,
				cover = ante_UI.parent,
				cover_colour = col,
				align = 'cm',
			})
			play_sound('highlight2', 0.4, 0.2)
			play_sound('generic1')
			return true
		end
	}))
end

--[[
function ease_ante_autoraisewinante(mod)
	local targetante = G.GAME.round_resets.ante + mod
	ease_ante(mod)
	if G.GAME.win_ante < targetante then
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.1, func = function()
			ease_winante(targetante - G.GAME.win_ante)
		return true end }))
	end
end
]]

local function multante(number)
	--local targetante = math.abs(G.GAME.round_resets.ante * (2 ^ (number or 1)))
	if G.GAME.round_resets.ante < 1 then
		ease_ante(math.abs(G.GAME.round_resets.ante) + 1)
	else
		ease_ante(math.min(1e308, G.GAME.round_resets.ante * (2 ^ (number or 1)) - G.GAME.round_resets.ante))
	end
	--[[if G.GAME.win_ante < targetante then
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.1, func = function()
			ease_winante(targetante - G.GAME.win_ante)
		return true end }))
	end]]
end

local function hsv(h, s, v)
    if s <= 0 then return v,v,v end
    h = h*6
    local c = v*s
    local x = (1-math.abs((h%2)-1))*c
    local m,r,g,b = (v-c), 0, 0, 0
    if h < 1 then
        r, g, b = c, x, 0
    elseif h < 2 then
        r, g, b = x, c, 0
    elseif h < 3 then
        r, g, b = 0, c, x
    elseif h < 4 then
        r, g, b = 0, x, c
    elseif h < 5 then
        r, g, b = x, 0, c
    else
        r, g, b = c, 0, x
    end
    return r+m, g+m, b+m
end

local maxie_desc = {
	'Create {C:attention}2 {C:green}random {C:attention}Boosters{}, and a fixed',
	'{C:green}~15% chance{} to also create a {C:green}random {C:attention}Voucher',
	'whenever you use any {C:attention}non-{C:dark_edition}Negative{}',
	''
}

local maxie_consumables = {
	Temperance = 'c_temperance',
	['The Hermit'] = 'c_hermit',
	['The Magician'] = 'c_magician',
	['The Centurion'] = 'c_jen_centurion',
	Enceladus = 'c_jen_enceladus',
	Cryptid = 'c_cryptid',
	Infirmity = 'c_jen_reverse_strength',
	['The Low Laywoman'] = 'c_jen_reverse_high_priestess',
	Cunctation = 'c_jen_reverse_judgement'
}

local maxie_added = 0

local misc_done = false

local game_updateref = Game.update
function Game:update(dt)
	if not Jen.bans_done then
		Jen:delete_hardbans()
		Jen.bans_done = true
	end
	if not misc_done then
		if G.P_CENTERS.j_jen_maxie then
			for k, v in pairs(maxie_consumables) do
				local cen = G.P_CENTERS[v]
				if cen and Jen.config.disable_bans or (not jl.bf(v, Jen.config.bans) and not jl.bf('!' .. v, Jen.config.bans)) then
					if maxie_added >= 3 then
						maxie_desc[#maxie_desc] = maxie_desc[#maxie_desc] .. ','
						maxie_desc[#maxie_desc + 1] = ''
						maxie_added = 0
					end
					if maxie_desc[#maxie_desc] ~= '' then
						maxie_desc[#maxie_desc] = maxie_desc[#maxie_desc] .. ', {C:' .. string.lower(cen.set) .. '}' .. k .. '{}'
					else
						maxie_desc[#maxie_desc] = '{C:' .. string.lower(cen.set) .. '}' .. k .. '{}'
					end
					maxie_added = maxie_added + 1
				end
			end
			maxie_desc[#maxie_desc + 1] = ' '
			maxie_desc[#maxie_desc + 1] = caption('#1#')
			maxie_desc[#maxie_desc + 1] = faceart('Maxie')
			G.P_CENTERS.j_jen_maxie.loc_txt.text = maxie_desc
			init_localization()
		end
		G.P_CENTERS.c_soul.fusable = true
		G.P_CENTERS.c_black_hole.fusable = true
		if G.P_CENTERS.c_cry_white_hole then G.P_CENTERS.c_cry_white_hole.fusable = true end
		misc_done = true
	end
	game_updateref(self, dt)
	if G.ARGS.LOC_COLOURS then
	
		if not Jen.initialised_locale_colours then
			for k, v in pairs(Jen.locale_colours) do
				G.ARGS.LOC_COLOURS[k] = HEX(v)
				self.C[k] = HEX(v)
				Jen.initialised_locale_colours = true
			end
		end

		local r, g, b = hsv(self.C.jen_RGB_HUE / 360, .5, 1)

		self.C.jen_RGB[1] = r
		self.C.jen_RGB[3] = g
		self.C.jen_RGB[2] = b

		self.C.jen_RGB_HUE = (self.C.jen_RGB_HUE + 0.5) % 360
		G.ARGS.LOC_COLOURS.jen_RGB = self.C.jen_RGB
		
	end
	if G.GAME then
		if G.ARGS.score_intensity.earned_score then
			if not to_big(G.ARGS.score_intensity.earned_score):isFinite() then
				G.ARGS.score_intensity.earned_score = to_big(G.ARGS.score_intensity.required_score)
			end
		end
		if not Jen.config.disable_bans and G.GAME.banned_keys then
			for k, v in ipairs(Jen.config.bans) do
				if string.sub(v, 1, 1) == '!' then
					G.GAME.banned_keys[string.sub(v, 2, string.len(v))] = true
				else
					G.GAME.banned_keys[v] = true
				end
			end
		end
		if G.GAME.modifiers then
			if not G.GAME.modifiers.jen_initialise_buffs then
				G.GAME.modifiers.jen_initialise_buffs = true
				G.GAME.modifiers.cry_booster_packs = (G.GAME.modifiers.cry_booster_packs or 2) + Jen.config.shop_booster_pack_count_buff
				change_shop_size(Jen.config.shop_size_buff)
				SMODS.change_voucher_limit(Jen.config.shop_voucher_count_buff)
			end
		end
		if G.GAME.orrery then
			local reference = ''
			local should_rebalance = false
			for k, v in pairs(G.GAME.hands) do
				if k ~= 'cry_WholeDeck' then
					if reference == '' then
						reference = k
					elseif v.chips ~= G.GAME.hands[reference].chips or v.mult ~= G.GAME.hands[reference].mult or v.level ~= G.GAME.hands[reference].level then
						should_rebalance = true
						break
					end
				end
			end
			if should_rebalance then
				local handcount = (#G.handlist - 1)
				local pools = {
					chips = to_big(0),
					mult = to_big(0),
					level = 0
				}
				for k, v in pairs(G.GAME.hands) do
					if k ~= 'cry_WholeDeck' then
						pools.chips = pools.chips + v.chips
						pools.mult = pools.mult + v.mult
						pools.level = pools.level + v.level
					end
				end
				for k, v in pairs(G.GAME.hands) do
					if k ~= 'cry_WholeDeck' then
						v.chips = pools.chips / handcount
						v.mult = pools.mult / handcount
						v.level = pools.level / handcount
					end
				end
				jl.h(localize('k_all_hands'), pools.chips / handcount, pools.mult / handcount, pools.level / handcount)
				delay(1)
				jl.ch()
			end
		end
		Jen.kudaai_active = (#SMODS.find_card('j_jen_kudaai') + #SMODS.find_card('j_jen_foundry')) > 0
		Jen.luke_active = #SMODS.find_card('j_jen_luke') > 0
		Jen.dandy_active = #SMODS.find_card('j_jen_dandy') > 0
	end
end

local annoying = {
	colour = HEX('155fd9'),
	text_colour = HEX('ff8170'),
	text = {
		'Annoying Little Shit'
	}
}

local sevensins = {
	guilduryn = {
		colour = HEX('7c0000'),
		text_colour = G.C.RED,
		text = {
			'The Seven Sins',
			'Pride'
		}
	},
	hydrangea = {
		colour = HEX('7c0000'),
		text_colour = G.C.RED,
		text = {
			'The Seven Sins',
			'Wrath'
		}
	},
	heisei = {
		colour = HEX('7c0000'),
		text_colour = G.C.RED,
		text = {
			'The Seven Sins',
			'Greed'
		}
	},
	soryu = {
		colour = HEX('7c0000'),
		text_colour = G.C.RED,
		text = {
			'The Seven Sins',
			'Lust'
		}
	},
	shikigami = {
		colour = HEX('7c0000'),
		text_colour = G.C.RED,
		text = {
			'The Seven Sins',
			'Gluttony'
		}
	},
	leviathan = {
		colour = HEX('7c0000'),
		text_colour = G.C.RED,
		text = {
			'The Seven Sins',
			'Envy'
		}
	},
	behemoth = {
		colour = HEX('7c0000'),
		text_colour = G.C.RED,
		text = {
			'The Seven Sins',
			'Sloth'
		}
	}
}

local twitch = {
	colour = HEX('9164ff'),
	text_colour = G.C.jen_RGB,
	text = {
		'Twitch Series'
	}
}

local youtube = {
	colour = HEX('ff0000'),
	text_colour = G.C.jen_RGB,
	text = {
		'YouTube Series'
	}
}

local iconic = {
	colour = HEX('00ff99'),
	text_colour = G.C.jen_RGB,
	text = {
		'Icon Series'
	}
}

local jenfriend = {
	colour = HEX('7c7cff'),
	text_colour = G.C.jen_RGB,
	text = {
		'Friends of Jen Series'
	}
}

local gaming = {
	colour = HEX('7f00ff'),
	text_colour = G.C.jen_RGB,
	text = {
		'Gaming Legends Series'
	}
}

local secret = {
	colour = G.C.BLACK,
	text_colour = G.C.EDITION,
	text = {
		'Secret'
	}
}

--MISCELLANEOUS

local function abletouseabilities()
	return jl.canuse() and not jl.booster()
end

--CONSUMABLE TYPES

SMODS.ObjectTypes.Tarot.collection_rows = {7,7,7}
SMODS.ObjectTypes.Spectral.collection_rows = {7,7,7}
SMODS.ObjectTypes.Planet.collection_rows = {7,7,7}
SMODS.ObjectTypes.Planet.default = 'c_jen_debris'

SMODS.ConsumableType {
	key = 'jen_tokens',
	collection_rows = {6, 6},
	primary_colour = G.C.CHIPS,
	secondary_colour = G.C.VOUCHER,
	default = 'c_jen_token_tag_standard',
	loc_txt = {
		collection = 'Tokens',
		name = 'Token'
	},
	shop_rate = 3
}

SMODS.ConsumableType {
	key = 'jen_uno',
	collection_rows = {7, 7, 7},
	primary_colour = G.C.CHIPS,
	secondary_colour = HEX('ff0000'),
	default = 'c_jen_uno_null',
	loc_txt = {
		collection = 'UNO Cards',
		name = 'UNO'
	},
	shop_rate = 2
}

SMODS.ConsumableType {
	key = 'jen_ability',
	collection_rows = {4, 4},
	primary_colour = G.C.CHIPS,
	secondary_colour = G.C.GREEN,
	loc_txt = {
		collection = 'Ability Cards',
		name = 'Ability Card'
	},
	shop_rate = 0
}

SMODS.ConsumableType {
	key = 'jen_omegaconsumable',
	collection_rows = {7, 7, 7},
	primary_colour = G.C.CHIPS,
	secondary_colour = G.C.BLACK,
	default = 'c_jen_pluto_omega',
	loc_txt = {
		collection = 'Omega Cards',
		name = 'Omega'
	},
	shop_rate = 0
}

if Jen.config.chess_cards then
	SMODS.ConsumableType {
		key = 'jen_chess',
		collection_rows = {6, 6},
		primary_colour = G.C.CHIPS,
		secondary_colour = G.C.GREY,
		default = 'c_jen_chess_duck_l',
		loc_txt = {
			collection = 'Chess Cards',
			name = 'Chess Piece'
		},
		shop_rate = 2
	}
end

--it'll be a while before we get to this point...
--[[
SMODS.ConsumableType {
	key = 'jen_weapon',
	collection_rows = {5, 5},
	primary_colour = G.C.CHIPS,
	secondary_colour = HEX('6a7f00'),
	loc_txt = {
		collection = 'Weapons',
		name = 'Weapon'
	},
	shop_rate = 0
}

SMODS.ConsumableType {
	key = 'jen_gear',
	collection_rows = {5, 5},
	primary_colour = G.C.CHIPS,
	secondary_colour = HEX('00ffaf'),
	loc_txt = {
		collection = 'Gear',
		name = 'Gear'
	},
	shop_rate = 0
}

SMODS.ConsumableType {
	key = 'jen_bauble',
	collection_rows = {5, 5},
	primary_colour = G.C.CHIPS,
	secondary_colour = HEX('af00af'),
	loc_txt = {
		collection = 'Baubles',
		name = 'Bauble'
	},
	shop_rate = 0
}
]]

--SOUNDS

SMODS.Sound({
	key = "musicIcon",
	path = "musicIcon.ogg",
	pitch = 1,
	select_music_track = function()
		return ((SMODS.OPENED_BOOSTER or {}).ability or {}).icon_pack and G.booster_pack and not G.booster_pack.REMOVED
	end,
})

SMODS.Sound({key = 'uno', path = 'uno.ogg'})
SMODS.Sound({key = 'misc1', path = 'misc1.ogg'})
SMODS.Sound({key = 'done', path = 'done.ogg'})
SMODS.Sound({key = 'e_crystal', path = 'e_crystal.ogg'})
SMODS.Sound({key = 'grindstone', path = 'grindstone.ogg'})
SMODS.Sound({key = 'metalhit', path = 'metal_hit.ogg'})
SMODS.Sound({key = 'enlightened', path = 'enlightened.ogg'})
SMODS.Sound({key = 'omegacard', path = 'omega_card.ogg'})
SMODS.Sound({key = 'chime', path = 'chime.ogg'})
SMODS.Sound({key = 'enchant', path = 'enchant.ogg'})
for i = 1, 2 do
	SMODS.Sound({key = 'metalbreak' .. i, path = 'metal_break' .. i .. '.ogg'})
end
SMODS.Sound({key = 'ambientSinister', path = 'ambientSinister.ogg'})
SMODS.Sound({key = 'ambientDramatic', path = 'ambientDramatic.ogg'})
for i = 1, 3 do
	SMODS.Sound({key = 'crystalhit' .. i, path = 'crystal_hit' .. i .. '.ogg'})
	SMODS.Sound({key = 'hurt' .. i, path = 'hurt' .. i .. '.ogg'})
	SMODS.Sound({key = 'ambientSurreal' .. i, path = 'ambientSurreal' .. i .. '.ogg'})
end
for i = 1, 8 do
	SMODS.Sound({key = 'gore' .. i, path = 'gore' .. i .. '.ogg'})
end
for i = 1, 4 do
	SMODS.Sound({key = 'boost' .. i, path = 'boost' .. i .. '.ogg'})
end
SMODS.Sound({key = 'crystalbreak', path = 'crystal_break.ogg'})
SMODS.Sound({key = 'wererich', path = 'wererich.ogg'})
SMODS.Sound({key = 'tension', path = 'tension.ogg'})
SMODS.Sound({key = 'relief', path = 'relief.ogg'})
SMODS.Sound({key = 'straddle_tick', path = 'straddle_tick.ogg'})
SMODS.Sound({key = 'straddle_increase', path = 'straddle_increase.ogg'})
SMODS.Sound({key = 'mushroom1', path = 'mushroom1.ogg'})
SMODS.Sound({key = 'mushroom2', path = 'mushroom2.ogg'})
SMODS.Sound({key = 'draw', path = 'draw.ogg'})
SMODS.Sound({key = 'pop', path = 'pop.ogg'})
SMODS.Sound({key = 'gong', path = 'gong.ogg'})
SMODS.Sound({key = 'heartbeat', path = 'warning_heartbeat.ogg'})
SMODS.Sound({key = 'sin', path = 'e_sinned.ogg'})
for i = 1, 5 do
	SMODS.Sound({key = 'collapse' .. i, path = 'collapse_' .. i .. '.ogg'})
end
for i = 1, 6 do
	SMODS.Sound({key = 'grand' .. i, path = 'grand_dad' .. i .. '.ogg'})
end
--EDITION ASSETS

local shaders = {
	'chromatic',
	'gilded',
	'laminated',
	'reversed',
	'sepia',
	'wavy',
	'dithered',
	'watered',
	'sharpened',
	'missingtexture',
	'prismatic',
	'polygloss',
	'ink',
	'strobe',
	'sequin',
	'blaze',
	'encoded',
	'misprint',
	--'graymatter',
	--'hardstone',
	--'bedrock',
	--'bismuth',
	'unreal',
	'ionized',
	'diplopia',
	'moire'
}

local shaders2 = {
	'bloodfoil',
	'cosmic',
	'shaderpack_1',
	'shaderpack_4',
	'wtfwave'
}

local shaders3 = {
	'wee',
	'jumbo'
}

for k, v in pairs(shaders) do
	SMODS.Shader({key = v, path = v .. '.fs'})
	SMODS.Sound({key = 'e_' .. v, path = 'e_' .. v .. '.ogg'})
end

for k, v in pairs(shaders2) do
	SMODS.Shader({key = v, path = v .. '.fs'})
end

for k, v in pairs(shaders3) do
	SMODS.Sound({key = 'e_' .. v, path = 'e_' .. v .. '.ogg'})
end

--EDITIONS

SMODS.Edition({
    key = "dithered",
    loc_txt = {
        name = "Dithered",
        label = "Dithered",
        text = {
            "{C:red}#1#{} Chips",
            "{C:mult}+#2#{} Mult",
			'{C:dark_edition,s:0.7,E:2}Shader by : stupxd'
        }
    },
    discovered = true,
    unlocked = true,
    shader = 'dithered',
    config = {chips = -25, mult = 33},
	sound = {
		sound = 'jen_e_dithered',
		per = 1,
		vol = 0.6
	},
    in_shop = true,
    weight = 8,
    extra_cost = 2,
    apply_to_float = false,
    loc_vars = function(self)
        return {vars = {self.config.chips, self.config.mult}}
    end,
	calculate = function(self, card, context)
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {chips = self.config.chips, mult = self.config.mult}
		end
	end
})

SMODS.Edition({
    key = "sharpened",
    loc_txt = {
        name = "Sharpened",
        label = "Sharpened",
        text = {
            "{C:chips}+#1#{} Chips",
            "{C:red}#2#{} Mult",
			'{C:dark_edition,s:0.7,E:2}Shader by : stupxd'
        }
    },
    discovered = true,
    unlocked = true,
    shader = 'sharpened',
    config = {chips = 333, mult = -5},
	sound = {
		sound = 'jen_e_sharpened',
		per = 1.2,
		vol = 0.6
	},
    in_shop = true,
    weight = 8,
    extra_cost = 2,
    apply_to_float = false,
    loc_vars = function(self)
        return {vars = {self.config.chips, self.config.mult}}
    end
    ,
    	calculate = function(self, card, context)
    		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
    			return {chips = self.config.chips, mult = self.config.mult}
    		end
    	end
})

SMODS.Edition({
    key = "prismatic",
    loc_txt = {
        name = "Prismatic",
        label = "Prismatic",
        text = {
            "{X:mult,C:white}x#1#{C:mult} Mult{}, {X:chips,C:white}x#2#{C:chips} Chips",
			'and {C:money}+$#3#{} when scored',
			'{C:dark_edition,s:0.7,E:2}Shader by : Oiiman'
        }
    },
    shader = "prismatic",
    discovered = true,
    unlocked = true,
    config = {x_mult = 15, x_chips = 5, p_dollars = 5},
	sound = {
		sound = 'jen_e_prismatic',
		per = 1.2,
		vol = 0.5
	},
    in_shop = true,
    weight = 0.2,
    extra_cost = 12,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_vars = function(self)
        return { vars = { self.config.x_mult, self.config.x_chips, self.config.p_dollars } }
    end,
	calculate = function(self, card, context)
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {x_mult = self.config.x_mult, x_chips = self.config.x_chips, dollars = self.config.p_dollars}
		end
	end
})
SMODS.Edition({
	key = "ionized",
	loc_txt = {
		name = "Ionised",
		label = "Ionised",
		text = {
			"{C:blue}+#1# Chips{}, {C:red,s:1.2}BUT",
			"{X:red,C:white}x#2#{C:red} Mult",
			'{C:dark_edition,s:0.7,E:2}Shader by : Oiiman'
		}
	},
	shader = "ionized",
	discovered = true,
	unlocked = true,
	config = {chips = 2000, x_mult = 0.5},
	sound = {
		sound = 'jen_e_ionized',
		per = 1,
		vol = 0.5
	},
	in_shop = true,
	weight = 3,
	extra_cost = 7,
	apply_to_float = false,
	get_weight = function(self)
		return G.GAME.edition_rate * self.weight
	end,
	loc_vars = function(self)
		return { vars = { self.config.chips, self.config.x_mult } }
	end,
	calculate = function(self, card, context)
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {chips = self.config.chips, x_mult = self.config.x_mult}
		end
	end
})

SMODS.Edition({
    key = "misprint",
    loc_txt = {
        name = "Misprint",
        label = "Misprint",
        text = {
            "Card has {C:attention}unknown, random bonus values",
            '{C:inactive}({C:tarot}+{C:inactive}, {X:tarot,C:white}x{C:inactive}, and {X:tarot,C:dark_edition}^{C:inactive} Chips and/or Mult)',
			'{C:dark_edition,s:0.7,E:2}Shader by : stupxd'
        }
    },
    shader = "misprint",
	disable_base_shader = true,
	no_shadow = true,
    discovered = true,
    unlocked = true,
    config = {},
	sound = {
		sound = 'jen_e_misprint',
		per = 1,
		vol = 0.5
	},
	misc_badge = {
		colour = G.C.RARITY[3],
		text = {
			"Rare"
		}
	},
    in_shop = true,
    weight = 1.5,
    extra_cost = 8,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
})

local wee_description = {
	'{C:inactive}==On Jokers==',
	'Values of card {C:attention}increase by 8%',
	'whenever a {C:attention}2{} scores',
	'{C:inactive}(If possible)',
	' ',
	'{C:inactive}==On Playing Cards==',
	'{C:chips}Extra chips{} on card increases by',
	'{X:attention,C:white}3x{} the card\'s rank when scored',
	'{C:inactive}(2s gain +60 instead, rankless cards gain +25 instead)',
	' ',
	'{C:inactive,E:1,s:0.7}Haha, look; it\'s tiny!'
}

SMODS.Edition({
    key = "wee",
    no_edeck= true,
    loc_txt = {
        name = "Wee",
        label = "Wee",
        text = wee_description
    },
	on_apply = function(card)
		G.E_MANAGER:add_event(Event({blocking = false, blockable = false, func = function()
			card:shrink(Jen.config.wee_sizemod)
		return true end}))
	end,
	on_remove = function(card)
		G.E_MANAGER:add_event(Event({blocking = false, blockable = false, func = function()
			card:grow(Jen.config.wee_sizemod)
		return true end}))
	end,
    shader = false,
    discovered = true,
    unlocked = true,
    config = {twos_scored = 0},
	sound = {
		sound = 'jen_e_wee',
		per = 1,
		vol = 0.5
	},
    in_shop = true,
    weight = 4,
    extra_cost = 5,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight * (G.GAME.weeck and 222.22 or 1)
    end,
})

SMODS.Edition({
    key = "jumbo",
    no_edeck = true,
    loc_txt = {
        name = "Jumbo",
        label = "Jumbo",
        text = {
			"All card values are",
			"{C:attention}multiplied{} by {C:attention}up to 100",
			"{C:inactive}(If possible)",
			"{C:inactive,s:1}(May be less effective on some items)",
			"{C:inactive,E:1,s:0.7}Whoa, it's huge!!{}"
        }
    },
	misc_badge = {
		colour = G.C.RARITY[4],
		text = {
			"Legendary"
		}
	},
	on_apply = function(card)
		G.E_MANAGER:add_event(Event({blocking = false, blockable = false, func = function()
			card:grow(Jen.config.wee_sizemod)
		return true end}))
		local modifier = 100
		local obj = card:gc()
		if obj.set == 'Booster' or obj.jumbo_mod then
			modifier = obj.jumbo_mod or 10
		end
		local was_added = card.added_to_deck
		if was_added then
			card:remove_from_deck()
		end
		Cryptid.misprintize(card, {min = modifier, max = modifier}, nil, true)
		if was_added then
			card:add_to_deck()
		end
	end,
	on_remove = function(card)
		G.E_MANAGER:add_event(Event({blocking = false, blockable = false, func = function()
			card:shrink(Jen.config.wee_sizemod)
		return true end}))
		local modifier = 100
		local was_added = card.added_to_deck
		if was_added then
			card:remove_from_deck()
		end
		Cryptid.misprintize(card, {min = 1/modifier, max = 1/modifier}, nil, true)
		if was_added then
			card:add_to_deck()
		end
	end,
    shader = false,
    discovered = true,
    unlocked = true,
    config = {twos_scored = 0},
	sound = {
		sound = 'jen_e_jumbo',
		per = 1,
		vol = 0.5
	},
    in_shop = true,
    weight = 0.8,
    extra_cost = 12,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
})

SMODS.Edition({
    key = "blaze",
    loc_txt = {
        name = "Blaze",
        label = "Blaze",
        text = {
			'Retrigger this card {C:attention}#1#{} time(s), {C:red,s:1.2}BUT',
            "{C:red}#2#{C:chips} Chips{} and {C:red}#3#{C:mult} Mult",
			'{C:dark_edition,s:0.7,E:2}Shader by : stupxd'
        }
    },
    shader = "blaze",
    discovered = true,
    unlocked = true,
    config = {retriggers = 5, chips = -5, mult = -1},
	sound = {
		sound = 'jen_e_blaze',
		per = 1,
		vol = 0.5
	},
    in_shop = true,
    weight = 5,
    extra_cost = 7,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_vars = function(self)
        return { vars = { self.config.retriggers, self.config.chips, self.config.mult } }
    end,
	calculate = function(self, card, context)
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {
				retriggers = self.config.retriggers,
				chips = self.config.chips,
				mult = self.config.mult
			}
		end
	end
})

SMODS.Edition({
    key = "wavy",
    loc_txt = {
        name = "Wavy",
        label = "Wavy",
        text = {
			'Retrigger this card {C:attention}#1#{} time(s)',
			'{C:dark_edition,s:0.7,E:2}Shader by : stupxd'
        }
    },
	misc_badge = {
		colour = G.C.RARITY[3],
		text = {
			"Rare"
		}
	},
    shader = "wavy",
	disable_base_shader = true,
	no_shadow = true,
    discovered = true,
    unlocked = true,
    config = {retriggers = 30},
	sound = {
		sound = 'jen_e_wavy',
		per = 1,
		vol = 0.5
	},
    in_shop = true,
    weight = 1,
    extra_cost = 13,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_vars = function(self)
        return { vars = { self.config.retriggers } }
    end,
	calculate = function(self, card, context)
		if context.edition and context.cardarea == G.jokers and context.joker_main then
			return {
				retriggers = self.config.retriggers
			}
		end
		if context.repetition and context.cardarea == G.play then
			return {
				repetitions = self.config.retriggers
			}
		end
	end
})

SMODS.Edition({
    key = "encoded",
    loc_txt = {
        name = "Encoded",
        label = "Encoded",
        text = {
			'Creates {C:attention}#1# {C:dark_edition}Negative {C:cry_code}Code{} cards',
			'when destroyed, sold or used',
			mayoverflow,
			'{C:dark_edition,s:0.7,E:2}Shader by : Oiiman'
        }
    },
    shader = "encoded",
    discovered = true,
    unlocked = true,
    config = {codes = 15},
	sound = {
		sound = 'jen_e_encoded',
		per = 1,
		vol = 0.5
	},
	misc_badge = {
		colour = G.C.RARITY[3],
		text = {
			"Rare"
		}
	},
    in_shop = true,
    weight = 1,
    extra_cost = 9,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_vars = function(self)
        return { vars = { self.config.codes } }
    end
})

SMODS.Edition({
    key = "diplopia",
    loc_txt = {
        name = "Diplopia",
        label = "Diplopia",
        text = {
			'Retrigger this card {C:attention}#1#{} time(s)',
			'{C:attention}Resists{} being destroyed/sold {C:attention}once{}, after which',
			'this edition is then removed from the card',
			'{C:inactive}(Selling will still give money)',
			"{C:inactive}I'm... seeing... double...!",
			'{C:dark_edition,s:0.7,E:2}Shader by : Oiiman'
        }
    },
    shader = "diplopia",
    discovered = true,
    unlocked = true,
    config = {retriggers = 1},
	sound = {
		sound = 'jen_e_diplopia',
		per = 1,
		vol = 0.8
	},
    in_shop = true,
    weight = 3,
    extra_cost = 7,
    apply_to_float = true,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_vars = function(self)
        return { vars = { self.config.retriggers } }
    end,
	calculate = function(self, card, context)
		if context.edition and context.cardarea == G.jokers and context.joker_main then
			return {
				retriggers = self.config.retriggers
			}
		end
		if context.repetition and context.cardarea == G.play then
			return {
				repetitions = self.config.retriggers
			}
		end
	end
})

SMODS.Edition({
    key = "sequin",
    loc_txt = {
        name = "Sequin",
        label = "Sequin",
        text = {
            "{C:chips}+#1#{} Chips",
            "{C:red}+#2#{} Mult",
			'Can be {C:money}sold{} for {C:attention}three times{} its cost {C:inactive}(+200% profit)',
			'Minimum sell price is always at least {C:money}$6 {C:inactive}(+500% minimum profit)',
			'{C:dark_edition,s:0.7,E:2}Shader by : Oiiman'
        }
    },
    discovered = true,
    unlocked = true,
    shader = 'sequin',
    config = { chips = 25, mult = 2 },
	sound = {
		sound = 'jen_e_sequin',
		per = 1,
		vol = 0.4
	},
    in_shop = true,
    weight = 3,
    extra_cost = 0,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_vars = function(self)
        return { vars = {self.config.chips, self.config.mult}}
    end,
	calculate = function(self, card, context)
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {
				chips = self.config.chips,
				mult = self.config.mult
			}
		end
	end
})

local scr = Card.set_cost
function Card:set_cost()
	scr(self)
	if (self.edition or {}).jen_crystal then
		self.cost = 1
		self.sell_cost = 1
		self.sell_cost_label = self.facing == 'back' and '?' or self.sell_cost
	end
	if (self.edition or {}).jen_sequin then
		self.sell_cost = math.max(2, (self.sell_cost or 2), (self.cost or 2)) * 3
		self.sell_cost_label = self.facing == 'back' and '?' or self.sell_cost
	end
	if self.from_tag then
		self.sell_cost = 0
		self.sell_cost_label = 0
	end
end

SMODS.Edition{
    key = "laminated",
    loc_txt = {
        name = "Laminated",
        label = "Laminated",
        text = {
            "{C:blue}+#1# Chips{}, {C:red}+#2# Mult{}",
			"Card costs and sells for",
			"{C:purple}significantly less value{}"
        }
    },
    shader = "laminated",
    discovered = true,
    unlocked = true,
    config = {chips = 3, mult = 1},
	sound = {
		sound = 'jen_e_laminated',
		per = 1,
		vol = 0.4
	},
    in_shop = true,
    weight = 8,
    extra_cost = -5,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_vars = function(self)
        return { vars = { self.config.chips, self.config.mult } }
    end,
	calculate = function(self, card, context)
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {
				chips = self.config.chips,
				mult = self.config.mult
			}
		end
	end
}

SMODS.Edition{
    key = "crystal",
    loc_txt = {
        name = "Crystal",
        label = "Crystal",
        text = {
            "{C:chips}+#1# Chips{}",
			"Card costs and sells for {C:money}$1{}"
        }
    },
    shader = "laminated",
    discovered = true,
    unlocked = true,
	disable_base_shader = true,
	no_shadow = true,
    config = {chips = 111},
	sound = {
		sound = 'jen_e_crystal',
		per = 1,
		vol = 0.4
	},
    in_shop = true,
    weight = 4,
    extra_cost = 0,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_vars = function(self)
        return { vars = { self.config.chips } }
    end,
	calculate = function(self, card, context)
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {
				chips = self.config.chips
			}
		end
	end
}

SMODS.Edition{
    key = "sepia",
    loc_txt = {
        name = "Sepia",
        label = "Sepia",
        text = {
            "{C:blue}+#1# Chips{}, {C:red}+#2# Mult{}",
            "Card costs and sells for",
			"{C:money}significantly more value{}",
			'{C:dark_edition,s:0.7,E:2}Shader by : stupxd'
        }
    },
    shader = "sepia",
    discovered = true,
    unlocked = true,
    config = {chips = 150, mult = 9},
	sound = {
		sound = 'jen_e_sepia',
		per = 1,
		vol = 0.5
	},
    in_shop = true,
    weight = 6,
    extra_cost = 20,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    apply_to_float = false,
    loc_vars = function(self)
        return { vars = { self.config.chips, self.config.mult } }
    end,
	calculate = function(self, card, context)
		local chips = self.config.chips
		local mult = self.config.mult
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {
				chips = self.config.chips,
				mult = self.config.mult
			}
		end
	end
}

SMODS.Edition{
    key = "ink",
    loc_txt = {
        name = "Ink",
        label = "Ink",
        text = {
            "{C:chips}+#1# Chips{}, {C:mult}+#2# Mult{}",
            "and {X:mult,C:white}X#3#{C:red} Mult{}",
			'{C:dark_edition,s:0.7,E:2}Shader by : Oiiman'
        }
    },
    shader = "ink",
    discovered = true,
    unlocked = true,
    config = { chips = 200, mult = 10, x_mult = 2 },
	sound = {
		sound = 'jen_e_ink',
		per = 1.2,
		vol = 0.4
	},
    in_shop = true,
    weight = 4,
    extra_cost = 7,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_vars = function(self)
        return { vars = { self.config.chips, self.config.mult, self.config.x_mult } }
    end,
	calculate = function(self, card, context)
		local chips = self.config.chips
		local mult = self.config.mult
		local x_mult = self.config.x_mult
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {
				chips = self.config.chips,
				mult = self.config.mult,
				x_mult = self.config.x_mult
			}
		end
	end
}

SMODS.Edition{
    key = "polygloss",
    loc_txt = {
        name = "Polygloss",
        label = "Polygloss",
        text = {
            "{C:chips}+#1#{}, {X:chips,C:white}x#2#{} & {X:chips,C:dark_edition}^#3#{} Chips",
            "{C:mult}+#4#{}, {X:mult,C:white}x#5#{} & {X:mult,C:dark_edition}^#6#{} Mult",
			"Generates {C:money}+$#7#",
			'{C:dark_edition,s:0.7,E:2}Shader by : Oiiman'
        }
    },
    discovered = true,
    unlocked = true,
    shader = 'polygloss',
    config = { chips = 1, mult = 1, x_chips = 1.1, x_mult = 1.1, e_chips = 1.01, e_mult = 1.01, p_dollars = 1 },
    in_shop = true,
    weight = 8,
	sound = {
		sound = 'jen_e_polygloss',
		per = 1.2,
		vol = 0.4
	},
    extra_cost = 2,
    apply_to_float = false,
    loc_vars = function(self)
        return { vars = {self.config.chips, self.config.x_chips, self.config.e_chips, self.config.mult, self.config.x_mult, self.config.e_mult, self.config.p_dollars}}
    end,
	calculate = function(self, card, context)
		local chips = self.config.chips
		local mult = self.config.mult
		local x_chips = self.config.x_chips
		local x_mult = self.config.x_mult
		local e_chips = self.config.e_chips
		local e_mult = self.config.e_mult
		local p_dollars = self.config.p_dollars
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {
				chips = self.config.chips,
				mult = self.config.mult,
				x_chips = self.config.x_chips,
				x_mult = self.config.x_mult,
				e_chips = self.config.e_chips,
				e_mult = self.config.e_mult,
				p_dollars = self.config.p_dollars
			}
		end
	end
}

SMODS.Edition{
    key = "gilded",
    loc_txt = {
        name = "Gilded",
        label = "Gilded",
        text = {
            "Generates {C:money}$#1#",
			"Card has an {C:red}extreme{C:money} buy & sell value",
			'{C:dark_edition,s:0.7,E:2}Shader by : Oiiman'
        }
    },
    discovered = true,
    unlocked = true,
    shader = 'gilded',
    config = { p_dollars = 20 },
    in_shop = true,
    weight = 2,
	sound = {
		sound = 'jen_e_gilded',
		per = 1,
		vol = 0.4
	},
	misc_badge = {
		colour = G.C.RARITY[3],
		text = {
			"Rare"
		}
	},
    extra_cost = 200,
    apply_to_float = false,
    loc_vars = function(self)
        return { vars = {self.config.p_dollars}}
    end,
	calculate = function(self, card, context)
		local p_dollars = self.config.p_dollars
		if context.edition and context.cardarea == G.jokers and context.joker_main then
			return {
				p_dollars = self.config.p_dollars
			}
		end
		if context.main_scoring and context.cardarea == G.play then
			return {
				p_dollars = self.config.p_dollars
			}
		end
	end
}

SMODS.Edition{
    key = "chromatic",
    loc_txt = {
        name = "Chromatic",
        label = "Chromatic",
        text = {
            "{C:chips}+#1#{} Chips",
            "{C:mult}+#2#{} Mult",
			'{C:dark_edition,s:0.7,E:2}Shader by : stupxd'
        }
    },
    discovered = true,
    unlocked = true,
    shader = 'chromatic',
    config = { chips = 10, mult = 4 },
	sound = {
		sound = 'jen_e_chromatic',
		per = 1,
		vol = 0.5
	},
    in_shop = true,
    weight = 8,
    extra_cost = 4,
    apply_to_float = false,
    loc_vars = function(self)
        return { vars = {self.config.chips, self.config.mult}}
    end,
	calculate = function(self, card, context)
		local chips = self.config.chips
		local mult = self.config.mult
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
		return {
			chips = self.config.chips,
			mult = self.config.mult
		}
		end
	end
}

SMODS.Edition{
    key = "watered",
    loc_txt = {
        name = "Watercoloured",
        label = "Watercoloured",
        text = {
            "Retrigger this card {C:attention}#1#{} times",
			'{C:dark_edition,s:0.7,E:2}Shader by : stupxd'
        }
    },
    discovered = true,
    unlocked = true,
    shader = 'watered',
    config = { retriggers = 2 },
	sound = {
		sound = 'jen_e_watered',
		per = 1,
		vol = 0.4
	},
    in_shop = true,
    weight = 8,
    extra_cost = 4,
    apply_to_float = false,
    loc_vars = function(self)
        return {vars = {self.config.retriggers}}
    end,
	calculate = function(self, card, context)
		local retriggers = self.config.retriggers
		if context.edition and context.cardarea == G.jokers and context.joker_main then
			return { retriggers = self.config.retriggers}
		end
		if context.repetition and context.cardarea == G.play then
			return {repetitions = self.config.retriggers}
		end
	end
}

SMODS.Edition{
    key = "reversed",
    loc_txt = {
        name = "Reversed",
        label = "Reversed",
        text = {
            '{C:chips}+#1#{} and {X:chips,C:white}x#2#{C:chips} Chips{},',
            '{C:mult}+#3#{} and {X:mult,C:white}x#4#{C:mult} Mult',
			'{C:dark_edition,s:0.7,E:2}Shader by : stupxd'
        }
    },
    discovered = true,
    unlocked = true,
	disable_base_shader = true,
	no_shadow = true,
    shader = 'reversed',
    config = { chips = 300, x_chips = 3, mult = 300, x_mult = 3 },
	sound = {
		sound = 'jen_e_reversed',
		per = 1,
		vol = 0.4
	},
    in_shop = true,
    weight = 0.1,
    extra_cost = 7,
    apply_to_float = false,
    loc_vars = function(self)
        return { vars = { self.config.chips, self.config.x_chips, self.config.mult, self.config.x_mult } }
    end,
	calculate = function(self, card, context)
		local chips = self.config.chips
		local x_chips = self.config.x_chips
		local mult = self.config.mult
		local x_mult = self.config.x_mult
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {
				chips = self.config.chips,
				x_chips = self.config.x_chips,
				mult = self.config.mult,
				x_mult = self.config.x_mult
			}
		end
	end
}

SMODS.Edition{
    key = "missingtexture",
    loc_txt = {
        name = "Missing Textures",
        label = "Missing Textures",
        text = {
            "{X:red,C:white}x#1#{C:red} Mult{}, {C:red,s:1.2}BUT",
			"{C:red}lose {C:money}$#2#{} when scored",
			'{C:inactive,S:0.7}Someone forgot to install Counter-Strike: Source...',
			'{C:dark_edition,s:0.7,E:2}Shader by : stupxd'
        }
    },
    discovered = true,
    unlocked = true,
    shader = 'missingtexture',
    config = { x_mult = 25, p_dollars = -5 },
	sound = {
		sound = 'jen_e_missingtexture',
		per = 1,
		vol = 0.6
	},
    in_shop = true,
    weight = 3,
    extra_cost = 7,
    apply_to_float = false,
    loc_vars = function(self)
        return { vars = { self.config.x_mult, math.abs(self.config.p_dollars) } }
    end,
	calculate = function(self, card, context)
		local x_mult = self.config.x_mult
		local p_dollars = self.config.p_dollars
		if (context.edition and context.cardarea == G.jokers and context.joker_main) or (context.main_scoring and context.cardarea == G.play) then
			return {
				x_mult = self.config.x_mult,
				p_dollars = self.config.p_dollars
			}
		end
	end
}

SMODS.Edition{
    key = "bloodfoil",
    loc_txt = {
        name = "Bloodfoil",
        label = "Bloodfoil",
        text = {
            "{X:jen_RGB,C:white,s:1.5}^^#1#{C:chips} Chips"
        }
    },
	misc_badge = {
		colour = G.C.RARITY['cry_exotic'],
		text = {
			"Exotic"
		}
	},
    shader = "bloodfoil",
    discovered = true,
    unlocked = true,
    config = {ee_chips = 1.2},
	sound = {
		sound = 'negative',
		per = 0.5,
		vol = 1
	},
    weight = 0.04,
    extra_cost = 30,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight * (250 ^ #SMODS.find_card('j_jen_bulwark'))
    end,
    loc_vars = function(self)
        return { vars = { self.config.ee_chips } }
    end,
	calculate = function(self, card, context)
		local ee_chips = self.config.ee_chips
		if context.edition and context.cardarea == G.jokers and context.joker_main then
			return {
				ee_chips = self.config.ee_chips
			}
		end
		if context.cardarea == G.play and context.main_scoring then
			return {
				ee_chips = self.config.ee_chips
			}
		end
	end
}

SMODS.Edition {
    key = "blood",
    no_edeck = true,
    loc_txt = {
        name = "Blood",
        label = "Blood",
        text = {
            "{X:jen_RGB,C:white,s:1.5}^^#1#{C:mult} Mult",
			'{C:dark_edition,s:0.7,E:2}Shader by : Oiiman'
        }
    },
    shader = "cosmic",
    discovered = true,
    unlocked = true,
    config = {ee_mult = 1.2},
	sound = {
		sound = 'negative',
		per = 0.5,
		vol = 1
	},
	misc_badge = {
		colour = G.C.RARITY['cry_exotic'],
		text = {
			"Exotic"
		}
	},
    weight = 0.04,
    extra_cost = 30,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight * (250 ^ #SMODS.find_card('j_jen_bulwark'))
    end,
    loc_vars = function(self)
        return { vars = { self.config.ee_mult } }
    end,
	calculate = function(self, card, context)
		local ee_mult = self.config.ee_mult
		if context.edition and context.cardarea == G.jokers and context.joker_main then
			return {
				ee_mult = self.config.ee_mult
			}
		end
		if context.cardarea == G.play and context.main_scoring then
			return {
				ee_mult = self.config.ee_mult
			}
		end
	end
}

SMODS.Edition{
    key = "moire",
    loc_txt = {
        name = "Moire",
        label = "Moire",
        text = {
			jl.pluschips('#1#') .. ', ' .. jl.mulchips('#2#') .. ', ' .. jl.expochips('#3#') .. ', ' .. jl.tetchips('#4#') .. ' & ' .. jl.penchips('#5#') .. ' Chips',
			jl.plusmult('#6#') .. ', ' .. jl.mulmult('#7#') .. ', ' .. jl.expomult('#8#') .. ', ' .. jl.tetmult('#9#') .. ' & ' .. jl.penmult('#10#') .. ' Mult',
			'{C:dark_edition,s:0.7,E:2}Shader by : Oiiman'
        }
    },
	misc_badge = {
		colour = G.C.jen_RGB,
		text = {
			"Wondrous"
		}
	},
    discovered = true,
	no_edeck = true,
    unlocked = true,
    shader = 'moire',
    config = { chips = math.pi*1e4, x_chips = math.pi*1e3, e_chips = math.pi*100, ee_chips = math.pi*10, eee_chips = math.pi, mult = math.pi*1e4, x_mult = math.pi*1e3, e_mult = math.pi*100, ee_mult = math.pi*10, eee_mult = math.pi },
	sound = {
		sound = 'jen_e_moire',
		per = 1,
		vol = 0.7
	},
    in_shop = true,
    weight = 0.01,
    extra_cost = math.pi*1e3,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight * (250 ^ #SMODS.find_card('j_jen_bulwark'))
    end,
    loc_vars = function(self)
        return { vars = { self.config.chips, self.config.x_chips, self.config.e_chips, self.config.ee_chips, self.config.eee_chips, self.config.mult, self.config.x_mult, self.config.e_mult, self.config.ee_mult, self.config.eee_mult } }
    end,
	calculate = function(self, card, context)
		local chips = self.config.chips
		local mult = self.config.mult
		local x_chips = self.config.x_chips
		local x_mult = self.config.x_mult
		local e_chips = self.config.e_chips
		local e_mult = self.config.e_mult
		local ee_chips = self.config.ee_chips
		local ee_mult = self.config.ee_mult
		local eee_chips = self.config.eee_chips
		local eee_mult = self.config.eee_mult
		if context.edition and context.cardarea == G.jokers and context.joker_main then
			return {
				chips = chips * math.pi,
				mult = mult * math.pi,
				x_chips = x_chips * math.pi,
				x_mult = x_mult * math.pi,
				e_chips = e_chips * math.pi,
				e_mult = e_mult * math.pi,
				ee_chips = ee_chips * math.pi,
				ee_mult = ee_mult * math.pi,
				eee_chips = eee_chips * math.pi,
				eee_mult = eee_mult * math.pi
			}
		end
		if context.cardarea == G.play and context.main_scoring then
			return {
				chips = chips * math.pi,
				mult = mult * math.pi,
				x_chips = x_chips * math.pi,
				x_mult = x_mult * math.pi,
				e_chips = e_chips * math.pi,
				e_mult = e_mult * math.pi,
				ee_chips = ee_chips * math.pi,
				ee_mult = ee_mult * math.pi,
				eee_chips = eee_chips * math.pi,
				eee_mult = eee_mult * math.pi
			}
		end
	end
}

--[[SMODS.Edition({
    key = "unreal",
    loc_txt = {
        name = "Unreal",
        label = "Unreal",
        text = {
            '{X:cry_twilight,C:cry_blossom,s:3}#1#{}3 Chips & Mult',
			'{C:dark_edition,s:0.7,E:2}Shader by : Oiiman'
        }
    },
	misc_badge = {
		colour = G.C.CRY_ASCENDANT,
		text = {
			"Transcendent"
		}
	},
    discovered = true,
    unlocked = true,
    shader = 'unreal',
    config = { hyper_chips = {20, 3}, hyper_mult = {20, 3} },
	sound = {
		sound = 'jen_e_unreal',
		per = 1,
		vol = 0.7
	},
    in_shop = true,
    weight = 0,
    extra_cost = 6666,
    apply_to_float = false,
	get_weight = function(self)
        return G.GAME.edition_rate * self.weight
    end,
    loc_vars = function(self)
        return { vars = { '{20}' } }
    end
})]]

local cs = Card.calculate_seal
function Card:calculate_seal(context)
	local tbl = cs(self, context)
	if tbl then
		if context.repetition and ((self.ability or {}).set or 'Joker') ~= 'Joker' then
			if self.edition then
				if self.edition.retriggers then
					tbl.repetitions = (tbl.repetitions or 0) + self.edition.retriggers
					tbl.message = tbl.message or localize('k_again_ex')
					tbl.card = tbl.card or self
					return {
						message = localize('k_again_ex'),
						repetitions = self.edition.retriggers,
						card = self
					}
				end
			end
		end
		return tbl
	end
end

--JOKER ATLASES
local atlases = {
	'sigil',
	'rai',
	'jess',
	'spice',
	'kosmos',
	'lambert',
	'leshy',
	'heket',
	'kallamar',
	'shamura',
	'narinder',
	'aym',
	'baal',
	'clauneck',
	'kudaai',
	'chemach',
	'haro',
	'suzaku',
	'ayanami',
	'ratau',
	'jen',
	'math',
	'koslo',
	'peppino',
	'noise',
	'poppin',
	'godsmarble',
	'pawn',
	'knight',
	'jester',
	'arachnid',
	'reign',
	'feline',
	'amalgam',
	'fateeater',
	'foundry',
	'broken',
	'wondergeist',
	'wondergeist2',
	'survivor',
	'monk',
	'hunter',
	'spearmaster',
	'artificer',
	'saint',
	'gourmand',
	'rivulet',
	'rot',
	'guilduryn',
	'hydrangea',
	'heisei',
	'soryu',
	'shikigami',
	'leviathan',
	'behemoth',
	'inferno',
	'alexandra',
	'arin',
	'kyle',
	'johnny',
	'murphy',
	'roffle',
	'luke',
	'7granddad',
	'gamingchair',
	'aster',
	'rin',
	'astrophage',
	'landa',
	'bulwark',
	'urizyth',
	'lugia',
	'vacuum',
	'nyx',
	'paragon',
	'jimbo',
	'betmma',
	'watto',
	'kori',
	'apollo',
	'hephaestus',
	'p03',
	'oxy',
	'honey',
	'inhabited',
	'cracked',
	'alice',
	'nexus',
	'swabbie',
	'pickel',
	'jeremy',
	'cheese',
	'crimbo',
	'faceless',
	'maxie',
	'charred',
	'dandy',
	'goob',
	'goob_lefthand',
	'goob_righthand',
	'boxten',
	'astro',
	'razzledazzle',
	'cosmo',
	'toodles',
	'finn',
	'connie'
}

for k, v in pairs(atlases) do
	SMODS.Atlas {
		key = 'jen' .. v,
		px = 71,
		py = 95,
		path = Jen.config.texture_pack .. '/j_jen_' .. v .. '.png'
	}
end

--MISCELLANEOUS ATLASES

SMODS.Atlas {
	key = 'jenhuge',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_huge.png'
}
SMODS.Atlas {
	key = 'jenbooster',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/p_jen_boosters.png'
}
SMODS.Atlas {
	key = 'jenfuse',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_fuse.png'
}
SMODS.Atlas {
	key = 'jenuno',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_uno.png'
}
SMODS.Atlas {
	key = 'jendecks',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/b_jen_decks.png'
}
SMODS.Atlas {
	key = 'jentags',
	px = 34,
	py = 34,
	path = Jen.config.texture_pack .. '/tag_jen.png'
}
SMODS.Atlas {
	key = 'jenchess',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/jen_composite.png'
}
SMODS.Atlas {
	key = 'jenyawetag',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_yawetag.png'
}
SMODS.Atlas {
	key = 'jennyx_c',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_nyx.png'
}
SMODS.Atlas {
	key = 'jenswabbie_c',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_swabbie.png'
}
SMODS.Atlas {
	key = 'jenartificer_c',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_artificer.png'
}
SMODS.Atlas {
	key = 'jenfateeater_c',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_fateeater.png'
}
SMODS.Atlas {
	key = 'jenfoundry_c',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_foundry.png'
}
SMODS.Atlas {
	key = 'jenbroken_c',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_broken.png'
}
SMODS.Atlas {
	key = 'jenroffle_c',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_roffle.png'
}
SMODS.Atlas {
	key = 'jengoob_c',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_goob.png'
}

SMODS.Atlas {
	key = 'jenhoxxes',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_hoxxes.png'
}

SMODS.Atlas {
	key = 'jenrtarots',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_reversetarots.png'
}

SMODS.Atlas {
	key = 'jenacc',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_acc.png'
}

SMODS.Atlas {
	key = 'jenblanks',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_blanks.png'
}

SMODS.Atlas {
	key = 'jenblinds',
	atlas_table = 'ANIMATION_ATLAS',
	frames = 21,
	px = 34,
	py = 34,
	path = Jen.config.texture_pack .. '/bl_jen_blinds.png'
}

SMODS.Atlas {
	key = 'jenepicblinds',
	atlas_table = 'ANIMATION_ATLAS',
	frames = 21,
	px = 34,
	py = 34,
	path = Jen.config.texture_pack .. '/bl_jen_epic_blinds.png'
}

SMODS.Atlas {
	key = 'jentokens',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_tokens.png'
}

SMODS.Atlas {
	key = 'jenenhance',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/m_jen_enhancements.png'
}

SMODS.Atlas {
	key = 'jenomegaplanets',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_omegaplanets.png'
}

SMODS.Atlas {
	key = 'jenomegaspectrals',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_omegaspectrals.png'
}

SMODS.Atlas {
	key = 'jenomegatarots',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_omegatarots.png'
}

SMODS.Atlas {
	key = 'jenplanets',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/c_jen_planets.png'
}

SMODS.Atlas {
	key = 'jenvouchers',
	px = 71,
	py = 95,
	path = Jen.config.texture_pack .. '/v_jen_vouchers.png'
}

local csdr = Card.set_debuff

function Card:set_debuff(should_debuff)
	if self.ability.perishable then
		if not self.ability.perish_tally then self.ability.perish_tally = 5 end
	end
	csdr(self, should_debuff)
end

--DECKS

SMODS.Back {
	key = 'orrery',
	atlas = 'jendecks',
	pos = { x = 0, y = 0 },
	loc_txt = {
		name = 'Orrery Deck',
		text = {
			'All hands start at {X:chips,C:white}150{C:mult} X {X:red,C:white}1',
			'and are {C:cry_ascendant}equalised{} whenever their',
			'{C:chips}Chips{}, {C:mult}Mult{} or {C:planet}level {C:attention}change',
			'{C:inactive,s:0.6}T.E.F.D. excluded',
			spriter('ThreeCubed')
		}
	},
    apply = function(self)
        G.GAME.orrery = true
		Q(function() for k, v in pairs(G.GAME.hands) do
			v.chips = to_big(150)
			v.mult = to_big(1)
			v.level = 1
		end save_run() return true end)
    end
}

SMODS.Back {
	key = 'mysterious',
	atlas = 'jendecks',
	pos = { x = 1, y = 0 },
	loc_txt = {
		name = 'Mysterious Deck',
		text = {
			'{C:red}Warning : Highly unstable!',
			'Jokers, consumables, and',
			'playing cards are {C:green,E:1}randomised',
			'when they are added',
			'to your possession',
			spriter('mailingway')
		}
	},
    apply = function(self)
        G.GAME.mysterious = true
		Q(function() save_run() return true end)
    end
}

SMODS.Back {
	key = 'weeck',
	atlas = 'jendecks',
	pos = { x = 4, y = 1 },
	loc_txt = {
		name = 'Weeck',
		text = {
			'Start with a deck composed',
			'of a {C:dark_edition}Wee {C:attention}2',
			'of {C:attention}each suit',
			'The {C:dark_edition}Wee{} edition is',
			'{X:attention,C:white}222.22x{C:attention} more likely',
			'to appear over other editions',
			'{C:dark_edition}Wee{} scales {X:attention,C:white}3x{C:attention} faster',
			spriter('CrimboJimbo')
		}
	},
    apply = function(self)
		G.GAME.weeck = true
		Q(function() for k, v in pairs(G.playing_cards) do
			if v.base.id == 2 then
				v:set_edition({jen_wee = true}, true, true)
			else
				v.area:remove_card(v)
				v:destroy()
			end
		end return true end)
		delay(1)
		Q(function() save_run() return true end)
    end
}

SMODS.Back {
	key = 'obsidian',
	atlas = 'jendecks',
	pos = { x = 2, y = 1 },
	loc_txt = {
		name = 'Obsidian Deck',
		text = {
			'{C:attention}Hidden{} cards {C:inactive}(ex. {C:spectral}The Soul{C:inactive})',
			'can {C:attention}appear normally{},',
			'{C:spectral}Spectral{} cards may',
			'appear in the {C:attention}shop{},',
			'{C:jen_RGB,E:1}Omega{} consumables appear',
			'{C:attention}twice{} as often',
			spriter('CrimboJimbo')
		}
	},
	config = {
		spectral_rate = 2
	},
    apply = function(self)
		G.GAME.obsidian = true
    end
}

SMODS.Back {
	key = 'tortoise',
	atlas = 'jendecks',
	pos = { x = 3, y = 1 },
	loc_txt = {
		name = 'Tortoise Deck',
		text = {
			'{C:attention}Ante increases{} are {C:attention}half{} as strong,',
			'{C:attention}Straddle{} takes {C:attention}twice as long{} to increase',
			spriter('laviolive')
		}
	},
    apply = function(self)
		G.GAME.tortoise = true
    end
}

if Jen.config.straddle.enabled then
	SMODS.Back {
		key = 'nitro',
		atlas = 'jendecks',
		pos = { x = 1, y = 1 },
		loc_txt = {
			name = 'Acceleration Deck',
			text = {
				'{C:attention}Straddle{} is enabled {C:attention}pre-endless',
				'and {C:attention}increases {X:attention,C:white}' .. number_format(Jen.config.straddle.progress_min) .. 'x{C:attention} as fast{},',
				'create an {C:tarot}Empowered Pack{} and',
				'a random {C:attention}Booster Pack{} in',
				'the {C:attention}consumable tray{} after',
				'defeating the {C:attention}Boss Blind',
				'{C:dark_edition,s:0.7,E:2}Art by : patchy'
			}
		},
		apply = function(self)
			G.GAME.straddle_active = true
			G.GAME.nitro = true
			start_straddle()
		end,
		trigger_effect = function(self, args)
			if args.context == "eval" and G.GAME.last_blind and G.GAME.last_blind.boss then
				Q(function()
					local pack = create_card('Booster', G.consumeables, nil, nil, nil, nil, 'p_cry_empowered', 'nitro_empowered')
					if pack.gc and pack:gc().set ~= 'Booster' then
						pack:set_ability(G.P_CENTERS.p_cry_empowered, true, nil)
						pack:set_cost()
					end
					pack:add_to_deck()
					G.consumeables:emplace(pack)
				return true end)
				Q(function()
					local pack2 = create_card('Booster', G.consumeables, nil, nil, nil, nil, nil, 'nitro_bonus')
					if pack2.gc and pack2:gc().set ~= 'Booster' then
						pack2:set_ability(jl.rnd('nitro_bonus_equilibrium', nil, G.P_CENTER_POOLS.Booster), true, nil)
						pack2:set_cost()
					end
					pack2:add_to_deck()
					G.consumeables:emplace(pack2)
				return true end)
			end
		end
	}
end

--ENHANCEMENTS

SMODS.Enhancement {
	key = 'xchip',
	loc_txt = {
		name = 'Multichip Card',
		text = {
			jl.mulchips('#1#') .. ' Chips',
			'{C:cry_exotic,s:0.6,E:1}Power Card{}'
		}
	},
	config = {Xchips = 1.5},
	pos = { x = 1, y = 0 },
	unlocked = true,
	discovered = true,
	atlas = 'jenenhance',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).Xchips or 1.5}}
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
			return {chips = self.config.Xchips}
		end
	end
}

SMODS.Enhancement {
	key = 'echip',
	loc_txt = {
		name = 'Powerchip Card',
		text = {
			jl.expochips('#1#') .. ' Chips',
			'{C:cry_exotic,s:0.6,E:1}Power Card{}'
		}
	},
	config = {Echips = 1.09},
	pos = { x = 2, y = 0 },
	unlocked = true,
	discovered = true,
	atlas = 'jenenhance',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).Echips or 1.09}}
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
			return {chips = self.config.Echips}
		end
	end
}

SMODS.Enhancement {
	key = 'xmult',
	loc_txt = {
		name = 'Multimult Card',
		text = {
			jl.mulmult('#1#') .. ' Mult',
			'{C:cry_exotic,s:0.6,E:1}Power Card{}'
		}
	},
	config = {Xmult = 2},
	pos = { x = 3, y = 0 },
	unlocked = true,
	discovered = true,
	atlas = 'jenenhance',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).Xmult or 2}}
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
			return {mult = self.config.Xmult}
		end
	end
}

SMODS.Enhancement {
	key = 'emult',
	loc_txt = {
		name = 'Powermult Card',
		text = {
			jl.expomult('#1#') .. ' Mult',
			'{C:cry_exotic,s:0.6,E:1}Power Card{}'
		}
	},
	config = {Emult = 1.13},
	pos = { x = 5, y = 0 },
	unlocked = true,
	discovered = true,
	atlas = 'jenenhance',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).Emult or 1.13}}
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
			return {mult = self.config.Emult}
		end
	end
}

SMODS.Enhancement {
	key = 'power',
	loc_txt = {
		name = 'Supercharged Card',
		text = {
			jl.mulchips('#1#') .. ' Chips',
			jl.mulmult('#2#') .. ' Mult',
			jl.expochips('#3#') .. ' Chips',
			jl.expomult('#4#') .. ' Mult',
			'{C:cry_exotic,s:0.6,E:1}Power Card{}'
		}
	},
	config = {Xchips = 1.25, Xmult = 1.5, Echips = 1.08, Emult = 1.11},
	pos = { x = 4, y = 0 },
	unlocked = true,
	discovered = true,
	atlas = 'jenenhance',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).Xchips or 1.25, ((center or {}).ability or {}).Xmult or 1.25, ((center or {}).ability or {}).Echips or 1.08, ((center or {}).ability or {}).Emult or 1.11}}
    end,
	calculate = function(self, card, context)
		if context.main_scoring and context.cardarea == G.play then
			return {chips = self.config.Xchips, mult = self.config.Xmult, chips2 = self.config.Echips, mult2 = self.config.Emult}
		end
	end
}

SMODS.Enhancement {
	key = 'surreal',
	loc_txt = {
		name = 'Surreal Card',
		text = {
			'{C:attention}Ignores{} card selection limit',
			'{C:inactive}(e.g. can be used to play 6+ cards){}'
		}
	},
	pos = { x = 6, y = 1 },
	unlocked = true,
	discovered = true,
	atlas = 'jenenhance',
}

local function faceinplay()
	if not G.play then return 0 end
	if not G.play.cards then return 0 end
	local qty = 0
	for k, v in pairs(G.play.cards) do
		if v:is_face() then qty = qty + 1 end
	end
	return qty
end

SMODS.Enhancement {
	key = 'astro',
	loc_txt = {
		name = 'Astro Card',
		text = {
			'Creates a {C:planet}Planet{} card',
			mayoverflow,
			'{C:cry_exotic,s:0.6,E:1}Power Card{}'
		}
	},
	pos = { x = 0, y = 0 },
	unlocked = true,
	discovered = true,
	atlas = 'jenenhance',
	calculate = function(self, card, context, effect)
		if jl.sc(context) then
			G.E_MANAGER:add_event(Event({trigger = 'after', func = function()
				local card2 = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'astro_card')
				card2:add_to_deck()
				G.consumeables:emplace(card2)
				return true
			end }))
		end
	end
}

SMODS.Enhancement {
	key = 'fortune',
	loc_txt = {
		name = 'Fortune Card',
		text = {
			'Creates a {C:tarot}Tarot{} card',
			mayoverflow,
			'{C:cry_exotic,s:0.6,E:1}Power Card{}'
		}
	},
	pos = { x = 6, y = 0 },
	atlas = 'jenenhance',
	unlocked = true,
	discovered = true,
	calculate = function(self, card, context, effect)
		if context.main_scoring and context.cardarea == G.play then
			G.E_MANAGER:add_event(Event({trigger = 'after', func = function()
				local card2 = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil, 'fortune_card')
				card2:add_to_deck()
				G.consumeables:emplace(card2)
				return true
			end }))
		end
	end
}

SMODS.Enhancement {
	key = 'osmium',
	loc_txt = {
		name = 'Osmium Card',
		text = {
			'Creates a {C:spectral}Spectral{} card',
			mayoverflow,
			'{C:cry_exotic,s:0.6,E:1}Power Card{}'
		}
	},
	pos = { x = 8, y = 0 },
	atlas = 'jenenhance',
	unlocked = true,
	discovered = true,
	calculate = function(self, card, context, effect)
		if jl.sc(context) then
			G.E_MANAGER:add_event(Event({trigger = 'after', func = function()
				local card2 = create_card('Spectral', G.consumeables, nil, nil, nil, nil, nil, 'osmium_card')
				card2:add_to_deck()
				G.consumeables:emplace(card2)
				return true
			end }))
		end
	end
}

SMODS.Enhancement {
	key = 'potassium',
	loc_txt = {
		name = 'Potassium Card',
		text = {
			'Creates a {C:dark_edition}Negative {C:attention}Gros Michel',
			'{C:red}Destroyed{} after scoring',
			'{C:cry_exotic,s:0.6,E:1}Power Card'
		}
	},
	disposable = true,
	pos = { x = 7, y = 1 },
	atlas = 'jenenhance',
	unlocked = true,
	discovered = true,
	calculate = function(self, card, context)
		if context.destroy_card and context.cardarea == G.play and context.scoring_hand then
			Q(function()
				local k19 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_gros_michel', 'nanner')
				k19.no_forced_edition = true
				k19:set_edition({negative = true}, true)
				k19.no_forced_edition = nil
				k19:add_to_deck()
				G.jokers:emplace(k19)
				return  true 
			end)
			return { remove = true}
		end
	end
}

SMODS.Enhancement {
	key = 'fizzy',
	loc_txt = {
		name = 'Fizzy Card',
		text = {
			'Creates a {C:attention}Double Tag{}',
			'{C:red}Destroyed{} after scoring',
			'{C:cry_exotic,s:0.6,E:1}Power Card{}'
		}
	},
	disposable = true,
	pos = { x = 8, y = 1 },
	atlas = 'jenenhance',
	unlocked = true,
	discovered = true,
	calculate = function(self, card, context, effect)
		if jl.sc(context) then
			G.E_MANAGER:add_event(Event({trigger = 'after', func = function()
				add_tag(Tag('tag_double'))
				return true
			end }))
		end
	end
}

SMODS.Enhancement {
	key = 'water',
	loc_txt = {
		name = 'Water Card',
		text = {
			'{C:green}Always scores{}'
		}
	},
	always_scores = true,
	pos = { x = 9, y = 0 },
	atlas = 'jenenhance'
}

SMODS.Enhancement {
	key = 'handy',
	loc_txt = {
		name = 'Handy Card',
		text = {
			'{C:blue}+1{} hand this round',
			'{C:red}Destroyed{} after scoring',
			'{C:cry_exotic,s:0.6,E:1}Power Card'
		}
	},
	disposable = true,
	pos = { x = 1, y = 1 },
	atlas = 'jenenhance',
	unlocked = true,
	discovered = true,
	calculate = function(self, card, context)
		if context.destroy_card and context.cardarea == G.play and context.scoring_hand then
			ease_hands_played(1)
			return {remove = true}
		end
	end
}

SMODS.Enhancement {
	key = 'tossy',
	loc_txt = {
		name = 'Tossy Card',
		text = {
			'{C:red}+1{} discard this round',
			'{C:cry_exotic,s:0.6,E:1}Power Card{}'
		}
	},
	pos = { x = 3, y = 1 },
	atlas = 'jenenhance',
	unlocked = true,
	discovered = true,
	calculate = function(self, card, context, effect)
		if jl.sc(context) then
			ease_discard(1)
		end
	end
}

SMODS.Enhancement {
	key = 'juggler',
	loc_txt = {
		name = 'Juggling Card',
		text = {
			'{C:attention}+1{} hand size this round',
			'{C:cry_exotic,s:0.6,E:1}Power Card{}'
		}
	},
	pos = { x = 2, y = 1 },
	atlas = 'jenenhance',
	unlocked = true,
	discovered = true,
	calculate = function(self, card, context, effect)
		if jl.sc(context) then
			G.hand:change_size(1)
			G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + 1
		end
	end
}

SMODS.Enhancement {
	key = 'cash',
	loc_txt = {
		name = 'Cash Card',
		text = {
			'{C:money}+$#1#{} when scored',
			'{C:red}Destroyed{} after scoring',
			'{C:cry_exotic,s:0.6,E:1}Power Card'
		}
	},
	config = {p_dollars = 10},
	disposable = true,
	pos = { x = 4, y = 1 },
	atlas = 'jenenhance',
	unlocked = true,
	discovered = true,
	loc_vars = function(self, info_queue, center)
		return {vars = {((center or {}).ability or {}).p_dollars}}
	end,
	calculate = function(self, card, context)
		if context.destroy_card and context.cardarea == G.play and context.scoring_hand then
			G.GAME.p_dollars = (G.GAME.p_dollars or 0) + self.config.p_dollars
			return {remove = true}
		end
	end
}

local handinacard = {
	[1] = {'High Card', 'Lonely'},
	[2] = {'Pair', 'Twin'},
	[3] = {'Two Pair', 'Siamese'},
	[4] = {'Three of a Kind', 'Triplet'},
	[5] = {'Straight', 'Sequential'},
	[6] = {'Flush', 'Symbolic'},
	[7] = {'Full House', 'Descendant'},
	[8] = {'Four of a Kind', 'Quadruplet'},
	[9] = {'Straight Flush', 'Tsunami'},
	[10] = {'Five of a Kind', 'Quintuplet'},
	[11] = {'Flush House', 'Ascendant'},
	[12] = {'Flush Five', 'Identity'}
}

for k, v in ipairs(handinacard) do
	SMODS.Enhancement {
		key = string.lower(v[2]),
		loc_txt = {
			name = v[2] .. ' Card',
			text = {
				'Gives the {C:chips}Chips{} & {C:mult}Mult{} of {C:attention}' .. v[1] .. '{},',
				'then is {C:red}destroyed{} after scoring is finished',
				' ',
				'{C:inactive,s:1.5}({X:chips,C:white,s:1.5}#1#{s:1.5} & {X:mult,C:white,s:1.5}#2#{C:inactive,s:1.5})',
				'{C:cry_epic,s:0.6,E:1}Hand Card{}'
			}
		},
		disposable = true,
		pos = { x = k - 1, y = 2 },
		atlas = 'jenenhance',
		unlocked = true,
		discovered = true,
		loc_vars = function(self, info_queue, center)
			local tbl = ((G.GAME or {}).hands or {})[v[1]] or {}
			return {vars = {tbl.chips or '???', tbl.mult or '???'}}
		end,
		calculate = function(self, card, context)
			if context.destroy_card and context.cardarea == G.play and context.scoring_hand then
				local tbl = ((G.GAME or {}).hands or {})[v[1]] or {}
				if tbl and next(tbl) then
					if not card.cashed_out then
						card.cashed_out = true
					end
					return {
						chips = tbl.chips,
						mult = tbl.mult,
						remove = true
					}
				end
			end
		end
	}
end

SMODS.Enhancement {
	key = 'exotic',
	loc_txt = {
		name = 'Exotic Card',
		text = {
			'Has {C:attention}double{} the {C:attention}combined upsides{}',
			'of {C:attention}all vanilla + {C:almanac,E:1}Almanac{} enhancements',
			'{C:red}Destroyed{} after scoring',
			'{C:inactive}(Excludes Hand Card enhancements){}',
			'{C:jen_RGB,s:0.6,E:1}Super Power Card{}'
		}
	},
	config = {h_dollars = 6, p_dollars = 20, chips = 160, mult = 8, h_x_mult = 2.25, Xchips = 3.515625, Xmult = 9, Echips = 1.2, Emult = 1.3},
	disposable = true,
	any_suit = true,
	always_scores = true,
	pos = { x = 0, y = 1 },
	atlas = 'jenenhance',
	unlocked = true,
	discovered = true,
	calculate = function(self, card, context, effect)
		if jl.sc(context) then
			for i = 1, 6 do
				G.E_MANAGER:add_event(Event({trigger = 'after', func = function()
					local ii = math.ceil(i/2)
					local card2 = create_card(ii == 1 and 'Planet' or ii == 2 and 'Tarot' or 'Spectral', G.consumeables, nil, nil, nil, nil, nil, 'exotic_card' .. i)
					card2:add_to_deck()
					G.consumeables:emplace(card2)
					ii = nil
					return true
				end }))
			end
			for i = 1, 2 do
				Q(function()
					local k19 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_gros_michel', 'nanner')
					k19.no_forced_edition = true
					k19:set_edition({negative = true}, true)
					k19.no_forced_edition = nil
					k19:add_to_deck()
					G.jokers:emplace(k19)
				return true end)
			end
			ease_hands_played(2)
			ease_discard(2)
			G.hand:change_size(2)
			Q(function() add_tag(Tag('tag_double'));add_tag(Tag('tag_double')); return true end)
			G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + 2
		end
	end
}

--JOKERS

	SMODS.Joker:take_ownership('perkeo', {
		name = 'Perkeo (Almanac)',
		loc_vars = function(self, info_queue, center)
			info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
			return {vars = {center.ability.extra}}
		end,
		calculate = function(self, card, context)
			local should_retrigger = false
			if context.ending_shop then
				if G.consumeables.cards[1] then
							local total, checked, center = 0, 0, nil
							for i = 1, #G.consumeables.cards do
								total = total + (G.consumeables.cards[i]:getQty())
							end
							local poll = pseudorandom(pseudoseed('perkeo'))*total
							for i = 1, #G.consumeables.cards do
								checked = checked + (G.consumeables.cards[i]:getQty())
								if checked >= poll and G.consumeables.cards[i]:gc().key ~= 'c_cry_pointer' and not G.consumeables.cards[i]:gc().no_perkeo then
									center = G.consumeables.cards[i]
									break
								end
							end
							if center then
								should_retrigger = true
								local card = copy_card(center, nil)
								card.ability.qty = 1
								if center:gc().set ~= 'Booster' then card:set_edition({negative = true}, true) end
								card:add_to_deck()
								G.consumeables:emplace(card) 
							end
					if jl.njr(context) then
						Q(function()
							if should_retrigger then
								card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('k_duplicated_ex')})
							else
								card:speak('No valid consumables!', G.C.RED)
							end
						return true end)
					end
					return nil, should_retrigger
				end
			end
		end
	})

SMODS.Joker {
	key = 'lambert',
	loc_txt = {
		name = '{C:dark_edition}Lambert',
		text = {
			'All {C:attention}Jokers{} to the {C:green}left',
			'of this {C:attention}Joker{} become {C:purple}Eternal',
			'All {C:attention}Jokers{} to the {C:green}right',
			'of this {C:attention}Joker{} {C:red}lose{} {C:purple}Eternal',
			'Removes {C:attention}all other stickers',
			'and {C:red}debuffs{} from all other {C:attention}Jokers',
			'{C:inactive}(Stickers update whenever jokers are calculated)',
			' ',
			caption('#1#'),
			caption('#2#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 50,
	fusable = true,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenlambert',
	unique = true,
	in_pool = function()
		return #SMODS.find_card('j_jen_reign') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {Jen.sinister and 'By the Fates, what is' or Jen.gods() and "My skin burns... it's... I-IT'S" or 'I try to give my followers', Jen.sinister and "this madness you've conjured?!!" or Jen.gods() and 'MEEeeEEllLLttTTiiiNNNggGGG!!!' or 'a good life before death.'}}
    end,
    calculate = function(self, card, context)
		if not context.blueprint and card.added_to_deck and jl.njr(context) and G.jokers and G.jokers.cards then
			for i=1, #G.jokers.cards do
				local other_card = G.jokers.cards[i]
				if other_card and other_card ~= card then
					if card.T.x + card.T.w/2 > other_card.T.x + other_card.T.w/2 then
						other_card:set_eternal(true)
					else
						other_card:set_eternal(nil)
					end
					if other_card.ability then
						other_card.ability.perishable = nil
						other_card.ability.banana = nil
					end
					other_card.debuff = nil
					other_card:set_rental(nil)
					other_card.pinned = nil
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'leshy',
	loc_txt = {
		name = '{C:green}Leshy',
		text = {
			'{C:clubs}Clubs{} give',
			jl.expomult('#1#') .. ' Mult when scored',
			' ',
			caption('#2#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	config = {extra = {power = 1.3}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 3, y = 0 },
	cost = 50,
	fusable = true,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenleshy',
	unique = true,
	in_pool = function()
		return #SMODS.find_card('j_jen_pawn') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.power, Jen.sinister and "STOP! STOP IT, PLEASE!! I CAN'T TAKE IT ANYMORE!!" or Jen.gods() and "MY ARMS ARE MELTING!!!" or 'Hope is what led us this far, right?'}}
    end,
    calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if context.other_card:is_suit('Clubs') then
				return {
					e_mult = card.ability.extra.power,
					colour = G.C.DARK_EDITION,
					card = card
				}, true
			end
		end
	end
}

SMODS.Joker {
	key = 'heket',
	loc_txt = {
		name = '{C:money}Heket',
		text = {
			'{C:diamonds}Diamonds{} give',
			jl.expomult('#1#') .. ' Mult when scored',
			' ',
			caption('#2#'),
			caption('#3#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	config = {extra = {power = 1.3}},
	pos = { x = 0, y = 0 },	
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 50,
	fusable = true,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenheket',
	unique = true,
	in_pool = function()
		return #SMODS.find_card('j_jen_knight') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.power, Jen.sinister and "Stop this goddamn nonsense!!" or Jen.gods() and 'What is happening to me...?!' or 'Sometimes, you have to do', Jen.sinister and "WHAT IS WRONG WITH YOU?!?" or Jen.gods() and "My spine... it's... FOLDIIIING...!" or 'things the hard way.'}}
    end,
    calculate = function(self, card, context)
		if context.individual then
			if context.cardarea == G.play then
				if context.other_card:is_suit('Diamonds') then
					return {
						e_mult = card.ability.extra.power,
						colour = G.C.DARK_EDITION,
						card = card
					}, true
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'kallamar',
	loc_txt = {
		name = '{C:planet}Kallamar',
		text = {
			'{C:spades}Spades{} give',
			jl.expomult('#1#') .. ' Mult when scored',
			' ',
			caption('#2#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	config = {extra = {power = 1.3}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 50,
	fusable = true,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenkallamar',
	unique = true,
	in_pool = function()
		return #SMODS.find_card('j_jen_jester') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.power, Jen.sinister and 'WAAAAAAAAAAAAAAAA-!!!' or Jen.gods() and 'MyyYyyYY hEeaDDd iSS BiiSEEecCttInGG...!!!' or "It's not too late to turn a new leaf."}}
    end,
    calculate = function(self, card, context)
		if context.individual then
			if context.cardarea == G.play then
				if context.other_card:is_suit('Spades') then
					return {
						e_mult = card.ability.extra.power,
						colour = G.C.DARK_EDITION,
						card = card
					}, true
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'shamura',
	loc_txt = {
		name = '{C:tarot}Shamura',
		text = {
			'{C:hearts}Hearts{} give',
			jl.expomult('#1#') .. ' Mult when scored',
			' ',
			caption('#2#'),
			caption('#3#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	config = {extra = {power = 1.3}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 50,
	fusable = true,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenshamura',
	unique = true,
	in_pool = function()
		return #SMODS.find_card('j_jen_shamura') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.power, Jen.sinister and 'My brain\'s already suffered enough... Please!! Stop!!' or Jen.gods() and 'My mind... my BRAIN...' or 'I wish to help create a', Jen.sinister and 'IT DOESN\'T NEED TO BREAK ANY MORE THAN IT ALREADY HAS!!' or Jen.gods() and "IT'S FRACTURING MY CRANIUM!!!" or 'better future for everyone.'}}
    end,
    calculate = function(self, card, context)
		if context.individual then
			if context.cardarea == G.play then
				if context.other_card:is_suit('Hearts') then
					return {
						e_mult = card.ability.extra.power,
						colour = G.C.DARK_EDITION,
						card = card
					}, true
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'narinder',
	loc_txt = {
		name = '{C:red}N{C:green}a{C:money}r{C:planet}i{C:tarot}n{C:red}d{C:dark_edition}e{C:red}r',
		text = {
			'{C:attention}Face cards{} give',
			jl.expomult('#1#') .. ' Mult when scored',
			' ',
			caption('#2#'),
			caption('#3#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	config = {extra = {power = 1.15}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 50,
	fusable = true,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jennarinder',
	unique = true,
	in_pool = function()
		return #SMODS.find_card('j_jen_feline') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.power, Jen.gods() and 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' or Jen.sinister and 'GAAAAHHHHH!!!' or 'Just keep moving forward;', Jen.gods() and 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA' or Jen.sinister and 'STOP!!! STOP, PLEEEEASE!!! AAAHHH!!!' or "don't let any idiot stop you."}}
    end,
    calculate = function(self, card, context)
		if context.individual then
			if context.cardarea == G.play then
				if context.other_card:is_face() then
					return {
						e_mult = card.ability.extra.power,
						colour = G.C.DARK_EDITION,
						card = card
					}, true
				end
			end
		end
	end
}

local function aym_strength()
	return { op = math.min(3, math.floor(((G.GAME or {}).tension or 0) / 5)), level = ((G.GAME or {}).tension or 0) }
end

SMODS.Joker {
	key = 'aym',
	loc_txt = {
		name = '{C:cry_ember}Aym',
		text = {
			'{C:cry_ember}Tension{} gives {X:almanac,C:cry_blossom}?n{} Chips & Mult,',
			'{C:red,E:1}but also increases thrice as fast',
			'{C:inactive}(Currently {C:attention}#1##2#{C:inactive})',
			' ',
			caption('#3#'),
			caption('#4#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenaym',
	unique = true,
    loc_vars = function(self, info_queue, center)
		local strength = aym_strength()
        return {vars = {strength.op == 0 and 'x' or string.rep('^', strength.op), strength.level, Jen.sinister and '...pleaselordhavemercyonme...' or #SMODS.find_card('j_jen_narinder') > 0 and '...Fuck sake...' or 'Is *he* with you? I don\'t', (Jen.sinister or #SMODS.find_card('j_jen_narinder') > 0) and '' or 'want anything to do with you then.'}}
    end,
    calculate = function(self, card, context)
		if jl.scj(context) then
			local strength = aym_strength()
			local ret = {
				message = (strength.op == 0 and 'x' or string.rep('^', strength.op)) .. number_format(strength.level) .. ' Chips & Mult',
				colour = G.C.PURPLE,
				[(strength.op == 0 and 'x' or string.rep('e', strength.op)) .. '_chips'] = strength.level,
				[(strength.op == 0 and 'x' or string.rep('e', strength.op)) .. '_mult'] = strength.level,
				card = card
			}
			return ret, true
		end
	end
}

--[[SMODS.Joker {
	key = 'baal',
	loc_txt = {
		name = '{C:cry_verdant}Baal',
		text = {
			'When {C:attention}Straddle{} is about to progress,',
			'there is a {C:green}#1#% chance{} for it to {C:attention}rewind progress{} instead',
			'{C:inactive}(Cannot go below Straddle 0)',
			' ',
			caption('#2#'),
			caption('#3#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 50,
	fusable = true,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenaym',
	unique = true,
    loc_vars = function(self, info_queue, center)
		local strength = aym_strength()
        return {vars = {strength[1] == 0 and 'x' or string.rep('^', strength[1]), strength[2], Jen.sinister and '...pleaselordhavemercyonme...' or #SMODS.find_card('j_jen_narinder') > 0 and '...Fuck sake...' or 'Is *he* with you? I don\'t', (Jen.sinister or #SMODS.find_card('j_jen_narinder') > 0) and '' or 'want anything to do with you then.'}}
    end,
    calculate = function(self, card, context)
	end
}]]

local clauneck_blurbs = {
	"I bless thee!",
	"A good draw!",
	"Here's your reading...",
	"It's dangerous to go alone...",
	"Be careful.",
	"May the Fates bless you."
}

SMODS.Joker {
	key = 'clauneck',
	loc_txt = {
		name = 'Clauneck',
		text = {
			'{C:tarot}Tarot{} cards add',
			'either {X:blue,C:white}x#1#{} or {C:blue}+#2# Chips',
			'to all {C:attention}playing cards{} when used',
			'{C:inactive}(Uses whichever one that gives the better upgrade)',
			'When any card reaches {C:attention}1e100 chips or more{},',
			'{C:red}reset it to zero{}, {C:planet}level up all hands #3# time(s)',
			'and create a {C:dark_edition}Negative {C:spectral}Soul',
			' ',
			caption('#4#'),
			caption('#5#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	config = {extra = {chips_additive = 100, chips_mult = 2, levelup = 10}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	fusable = true,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenclauneck',
	unique = true,
	in_pool = function()
		return #SMODS.find_card('j_jen_fateeater') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.chips_mult, center.ability.extra.chips_additive, center.ability.extra.levelup, Jen.gods() and 'A-Apollo... I have failed you...' or Jen.sinister and 'This-... this is sacrilege, I say!' or 'May the Fates guide', Jen.gods() and 'May... t-the F-F-Fates..... have... m-.....' or Jen.sinister and 'Not even the Fates could fathom this!' or 'you to the best path.'}}
    end,
    calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Tarot' and (#G.hand.cards > 0 or #G.deck.cards > 0) then
			if jl.njr(context) then card:speak(clauneck_blurbs, G.C.MULT) end
			local e100cards = {}
			for k, v in ipairs(G.playing_cards) do
				if not v.ability.perma_bonus then v.ability.perma_bonus = 0 end
				local res1 = 0
				local res2 = 0
				for i = 1, context.consumeable:getEvalQty() do
					res1 = v.ability.perma_bonus * card.ability.extra.chips_mult
					res2 = v.ability.perma_bonus + card.ability.extra.chips_additive
					v.ability.perma_bonus = math.max(res1, res2)
				end
				if v.ability.perma_bonus >= 1e100 then table.insert(e100cards, v) end
			end
			local ecs = #e100cards
			if ecs > 0 then
				card_status_text(card, '!!!', nil, 0.05*card.T.h, G.C.DARK_EDITION, 0.6, 0.6, 2, 2, 'bm', 'jen_enlightened')
				jl.th('all')
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
					play_sound('tarot1')
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = true
				return true end }))
				update_hand_text({sound = 'button', volume = 0.7, pitch = 0.9, delay = 0}, {chips = '+', mult = '+', StatusText = true, level='+' .. number_format(card.ability.extra.levelup * ecs)})
				delay(1.3)
				for k, v in pairs(G.GAME.hands) do
					level_up_hand(v, k, true, card.ability.extra.levelup * ecs)
				end
				for k, v in pairs(e100cards) do
					v.ability.perma_bonus = 0
				end
				jl.ch()
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
					local soul = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_soul', nil)
					soul.no_forced_edition = true
					soul:set_edition({negative = true})
					soul.no_forced_edition = nil
					soul:setQty(ecs)
					if ecs > 1 then soul:create_stack_display() end
					soul:set_cost()
					soul:add_to_deck()
					G.consumeables:emplace(soul)
				return true end }))
			end
			return nil, true
		end
	end
}

local exotic_editions = {
	'jen_bloodfoil',
	'jen_blood'
}

local wondrous_editions = {
	'jen_moire'
	--'jen_unreal'
}

function Card:is_exotic_edition(excludewondrous)
	if not self.edition then return false end
	local is_exotic = false
	for k, v in pairs(exotic_editions) do
		if self.edition[v] then
			is_exotic = true
			break
		end
	end
	if not excludewondrous then
		for k, v in pairs(wondrous_editions) do
			if self.edition[v] then
				is_exotic = true
				break
			end
		end
	end
	return is_exotic
end

function Card:is_wondrous_edition()
	if not self.edition then return false end
	local is_exotic = false
	for k, v in pairs(wondrous_editions) do
		if self.edition[v] then
			is_exotic = true
			break
		end
	end
	return is_exotic
end

Jen.pending_applyingeditions = false

SMODS.Joker {
	key = 'kudaai',
	loc_txt = {
		name = 'Kudaai',
		text = {
			'Non-{C:dark_edition}editioned{} cards are',
			'{C:attention}given a random {C:dark_edition}Edition',
			'{C:inactive,s:0.8}(Some editions are excluded from the pool)',
			'{C:inactive,s:0.8}(UNO cards excluded)',
			' ',
			caption('#1#'),
			caption('#2#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	fusable = true,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenkudaai',
	unique = true,
	in_pool = function()
		return #SMODS.find_card('j_jen_foundry') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {Jen.gods() and 'HELP! HEEEEeeeell-...' or Jen.sinister and '*whining baby noises*' or "You'll need these...", (Jen.gods() or Jen.sinister) and '' or "...lest you wan'cha ass kicked."}}
    end
}

local chemach_phrases = {
	'Another precious relic!',
	'A fine addition to my collection.',
	'A worthy antique!',
	'Oh, I love it!',
	'It looks so shiny!',
	'I am satisfied with this haul!',
	"Now that's going on display!",
	'I might need a bigger chest...'
}

local vars1plus = {'x_mult', 'e_mult', 'ee_mult', 'eee_mult', 'x_chips', 'e_chips', 'ee_chips', 'eee_chips'}

SMODS.Joker {
	key = 'chemach',
	loc_txt = {
		name = 'Chemach',
		text = {
			'{C:attention}Doubles{} the values of',
			'{C:attention}all Jokers{} whenever',
			'a Joker that is {C:red}not {C:blue}Common{} or {C:green}Uncommon{} is {C:money}sold{},',
			'then {C:attention}retrigger all add-to-inventory effects{} of {C:attention}all Jokers',
			'{C:inactive}(Not all values can be doubled, not all Jokers can be affected)',
			' ',
			caption('#1#'),
			caption('#2#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	fusable = true,
	rarity = 'jen_wondrous',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenchemach',
	unique = true,
	in_pool = function()
		return #SMODS.find_card('j_jen_broken') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {Jen.gods() and 'No! NO! STOP! STOP IT!!' or Jen.sinister and 'Whatever artefact THAT is...' or "My treasures are remnants", Jen.gods() and 'THIS RELIC IS TOO MUCH!! NO!!! NOOOOOOooo-!!!' or Jen.sinister and 'you can keep it AWAY FROM ME!!!' or "of tales old and new."}}
    end,
	calculate = function(self, card, context)
		if context.selling_card then
			if context.card.ability.set == 'Joker' and context.card:gc().rarity ~= 1 and context.card:gc().rarity ~= 2 then
				if jl.njr(context) then card_eval_status_text(card, 'extra', nil, nil, nil, {message = chemach_phrases[math.random(#chemach_phrases)], colour = G.C.PURPLE}) end
				for k, v in pairs(G.jokers.cards) do
					if v ~= card and v ~= context.card then
						if not v:gc().immutable then
							v:remove_from_deck()
							for a, b in pairs(v.ability) do
								if a == 'extra' then
									if type(v.ability.extra) == 'number' then
										v.ability.extra = math.min(v.ability.extra * 2, 1e300)
									elseif type(v.ability.extra) == 'table' and next(v.ability.extra) then
										for c, d in pairs(v.ability.extra) do
											if type(d) == 'number' then
												v.ability.extra[c] = math.min(d * 2, 1e300)
											end
										end
									end
								elseif a ~= 'order' and a ~= 'hyper_chips' and a ~= 'hyper_mult' and type(b) == 'number' and b > (jl.bf(a, vars1plus) and 1 or 0) then
									v.ability[a] = b * 2
								end
							end
							v:add_to_deck()
						end
					end
				end
				return nil, true
			end
		end
	end
}

local haro_blurbs = {
	"Once upon a time...",
	"Have I got a story for you!",
	"I remember one time...",
	"This tale of mine is relatively ancient...",
	"Let me tell you a story."
}

SMODS.Joker {
	key = 'haro',
	loc_txt = {
		name = 'Haro',
		text = {
			'{C:tarot}Tarots {C:planet}level up',
			'{C:attention}all hands{} when used or sold',
			'{X:green,C:white}Synergy:{} {X:dark_edition,C:red}^#1#{C:red} Mult{} if',
			'you have {X:attention,C:black}Suzaku',
			' ',
			caption('#2#'),
			caption('#3#'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	config = {extra = {synergy_mult = 1.65}},
	cost = 15,
	rarity = 'cry_epic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenharo',
	in_pool = function()
		return #SMODS.find_card('j_jen_godfather') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.synergy_mult, Jen.gods() and 'Make it stop! MAKE IT STOP!' or Jen.sinister and 'What kind of tales do you tell?!' or 'I live to tell tales,', Jen.gods() and 'I CAN\'T TAKE IIIIIT!' or Jen.sinister and 'This is just pure psychopathy!!' or 'both of old and of new.'}}
    end,
	calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Tarot' then
			local quota = (context.consumeable:getEvalQty())
			card.cumulative_lvs = (card.cumulative_lvs or 0) + quota
			if jl.njr(context) then
				card:speak(haro_blurbs, G.C.SECONDARY_SET.Tarot)
				card:apply_cumulative_levels()
			end
			return nil, true
		elseif context.selling_card and not context.selling_self and context.card.ability.set == 'Tarot' then
			local quota = (context.card:getEvalQty())
			card.cumulative_lvs = (card.cumulative_lvs or 0) + quota
			if jl.njr(context) then
				card:speak(haro_blurbs, G.C.SECONDARY_SET.Tarot)
				card:apply_cumulative_levels()
			end
			return nil, true
		end
		if #SMODS.find_card('j_jen_suzaku') > 0 then
			if context.cardarea == G.jokers and context.joker_main then
				return {
					message = 'Either with a sword, or a bullet! (^' .. card.ability.extra.synergy_mult .. ' Mult)',
					Emult_mod = card.ability.extra.synergy_mult,
					colour = G.C.DARK_EDITION
				}, true
			end
		end
	end
}

local suzaku_blurbs = {
	"More ammo!",
	"Bullets! Yes!",
	"Talk about a fine caliber.",
	"I can shoot with this...",
	"Let's fire a round, eh?"
}

SMODS.Joker {
	key = 'suzaku',
	loc_txt = {
		name = 'Suzaku',
		text = {
			'{C:spectral}Spectrals {C:planet}level up',
			'{C:attention}all hands{} when used or sold',
			'{X:green,C:white}Synergy:{} {X:dark_edition,C:red}^#1#{C:red} Mult{} if',
			'you have {X:attention,C:black}Haro',
			' ',
			caption('#2#'),
			caption('#3#'),
			faceart('raidoesthings')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	config = {extra = {synergy_mult = 1.65}},
	cost = 15,
	rarity = 'cry_epic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jensuzaku',
	in_pool = function()
		return #SMODS.find_card('j_jen_godmother') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.synergy_mult, Jen.gods() and 'GGHHAAAAAAAHHHHHHHHhhh-!!' or Jen.sinister and 'What kind of firepower is this?!' or 'You gotta finish the job fast', Jen.gods() and '' or Jen.sinister and 'My blunderbuss can\'t even compete!' or 'sometimes, and you have me to help!'}}
    end,
	calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Spectral' then
			local quota = (context.consumeable:getEvalQty())
			card.cumulative_lvs = (card.cumulative_lvs or 0) + quota
			if jl.njr(context) then
				card:speak(suzaku_blurbs, G.C.SECONDARY_SET.Spectral)
				card:apply_cumulative_levels()
			end
			return nil, true
		elseif context.selling_card and not context.selling_self and context.card.ability.set == 'Spectral' then
			local quota = (context.card:getEvalQty())
			card.cumulative_lvs = (card.cumulative_lvs or 0) + quota
			if jl.njr(context) then
				card:speak(suzaku_blurbs, G.C.SECONDARY_SET.Spectral)
				card:apply_cumulative_levels()
			end
			return nil, true
		end
		if #SMODS.find_card('j_jen_haro') > 0 then
			if context.cardarea == G.jokers and context.joker_main then
				return {
					message = 'All it takes is one chance. (^' .. card.ability.extra.synergy_mult .. ' Mult)',
					Emult_mod = card.ability.extra.synergy_mult,
					colour = G.C.DARK_EDITION
				}, true
			end
		end
	end
}

SMODS.Joker {
	key = 'apollo',
	loc_txt = {
		name = 'Apollo',
		text = {
			'{C:jen_RGB,E:1}Omega{} versions of consumables',
			'appear {C:attention}approximately #1#x as often{} than normal',
			'{C:inactive}(Stacks hyperbolically with other copies)',
			' ',
			caption('#2#'),
			caption('#3#'),
			faceart('raidoesthings')
		}
	},
	config = {omegachance_amplifier = 8},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	jumbo_mod = 3,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenapollo',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.omegachance_amplifier, Jen.gods() and 'No-...! I will not submit-...!' or Jen.sinister and 'Your arbitrary power...' or 'Remember, the Fates aren\'t kind to anyone,', Jen.gods() and 'IT CANNOT END LIKE THIS!' or Jen.sinister and 'why must you go so overboard?!' or 'no matter how much you try to get on their good side.'}}
    end,
}

local hep_blurbs = {
	'A fine creation.',
	'Careful, it\'s fresh out of the forge.',
	'Still a little hot.',
	'Not too shabby.'
}

SMODS.Joker {
	key = 'hephaestus',
	loc_txt = {
		name = 'Hephaestus',
		text = {
			'Using a {C:attention}consumable{} has a',
			'{C:green}50% chance{} to {C:attention}duplicate it',
			'{C:inactive}(Negatives, The Genius, POINTER://, and Omega consumables excluded)',
			'{C:inactive}(Clamped to 100,000 rolls in a single stack)',
			' ',
			caption('Be as precise as possible.'),
			caption('What good is a blade if its user is sloppy?'),
			faceart('raidoesthings')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	unique = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenhephaestus',
	in_pool = function()
		return #SMODS.find_card('j_jen_smelter') <= 0
	end,
    calculate = function(self, card, context)
		if jl.njr(context) and not context.blueprint and context.using_consumeable and context.consumeable and context.consumeable:gc().key ~= 'c_jen_reverse_fool' and context.consumeable:gc().key ~= 'c_cry_pointer' and context.consumeable.ability.set ~= 'jen_omegaconsumable' and context.consumeable.ability.set ~= 'jen_ability' and not (context.consumeable.edition or {}).negative then
			local quota = 0
			local rolls = math.min(1e5, context.consumeable:getEvalQty())
			for i = 1, rolls do
				if jl.chance('hephaestus_duplicate', 2, true) then
					quota = quota + 1
				end
			end
			if quota > 0 then
				card:speak(hep_blurbs, G.C.FILTER)
				Q(function()
					local hep = copy_card(context.consumeable)
					hep:setQty(quota)
					hep:add_to_deck()
					G.consumeables:emplace(hep)
				return true end, 1)
			else
				card:speak(localize('k_nope_ex'), G.C.RED)
			end
		end
	end
}

SMODS.Joker {
	key = 'luke',
	loc_txt = {
		name = 'Luke Carder',
		text = {
			'{C:attention}All{} Jokers, cards and',
			'consumables are {C:cry_code}Rigged',
			'{C:inactive}(Hunter excluded)',
			'{C:inactive}(Does not guarantee chances that are measured in a percentage)',
			'{C:attention}Lucky cards{} have a {C:green}chance{} to, when scored:',
			'{C:green}20%{} : Grant {C:dark_edition}+1{} Joker slot',
			'{C:green}35%{} : Grant {C:edition}+1{} Consumable slot',
			'{C:green}40% each{} : Create a {C:tarot}Tarot{}/{C:spectral}Spectral{}/{C:planet}Planet{}/{C:cry_code}Code{} card',
			'{C:green}1%{} : Create a {C:spectral}Soul',
			'{C:green}0.1%{} : Create a {C:cry_exotic,E:1}Gateway',
			' ',
			caption('Hey there, Card Gamers! I\'m the Lucky Carder,'),
			caption('and welcome to my Balatro playthrough!'),
			faceart('raidoesthings'),
			origin('Inscryption'),
			au('Scryptic Swap')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 250,
	rarity = 'jen_wondrous',
	unique = true,
	longful = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenluke',
	in_pool = function()
		return #SMODS.find_card('j_jen_dealer') <= 0
	end,
    calculate = function(self, card, context)
		if not context.blueprint then
			if context.cardarea == G.play then
				if context.other_card and context.other_card.ability.name == 'Lucky Card' and jl.scj(context) then
					if jl.chance('jen_luke_jokerslot', 5, true) then
						card:speak('+1 Joker Slot', G.C.DARK_EDITION)
						G.jokers:change_size_absolute(1)
					end
					if jl.chance('jen_luke_consslot', 2.8571428571428571428571428571429, true) then
						card:speak('+1 Consumable Slot', G.C.EDITION)
						G.consumeables:change_size_absolute(1)
					end
					if jl.chance('jen_luke_tarot', 2.5, true) then
						card:speak('+Tarot', G.C.SECONDARY_SET.Tarot)
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil, 'luke_tarot')
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
							return true
						end }))
					end
					if jl.chance('jen_luke_spectral', 2.5, true) then
						card:speak('+Spectral', G.C.SECONDARY_SET.Spectral)
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Spectral', G.consumeables, nil, nil, nil, nil, nil, 'luke_spectral')
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
							return true
						end }))
					end
					if jl.chance('jen_luke_planet', 2.5, true) then
						card:speak('+Planet', G.C.SECONDARY_SET.Planet)
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'luke_planet')
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
							return true
						end }))
					end
					if jl.chance('jen_luke_code', 2.5, true) then
						card:speak('+Code', G.C.SET.Code)
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Code', G.consumeables, nil, nil, nil, nil, nil, 'luke_code')
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
							return true
						end }))
					end
					if jl.chance('jen_luke_soul', 100, true) then
						card:speak('+Soul', G.C.CRY_TWILIGHT)
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_soul', 'luke_soul')
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
							return true
						end }))
					end
					if jl.chance('jen_luke_gateway', 1000, true) then
						card:speak('+Gateway', G.C.CRY_ASCENDANT)
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_cry_gateway', 'luke_gateway')
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
							return true
						end }))
					end
					return nil, true
				end
			end
		end
	end
}

local p03_blurbs = {
	'Here, jackass.',
	'Stop asking me for more.',
	'You need more?',
	'Piss off already.',
	'Okay, this is already getting annoying.',
	'WHO PUT GREASE ALL OVER THE CONVEYOR BELT?',
	'Jesus.',
	'I really need to make my workers better.',
	'Why are you so... you?',
	'Is that... questionable data... on your disk?',
	'*Sigh*...',
	'Getting too old for this shit.'
}

SMODS.Joker {
	key = 'p03',
	loc_txt = {
		name = 'P03',
		text = {
			'Create a {C:spectral}POINTER://{} for',
			'every {C:attention}#2# non-{C:dark_edition}Negative {C:cry_code}Code{} cards used,',
			'then {C:attention}increase requirement{} by {X:dark_edition,C:attention}^1.3{C:inactive,s:0.75} (rounded up)',
			'{C:inactive,s:2}[{C:attention,s:2}#1#{C:inactive,s:2} / #2#]',
			'{C:inactive}(Code cards that have a suit or rank on them do not count)',
			'{C:spectral}POINTER://{} can now create {C:cry_exotic,E:1}Exotic{} Jokers',
			' ',
			caption('Well, I suppose I can help you'),
			caption('make your deck suck less.'),
			faceart('raidoesthings'),
			origin('Inscryption'),
			au('Scryptic Swap')
		}
	},
	config = {codes = 0},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 250,
	unique = true,
	debuff_immune = true,
	rarity = 'jen_wondrous',
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenp03',
	in_pool = function()
		return #SMODS.find_card('j_jen_disappointment') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.codes, (G.GAME or {}).p03_codereq or 3}}
    end,
    calculate = function(self, card, context)
		if not context.blueprint and context.using_consumeable and context.consumeable and not (context.consumeable.edition or {}).negative and context.consumeable.ability.set == 'Code' and jl.njr(context) and (not context.consumeable.base or not context.consumeable.base.suit or not context.consumeable.base.value) then
			local quota = context.consumeable:getEvalQty()
			if not G.GAME.p03_codereq then G.GAME.p03_codereq = 3 end
			card.ability.codes = card.ability.codes + quota
			if card.ability.codes >= G.GAME.p03_codereq then
				card:speak(p03_blurbs, G.C.SET.Code)
				while card.ability.codes >= G.GAME.p03_codereq do
					should_speak = true
					card.ability.codes = card.ability.codes - G.GAME.p03_codereq
					G.GAME.p03_codereq = math.min(1e7, math.ceil(G.GAME.p03_codereq ^ 1.3))
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
						if card then
							play_sound('jen_draw')
							local pointer = create_card('Code', G.consumeables, nil, nil, nil, nil, 'c_cry_pointer', 'p03_pointer')
							pointer.no_omega = true
							pointer:add_to_deck()
							G.consumeables:emplace(pointer)
						end
					return true end }))
				end
			end
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = card.ability.codes .. ' / ' .. G.GAME.p03_codereq, colour = G.C.SET.Code})
			return nil, false
		end
	end
}

local maxie_quotes = {
	normal = {
		'Hey! I hope we can become great friends together!',
		'Need a paw?',
		'Together as a team!',
		'Mmm... Milk sounds good right about now.',
		'Unlike most other bunnies; I don\'t like carrots.',
		'Mmm... Mac and Cheese...',
		'I am just sitting here.'
	},
	drama = {
		'A-ah! S-stop it, please!! You\'re scaring me...!',
		'E-eek! B-be careful!!'
	},
	gods = {
		'I-it hurts... it h-hurts... it hurts, it hurts ithurts ithurtsITHURTS-!!!',
		'M-my flesh... it b-burns...',
		'G-get that... THING... away from me!! It\'s-... making me h-hear w-whispers...!'
	},
	trigger = {
		'A gift for your kindness!',
		'Temperance/Hermit value!',
		'Bnuuy.',
		'You can\'t handle the uber instincts of my uber autism.',
		'This might help!',
		'I\'m gonna have sexual thoughts about that.',
		'300 booster packs, for only 2 pounds?! Yes, sir!',
		'Hehea!',
		'Fucking Monopoly Money...',
		'Could you pass me some milk? I\'m thirsty.',
		'If you don\'t like bunnies; fuck you, die!',
		'Rizz.',
		'nnNOOOOOHHHH-',
		'Pocket £@"!@}$£:$%"%~$":%£',
		'Also try Soundpad!',
		'Balatro is on my soundboard!',
		'Bird up!',
		'Crazy? I was crazy once...',
		'The Giant Enemy Spider!',
		'gore5',
		'negativebutretriggeredreverb',
		'The sun is a deadly lazer...!',
		'rrrRRRRrRRRRrrrRRrrr',
		'I can\'t stop winning!',
		'I lost so much money, but...',
		'AAaaA-',
		'Oh no, not Wilhelm!',
		'SHOOT THEM WITH THE DEHYDRATION GUN!',
		'Five. Hundred. Booster packs.',
		'Fortnite.',
		'WHA\' DOES \'DIS BUTT\'N DUU?',
		'WHA\' DOES \'DIS FUCKA DUU?',
		'Balls.',
		'I turned myself into a card.',
		'I\'m card.',
		'I TURNED MYSELF INTO A CARD, MORTY!!!',
		'Do I look like I know what a JPEG is?',
		'G O   F U C K   Y O U R S E L F',
		'ONION- O- OH- ONION RING I\'VE GOT AN ONION RING',
		'Wow, I have so many trigger quotes!',
		'This is like, meta.',
		'Dude, the thing that everybo-',
		'Oooooohhhh, my pohh-!',
		'Dog park.',
		'Cock and Ball Torture, from Wikipedia, the free encyclopedia at en.wikipedia.org.',
		'Off to hang myself. Watch and lea-*choke*',
		'Boo-womp.',
		'See that moderator? We\'re gonna ping \'im!',
		'I\'ve come to make an announcement.',
		'UUAAAAAAAAAAA-',
		'I like to play with myself! Wait, that sounds wrong.',
		'isek die.m4a',
		'My eyes are having an orgasm.',
		'Hey there, are you having a good day? Well, fuck you!',
		'I\'M MAKING FUCKING MAC AND CHEESE, AND NOBODY CAN STO-',
		'iamjustsittinghere',
		'This PC > Downloads > iamjustsittinghere',
		'Stinky.',
		'This is Stinky I, and this is Stinky II!',
		'Stinky III... better not show up.'
	}
}

SMODS.Joker {
	key = 'maxie',
	loc_txt = {
		name = '{C:edition}Maxie',
		text = maxie_desc
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	drama = { x = 2, y = 0 },
	cost = 2375,
	rarity = 'jen_extraordinary',
	wee_incompatible = true,
    loc_vars = function(self, info_queue, center)
		local quoteset = Jen.dramatic and 'drama' or Jen.gods() and 'gods' or 'normal'
        return {vars = {maxie_quotes[quoteset][math.random(#maxie_quotes[quoteset])]}}
    end,
	misc_badge = {
		colour = G.C.almanac,
		text_colour = G.C.CRY_BLOSSOM,
		text = {
			'Bishop of Kosmos',
			'Maxie'
		}
	},
	unique = true,
	unlocked = true,
	discovered = true,
	fusable = true,
	debuff_immune = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenmaxie',
	in_pool = function()
		return #SMODS.find_card('j_jen_charred') <= 0
	end,
    calculate = function(self, card, context)
		if jl.njr(context) and context.using_consumeable and context.consumeable and context.consumeable.gc and jl.bf(context.consumeable:gc().key, maxie_consumables) then
			local quota = (context.consumeable:getEvalQty())*2
			local isnegative = (context.consumeable.edition or {}).negative
			if not isnegative then
				card:speak('+' .. quota .. ' Boosters', G.C.DARK_EDITION)
				card:speak(maxie_quotes.trigger, G.C.DARK_EDITION)
				for i = 1, quota do
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2/quota, func = function()
						if card then
							card:juice_up(0.8, 0.5)
							local duplicate = create_card('Booster', G.consumeables, nil, nil, nil, nil, k, 'maxie_pack')
							if duplicate.gc and duplicate:gc().set ~= 'Booster' then
								duplicate:set_ability(jl.rnd('maxie_booster_equilibrium', nil, G.P_CENTER_POOLS.Booster), true, nil)
								duplicate:set_cost()
							end
							duplicate:add_to_deck()
							G.consumeables:emplace(duplicate)
						end
					return true end }))
					if i <= quota/2 and jl.chance('maxie_voucherchance', 10, true) then
						card:speak('+Voucher', G.C.EDITION)
						card:speak(maxie_quotes.trigger, G.C.EDITION)
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2/quota, func = function()
							if card then
								card:juice_up(0.8, 0.5)
								local duplicate = create_card('Voucher', G.consumeables, nil, nil, nil, nil, k, 'maxie_voucher')
								if duplicate.gc and duplicate:gc().set ~= 'Voucher' then
									duplicate:set_ability(jl.rnd('maxie_voucher_equilibrium', nil, G.P_CENTER_POOLS.Voucher), true, nil)
									duplicate:set_cost()
								end
								duplicate:add_to_deck()
								G.consumeables:emplace(duplicate)
							end
						return true end }))
					end
				end
			end
			return nil, true
		end
	end
}

SMODS.Joker {
	key = 'oxy',
	loc_txt = {
		name = '{C:pastel_yellow}O{C:pink}x{}y',
		text = {
			'{C:attention}Steel{} cards give',
			'{X:purple,C:white}x#1#{} Chips & Mult',
			'when scored',
			' ',
			caption('#2#'),
			faceart('ocksie')
		}
	},
	misc_badge = {
		colour = G.C.almanac,
		text_colour = G.C.CRY_BLOSSOM,
		text = {
			'Bishop of Kosmos',
			'ocksie'
		}
	},
	config = {steel = 1.5},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 10,
	rarity = 3,
	fusable = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenoxy',
	in_pool = function()
		return #SMODS.find_card('j_jen_inhabited') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.steel, Jen.sinister and 'WHAT ARE YOU DOING DOWN THERE?!?' or Jen.gods() and 'I am-... I am-... I am... what is this feeling?' or 'We all cut close...'}}
    end,
    calculate = function(self, card, context)
		if context.individual then
			if context.cardarea == G.play then
				if context.other_card.ability.name == 'Steel Card' then
					return {
						x_chips = card.ability.steel,
						x_mult = card.ability.steel,
						colour = G.C.PURPLE,
						card = card
					}, true
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'honey',
	loc_txt = {
		name = '{C:pastel_yellow}H{C:caramel}one{C:pastel_yellow}y',
		text = {
			'{C:attention}Ignore{} the card selection limit',
			'if the card you try to select is',
			'{C:attention}up to N rank(s) higher or lower',
			'than the {C:attention}most-recently selected card',
			'{C:inactive}(N = no. of copies of this Joker you have)',
			'{C:inactive,s:0.75}(ex. If most recent selection is a 10, you can select a Jack or 9 regardless of selection limit)',
			' ',
			'{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult',
			'for each card in played hand {C:attention}past the fifth card',
			'{C:inactive}(Cards do not need to score)',
			' ',
			caption('#3#'),
			faceart('ocksie')
		}
	},
	sinis = { x = 2, y = 0 },
	config = {c = 10, m = 2},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 8,
	rarity = 3,
	fusable = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenhoney',
	in_pool = function()
		return #SMODS.find_card('j_jen_cracked') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.c, center.ability.m, Jen.sinister and 'S-STOP THAT!! YOU\'RE FREAKING ME OOOUT!!!' or Jen.gods() and "H-hey, get rid of that thing! It's making my head hurt!!" or "Buzzzzz! I'll do my best!"}}
    end,
    calculate = function(self, card, context)
		if context.cardarea == G.jokers and context.joker_main then
			if #G.play.cards > 5 then
				local excess = #G.play.cards - 5
				local mod1 = card.ability.c * excess
				local mod2 = card.ability.m * excess
				return {
					chip_mod = mod1,
					mult_mod = mod2,
					message = '+' .. number_format(mod1) .. ' Chips & +' .. number_format(mod2) .. ' Mult',
					colour = G.C.PURPLE
				}, true
			end
		end
	end
}

local cheese_quotes = {
	normal = {
		':3',
		'Jiggle fart.',
		'Mmmm, single fried maggot...',
		'Wait, where\'s my son?',
		'Remember that you\'re awesome!',
		'Goodbye! Don\'t die! ...Preferably!',
		'F I S H ! !'
	},
	bb = {
		'There he is!',
		'La Jeremiah.'
	},
	trigger = {
		'Do you want to Cavern Crush?',
		'Cavern Crush!',
		'Can we crush the cavern crush with the crush in the cavern crush crush?',
		'FIIIIIIIIIIIIIIIIIIIIIIIIIISH',
		'f i s h',
		'Fish.',
		'CANWEGOFISHING',
		'I heard you like fishes, so I put more fishes in your fishes.',
		'For Nimbus!',
		'We fight, for Nimbus!',
		'For Jeremy!',
		'For the Jeremiah.',
		'To Jeremyyyyy!',
		'To Niiimbuuuus!',
		'Wawaaaaaaaa!!!',
		'Taste the WAWA!',
		'Too slow!',
		'Wuhaaaii-ya!'
	}
}

SMODS.Joker {
	key = 'cheese',
	loc_txt = {
		name = 'Cheese',
		text = {
			'{C:blue}+#1#{} hand(s) if played',
			'hand is your {C:attention}most played',
			'{C:inactive}(#2#)',
			' ',
			caption('#3#'),
			faceart('idot1537'),
			origin('Rain World')
		}
	},
	config = {add = 1},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 10,
	rarity = 3,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jencheese',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.add, jl.favhand(), #SMODS.find_card('j_jen_jeremy') > 0 and cheese_quotes.bb[math.random(#cheese_quotes.bb)] or cheese_quotes.normal[math.random(#cheese_quotes.normal)]}}
    end,
    calculate = function(self, card, context)
		if context.cardarea == G.jokers and context.joker_main and context.poker_hands and context.scoring_name and context.scoring_name == jl.favhand() then
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = cheese_quotes.trigger[math.random(#cheese_quotes.trigger)], colour = G.C.BLUE})
			ease_hands_played(card.ability.add or 1)
			return nil, true
		end
	end
}

SMODS.Joker {
	key = 'jeremy',
	loc_txt = {
		name = 'Jeremy',
		text = {
			'Scored cards give',
			'{C:mult}+#1#{} Mult each',
			'{X:green,C:white}Synergy:{} Scored cards give',
			'{X:mult,C:white}x#1#{} Mult each instead',
			'if you have {X:attention}Cheese',
			' ',
			caption('#2#'),
			faceart('idot1537'),
			origin('Rain World')
		}
	},
	config = {mul = 2},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 6,
	rarity = 2,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenjeremy',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.mul, #SMODS.find_card('j_jen_cheese') > 0 and 'Wawa!' or ('Wawa.' .. (math.random(2) == 1 and '..' or ''))}}
    end,
    calculate = function(self, card, context)
		if context.cardarea == G.play then
			local ret = {
				message = 'Wawa!',
				colour = G.C.MULT,
				card = card
			}
			if #SMODS.find_card('j_jen_cheese') > 0 then
				ret.x_mult = card.ability.mul
				ret.message = ret.message .. ' (x' .. number_format(card.ability.mul) .. ' Mult)'
			else
				ret.mult = card.ability.mul
				ret.message = ret.message .. ' (+' .. number_format(card.ability.mul) .. ' Mult)'
			end
			return ret, true
		end
	end
}

SMODS.Joker {
	key = 'pickel',
	loc_txt = {
		name = 'Pickelcat',
		text = {
			'{C:attention}Straddle{} takes {C:attention}twice',
			'as long to progress',
			caption('#1#'),
			faceart('idot1537'),
			origin('Rain World')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 12,
	rarity = 'cry_epic',
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	debuff_immune = true,
	unique = true,
	atlas = 'jenpickel',
	in_pool = function() return G.GAME.straddle_active end,
    loc_vars = function(self, info_queue, center)
        return {vars = {math.random(2) == 1 and 'I don\'t know how to drive Undertale!' or 'I\'mma gonna insane.'}}
    end
}

local aster_blurbs = {
	'To the stars!',
	'I gotcha!',
	'Awesome!',
	'Ooooh...',
	'We have liftoff!',
	"Let's bring them ALL up!",
	"You're doing great!",
	'Let me help you with that!',
	'Boop!',
	'Hehe!'
}

SMODS.Joker {
	key = 'aster',
	loc_txt = {
		name = 'Aster Flynn',
		text = {
			'{C:planet}Planets level up',
			'{C:attention}all hands{} when used or sold',
			' ',
			caption('#1#'),
			faceart('HexaCryonic')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0},
	cost = 15,
	fusable = true,
	rarity = 'cry_epic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenaster',
	in_pool = function()
		return #SMODS.find_card('j_jen_astrophage') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {Jen.sinister and "Oh... O-Oh, my stars..." or Jen.gods() and "Goodness... I... feel strange... my head hurts..." or "Hi! Nice to meet you!"}}
    end,
	calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Planet' then
			local quota = (context.consumeable:getEvalQty())
			card.cumulative_lvs = (card.cumulative_lvs or 0) + quota
			if jl.njr(context) then
				card:speak(aster_blurbs, G.C.SECONDARY_SET.Planet)
				card:apply_cumulative_levels()
			end
			return nil, true
		elseif context.selling_card and not context.selling_self and context.card.ability.set == 'Planet' then
			local quota = (context.card:getEvalQty())
			card.cumulative_lvs = (card.cumulative_lvs or 0) + quota
			if jl.njr(context) then
				card:speak(aster_blurbs, G.C.SECONDARY_SET.Planet)
				card:apply_cumulative_levels()
			end
			return nil, true
		end
	end
}

local rin_blurbs = {
	"I'm in.",
	'Pow!',
	'Run that back.',
	"local duplicate = create_card('Code', G.consumeables, nil, nil, nil, nil, k, 'rin_negative')",
	'Got an ACE up my sleeve.',
	'Trying to break the game?',
	"Copy/Paste-n't.",
	'Boop!',
	'Gotcha.',
	'Go forth and make the game cry.',
	"card:speak(rin_blurbs, G.C.SET.Code)"
}

SMODS.Joker {
	key = 'rin',
	loc_txt = {
		name = 'Rin Whitaker',
		text = {
			'Using a {C:attention}non-{C:dark_edition}Negative {C:code}Code',
			'creates {C:attention}#1# {C:dark_edition}Negative{} copies',
			' ',
			caption('#2#'),
			faceart('HexaCryonic')
		}
	},
	config = {extra = {copies = 2}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 20,
	rarity = 4,
	jumbo_mod = 3,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenrin',
	in_pool = function()
		return #SMODS.find_card('j_jen_corruption') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.copies, Jen.sinister and 'DUDE, WHAT THE HELL, ARE YOU TRYING TO MAKE THE COMPUTER EXPLODE?!?' or "Oh, hey, 'sup?"}}
    end,
    calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Code' then
			local quota = (context.consumeable:getEvalQty())
			local card_key = context.consumeable:gc().key
			local isnegative = (context.consumeable.edition or {}).negative
			if not isnegative then
				if not card.cumulative_qtys then card.cumulative_qtys = {} end
				card.cumulative_qtys[card_key] = (card.cumulative_qtys[card_key] or 0) + quota
				if jl.njr(context) then
					card:speak(rin_blurbs, G.C.SET.Code)
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
							if card then
								if card.cumulative_qtys then
									for k, v in pairs(card.cumulative_qtys) do
										local duplicate = create_card('Code', G.consumeables, nil, nil, nil, nil, k, 'rin_negative')
										duplicate:set_edition({negative = true}, true)
										duplicate:setQty(card.ability.extra.copies * (v or 1))
										duplicate:create_stack_display()
										duplicate:set_cost()
										duplicate.no_omega = true
										duplicate:add_to_deck()
										G.consumeables:emplace(duplicate)
									end
									card.cumulative_qtys = nil
								end
							end
						return true end }))
					return true end }))
				end
				return nil, true
			end
		end
	end
}

local ayanami_blurbs = {
	"Let the night sky reign!",
	"The zodiac aligns tonight.",
	"May the nebulae bring new life.",
	"Sing along with me!",
	"The galaxy shall be under my jurisdiction.",
	"Twinkle, twinkle, little star..."
}

SMODS.Joker {
	key = 'ayanami',
	loc_txt = {
		name = 'Ayanami',
		text = {
			'Using {C:attention}non-{C:dark_edition}Negative {C:attention}specific-hand {C:planet}Planets',
			'creates {C:attention}#1# {C:dark_edition}Negative{} copies',
			'Using {C:dark_edition}Negative {C:planet}Planets',
			'creates {C:attention}#2# {C:dark_edition}Negative {C:spectral}Black Holes',
			' ',
			caption('The throne of death is not for a merciful fool like you.'),
			faceart('raidoesthings, jenwalter666'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	config = {extra = {planets = 5, black_holes = 3}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	jumbo_mod = 3,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenayanami',
	in_pool = function()
		return #SMODS.find_card('j_jen_oracle') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.planets, center.ability.extra.black_holes}}
    end,
	calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Planet' and ((context.consumeable.ability.hand_type or context.consumeable.ability.hand_types) or (context.consumeable.gc and context.consumeable:gc().ayanami)) then
			local quota = (context.consumeable:getEvalQty())
			local card_key = context.consumeable:gc().key
			local isnegative = (context.consumeable.edition or {}).negative
			if isnegative then
				card.cumulative_blackholes = (card.cumulative_blackholes or 0) + quota
			else
				if not card.cumulative_qtys then card.cumulative_qtys = {} end
				card.cumulative_qtys[card_key] = (card.cumulative_qtys[card_key] or 0) + quota
			end
			if jl.njr(context) then
				card:speak(ayanami_blurbs, G.C.SECONDARY_SET.Planet)
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
						if card then
							if card.cumulative_qtys then
								for k, v in pairs(card.cumulative_qtys) do
									local duplicate = create_card('Planet', G.consumeables, nil, nil, nil, nil, k, 'ayanami_negativeplanet')
									duplicate.no_forced_edition = true
									duplicate:set_edition({negative = true}, true)
									duplicate.no_forced_edition = nil
									duplicate:setQty(card.ability.extra.planets * (v or 1))
									duplicate:create_stack_display()
									duplicate:set_cost()
									duplicate.no_omega = true
									duplicate:add_to_deck()
									G.consumeables:emplace(duplicate)
								end
								card.cumulative_qtys = nil
							end
							if (card.cumulative_blackholes or 0) > 0 then
								local blackhole = create_card('Planet', G.consumeables, nil, nil, nil, nil, 'c_black_hole', 'ayanami_blackhole')
								blackhole.no_forced_edition = true
								blackhole:set_edition({negative = true}, true)
								blackhole.no_forced_edition = nil
								blackhole:setQty(card.ability.extra.black_holes * (card.cumulative_blackholes or 1))
								blackhole:create_stack_display()
								blackhole:set_cost()
								blackhole.no_omega = true
								blackhole:add_to_deck()
								G.consumeables:emplace(blackhole)
								card.cumulative_blackholes = nil
							end
						end
					return true end }))
				return true end }))
			end
			return nil, true
		end
	end
}

SMODS.Joker {
	key = 'ratau',
	loc_txt = {
		name = 'Ratau',
		text = {
			'Values on {C:attention}consumables',
			'are {C:attention}multiplied{} by {C:attention}#1#',
			'when they are created',
			'{C:inactive}(If possible, as some values can\'t be modified)',
			'{C:inactive}(Not all cards are affected)',
			' ',
			caption('You still have the chance to mend your past, so don\'t waste it like I did.'),
			faceart('raidoesthings'),
			origin('Cult of the Lamb'),
			au('Prophecy of the Broken Crowns')
		}
	},
	config = {modifier = 2},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 12,
	jumbo_mod = 3,
	rarity = 'cry_epic',
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenratau',
	in_pool = function()
		return #SMODS.find_card('j_jen_elder') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.modifier}}
    end
}

SMODS.Joker {
	key = 'cosmo',
	loc_txt = {
		name = 'Cosmo',
		text = {
			'{C:attention}Enhanced cards{} can be selected',
			'{C:attention}regardless of the selection limit',
			'{C:inactive,s:0.75}(ex. you can select any number of enhanced cards alongside 5 other unenhanced cards)',
			' ',
			lore('A socially-anxious pastry, but Sprout keeps him company!'),
			faceart('jenwalter666'),
			origin('Dandy\'s World')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 12,
	rarity = 'cry_epic',
	unlocked = true,
	discovered = true,
	immutable = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	unique = true,
	atlas = 'jencosmo'
}

SMODS.Joker {
	key = 'toodles',
	loc_txt = {
		name = 'Toodles',
		text = {
			'{C:attention}8s{} have a(n) {C:green}#1# in 88 chance',
			'to give {C:chips}+88{} Chips',
			' ',
			lore('The most hyperactive 8-ball kid you\'ll ever see!'),
			faceart('jenwalter666'),
			origin('Dandy\'s World')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 3,
	rarity = 1,
	unlocked = true,
	discovered = true,
	immutable = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jentoodles',
    loc_vars = function(self, info_queue, center)
        return {vars = {G.GAME.probabilities.normal * 8.8}}
    end,
	calculate = function(self, card, context)
		if context.cardarea == G.play then
			if context.other_card and not context.other_card:norank() and context.other_card:get_id() == 8 then
				return {
					chip_mod = 88,
					chips = 88,
					colour = G.C.CHIPS,
					card = card
				}, true
			end
		end
	end
}

SMODS.Joker {
	key = 'murphy',
	loc_txt = {
		name = 'Murphy',
		text = {
			'{C:attention}9{}s give {X:jen_RGB,C:white,s:1.5}^^1.09{C:chips} Chips',
			'when scored',
			' ',
			caption('That\'s just a bunch of balls!'),
			faceart('jenwalter666'),
			'{C:cry_ascendant,E:1}https://www.twitch.tv/murphyobv'
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	misc_badge = twitch,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenmurphy',
    calculate = function(self, card, context)
		if context.cardarea == G.play then
			if context.other_card and not context.other_card:norank() and context.other_card:get_id() == 9 then
				return {
					message = '^^1.09',
					EEchip_mod = 1.09,
					ee_chips = 1.09,
					colour = G.C.CHIPS,
					card = card
				}, true
			end
		end
	end
}

SMODS.Joker {
	key = 'roffle',
	loc_txt = {
		name = 'Roffle',
		text = {
			'Grants {C:green}the Coin',
			'Whenever any {C:attention}Joker{} is {C:attention}triggered{},',
			'generate {C:spectral,E:1}Mana{} for {C:green}the Coin',
			' ',
			lore('A wise card player. Particularly fond friends with the Wee Joker.'),
			caption('WEEEEEEEE!!'),
			faceart('jenwalter666'),
			'{C:cry_ascendant,E:1}https://www.twitch.tv/roffle'
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	misc_badge = twitch,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenroffle',
	abilitycard = 'c_jen_roffle_c',
	calculate = function(self, card, context)
		if context.post_trigger and not context.blueprint and context.other_joker and context.other_joker:gc().key ~= 'j_jen_astro' then
			for k, v in ipairs(G.consumeables.cards) do
				if v.gc and v:gc() and v:gc().key == 'c_jen_roffle_c' and not (v.edition or {}).negative then
					if jl.njr(context) then Q(function() card:juice_up(0.5, 0.5) return true end) end
					v.ability.mana = v.ability.mana + 1
					card.cumulative_mana = (card.cumulative_mana or 0) + 1
					if card.cumulative_mana <= 1 then
						QR(function()
							if card then
								if card.cumulative_mana then
									card_eval_status_text(v, 'extra', nil, nil, nil, {message = '+' .. number_format(card.cumulative_mana) .. ' Mana', colour = G.C.SECONDARY_SET.Spectral})
									card.cumulative_mana = nil
								end
							end
						return true end, 15)
					end
					break
				end
			end
		end
	end,
}

SMODS.Consumable {
	key = 'roffle_c',
	loc_txt = {
		name = 'The Coin',
		text = {
			'{X:spectral,C:white}Mana{} : {C:spectral}#1# {C:inactive}/ #2#',
			'If {C:dark_edition}Negative{}, add {C:spectral}5 mana{},',
			'Otherwise, spend mana to {C:attention}defeat the blind instantly',
			faceart('jenwalter666'),
			origin('Hearthstone')
		}
	},
	config = {mana = 0},
	set = 'jen_ability',
	permaeternal = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 0,
	unlocked = true,
	discovered = true,
	hidden = true,
	hidden2 = true,
	no_doe = true,
	soul_rate = 0,
	atlas = 'jenroffle_c',
    loc_vars = function(self, info_queue, center)
		local isneg = ((center or {}).edition or {}).negative
        return {vars = {isneg and '---' or center.ability.mana, (G.GAME or {}).roffle_manareq or Jen.config.mana_cost}}
    end,
	can_use = function(self, card)
		return (((card.edition or {}).negative or card.ability.mana >= ((G.GAME or {}).roffle_manareq or Jen.config.mana_cost)) and abletouseabilities()) and G.GAME.blind
	end,
	keep_on_use = function(self, card)
		return #SMODS.find_card('j_jen_roffle') > 0 and not (card.edition or {}).negative
	end,
	use = function(self, card, area, copier)
		if not G.GAME.roffle_manareq then G.GAME.roffle_manareq = Jen.config.mana_cost end
		if (card.edition or {}).negative then
			for k, v in ipairs(G.consumeables.cards) do
				if v.gc and v:gc() and v:gc().key == 'c_jen_roffle_c' and not (v.edition or {}).negative then
					v.ability.mana = v.ability.mana + 5
					card_eval_status_text(v, 'extra', nil, nil, nil, {message = '+5 Mana', colour = G.C.SECONDARY_SET.Spectral})
					break
				end
			end
		elseif card.ability.mana >= G.GAME.roffle_manareq then
			card.ability.mana = card.ability.mana - G.GAME.roffle_manareq
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = '-' .. number_format(G.GAME.roffle_manareq) .. ' Mana', colour = G.C.RED})
			G.GAME.roffle_manareq = G.GAME.roffle_manareq * 2
			Q(function()
				Q(function()
					Q(function()
						Q(function()
							G.GAME.chips = G.GAME.blind.chips
							G.STATE = G.STATES.HAND_PLAYED
							G.STATE_COMPLETE = true
							end_round()
						return true end)
						jl.ch()
					return true end)
				return true end)
			return true end)
		end
	end
}

local function numtags()
	if not G.GAME.tags then return 0 end
	local tags = 0
	for k, v in pairs(G.GAME.tags) do
		tags = tags + 1
	end
	return tags
end

SMODS.Joker {
	key = 'kyle',
	loc_txt = {
		name = 'Kyle Skreene',
		text = {
			'{X:jen_RGB,C:white,s:1.5}+^^#1#{C:mult} Mult',
			'for every currently-held {C:attention}Tag',
			'{C:inactive}(Currently {X:jen_RGB,C:white,s:1.5}^^#2#{C:inactive})',
			' ',
			caption('The tags pile doesn\'t'),
			caption('stop from getting higher.'),
			faceart('Luigicat11'),
			origin('Homestuck')
		}
	},
	config = {extra = {tetration = 0.2}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenkyle',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.tetration, 1 + (numtags() * center.ability.extra.tetration)}}
    end,
	calculate = function(self, card, context)
		if context.cardarea == G.jokers and context.joker_main then
			local tags = numtags()
			if tags > 0 then
				local num = 1 + (tags*card.ability.extra.tetration)
				return {
					message = '^^' .. num .. ' Mult',
					colour = G.C.jen_RGB,
					EEmult_mod = num,
					card = card
				}, true
			end
		end
	end
}

SMODS.Joker {
	key = 'johnny',
	loc_txt = {
		name = 'Johnny',
		text = {
			'{X:dark_edition,C:mult}^#1#{C:mult} Mult',
			'Using {C:spectral}Black Holes {C:green}increases{} this by {C:attention}#2#',
			'Using {C:spectral}White Holes {C:purple}multiplies{} this by {C:attention}#3#',
			' ',
			caption('Now, step into the hat. Yes, just like that.'),
			faceart('BondageKat')
		}
	},
	config = {big_num_scaler = true, extra = {em = 1.5, blackhole_factor = 0.5, whitehole_factor = 3}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenjohnny',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.em, center.ability.extra.blackhole_factor, center.ability.extra.whitehole_factor}}
    end,
	calculate = function(self, card, context)
		if not context.blueprint then
			if context.using_consumeable and context.consumeable then
				local improved = false
				local eval = context.consumeable:getEvalQty()
				if context.consumeable:gc().key == 'c_black_hole' then
					card.ability.extra.em = card.ability.extra.em + (card.ability.extra.blackhole_factor * eval)
					improved = true
					card_eval_status_text(card, 'extra', nil, nil, nil, {message = '+' .. number_format(card.ability.extra.blackhole_factor * eval), colour = G.C.DARK_EDITION})
				elseif context.consumeable:gc().key == 'c_cry_white_hole' then
					card.ability.extra.em = card.ability.extra.em * (card.ability.extra.whitehole_factor ^ eval)
					improved = true
					card_eval_status_text(card, 'extra', nil, nil, nil, {message = 'x' ..number_format(card.ability.extra.whitehole_factor ^ eval), colour = G.C.DARK_EDITION})
				end
				if improved then
					card_eval_status_text(card, 'extra', nil, nil, nil, {message = '^' .. number_format(card.ability.extra.em) .. ' Mult', colour = G.C.FILTER})
					return nil, true
				end
			end
		end
		if context.cardarea == G.jokers and context.joker_main then
			if to_big(card.ability.extra.em) > to_big(1) then
				return {
					message = '^' .. number_format(card.ability.extra.em) .. ' Mult',
					colour = G.C.DARK_EDITION,
					Emult_mod = card.ability.extra.em,
					card = card
				}, true
			end
		end
	end
}

local kori_captions = {
	normal = {
		'Wh-?? Did someone transport me to ANOTHER universe??',
		'There\'s some familiar faces here, from what I\'ve seen of the collection. Maybe I\'ll get to say "hi"?',
		'Will I ever go back to my home?'
	},
	scared = {
		"S-so much power... I... haven't seen anything like this since before the incident...",
		"H-hey! Don't overload the system with me in it! ...Pretty please?",
		"With... *that* kind of raw strength... I could finally dispose of the demon haunting my dreams."
	},
	marble = {
		"What is this artefact...? Gah- it's... it's... drawing out the demon...!!"
	}
}

local function kori_strength(power)
	local level = 1
	for i = 1, 6 do
		local req = 10^(i + 1)
		if power > req then
			level = level + 1
			power = power - req
		else
			break
		end
	end
	return { op = level, no = power + 3 }
end

--[[SMODS.Joker {
	key = 'kori',
	loc_txt = {
		name = '{C:edition}K{C:dark_edition}o{C:edition}r{C:dark_edition}i {C:cry_ember}S{C:cry_blossom}i{C:cry_ember}n{C:cry_blossom}g{C:cry_ember}u{C:cry_blossom}l{C:cry_ember}a{C:cry_blossom}r{C:cry_ember}i{C:cry_blossom}s',
		text = {
			'{C:spectral}Black Holes{} give',
			'{X:cry_ember,C:chips}?n{} Chips and {X:cry_azure,C:mult}?n{} Mult',
			'to {C:attention}all hands{} when used',
			'{C:inactive}(Scales according to number of Black Holes used in run)',
			'{C:inactive}(Currently {C:cry_ascendant}#2#{C:cry_blossom}#3#{C:inactive})',
			' ',
			caption('#1#'),
			faceart('astralightsky')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	drama = { x = 2, y = 0 },
	fusable = true,
	cost = 250,
	rarity = 'jen_wondrous',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	unique = true,
	immutable = true,
	debuff_immune = true,
	atlas = 'jenkori',
    loc_vars = function(self, info_queue, center)
		local selected = kori_captions[Jen.gods() and 'marble' or Jen.dramatic and 'scared' or 'normal']
		local strength = kori_strength(((((G.GAME or {}).consumeable_usage or {}).c_black_hole or {}).count or 0) + 1)
        return {vars = {selected[math.random(#selected)], strength.op > 5 and ('{' .. strength.op .. '}') or strength.op > 1 and string.rep('^', strength.op-1) or 'x', number_format(strength.no)}}
    end,
	calculate = function(self, card, context)
		if not context.blueprint_card and not context.destroying_card and not context.cry_ease_dollars and not context.post_trigger then
			if context.jen_lving and context.card and context.card.gc and context.card:gc().key == 'c_black_hole' then
				for i = 1, iterations do
					local strength = kori_strength(((((G.GAME or {}).consumeable_usage or {}).c_black_hole or {}).count or 0) - (iterations - i))
					G.GAME.hands[context.lv_hand].chips = to_big(G.GAME.hands[context.lv_hand].chips):arrow(3, 3)
					G.GAME.hands[context.lv_hand].mult = to_big(G.GAME.hands[context.lv_hand].mult):arrow(3, 3)
				end
				if jl.njr(context)
					if not context.lv_instant then 
						delay(0.5)
						Q(function() card:juice_up(2, 2) return true end)
						play_sound_q('talisman_echip', 1)
						play_sound_q('talisman_echip', 1.25)
						play_sound_q('talisman_echip', 1.5)
						play_sound_q('talisman_emult', 1)
						play_sound_q('talisman_emult', 1.25)
						play_sound_q('talisman_emult', 1.5)
						jl.hcm('^^^3 (x' .. iterations .. ')', '^^^3 (x' .. iterations .. ')', true)
						jl.hcm(G.GAME.hands[context.lv_hand].chips, G.GAME.hands[context.lv_hand].mult)
						delay(0.5)
					end
				end
			end
		end
	end
}]]

SMODS.Joker {
	key = 'guilduryn',
	loc_txt = {
		name = 'Guilduryn',
		text = {
			'{C:attention}Gold 7{}s give',
			'{X:dark_edition,C:mult}^7{C:mult} Mult{} when scored',
			'{C:planet}Hand level-ups{} are {C:attention}redirected',
			'to your {C:attention}most played hand',
			'{C:inactive}(Currently {C:attention}#1#{C:inactive})',
			' ',
			lore('Prideful and zealous; his gold is as shiny as his connection with his sister Hydrangea.'),
			caption('Leader of the Seven Sins at your service~!'),
			faceart('raidoesthings'),
			au('Prophecy of the Broken Crowns')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	misc_badge = sevensins.guilduryn,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenguilduryn',
    loc_vars = function(self, info_queue, center)
        return {vars = {localize(jl.favhand(), 'poker_hands')}}
    end,
    calculate = function(self, card, context)
		if context.cardarea == G.play then
			if context.other_card and context.other_card.ability.name == 'Gold Card' and context.other_card:get_id() == 7 then
				return {
					message = '^7 Mult',
					Emult_mod = 7,
					e_mult = 7,
					colour = G.C.MULT,
					card = card
				}, true
			end
		end
	end
}

SMODS.Joker {
	key = 'hydrangea',
	loc_txt = {
		name = 'Hydrangea',
		text = {
			'{C:attention}7{}s reduce the {C:attention}current Blind',
			'by {C:attention}7%{} when scored',
			' ',
			lore('A brute with a pinch of impatience, getting on her bad side is not uncommon.'),
			caption('Whatever you\'re bugging me about better be important...'),
			faceart('raidoesthings'),
			au('Prophecy of the Broken Crowns')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	misc_badge = sevensins.hydrangea,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenhydrangea',
    calculate = function(self, card, context)
		if context.cardarea == G.play then
			if context.other_card and not context.other_card:norank() and jl.scj(context) and context.other_card:get_id() == 7 then
				if (G.SETTINGS.FASTFORWARD or 0) < 1 and (G.SETTINGS.STATUSTEXT or 0) < 2 then
					card_status_text(card, '-7% Blind Size', nil, 0.05*card.T.h, G.C.FILTER, 0.75, 1, 0.6, nil, 'bm', 'generic1')
				end
				change_blind_size(to_big(G.GAME.blind.chips) / to_big(1.07), (G.SETTINGS.FASTFORWARD or 0) > 1, (G.SETTINGS.FASTFORWARD or 0) > 1)
				return nil, true
			end
		end
	end
}

SMODS.Joker {
	key = 'heisei',
	loc_txt = {
		name = 'Heisei',
		text = {
			'{C:attention}7{}s raise {C:chips}Chips{} to the {X:dark_edition,C:white}power{} of',
			'{C:green}1 plus a tenth of your {C:money}money{} when scored,',
			'{C:red,E:1}but also takes half of your money',
			'{C:inactive}(No effect if you have $0 or less)',
			' ',
			lore('Sly and sneaky; socialising with you one day, pickpocketing you the next.'),
			caption('Enough about me, what is it that you desire?'),
			faceart('raidoesthings'),
			au('Prophecy of the Broken Crowns')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	misc_badge = sevensins.heisei,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenheisei',
	immutable = true,
    calculate = function(self, card, context)
		if context.cardarea == G.play and context.individual then
			if context.other_card:get_id() == 7 then
				local val = G.GAME.dollars
				if to_big(val) > to_big(0) then
					ease_dollars(-math.floor(to_big(G.GAME.dollars) / to_big(2)))
					return {
						Echip_mod = (1 + (val/10)),
						card = card
					}, true
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'soryu',
	loc_txt = {
		name = 'Soryu',
		text = {
			'{C:attention}Retrigger every Joker once',
			'for every {C:attention}7 of {C:hearts}Hearts',
			'in played hand',
			'{C:inactive}(Also considers Wilds and any Joker effects)',
			' ',
			lore('As elegant as they are flirty.'),
			caption('Patience is the key, dear. I don\'t do my work in one day, after all.'),
			faceart('raidoesthings'),
			au('Prophecy of the Broken Crowns')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 20,
	rarity = 4,
	misc_badge = sevensins.soryu,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jensoryu',
    calculate = function(self, card, context)
		if not context.blueprint and not context.repetition then
			if context.retrigger_joker_check and not context.retrigger_joker then
				local reps = 0
				if G.play and G.play.cards and next(G.play.cards) then
					for k, v in pairs(G.play.cards) do
						if not v:norankorsuit() and v:get_id() == 7 and v:is_suit('Hearts') then
							reps = reps + 1
						end
					end
				end
				if reps > 0 then
					return {
						message = localize('k_again_ex'),
						repetitions = reps,
						card = card
					}
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'shikigami',
	loc_txt = {
		name = 'Shikigami',
		text = {
			'Scored {C:attention}7{}s create',
			'{C:attention}7 copies{} of themselves',
			' ',
			lore('The punching bag of the group, and also the shameful reason of their banishment.'),
			caption('Why are we cards?? Where even are we?!'),
			faceart('raidoesthings'),
			au('Prophecy of the Broken Crowns')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 20,
	rarity = 4,
	misc_badge = sevensins.shikigami,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenshikigami',
    calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if context.other_card:get_id() == 7 then
				local sevens = {}
				for i = 1, 7 do
					local seven = copy_card(context.other_card, nil, nil, G.playing_card)
					seven:add_to_deck()
					seven:start_materialize()
					G.deck.config.card_limit = G.deck.config.card_limit + 1
					table.insert(sevens, seven)
				end
				for k, seven in pairs(sevens) do
					if seven ~= context.other_card then
						table.insert(G.playing_cards, seven)
						G.deck:emplace(seven)
					end
				end
				return nil, true
			end
		end
	end
}

local leviathan_blurbs = {
	dull = {
		'My axe is dull!',
		"I can't cut through it!",
		"Axe's dull; can't slice this obstacle!",
		'I need a whetstone!',
		'Find me a grindstone, please.',
		'Need to sharpen my axe!',
		'You expecting me to slay this thing with a dull axe?',
		"I can't do anything if my axe will just bounce off!",
		'Grindstone, please?',
		'Stop trying to get me to use a dull axe and just GET A WHETSTONE ALREADY!',
		"Not now, axe's not ready.",
		'I blame Shikigami for this...'
	},
	sharpen = {
		'Good as new.',
		'Bring me more of those whetstones, yeah?',
		'Gotta keep my axe sharp.',
		'Sharpened!',
		'Looks ready to cut again.',
		'I kind of like that noise.',
		"Can't have my axe becoming dull!",
		'I prefer something sharp over something blunt.',
		'Ready for another swing.',
		"Thanks for the whetstone, Shikigami."
	}
}

local leviathan_maxsharpness = 3

SMODS.Joker {
	key = 'leviathan',
	loc_txt = {
		name = 'Leviathan',
		text = {
			'{X:inactive}Axe{} {X:inactive}Sharpness{} : {C:attention}#1#{C:inactive} / ' .. tostring(leviathan_maxsharpness) .. '',
			' ',
			'If played hand contains {C:attention}only one card{}, and that',
			'card is a {C:attention}Steel 7 of any suit{},',
			'{C:red}destroy it{} and then set the',
			'{C:attention}current Blind size{} to {C:attention}1',
			'If the only card is instead a {C:attention}Stone Card{},',
			"{C:red}destroy it{} and {C:attention}sharpen Leviathan's axe{} by {C:attention}1{} point",
			' ',
			lore('She wields a devastating axe, just as sharp as her wits.'),
			caption('Are you going to co-operate, or are you just going to stand there?'),
			faceart('raidoesthings'),
			au('Prophecy of the Broken Crowns')
		}
	},
	config = {extra = {axesharpness = leviathan_maxsharpness}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 2375,
	rarity = 'jen_extraordinary',
	misc_badge = sevensins.leviathan,
	unlocked = true,
	discovered = true,
	debuff_immune = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	unique = true,
	immutable = true,
	atlas = 'jenleviathan',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.axesharpness}}
    end,
    calculate = function(self, card, context)
		if context.destroying_card and not context.blueprint and not context.retrigger_joker then
			if context.full_hand and #context.full_hand == 1 then
				if context.full_hand[1]:get_id() == 7 and context.full_hand[1].ability.name == 'Steel Card' then
					if card.ability.extra.axesharpness > 0 then
						G.E_MANAGER:add_event(Event({func = function()
							card:juice_up(0.8, 0.2)
							G.GAME.blind:juice_up(3,3)
							play_sound('slice1', 0.96+math.random()*0.08)
							change_blind_size(1)
						return true end }))
						card.ability.extra.axesharpness = math.max(0, card.ability.extra.axesharpness - 1)
						return true
					else
						local rng = math.random(#leviathan_blurbs.dull)
						if rng ~= 1 and #SMODS.find_card('j_jen_shikigami') <= 0 then
							rng = rng - 1
						end
						local blurb = leviathan_blurbs.dull[rng]
						card_status_text(card, blurb, nil, 0.05*card.T.h, G.C.RED, 0.6, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
						if rng == #leviathan_blurbs.dull and #SMODS.find_card('j_jen_shikigami') > 0 then
							local shiki = SMODS.find_card('j_jen_shikigami')[1]
							if shiki then
								card_status_text(shiki, "What?! What did I do?", nil, 0.05*shiki.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
								card_status_text(card, "Nothing, I just like riling you up.", nil, 0.05*card.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
								card_status_text(shiki, "Oh, harr, harr, harr... real funny...", nil, 0.05*shiki.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
								card_status_text(card, "Although I might actually blame you if you don't shut up.", nil, 0.05*card.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
								card_status_text(shiki, "I'M NOT DOING ANYTHING WRONG-", nil, 0.05*shiki.T.h, G.C.RED, 0.6, 0.6, nil, nil, 'bm', 'generic1')
								card_status_text(card, "I said, shut up.", nil, 0.05*card.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
								card_status_text(shiki, "...Hmph...", nil, 0.05*shiki.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
								card_status_text(card, "Better.", nil, 0.05*card.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
							end
						end
					end
				elseif context.full_hand[1].ability.name == 'Stone Card' and card.ability.extra.axesharpness < leviathan_maxsharpness then
					card.ability.extra.axesharpness = math.min(card.ability.extra.axesharpness + 1, leviathan_maxsharpness)
					local rng = math.random(#leviathan_blurbs.sharpen)
					if rng ~= 1 and #SMODS.find_card('j_jen_shikigami') <= 0 then
						rng = rng - 1
					end
					local blurb = leviathan_blurbs.sharpen[rng]
					card_status_text(card, blurb, nil, 0.05*card.T.h, G.C.RED, 0.6, 0.6, nil, nil, 'bm', 'jen_grindstone')
					if rng == #leviathan_blurbs.sharpen and #SMODS.find_card('j_jen_shikigami') > 0 then
						local shiki = SMODS.find_card('j_jen_shikigami')[1]
						if shiki then
							card_status_text(shiki, "Huh? What whetstone?", nil, 0.05*shiki.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
							card_status_text(card, "This one.", nil, 0.05*card.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
							card_status_text(shiki, "What are you- I didn't get you that!", nil, 0.05*shiki.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
							card_status_text(card, "I know, that's the point.", nil, 0.05*card.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
							card_status_text(shiki, "...What?", nil, 0.05*shiki.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
							card_status_text(card, "The point is that you hardly help.", nil, 0.05*card.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
							card_status_text(shiki, "OH COME ON!", nil, 0.05*shiki.T.h, G.C.RED, 0.6, 0.6, nil, nil, 'bm', 'generic1')
							card_status_text(card, "Heheheh...", nil, 0.05*card.T.h, G.C.GREY, 0.6, 0.6, nil, nil, 'bm', 'generic1')
						end
					end
					return true
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'behemoth',
	loc_txt = {
		name = 'Behemoth',
		text = {
			'{X:black,C:red,s:3}^^^#1#{C:purple} Chips & Mult{} if played hand',
			'contains {C:attention}four or more 7s',
			' ',
			lore('Like a hibernating bear; lazy and slow, but obliteration is merely a single mistake away.'),
			caption('Don\'t poke a tiger in its rest; not even a cub...'),
			faceart('raidoesthings'),
			au('Prophecy of the Broken Crowns')
		}
	},
	config = {extra = {pentation = 1.77}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	misc_badge = sevensins.behemoth,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenbehemoth',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.pentation}}
    end,
    calculate = function(self, card, context)
		if context.joker_main then
			local cards = G.play.cards
			local sevens = 0
			for k, v in pairs(cards) do
				if v:get_id() == 7 then
					sevens = sevens + 1
					if sevens >= 4 then break end
				end
			end
			if sevens >= 4 then
				return {
					message = 'Hrraaaaagh!!! (^^^' .. card.ability.extra.pentation .. ' Chips & Mult)',
					EEEmult_mod = card.ability.extra.pentation,
					EEEchip_mod = card.ability.extra.pentation,
					colour = G.C.BLACK,
					card = card
				}, true
			end
		end
	end
}

local cuc = Card.use_consumeable

function Card:do_jen_astronomy(hand, mod)
	local cen = self.gc and self:gc()
	if cen and not cen.cant_astronomy then
		mod = mod or 1
		local pos = -1
		for i = 1, #G.handlist do
			if G.handlist[i] == hand then
				pos = i
				break
			end
		end
		local iterations = 1
		if Jen.hv('astronomy', 3) then
			for k, v in ipairs(G.consumeables.cards) do
				if v.gc then
					if v:gc().set == 'Planet' then
						iterations = iterations + v:getEvalQty()
					elseif Jen.hv('astronomy', 4) then
						iterations = iterations + (v:getEvalQty()/2)
					end
				end
			end
		end
		iterations = iterations * mod
		if iterations > mod then
			jl.th(hand)
			fastlv(self, hand, nil, iterations - mod)
		end
		local forehand = G.handlist[pos + 1]
		local backhand = G.handlist[pos - 1]
		local forehand2 = G.handlist[pos + 2]
		local backhand2 = G.handlist[pos - 2]
		if Jen.hv('astronomy', 1) then
			if forehand then
				if Jen.config.verbose_astronomicon then jl.th(forehand) end
				fastlv(self, forehand, not Jen.config.verbose_astronomicon, iterations)
			end
			if backhand then
				if Jen.config.verbose_astronomicon then jl.th(backhand) end
				fastlv(self, backhand, not Jen.config.verbose_astronomicon, iterations)
			end
			if Jen.hv('astronomy', 12) then
				if forehand2 then
					if Jen.config.verbose_astronomicon then jl.th(forehand2) end
					fastlv(self, forehand2, not Jen.config.verbose_astronomicon, iterations)
				end
				if backhand2 then
					if Jen.config.verbose_astronomicon then jl.th(backhand2) end
					fastlv(self, backhand2, not Jen.config.verbose_astronomicon, iterations)
				end
			end
		end
		if Jen.hv('astronomy', 2) then
			if Jen.config.verbose_astronomicon then
				jl.h('Non-Adjacent Hands', '+', '+', '+' .. number_format(0.1 * iterations), true)
				delay(1)
			end
			for k, v in ipairs(G.handlist) do
				if v ~= (forehand or '') and v ~= (backhand or '') then
					fastlv(self, v, true, 0.1 * iterations)
				end
			end
		end
	end
end

function Card:use_consumeable(area, copier)
	for k, v in ipairs(G.consumeables.cards) do
		if self:gc().key ~= 'c_jen_reverse_fool' and self:gc().key ~= 'c_cry_pointer' and not string.find(self:gc().key, 'c_jen_blank') and self.ability.set == v.ability.set and string.find(v:gc().key, 'c_jen_blank') and not v.changing_from_blank then
			v.changing_from_blank = true
			card_eval_status_text(v, 'extra', nil, nil, nil, {
				message = 'Copied!',
				colour = G.C.FILTER,
			})
			Q(function() v:flip();play_sound('tarot1');return true end)
			delay(1.5)
			Q(function() v:flip();play_sound('tarot2');v:set_ability(G.P_CENTERS[self:gc().key]);v.changing_from_blank = nil;return true end)
		end
	end
	if self.gc and self:gc() then
		local cen = self:gc()
		if cen.set == 'Colour' then
			if Jen.hv('colour', 2) then
				n_random_colour_rounds(math.max(0, self.ability.partial_rounds or 0))
			end
			if Jen.hv('colour', 10) or (Jen.hv('colour', 3) and (self.edition or {}).polychrome) then
				for k, v in ipairs(G.consumeables.cards) do
					if v:gc().set == 'Colour' then
						for i = 1, math.ceil(math.max(self.ability.upgrade_rounds or 1, 1) / 2) do
							trigger_colour_end_of_round(v)
						end
					end
				end
			end
			if Jen.hv('colour', 11) then
				for k, v in ipairs(G.consumeables.cards) do
					if v:gc().set == 'Colour' then
						for i = 1, math.max(self.ability.val or 1, 1) do
							trigger_colour_end_of_round(v)
						end
					end
				end
			end
			if Jen.hv('colour', 12) and (self.edition or {}).negative then
				local no_colours = 1
				for k, v in ipairs(G.consumeables.cards) do
					if v:gc().set == 'Colour' then
						no_colours = no_colours + 1
					end
				end
				for k, v in ipairs(G.consumeables.cards) do
					if v:gc().set == 'Colour' then
						for i = 1, math.min(1e5, math.ceil(((math.max(self.ability.upgrade_rounds or 1, 1) + math.max(self.ability.partial_rounds or 0, 0) + 1) * (math.max(v.ability.upgrade_rounds or 1, 1) + math.max(v.ability.partial_rounds or 0, 0) + 1)) * (((self.ability.val or 0) + 1)^math.min(1.5, (1 + (no_colours/20)))))) do
							trigger_colour_end_of_round(v)
						end
					end
				end
			end
			if Jen.hv('colour', 4) then
				self:blackhole(((self.ability.partial_rounds or 0) * 0.5) + ((self.ability.upgrade_rounds or 0) * 0.25) + ((self.ability.val or 0) * ((self.ability.upgrade_rounds or 0) * 5)))
			end
		elseif cen.set == 'Planet' then
			if Jen.hv('singularity', 2) and not (self.edition or {}).negative then
				Q(function()
					local qty = self:getEvalQty() * (Jen.hv('singularity', 9) and 3 or 1)
					local card2 = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_black_hole', 'singularity2_blackhole')
					card2.no_omega = true
					if qty > 1 then
						card2:setQty(qty)
						card2:create_stack_display()
					end
					card2:set_edition({negative = true}, true)
					play_sound('jen_draw')
					card2:add_to_deck()
					G.consumeables:emplace(card2)
					qty = nil
				return true end)
			end
			if self.ability.hand_type then
				self:do_jen_astronomy(self.ability.hand_type, self:getEvalQty())
			elseif self.ability.hand_types then --suit planets
				for k, v in ipairs(self.ability.hand_types) do
					self:do_jen_astronomy(v, self:getEvalQty())
				end
			end
		elseif cen.key == 'c_black_hole' then
			if Jen.hv('singularity', 3) then
				for k, v in pairs(G.GAME.suits) do
					level_up_suit(self, k, true, (Jen.hv('singularity', 6) and 300 or Jen.hv('singularity', 4) and 25 or 1) * self:getEvalQty())
				end
				for k, v in pairs(G.GAME.ranks) do
					level_up_rank(self, k, true, (Jen.hv('singularity', 6) and 300 or Jen.hv('singularity', 4) and 25 or 1) * self:getEvalQty())
				end
			end
			if Jen.hv('singularity', 4) then
				black_hole_effect(self, ((Jen.hv('singularity', 6) and 300 or 25) * self:getEvalQty()) - self:getEvalQty())
			end
			if Jen.hv('singularity', 5) then
				local successful_rolls = 0
				local rolls_remaining = self:getEvalQty()
				while successful_rolls < 100 and rolls_remaining > 1 do
					if jl.chance('singularity5_roll', 10, true) then
						successful_rolls = successful_rolls + 1
					end
					rolls_remaining = rolls_remaining - 1
				end
				if successful_rolls > 0 then
					for i = 1, successful_rolls do
						Q(function()
							local card2 = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'singularity5_success')
							card2.no_omega = true
							play_sound('jen_draw')
							card2:add_to_deck()
							G.consumeables:emplace(card2)
						return true end)
					end
				end
			end
			if Jen.hv('singularity', 7) then
				for k, v in pairs(G.GAME.hands) do
					G.GAME.hands[k].l_chips = G.GAME.hands[k].l_chips * (to_big(2) ^ self:getEvalQty())
					G.GAME.hands[k].l_mult = G.GAME.hands[k].l_mult * (to_big(2) ^ self:getEvalQty())
				end
			end
			if Jen.hv('singularity', 8) then
				for k, v in pairs(G.GAME.suits) do
					G.GAME.suits[k].l_chips = G.GAME.suits[k].l_chips * (to_big(2) ^ self:getEvalQty())
					G.GAME.suits[k].l_mult = G.GAME.suits[k].l_mult * (to_big(2) ^ self:getEvalQty())
				end
				for k, v in pairs(G.GAME.ranks) do
					G.GAME.ranks[k].l_chips = G.GAME.ranks[k].l_chips * (to_big(2) ^ self:getEvalQty())
					G.GAME.ranks[k].l_mult = G.GAME.ranks[k].l_mult * (to_big(2) ^ self:getEvalQty())
				end
			end
		elseif cen.key == 'c_jen_soul_omega' then
			self:setQty(1)
		end
	end
	cuc(self, area, copier)
end

if (SMODS.Mods['sdm0sstuff'] or {}).can_load then
	table.insert(Cryptid.food, 'j_sdm_pizza')
	table.insert(Cryptid.food, 'j_sdm_burger')
end

local function numfoodjokers()
	if not G.jokers then return 0 end
	local amount = 0
	for k, v in pairs(Cryptid.food) do
		local amnt = #SMODS.find_card(v)
		if amnt > 0 then
			amount = amount + (amnt * (v == 'j_sdm_pizza' and 3 or 1))
		end
	end
	return amount
end

local peppino_desc = ((SMODS.Mods['sdm0sstuff'] or {}).can_load and
	{
		'{X:dark_edition,C:red}^x2{C:red} Mult{} for every',
		'{C:attention}food Joker{} in your possession',
		'{X:green,C:white}Synergy:{C:attention} Pizza{} counts as {C:blue}3{} food jokers',
		'{C:inactive}(Currently {X:dark_edition,C:red}^#1#{C:red} Mult{C:inactive})',
		' ',
		lore('Sometimes, high anxiety is an asset.'),
		caption('Okay, you look-a right-e here!'),
		caption('I baked that into a pizza ONCE-a, and-a nobody can ever know-a!'),
		caption('Not even the health inspector... Capeesh-e?'),
		faceart('jenwalter666'),
		origin('Pizza Tower')
	}
or
	{
		'{X:dark_edition,C:red}^x2{C:red} Mult{} for every',
		'{C:attention}food Joker{} in your possession',
		'{C:inactive}(Currently {X:dark_edition,C:red}^#1#{C:red} Mult{C:inactive})',
		' ',
		lore('Sometimes, high anxiety is an asset.'),
		caption('Okay, you look-a right-e here!'),
		caption('I baked that into a pizza ONCE-a, and-a nobody can ever know-a!'),
		caption('Not even the health inspector... Capeesh-e?'),
		faceart('jenwalter666'),
		origin('Pizza Tower')
	}
)

SMODS.Joker {
	key = 'peppino',
	loc_txt = {
		name = 'Peppino Spaghetti',
		text = peppino_desc
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	misc_badge = gaming,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenpeppino',
    loc_vars = function(self, info_queue, center)
        return {vars = {2 ^ numfoodjokers()}}
    end,
    calculate = function(self, card, context)
		local food = numfoodjokers()
		if context.cardarea == G.jokers and context.joker_main and food > 0 then
			local power = 2 ^ food
			return {
				message = '^' .. power .. ' Mult',
				Emult_mod = power,
				colour = G.C.DARK_EDITION
			}, true
		end
	end
}

local function totalnoise()
	return #((G.jokers or {}).cards or {}) + #((G.hand or {}).cards or {})
end

SMODS.Joker {
	key = 'noise',
	loc_txt = {
		name = 'The Noise',
		text = {
			'Retrigger {C:attention}all{} scored cards {C:attention}once',
			'for every {C:attention}Joker{} you have {C:green}plus',
			'{C:attention}once{} for every card in your hand',
			'{C:inactive}(Currently {C:attention}#1#{C:inactive} time(s))',
			' ',
			lore('Mostly annoying, sometimes sinister.'),
			caption('Hey-a! Howsabout a nice ride in this'),
			caption('washing machine here? Admission is freeeee!'),
			faceart('jenwalter666'),
			origin('Pizza Tower')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	misc_badge = gaming,
	dangerous = true,
	unlocked = true,
	discovered = true,
	immutable = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	unique = true,
	atlas = 'jennoise',
    loc_vars = function(self, info_queue, center)
        return {vars = {totalnoise()}}
    end,
    calculate = function(self, card, context)
		if not context.blueprint_card then
			if context.repetition then
				if context.cardarea == G.play then
					return {
						message = 'Woag!',
						repetitions = totalnoise(),
						colour = G.C.YELLOW,
						nopeus_again = true,
						card = card
					}
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'arin',
	loc_txt = {
		name = 'Commander Arin',
		text = {
			'Generates {C:attention}three Boosters',
			'whenever you {C:money}cash out',
			' ',
			lore('To you, it\'s a sleep mask. To him, it\'s goggles that provide insight to victory.'),
			caption('The army of Z-Tech shall prosper.'),
			faceart('raidoesthings'),
			origin('Plants vs. Zombies')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 2375,
	rarity = 'jen_extraordinary',
	unique = true,
	wee_incompatible = true,
	immutable = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenarin'
}

SMODS.Joker {
	key = 'lugia',
	loc_txt = {
		name = 'Lugia',
		text = {
			'Generates {C:attention}two Vouchers',
			'whenever you {C:money}cash out',
			' ',
			lore('Momosan really wanted this one. Monké.'),
			faceart('jenwalter666'),
			origin('Pokémon')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 2375,
	rarity = 'jen_extraordinary',
	wee_incompatible = true,
	unique = true,
	immutable = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenlugia'
}

SMODS.Joker {
	key = 'swabbie',
	loc_txt = {
		name = 'Swabbie',
		text = {
			'Grants the {C:green}ability{} to',
			'{C:money}sell{} playing cards',
			' ',
			caption('Neh-heh-yeh-yeh-heh-yeh!'),
			faceart('crazy_dave_aka_crazy_dave'),
			origin('Plants vs. Zombies')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 12,
	rarity = 'cry_epic',
	misc_badge = gaming,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	unique = true,
	atlas = 'jenswabbie',
	abilitycard = 'c_jen_swabbie_c'
}

local function sellvalueofhighlightedhandcards()
	if not G.hand then return 0 end
	local value = 0
	for k, v in pairs(G.hand.highlighted) do
		value = value + (v.sell_cost or 0)
	end
	return value
end

SMODS.Consumable {
	key = 'swabbie_c',
	loc_txt = {
		name = 'Plunder',
		text = {
			'{C:money}Sells{} all {C:blue}selected',
			'{C:attention}playing cards',
			'{X:dark_edition,C:white}Negative{} {X:dark_edition,C:white}Ability:{} Gain an additional {C:money}$5',
			'{C:inactive}(Selection value : {X:money,C:white}$#1#{C:inactive})'
		}
	},
	config = {},
	set = 'jen_ability',
	permaeternal = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 0,
	unlocked = true,
	discovered = true,
	hidden = true,
	hidden2 = true,
	no_doe = true,
	soul_rate = 0,
	atlas = 'jenswabbie_c',
    loc_vars = function(self, info_queue, center)
        return {vars = {sellvalueofhighlightedhandcards()}}
    end,
	can_use = function(self, card)
		return ((card.edition or {}).negative or #G.hand.highlighted > (card.area == G.hand and 1 or 0)) and (#G.hand.highlighted < #G.hand.cards) and abletouseabilities()
	end,
	keep_on_use = function(self, card)
		return #SMODS.find_card('j_jen_swabbie') > 0 and not (card.edition or {}).negative
	end,
	use = function(self, card, area, copier)
		if #G.hand.highlighted > 0 then
			play_sound('coin2')
			card:juice_up(0.3, 0.4)
			for k, v in pairs(G.hand.highlighted) do
				if v ~= card then
					v:sell_card_jokercalc()
				end
			end
			if #G.hand.cards - #G.hand.highlighted < G.hand.config.card_limit and #G.deck.cards > 0 then
				for i = 1, math.min(G.hand.config.card_limit - (#G.hand.cards - #G.hand.highlighted), #G.deck.cards) do
					draw_card(G.deck,G.hand, 1, nil, true, nil, 0.07)
				end
			end
		end
		if (card.edition or {}).negative then
			ease_dollars(5)
		end
	end
}

SMODS.Joker {
	key = 'poppin',
	loc_txt = {
		name = 'Paupovlin "Poppin" Revere',
		text = {
			'You can choose {C:attention}any number of cards',
			'after opening {C:attention}any Booster Pack',
			'{C:attention}Booster Packs{} have {C:green}+#1#{} additional card(s)',
			' ',
			lore('Equipped with a jack-in-the-box that contains just about any tool to overcome any obstacle.'),
			caption('I am the most well-equipped ladybug in all of Synnia!'),
			faceart('jenwalter666'),
			origin('Poppin & Jupa')
		}
	},
	config = {extra = {extrachoices = 1}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 12,
	rarity = 'cry_epic',
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenpoppin',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.extrachoices}}
    end
}

local cor = Card.open

function Card:open()
	local orig = self.ability.extra or 1
	local poppins = #SMODS.find_card('j_jen_poppin')
	if poppins > 0 then
		for k, v in pairs(SMODS.find_card('j_jen_poppin')) do
			orig = orig + v.ability.extra.extrachoices
		end
		self.config.choose = math.floor(orig)
		self.ability.extra = math.floor(orig)
	end
	cor(self)
	G.E_MANAGER:add_event(Event({delay = 0.5, timer = 'REAL', func = function()
		if poppins > 0 then
			G.GAME.pack_choices = math.floor(self.ability.extra)
		end
		return true
	end }))
end

local rai_desc = ((SMODS.Mods['sdm0sstuff'] or {}).can_load and
	{
		'{C:attention}Jokers{} without an edition',
		'become {C:dark_edition}Negative{} when added to possession',
		'{X:green,C:white}Synergy:{} {X:jen_RGB,C:white,s:1.5}+^^#1#{C:mult} Mult',
		'for every {X:attention,C:black}Burger{} owned',
		'{C:inactive}(Currently {X:jen_RGB,C:white,s:1.5}^^#2#{C:inactive})',
		' ',
		lore('"Spontaneous combustion" is their way of saying "getting bored".'),
		caption('#3#'),
		faceart('jenwalter666'),
		origin('Bloody Bunny')
	}
or
	{
		'{C:attention}Jokers{} without an edition',
		'become {C:dark_edition}Negative{} when added to possession',
		' ',
		lore('"Spontaneous combustion" is their way of saying "getting bored".'),
		caption('#3#'),
		faceart('jenwalter666'),
		origin('Bloody Bunny')
	}
)

SMODS.Joker {
	key = 'rai',
	loc_txt = {
		name = 'Rai',
		text = rai_desc
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	config = {extra = {bouigah = 0.88}},
	cost = 20,
	rarity = 4,
	misc_badge = jenfriend,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenrai',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.bouigah, 1 + (center.ability.extra.bouigah * #SMODS.find_card('j_sdm_burger')), Jen.sinister and "OKAYOKAYOKAY I GET YOUR POINT!!!" or 'I do things. If I do not, I will spontaneously combust.'}}
    end,
    calculate = function(self, card, context)
		if (context.jen_adding_card or context.buying_card) and not context.blueprint and not (context.card or {}).edition and (context.card or {}) ~= card then
            if context.card.ability.set == 'Joker' and not context.card.about_to_turn_negative_from_rai then
				context.card.about_to_turn_negative_from_rai = true
				card_eval_status_text(card, 'extra', nil, nil, nil, {
					message = context.card.ability.name == 'Burger' and 'Bouigah!' or 'Negation!',
					colour = G.C.DARK_EDITION,
				})
				G.E_MANAGER:add_event(Event({
					func = function()
						context.card.about_to_turn_negative_from_rai = nil
						context.card:set_edition({negative = true}, true)
						return true
					end
				}))
			end
		end -- synergy removed at the request of SDM_0
	end
}

local koslo_flavour = {'Bam!', 'Pow!', 'Boom!', 'Kapow!', 'Chik-bhwm!'}

SMODS.Joker {
	key = 'koslo',
	loc_txt = {
		name = 'Koslo Jarfel',
		text = {
			'{C:attention}Retrigger{} scored {C:attention}8{}s',
			'{C:attention}88{} times',
			' ',
			"{C:inactive,s:0.9,E:1}A friend of Jen's for over a decade, and counting.",
			faceart('jenwalter666'),
			origin('CRAFTWORLD')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 20,
	rarity = 4,
	wee_incompatible = true,
	misc_badge = jenfriend,
	unlocked = true,
	discovered = true,
	immutable = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenkoslo',
    calculate = function(self, card, context)
		if not context.blueprint_card then
			if context.repetition then
				if context.cardarea == G.play then
					if context.other_card:get_id() == 8 then
						return {
							message = koslo_flavour[math.random(#koslo_flavour)],
							repetitions = 88,
							nopeus_again = true,
							colour = G.C.RED,
							card = card
						}
					end
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'jen',
	loc_txt = {
		name = 'Jen Walter',
		text = {
			'{C:blue}+1 Chip{C:inactive,E:1}...?',
			' ',
			"{C:inactive,s:1.8,E:1}#1#",
			faceart('jenwalter666'),
			origin('CRAFTWORLD')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 1,
	fusable = true,
	rarity = 1,
	misc_badge = iconic,
	wee_incompatible = true,
	unlocked = true,
	unique = true,
	immutable = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenjen',
	in_pool = function()
		return #SMODS.find_card('j_jen_wondergeist') + #SMODS.find_card('j_jen_wondergeist2') <= 0
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {Jen.gods() and 'i feel funny...' or "i'm trying..."}}
    end,
    calculate = function(self, card, context)
		if not context.blueprint_card then
			if context.joker_main then
				if next(SMODS.find_card('j_jen_rai')) and next(SMODS.find_card('j_jen_koslo')) then
					return {
						message = '^1e100 Mult',
						Emult_mod = 1e100,
						colour = G.C.DARK_EDITION
					}, true
				elseif next(SMODS.find_card('j_jen_rai')) or next(SMODS.find_card('j_jen_koslo')) then
					return {
						message = 'x777',
						Xchip_mod = 777,
						colour = G.C.CHIPS
					}, true
				else
					return {
						message = '+1',
						chip_mod = 1,
						colour = G.C.CHIPS
					}, true
				end
			end
		end
	end
}

--[[

SMODS.Joker {
	key = 'math',
	loc_txt = {
		name = 'Math Mathew',
		text = {
			'Provides a base of {C:chips}#1# Chips{} and {C:mult}#2# Mult',
			'Final amount is based on a {C:attention}mathematical operation',
			'using the {C:attention}scored cards',
			'{C:inactive}(Experiment with playing cards to learn more)'
			"{C:inactive,s:1.8,E:1}Math is fun.",
			faceart('jenwalter666')
		}
	},
	config = {extra = {basechips = 500, basemult = 50}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 20,
	rarity = 4,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenmath',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.basechips, center.ability.extra.basemult}}
    end,
    calculate = function(self, card, context)
		if not context.blueprint_card then
			local equation = {
				text = '',
				add = {},
				subtract = {},
				multiply = {},
				exponentiate = {}
			}
			if context.cardarea == G.jokers and not context.before and not context.after then
				if #SMODS.find_card('j_jen_rai') > 0 and #SMODS.find_card('j_jen_koslo') > 0 then
					return {
						message = '^1e100 Mult',
						Emult_mod = 1e100,
						colour = G.C.DARK_EDITION
					}
				elseif #SMODS.find_card('j_jen_rai') > 0 or #SMODS.find_card('j_jen_koslo') > 0 then
					return {
						message = 'x777',
						Xchip_mod = 777,
						colour = G.C.CHIPS
					}
				else
					return {
						message = '+1',
						chip_mod = 1,
						colour = G.C.CHIPS
					}
				end
			end
		end
	end
}

]]

local function landa_mod()
	if not G.jokers or not G.deck then return 1 end
	return (1 + #G.jokers.cards) * (1 + (#G.deck.cards / 100))
end

SMODS.Joker {
	key = 'urizyth',
	loc_txt = {
		name = 'Urizyth',
		text = {
			'Gives {X:purple,C:dark_edition}^Chips&Mult{} according',
			'to {C:attention}(number of Jokers + 1){} multiplied by',
			'{C:attention}((cards in deck / 100) + 1)',
			'{C:inactive}(Currently {X:purple,C:dark_edition}^#1#{C:inactive})',
			' ',
			caption('#2#'),
			faceart('laviolive')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	fusable = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	wee_incompatible = true,
	immutable = true,
	atlas = 'jenlanda',
    loc_vars = function(self, info_queue, center)
        return {vars = {number_format(landa_mod()), Jen.sinister and 'OH GOD, OH NO, OH FU-!!' or Jen.gods() and 'That... thing... have I seen it before?' or 'I must do what I must-... w-wait, was that REALLY my line?'}}
    end,
    calculate = function(self, card, context)
		if context.cardarea == G.jokers and context.joker_main then
			local mod = landa_mod()
			return {
				message = '^' .. mod .. ' Chips & Mult',
				Echip_mod = mod,
				Emult_mod = mod,
				colour = G.C.PURPLE,
				card = card
			}, true
		end
	end
}

SMODS.Joker {
	key = 'landa',
	loc_txt = {
		name = 'Landa Veris',
		text = {
			'Gives {X:purple,C:dark_edition}^Chips&Mult{} according',
			'to {C:attention}(number of Jokers + 1){} multiplied by',
			'{C:attention}((cards in deck / 100) + 1)',
			'{C:inactive}(Currently {X:purple,C:dark_edition}^#1#{C:inactive})',
			' ',
			caption('#2#'),
			faceart('laviolive')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	fusable = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	wee_incompatible = true,
	immutable = true,
	atlas = 'jenlanda',
    loc_vars = function(self, info_queue, center)
        return {vars = {number_format(landa_mod()), Jen.sinister and 'OH GOD, OH NO, OH FU-!!' or Jen.gods() and 'That... thing... have I seen it before?' or 'I must do what I must-... w-wait, was that REALLY my line?'}}
    end,
    calculate = function(self, card, context)
		if context.cardarea == G.jokers and context.joker_main then
			local mod = landa_mod()
			return {
				message = '^' .. mod .. ' Chips & Mult',
				Echip_mod = mod,
				Emult_mod = mod,
				colour = G.C.PURPLE,
				card = card
			}, true
		end
	end
}

SMODS.Joker {
	key = 'jess',
	loc_txt = {
		name = 'Jess',
		text = {
			'Using a {C:attention}non-{C:dark_edition}Negative {C:spectral}Spectral',
			'creates {C:attention}#1# {C:dark_edition}Negative{} copies',
			'{C:inactive}(POINTER:// excluded)',
			' ',
			"{C:inactive,s:1.15,E:1}#2#",
			"{C:inactive,s:1.5,E:1}#3#",
			faceart('jenwalter666')
		}
	},
	config = {extra = {copies = 2}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 20,
	rarity = 4,
	jumbo_mod = 3,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenjess',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.copies, Jen.sinister and 'O-okay, maybe you can keep it...!' or 'Nice computer you have there!', Jen.sinister and '' or 'Can I have it?'}}
    end,
    calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Spectral' and context.consumeable:gc().key ~= 'c_cry_pointer' then
			local quota = (context.consumeable:getEvalQty())
			local card_key = context.consumeable:gc().key
			local isnegative = (context.consumeable.edition or {}).negative
			if not isnegative then
				if not card.cumulative_qtys then card.cumulative_qtys = {} end
				card.cumulative_qtys[card_key] = (card.cumulative_qtys[card_key] or 0) + quota
				if jl.njr(context) then
					card_eval_status_text(card, 'extra', nil, nil, nil, {message = 'Blep!', colour = G.C.SECONDARY_SET.Spectral})
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
							if card then
								if card.cumulative_qtys then
									for k, v in pairs(card.cumulative_qtys) do
										local duplicate = create_card('Spectral', G.consumeables, nil, nil, nil, nil, k, 'jess_negative')
										duplicate.no_forced_edition = true
										duplicate:set_edition({negative = true}, true)
										duplicate.no_forced_edition = nil
										duplicate:setQty(card.ability.extra.copies * (v or 1))
										duplicate:create_stack_display()
										duplicate:set_cost()
										duplicate.no_omega = true
										duplicate:add_to_deck()
										G.consumeables:emplace(duplicate)
									end
									card.cumulative_qtys = nil
								end
							end
						return true end }))
					return true end }))
				end
				return nil, true
			end
		end
	end
}

SMODS.Joker {
	key = 'spice',
	loc_txt = {
		name = 'Spice',
		text = {
			'Using a {C:attention}non-{C:dark_edition}Negative {C:tarot}Tarot',
			'creates {C:attention}#1# {C:dark_edition}Negative{} copies',
			'{C:inactive}(The Fool excluded)',
			' ',
			"{C:inactive,E:1}#2#",
			faceart('jenwalter666')
		}
	},
	config = {extra = {copies = 2}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	sinis = { x = 2, y = 0 },
	cost = 20,
	rarity = 4,
	jumbo_mod = 3,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenspice',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.copies, Jen.sinister and 'Okay, WTF?!' or 'I can whack animals from behind.'}}
    end,
    calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Tarot' and context.consumeable:gc().key ~= 'c_fool' then
			local quota = (context.consumeable:getEvalQty())
			local card_key = context.consumeable:gc().key
			local isnegative = (context.consumeable.edition or {}).negative
			if not isnegative then
				if not card.cumulative_qtys then card.cumulative_qtys = {} end
				card.cumulative_qtys[card_key] = (card.cumulative_qtys[card_key] or 0) + quota
				if jl.njr(context) then
					card_eval_status_text(card, 'extra', nil, nil, nil, {message = 'Whack!', colour = G.C.SECONDARY_SET.Tarot})
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
							if card then
								if card.cumulative_qtys then
									for k, v in pairs(card.cumulative_qtys) do
										local duplicate = create_card('Tarot', G.consumeables, nil, nil, nil, nil, k, 'spice_negative')
										duplicate.no_forced_edition = true
										duplicate:set_edition({negative = true}, true)
										duplicate:setQty(card.ability.extra.copies * (v or 1))
										duplicate:create_stack_display()
										duplicate:set_cost()
										duplicate.no_omega = true
										duplicate:add_to_deck()
										G.consumeables:emplace(duplicate)
									end
									card.cumulative_qtys = nil
								end
							end
						return true end }))
					return true end }))
				end
				return nil, true
			end
		end
	end
}

local alice_blurbs = {
	"Purrfect!",
	"For the lulz!",
	"Dis is gonna be bonkers!",
	"LOL!",
	"LMAO!",
	"1337!",
	"KEK!",
	"Hehehehehehehehehehehe!",
	"HAHAHAHA!",
	"I'm not malware if I'm just joking around!",
	"Oops, looks like I moved a file!",
	"Memes!",
	"01001100 01001111 01001100",
	"01001100 01001101 01000001 01001111",
	"Remember dial-up?",
	"\"AOL?\" More like \"LOL\"!",
	"Oooh, nice file!",
	"What if I move this to here?",
	"Might've fried a circuitboard over here.",
	"That's purrfectly meowtastic!",
	"lol, internet",
	"Let me take a byte out of that catnip.",
	"Meow.",
	"MEOW!",
	"This computer is now Alice-certified!"
}

SMODS.Joker {
	key = 'alice',
	loc_txt = {
		name = 'Alice Reverie',
		text = {
			'{C:cry_code}Codes {C:planet}level up',
			'{C:attention}all hands 3 times{} when used or sold',
			' ',
			"{C:cry_code,E:1}#1#",
			"{C:cry_code,E:1}#2#",
			faceart('ThreeCubed')
		}
	},
	fusable = true,
	wee_incompatible = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 12,
	rarity = 'cry_epic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	atlas = 'jenalice',
    loc_vars = function(self, info_queue, center)
        return {vars = {Jen.gods() and "Huh. What's th1s-c0d3" or "Hiii :3!!! This place is purrfect", Jen.gods() and "-d0-00111111-" or "for some shenanigans!"}}
    end,
	calculate = function(self, card, context)
		if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Code' then
			local quota = (context.consumeable:getEvalQty())
			card.cumulative_lvs = (card.cumulative_lvs or 0) + (quota*3)
			if jl.njr(context) then
				card:speak(alice_blurbs, G.C.SET.Code)
				card:apply_cumulative_levels()
			end
			return nil, true
		elseif context.selling_card and not context.selling_self and context.card.ability.set == 'Code' then
			local quota = (context.card:getEvalQty())
			card.cumulative_lvs = (card.cumulative_lvs or 0) + (quota*3)
			if jl.njr(context) then
				card:speak(alice_blurbs, G.C.SET.Code)
				card:apply_cumulative_levels()
			end
			return nil, true
		end
	end
}

local granddad_palette = {
	HEX('155fd9'),
	HEX('ff8170'),
	HEX('ffffff'),
	HEX('6c0700')
}

function Card:grand_dad()
	Q(function() self:juice_up(0.5, 0.5) return true end)
	local rnd = math.random(6)
	local obj = self.edition or {}
	play_sound_q('jen_grand' .. rnd, obj.jen_wee and Jen.config.wee_sizemod or obj.jen_jumbo and (1/Jen.config.wee_sizemod) or 1, 0.5)
	card_status_text(self, rnd == 2 and 'Flintstones?!' or rnd == 6 and 'Gruhh- Dad!' or 'Grand Dad!', nil, 0.05*self.T.h, granddad_palette[math.random(#granddad_palette)], 0.6, 0.6, nil, nil, 'bm')
end

SMODS.Joker {
	key = '7granddad',
	loc_txt = {
		name = '7 GRAND DAD',
		text = {
			'This Joker has a {C:jen_RGB,E:1}strange reaction',
			'to scored {C:attention}7{}s',
			' ',
			"{C:inactive,E:1}PUSH START BUTTON !",
			"{C:inactive,E:1}1992    1",
			faceart('jenwalter666'),
			origin('Vinesauce')
		}
	},
	config = {},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 12,
	rarity = 'cry_epic',
	misc_badge = annoying,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	wee_incompatible = true,
	atlas = 'jen7granddad',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.shopslots}}
    end,
	add_to_deck = function(self, card, from_debuff)
		card:grand_dad()
	end,
	remove_from_deck = function(self, card, from_debuff)
		card:grand_dad()
	end,
    calculate = function(self, card, context)
		if context.cardarea == G.play then
			if context.other_card and context.other_card:get_id() == 7 and jl.scj(context) then
				card:grand_dad()
				local palette = granddad_palette[math.random(#granddad_palette)]
				local rnd = pseudorandom(pseudoseed('granddad'), 1, 7)
				if rnd == 1 then
					return {
						message = '+777',
						chips = 777,
						colour = palette,
						card = card
					}, true
				elseif rnd == 2 then
					return {
						message = '+777 Mult',
						mult = 777,
						colour = palette,
						card = card
					}, true
				elseif rnd == 3 then
					return {
						message = '+$7',
						dollars = 7,
						colour = palette,
						card = card
					}, true
				elseif rnd == 4 then
					return {
						message = 'x7',
						x_chips = 7,
						colour = palette,
						card = card
					}, true
				elseif rnd == 5 then
					return {
						message = 'x7 Mult',
						x_mult = 7,
						colour = palette,
						card = card
					}, true
				elseif rnd == 6 then
					return {
						message = '^1.77',
						e_chips = 1.77,
						colour = palette,
						card = card
					}, true
				else
					return {
						message = '^1.77 Mult',
						e_mult = 1.77,
						colour = palette,
						card = card
					}, true
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'gamingchair',
	loc_txt = {
		name = '{C:jen_RGB}Gaming Chair',
		text = {
			'{C:red}Fixed {C:green}60% chance{} to {C:attention}immediately defeat',
			'{C:attention}Blinds{} when starting a round',
			' ',
			lore('Get a good gaming chair.'),
			faceart('jenwalter666')
		}
	},
	config = {},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 250,
	rarity = 'jen_wondrous',
	misc_badge = gaming,
	unique = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	debuff_immune = true,
	immutable = true,
	wee_incompatible = true,
	atlas = 'jengamingchair',
	calculate = function(self, card, context)
		if not context.blueprint_card and jl.njr(context) and context.setting_blind then
			if jl.chance('gamingchair', 1.6666666666666666666666666666667, true) then
				card:speak('Good Gaming Chair!', G.C.jen_RGB)
				Q(function()
					Q(function()
						Q(function()
							update_operator_display_custom(' ', G.C.WHITE)
							jl.hcm('Gaming', 'Chair')
							Q(function()
								G.GAME.chips = G.GAME.blind.chips
								G.STATE = G.STATES.HAND_PLAYED
								G.STATE_COMPLETE = true
								end_round()
							return true end)
							delay(3)
							jl.ch()
							update_operator_display()
						return true end)
					return true end)
				return true end)
			end
		end
	end
}

local nyx_maxenergy = 5

SMODS.Joker {
	key = 'nyx',
	loc_txt = {
		name = 'Nyx Equinox',
		text = {
			'{X:inactive}Energy{} : {C:attention}#1#{C:inactive} / ' .. tostring(nyx_maxenergy) .. '',
			'Selling a {C:attention}Joker {C:inactive}(excluding this one){} or {C:attention}consumable{} will',
			'{C:attention}create a new random one{} of the {C:attention}same type/rarity',
			'{C:inactive}(Does not require slots, but may overflow, retains edition)',
			'{C:inactive}(Does not work on jokers better than Exotic)',
			'{C:inactive,s:1.35}(Currently {C:attention,s:1.35}#2#{C:inactive,s:1.35})',
			' ',
			'Recharges {C:attention}' .. math.ceil(nyx_maxenergy/3) .. ' energy{} at',
			'the end of every {C:attention}round',
			' ',
			"{C:inactive,s:1.2,E:1}#3#",
			faceart('ThreeCubed'),
			origin('Pokémon')
		}
	},
	config = {extra = {energy = nyx_maxenergy}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 250,
	fusable = true,
	unique = true,
	debuff_immune = true,
	rarity = 'jen_wondrous',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	wee_incompatible = true,
	atlas = 'jennyx',
	abilitycard = 'c_jen_nyx_c',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.energy, (G.GAME or {}).nyx_enabled and 'ENABLED' or 'DISABLED', Jen.gods() and "Give me-... the marble. I-I've... earned it." or "Don't you wanna seem like you're divine?"}}
    end,
    calculate = function(self, card, context)
		if not context.individual and not context.repetition and not card.debuff and context.end_of_round and not context.blueprint then
			card.ability.extra.energy = math.min(card.ability.extra.energy + math.ceil(nyx_maxenergy/3), nyx_maxenergy)
			card_status_text(card, card.ability.extra.energy .. '/' .. nyx_maxenergy, nil, 0.05*card.T.h, G.C.GREEN, 0.6, 0.6, nil, nil, 'bm', 'generic1')
		elseif context.selling_card and not context.selling_self then
			if (G.GAME or {}).nyx_enabled then
				if card.ability.extra.energy > 0 then
					local c = context.card
					local RARE = c:gc().rarity or 1
					local legendary = false
					if RARE == 1 then
						RARE = 0
					elseif RARE == 2 then
						RARE = 0.9
					elseif RARE == 3 then
						RARE = 0.99
					elseif RARE == 4 then
						RARE = nil
						legendary = true
					end
					local valid = c.ability.set ~= 'Joker' or not Jen.overpowered(RARE)
					if not c:gc().immune_to_nyx and valid and not c.playing_card then
						local new = 'n/a'
						local AREA = c.area
						if c.ability.set == 'Joker' then
							new = create_card(c.ability.set, AREA, legendary, RARE, nil, nil, nil, 'nyx_replacement')
						else
							new = create_card(c.ability.set, AREA, nil, nil, nil, nil, nil, 'nyx_replacement')
						end
						if c.ability.set == 'Booster' and new.ability.set ~= 'Booster' then
							new:set_ability(jl.rnd('paragon_booster_equilibrium', nil, G.P_CENTER_POOLS.Booster), true, nil)
						end
						if c.edition then
							new:set_edition(c.edition)
						end
						if c.ability.set ~= 'Joker' and c:getQty() > 1 then
							new:setQty(c:getQty())
							new:create_stack_display()
						end
						Q(function()
							new:add_to_deck()
							AREA:emplace(new)
						return true end)
						if jl.njr(context) and not context.blueprint then
							Q(function()
								card.ability.extra.energy = card.ability.extra.energy - 1
								card_status_text(card, card.ability.extra.energy .. '/' .. nyx_maxenergy, nil, 0.05*card.T.h, G.C.FILTER, 0.6, 0.6, nil, nil, 'bm', 'generic1')
							return true end)
						end
						return nil, true
					end
				elseif jl.njr(context) then
					card_status_text(card, 'No energy!', nil, 0.05*card.T.h, G.C.RED, 0.6, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
				end
			end
		end
	end
}

SMODS.Consumable {
	key = 'nyx_c',
	loc_txt = {
		name = 'Goddess\'s Call',
		text = {
			'Switches the ability of {X:attention}Nyx{} {X:attention}Equinox{C:attention} on/off',
			'{X:dark_edition,C:white}Negative{} {X:dark_edition,C:white}Ability:{} Does not toggle {X:attention}Nyx{} {X:attention}Equinox{C:attention} on/off{},',
			'instead granting {C:green}+1 energy{} to {X:attention}Nyx{} {X:attention}Equinox',
			'{C:inactive,s:1.35}(Currently {C:attention,s:1.35}#1#{C:inactive,s:1.35})'
		}
	},
	config = {},
	set = 'jen_ability',
	permaeternal = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 0,
	unlocked = true,
	discovered = true,
	hidden = true,
	hidden2 = true,
	no_doe = true,
	soul_rate = 0,
	atlas = 'jennyx_c',
    loc_vars = function(self, info_queue, center)
        return {vars = {(G.GAME or {}).nyx_enabled and 'ENABLED' or 'DISABLED'}}
    end,
	can_use = function(self, card)
		return abletouseabilities()
	end,
	keep_on_use = function(self, card)
		return (#SMODS.find_card('j_jen_nyx') + #SMODS.find_card('j_jen_paragon')) > 0 and not (card.edition or {}).negative
	end,
	use = function(self, card, area, copier)
		if (card.edition or {}).negative then
			for k, v in ipairs(SMODS.find_card('j_jen_nyx')) do
				v.ability.extra.energy = math.min(v.ability.extra.energy + 1, nyx_maxenergy)
				card_status_text(v, v.ability.extra.energy .. '/' .. nyx_maxenergy, nil, 0.05*v.T.h, G.C.GREEN, 0.6, 0.6, nil, nil, 'bm', 'generic1')
			end
			for k, v in ipairs(SMODS.find_card('j_jen_paragon')) do
				v.ability.extra.energy = math.min(v.ability.extra.energy + 1, nyx_maxenergy*3)
				card_status_text(v, v.ability.extra.energy .. '/' .. nyx_maxenergy*3, nil, 0.05*v.T.h, G.C.GREEN, 0.6, 0.6, nil, nil, 'bm', 'generic1')
			end
		else
			G.GAME.nyx_enabled = not G.GAME.nyx_enabled
		end
	end
}

SMODS.Joker {
	key = 'watto',
	loc_txt = {
		name = 'Watto',
		text = {
			'{C:money}Selling{} a card adds a {C:attention}hundredth',
			'of its value to this Joker\'s {X:jen_RGB,C:white,s:1.5}^^Mult',
			'{C:inactive}(Currently {X:jen_RGB,C:white,s:1.5}^^#1#{C:inactive})',
			' ',
			'{C:inactive,s:2,E:1}That\'s a dub.',
			faceart('jenwalter666'),
			origin('Star Wars'),
			'{C:cry_ascendant,E:1}https://www.youtube.com/@AutoWatto'
		}
	},
	config = {big_num_scaler = true, tetmult = 0},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	misc_badge = youtube,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenwatto',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.tetmult + 1}}
    end,
    calculate = function(self, card, context)
		if context.selling_card and context.card ~= card then
			card.ability.tetmult = card.ability.tetmult + (context.card.sell_cost/100)
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = '^^' .. number_format(card.ability.tetmult + 1) .. ' Mult', colour = G.C.FILTER})
			return nil, true
		elseif context.cardarea == G.jokers and context.joker_main then
			local num = 1 + (card.ability.tetmult)
			if num > 1 then
				return {
					message = '^^' .. num .. ' Mult',
					colour = G.C.jen_RGB,
					EEmult_mod = num,
					card = card
				}
			end
		end
	end
}

SMODS.Joker {
	key = 'survivor',
	loc_txt = {
		name = 'The Survivor',
		text = {
			'{C:planet}Levels up{} the {C:attention}lowest level poker hand',
			'by the {C:attention}sum of your remaining',
			'{C:blue}hands {C:attention}and {C:red}discards{} at',
			'the {C:attention}end of the round',
			'{C:inactive}(Prioritises lower-ranking hands)',
			faceart('jenwalter666'),
			origin('Rain World')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 12,
	rarity = 'cry_epic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jensurvivor',
    calculate = function(self, card, context)
		if not context.individual and not context.repetition and not card.debuff and context.end_of_round then
			card.cumulative_lvs = (card.cumulative_lvs or 0) + (G.GAME.current_round.hands_left + G.GAME.current_round.discards_left)
			if jl.njr(context) then
				card:apply_cumulative_levels(jl.lowhand())
			end
			return nil, true
		end
	end
}

SMODS.Joker {
	key = 'monk',
	loc_txt = {
		name = 'The Monk',
		text = {
			'{C:attention}Retrigger{} scored cards,',
			"using the {C:attention}card's rank",
			'as the {C:attention}number of times to retrigger',
			'{C:inactive}(ex. 9 = 9 times, Jack = 11 times, Ace = 14 times, etc.)',
			faceart('jenwalter666'),
			origin('Rain World')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 12,
	rarity = 'cry_epic',
	longful = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	unique = true,
	wee_incompatible = true,
	atlas = 'jenmonk',
    calculate = function(self, card, context)
		if context.repetition then
			if context.cardarea == G.play then
				if context.other_card and context.other_card.ability.name ~= 'Stone Card' then
					return {
						message = localize('k_again_ex'),
						repetitions = context.other_card:get_id(),
						colour = G.C.ORANGE,
						card = card
					}, true
				end
			end
		end
	end
}

local hunter_prizes = { 'c_jen_comedy', 'c_jen_tragedy', 'c_jen_whimsy', 'c_jen_entropy', 'c_jen_wonder' }

local hunter_thresholds = { 10, 7, 5, 3, 1 }

SMODS.Joker {
	key = 'hunter',
	loc_txt = {
		name = 'The Hunter',
		text = {
			'Whenever {C:blue}current hands{} are below your {C:blue}maximum hands{},',
			'{C:attention}refill{} your {C:blue}hands{} to the maximum',
			'{C:red,s,E:1}Succumbs to the Rot after #1#',
			'When this Joker {C:red}dies to the Rot{},',
			'{C:attention}create random {C:spectral}Masks',
			'equal to the {C:attention}cumulative number of',
			'{C:blue}hands{} that this Joker has replenished',
			'{C:inactive}(Currently #2#)',
			'{C:inactive}(Selling this card at 7 rounds remaining creates Rot, but gives {C:red}no rewards{C:inactive})',
			faceart('jenwalter666'),
			origin('Rain World')
		}
	},
	config = {rounds_left = 10, hands_replenished = 0},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 20,
	rarity = 4,
	no_doe = true,
	no_mysterious = true,
	unlocked = true,
	discovered = true,
	immutable = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	wee_incompatible = true,
	jumbo_mod = 3,
	atlas = 'jenhunter',
    loc_vars = function(self, info_queue, center)
        return {vars = {tostring(center.ability.rounds_left) .. ' round' .. ((math.abs(center.ability.rounds_left) > 1 or math.abs(center.ability.rounds_left) == 0) and 's' or '') .. (center.ability.rounds_left <= 0 and '...?' or ''), center.ability.hands_replenished}}
    end,
	update = function(self, card, front)
		if card.added_to_deck and card.children.center and card.children.floating_sprite then
			for k, v in ipairs(hunter_thresholds) do
				if card.ability.rounds_left <= v then
					card.children.center:set_sprite_pos({x = 0, y = k - 1})
					card.children.floating_sprite:set_sprite_pos({x = 1, y = k - 1})
				else
					break
				end
			end
		end
	end,
    calculate = function(self, card, context)
		if not context.blueprint then
			if context.selling_self and card.ability.rounds_left < 8 then
				card:flip()
				card:juice_up(2, 0.8)
				card_status_text(card, 'Dead!', nil, 0.05*card.T.h, G.C.BLACK, 2, 0, 0, nil, 'bm', 'jen_gore6')
				Q(function()
					local card2 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_jen_rot', 'hunter_rot_death')
					card2:add_to_deck()
					G.jokers:emplace(card2)
					card:set_eternal(nil)
					card2:set_eternal(true)
					play_sound('jen_gore5')
					return true end
				)
			elseif not context.individual and not context.repetition and not context.retrigger_joker then
				if G.GAME.round_resets.hands <= 0 then G.GAME.round_resets.hands = 1 end
				if not card.hunter_prep then
					card.hunter_prep = true
					Q(function()
						Q(function()
							card.hunter_prep = nil
							if G.GAME.current_round.hands_left < G.GAME.round_resets.hands then
								card.ability.hands_replenished = (card.ability.hands_replenished or 0) + (G.GAME.round_resets.hands - G.GAME.current_round.hands_left)
								ease_hands_played(G.GAME.round_resets.hands - G.GAME.current_round.hands_left)
							end
						return true end)
					return true end)
				end
				if context.end_of_round then
					card.hunter_prep = nil
					card.ability.rounds_left = card.ability.rounds_left - 1
					local rl = card.ability.rounds_left
					card_status_text(card, tostring(card.ability.rounds_left), nil, nil, G.C.RED, nil, nil, nil, nil, nil, 'generic1')	
					if rl > 7 then
						card:juice_up(0.6, 0.1)
					elseif rl > 5 then
						if rl == 7 then
							play_sound_q('jen_gore1')
						end
						card:juice_up(0.6, 0.1)
					elseif rl > 3 then
						if rl == 5 then
							play_sound_q('jen_gore3')
						end
						card:juice_up(0.6, 0.1)
					elseif rl > 1 then
						if rl == 3 then
							play_sound_q('jen_gore8')
						end
						card:juice_up(0.6, 0.1)
						play_sound_q('jen_heartbeat')
					elseif rl > 0 then
						if rl == 1 then
							play_sound_q('jen_gore4')
						end
						card:juice_up(1.8, 0.3)
						play_sound_q('jen_heartbeat')
					else
						card:juice_up(2, 0.8)
						play_sound_q('jen_heartbeat')
						local rolls = math.min(5, math.ceil(math.abs(rl) / 3)) + 2
						local DELAY = 360
						local DELAY_OFFSET = 0
						local CHANCE = math.max(15, 40.1 - (math.abs(rl) / 10))
						G.E_MANAGER:add_event(Event({
							trigger = 'after',
							func = function()
								if DELAY <= 0 then
									if jl.chance('hunter_rot', CHANCE) then
										card:flip()
										card:juice_up(2, 0.8)
										card_status_text(card, 'Dead!', nil, 0.05*card.T.h, G.C.BLACK, 2, 0, 0, nil, 'bm', 'jen_gore6')
										G.E_MANAGER:add_event(Event({
											func = function()
												local card2 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_jen_rot', 'hunter_rot_death')
												card2:add_to_deck()
												G.jokers:emplace(card2)
												card:set_eternal(nil)
												card2:set_eternal(true)
												play_sound('jen_gore5')
												return true
											end
										}))
										for i = 1, card.ability.hands_replenished do
											Q(function()
												local card3 = create_card('Spectral', G.consumeables, nil, nil, nil, nil, pseudorandom_element(hunter_prizes, pseudoseed('hunter_prizecards')), 'hunter_prizecard')
												card3:add_to_deck()
												G.consumeables:emplace(card3)
												return true
											end, 0.1)
										end
										Q(function() card:start_dissolve() return true end, 1)
										rolls = 0
										DELAY = 360
									else
										if rolls == 1 then
											card:juice_up(0.6, 0.1)
											card_status_text(card, localize('k_safe_ex'), nil, 0.05*card.T.h, G.C.FILTER, math.min(1.5, 0.8 + (rolls / 10)), 0, 0, nil, 'bm', 'generic1')
										else
											card:juice_up(rolls/10, rolls/60)
											card_status_text(card, '...', nil, 0.05*card.T.h, G.C.RED, math.min(1.5, 0.8 + (rolls / 10)), 0, 0, nil, 'bm', 'jen_heartbeat')
										end
										rolls = rolls - 1
										DELAY_OFFSET = DELAY_OFFSET + 30
										DELAY = 360 + DELAY_OFFSET
									end
								else
									DELAY = DELAY - ((math.log(G.SETTINGS.GAMESPEED)+1)^2)
								end
							return rolls <= 0 and DELAY <= 0
						end} ))
					end
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'gourmand',
	loc_txt = {
		name = 'The Gourmand',
		text = {
			'Retrigger the {C:attention}leftmost{} and',
			'{C:attention}rightmost{} Jokers {C:attention}#1#{} times',
			'{C:inactive,s:0.6}(Retriggers 2nd left/rightmost joker instead if 1st is debuffed)',
			' ',
			lore('He\'s a pretty fat boy.'),
			faceart('jenwalter666'),
			origin('Rain World')
		}
	},
	config = {extra = {absolute_unit = 25}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	jumbo_mod = 3,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	immutable = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jengourmand',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.absolute_unit}}
    end,
	calculate = function(self, card, context)
        if context.retrigger_joker_check and not context.retrigger_joker and context.other_card ~= self then
			if context.other_card == (G.jokers.cards[1].debuff and G.jokers.cards[2] or G.jokers.cards[1]) or context.other_card == ((G.jokers.cards[#G.jokers.cards].debuff and G.jokers.cards[#G.jokers.cards - 1]) and G.jokers.cards[#G.jokers.cards - 1] or G.jokers.cards[#G.jokers.cards]) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.absolute_unit,
					card = card
				}
			else
				return nil, true
			end
        end
	end
}

SMODS.Joker {
	key = 'rivulet',
	loc_txt = {
		name = 'The Rivulet',
		text = {
			'Retrigger {C:attention}all Jokers{}, using its {C:attention}order {C:inactive}(left-to-right)',
			'in the Joker tray as the {C:attention}number of times to retrigger',
			'{C:inactive}(ex. retrigger leftmost joker 1 time, next joker 2 times, one after 3 times, etc.)',
			faceart('jenwalter666'),
			origin('Rain World')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	immutable = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	unique = true,
	wee_incompatible = true,
	atlas = 'jenrivulet',
		calculate = function(self, card, context)
	        if context.retrigger_joker_check and not context.retrigger_joker and context.other_card ~= self then
				local retrigger_amount = to_big(0)
				for i = 1, #G.jokers.cards do
					if context.other_card == G.jokers.cards[i] then
						retrigger_amount = i
					end
				end
				if context.other_card == G.jokers.cards[retrigger_amount] then
					return {
						message = localize('k_again_ex'),
						repetitions = retrigger_amount,
						card = card
					}
				else
					return nil, true
				end
	        end
		end
}

local max_karma = 10

SMODS.Joker {
	key = 'saint',
	loc_txt = {
		name = 'The Saint',
		text = {
			'{C:spectral}Gateway{} will {C:attention}not destroy Jokers{} when used',
			'After using {C:attention}' .. tostring(max_karma) .. ' {C:spectral}Gateways{}, {C:jen_RGB}attune{} this Joker',
			'{C:inactive,s:1.5}[{C:attention,s:1.5}#1#{C:inactive,s:1.5}/' .. tostring(max_karma) .. ']',
			faceart('jenwalter666'),
			origin('Rain World')
		}
	},
	config = {extra = {karma = 0}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 20,
	rarity = 4,
	unlocked = true,
	discovered = true,
	immutable = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	wee_incompatible = true,
	atlas = 'jensaint',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.karma}}
    end,
	calculate = function(self, card, context)
        if not context.blueprint and jl.njr(context) and context.using_consumeable and context.consumeable and context.consumeable:gc().key == 'c_cry_gateway' then
			local quota = context.consumeable:getEvalQty()
			card.ability.extra.karma = card.ability.extra.karma + quota
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = '+' .. quota .. ' Karma', colour = G.C.PALE_GREEN})
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = (tostring(card.ability.extra.karma) .. ' / ' .. tostring(max_karma)), colour = G.C.GREEN})
			if card.ability.extra.karma >= max_karma then
				card_status_text(card, '!!!', nil, 0.05*card.T.h, G.C.DARK_EDITION, 0.6, 0.6, 2, 2, 'bm', 'jen_enlightened')
				G.E_MANAGER:add_event(Event({
					delay = 0.1,
					func = function()
						card:flip()
						play_sound('card1')
						return true
					end
				}))
				G.E_MANAGER:add_event(Event({
					delay = 1,
					func = function()
						card:flip()
						card:juice_up(1, 1)
						play_sound('card1')
						card:set_ability(G.P_CENTERS['j_jen_saint_attuned'])
						return true
					end
				}))
			end
        end
	end
}

SMODS.Joker {
	key = 'saint_attuned',
	loc_txt = {
		name = 'The Saint {C:jen_RGB}(Attuned)',
		text = {
			'{C:spectral}Gateway{} will {C:attention}not destroy Jokers{} when used',
			'{C:cry_ascendant}Yawetag{} also has {C:attention}no negative effect{} when used',
			'{X:black,C:red,s:3}^^^#1#{C:purple} Chips & Mult',
			faceart('jenwalter666'),
			origin('Rain World')
		}
	},
	config = {extra = {ascension = 3}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 2, y = 0 },
	cost = 100,
	rarity = 'jen_transcendent',
	unlocked = true,
	discovered = true,
	no_doe = true,
	immutable = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jensaint',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.ascension}}
    end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {
				message = '^^^' .. card.ability.extra.ascension .. ' Chips & Mult',
				EEEmult_mod = card.ability.extra.ascension,
				EEEchip_mod = card.ability.extra.ascension,
				colour = G.C.BLACK,
				card = card
			}, true
		end
	end
}

local totalownedcards_areastocheck = {
	'hand',
	'jokers',
	'consumeables',
	'deck',
	'discard',
	'play'
}

local function totalownedcards()
	local amnt = 0
	for k, v in pairs(totalownedcards_areastocheck) do
		if G[v] and G[v].cards then
			if G[v] == (G.consumeables or {}) then
				for kk, vv in pairs(G[v].cards) do
					amnt = amnt + vv:getQty()
				end
			else
				amnt = amnt + #G[v].cards
			end
		end
	end
	return amnt
end

SMODS.Joker {
	key = 'artificer',
	loc_txt = {
		name = 'The Artificer',
		text = {
			"Grants the {C:green}ability{} to {C:red}destroy",
			"selected {C:attention}playing cards",
			"in exchange for {C:attention}varying benefits/upgrades",
			faceart('jenwalter666'),
			origin('Rain World')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	immutable = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	wee_incompatible = true,
	unique = true,
	atlas = 'jenartificer',
	abilitycard = 'c_jen_artificer_c',
}

SMODS.Consumable {
	key = 'artificer_c',
	loc_txt = {
		name = 'Pyrotechnic Engineering',
		text = {
			'{C:red}Destroys{} all selected playing cards, giving various effects',
			"{C:inactive}(R = destroyed card's rank)",
			'{C:hearts}Hearts{} : All hands receive {X:mult,C:white}x(1 + (R/10)){} Mult',
			'{C:spades}Spades{} : All hands receive {X:chips,C:white}x(1 + (R/20)){} Chips',
			'{C:diamonds}Diamonds{} : Create {C:attention}R consumable(s) {C:inactive}(does not require room, copies edition)',
			'{C:clubs}Clubs{} : {C:planet}Level up{} all hands {C:attention}R{} time(s)',
			'{C:jen_RGB}Wilds{} : {C:purple}Applies all of the above',
			'{X:inactive}Stones/Rankless{} : All other {C:attention}playing cards{} gain {C:chips}+5,000{} bonus chips',
			' ',
			'{X:dark_edition,C:white}Negative{} {X:dark_edition,C:white}Ability:{} Applies effects {C:attention}without destroying{} selected cards'
		}
	},
	set = 'jen_ability',
	permaeternal = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 0,
	unlocked = true,
	discovered = true,
	hidden = true,
	hidden2 = true,
	no_doe = true,
	soul_rate = 0,
	atlas = 'jenartificer_c',
	can_use = function(self, card)
		return (#G.hand.highlighted > (card.area == G.hand and 1 or 0)) and abletouseabilities()
	end,
	keep_on_use = function(self, card)
		return #SMODS.find_card('j_jen_artificer') > 0 and not (card.edition or {}).negative
	end,
	use = function(self, card, area, copier)
		local isneg = card.edition and card.edition.negative
		if #G.hand.highlighted > 0 then
			for k, v in pairs(G.hand.highlighted) do
				if v:norank() then
					for a, b in pairs(G.hand.cards) do
						if not b.highlighted or (card.edition or {}).negative then
							b.ability.perma_bonus = (b.ability.perma_bonus or 0) + 5e3
							card_eval_status_text(b, 'extra', nil, nil, nil, {message = '+' .. b.ability.perma_bonus, colour = G.C.CHIPS})
						end
					end
					for a, b in pairs(G.deck.cards) do
						b.ability.perma_bonus = (b.ability.perma_bonus or 0) + 5e3
						if a == 1 then
							card_eval_status_text(b, 'extra', nil, nil, nil, {message = '+', colour = G.C.CHIPS})
						end
					end
					if not isneg then
						G.E_MANAGER:add_event(Event({trigger = 'after', func = function()
							v:start_dissolve()
							return true
						end }))
					end
				else
					local rank = v:get_id()
					if rank > 0 then
						if v:is_suit('Clubs') then
							lvupallhands(rank, v)
						end
						if v:is_suit('Hearts') or v:is_suit('Spades') then
							jl.th('all')
						end
						if v:is_suit('Spades') then
							for k, v in pairs(G.GAME.hands) do
								G.GAME.hands[k].chips = G.GAME.hands[k].chips * (1 + (rank/20))
							end
							update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 2}, {chips = 'x' .. number_format(1 + (rank/20))})
						end
						if v:is_suit('Hearts') then
							for k, v in pairs(G.GAME.hands) do
								G.GAME.hands[k].mult = G.GAME.hands[k].mult * (1 + (rank/10))
							end
							update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 2}, {mult = 'x' .. number_format(1 + (rank/10))})
						end
						if v:is_suit('Hearts') or v:is_suit('Spades') then
							update_hand_text({sound = 'button', volume = 0.7, pitch = 1.1, delay = 2}, {mult = 0, chips = 0, handname = '', level = ''})
						end
						if v:is_suit('Diamonds') then
							for i = 1, rank do
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
									play_sound('jen_draw')
									local card2 = create_card('Consumeables', G.consumeables, nil, nil, nil, nil, nil, 'pyrotechnics')
									if v.edition then
										card2:set_edition(v.edition, true)
									end
									card2:add_to_deck()
									G.consumeables:emplace(card2)
									card:juice_up(0.3, 0.5)
									return true
								end }))
							end
						end
						if not isneg then
							G.E_MANAGER:add_event(Event({trigger = 'after', func = function()
								v:start_dissolve()
								return true
							end }))
						end
					end
				end
			end
			if not isneg and #G.hand.cards - #G.hand.highlighted < G.hand.config.card_limit and #G.deck.cards > 0 then
				for i = 1, math.min(G.hand.config.card_limit - (#G.hand.cards - #G.hand.highlighted), #G.deck.cards) do
					draw_card(G.deck,G.hand, 1, nil, true, nil, 0.07)
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'rot',
	loc_txt = {
		name = 'The Rot',
		text = {
			'Clogs up your Joker slots',
			'{C:attention}Duplicates itself{} at the end of every {C:attention}Ante',
			' ',
			'{C:inactive,s:1.25,E:1}*Better get rid of it before it starts killing your framerate...*',
			faceart('jenwalter666'),
			origin('Rain World')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 1,
	rarity = 'jen_junk',
	no_mysterious = true,
	no_doe = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	debuff_immune = true,
	wee_incompatible = true,
	edition_immune = 'negative',
	atlas = 'jenrot',
    calculate = function(self, card, context)
        if not context.individual and not context.repetition and not card.debuff and context.end_of_round and not context.blueprint and G.GAME.blind.boss and not (G.GAME.blind.config and G.GAME.blind.config.bonus) then
			local rot = copy_card(card)
			rot:add_to_deck()
			G.jokers:emplace(rot)
		end
	end
}

local crimbo_quotes = {
	normal = {
		'Can you see as well as the one without eyes?',
		'I could take him.',
		'Do you think that the clouds have silver thoughts?'
	},
	gods = {
		'I understand, though I won\'t like it.',
		'Could I convince you otherwise?'
	},
	fuse = {
		'I guess not.',
		'This is terrible.'
	}
}

SMODS.Joker {
	key = 'crimbo',
	loc_txt = {
		name = '{C:jen_RGB}Crimbo',
		text = {
			'All cards currently in hand',
			'{C:attention}also contribute to scoring',
			'{C:inactive,s:0.8}(Cards in played hand score in order first, then hand cards in order)',
			' ',
			'{C:inactive,E:1}#1#',
			faceart('CrimboJimbo')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 20,
	rarity = 4,
	fusable = true,
	misc_badge = {
		colour = G.C.CRY_ASCENDANT,
		text_colour = G.C.EDITION,
		text = {
			'Ko-Fi Juggernaut',
			'CrimboJimbo',
			'£600+ Donated'
		}
	},
	unique = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	wee_incompatible = true,
	atlas = 'jencrimbo',
    loc_vars = function(self, info_queue, center)
        return {vars = {Jen.gods() and crimbo_quotes.gods[math.random(#crimbo_quotes.gods)] or crimbo_quotes.normal[math.random(#crimbo_quotes.normal)]}}
    end,
}

SMODS.Joker {
	key = 'jimbo',
	loc_txt = {
		name = '{C:chips}J{C:attention}imb{C:mult}o',
		text = {
			'{C:mult}+444,444,444{}, {X:mult,C:white}x44,444,444{},',
			'{X:mult,C:dark_edition}^4,444,444{}, {X:jen_RGB,C:white}^^444,444{},',
			'{X:black,C:red}^^^44,444{} and {X:black,C:purple}^^^^4,444{} Mult',
			'{C:inactive,s:0.7,E:1}Hey, buddy! I figured I might as well hop in and have fun!',
			faceart('LocalThunk'),
			origin('Balatro')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 888888,
	rarity = 'jen_transcendent',
	no_doe = true,
	misc_badge = secret,
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	debuff_immune = true,
	wee_incompatible = true,
	atlas = 'jenjimbo',
    calculate = function(self, card, context)
		if context.joker_main then
			if not context.retrigger_joker then
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = 'Hee-hee!', colour = G.C.CHIPS})
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = 'Hoo-hoo!', colour = G.C.MULT})
			end
			return {
				message = 'Haa-haa!',
				mult_mod = 444444444,
				Xmult_mod = 44444444,
				Emult_mod = 4444444,
				EEmult_mod = 444444,
				EEEmult_mod = 44444,
				hypermult_mod = {4, 4444},
				colour = G.C.FILTER,
				card = card
			}, true
		end
	end
}

SMODS.Joker {
	key = 'dandy',
	loc_txt = {
		name = '{C:red}Dand{C:attention}icus {C:money}"Dan{C:green}dy" {C:spectral}Danc{C:tarot}ifer',
		text = {
			'{C:attention}All cards and Jokers{} are',
			'{C:attention}immune{} to debuffs {C:attention}whatsoever',
			' ',
			"{C:inactive,E:1}*The star of the show at Gardenview Center!*",
			faceart('jenwalter666'),
			origin('Dandy\'s World')
		}
	},
	config = {},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 13,
	rarity = 'cry_epic',
	unique = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	debuff_immune = true,
	wee_incompatible = true,
	atlas = 'jendandy'
}

local function voucherscount()
	if not G.GAME.used_vouchers then return 0 end
	local count = 0
	for k, v in pairs(G.GAME.used_vouchers) do
		if v then
			count = count + 1
		end
	end
	return count
end

SMODS.Joker {
	key = 'betmma',
	loc_txt = {
		name = 'Betmma',
		text = {
			'{X:jen_RGB,C:white,s:1.5}+^^#1#{C:mult} Mult{} for every {C:attention}unique Voucher redeemed',
			'{C:inactive}(Currently {X:jen_RGB,C:white,s:1.5}^^#2#{C:inactive})',
			' ',
			"{C:inactive,s:1.5,E:1}It's time for redemption.",
			faceart('jenwalter666')
		}
	},
	config = {big_num_scaler = true, extra = {tet = 0.1}},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	blueprint_compat = true,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenbetmma',
    loc_vars = function(self, info_queue, center)
		local qty = voucherscount()
        return {vars = {center.ability.extra.tet, 1 + (qty * center.ability.extra.tet)}}
    end,
    calculate = function(self, card, context)
		if context.cardarea == G.jokers and context.joker_main then
			local vouchers = voucherscount()
			if vouchers > 0 then
				local num = 1 + (vouchers*card.ability.extra.tet)
				return {
					message = '^^' .. number_format(num) .. ' Mult',
					colour = G.C.jen_RGB,
					EEmult_mod = num,
					card = card
				}, true
			end
		end
	end
}

SMODS.Joker {
	key = 'boxten',
	loc_txt = {
		name = '{C:tarot}Boxten',
		text = {
			'{C:attention}Retrigger{} every Joker {C:attention}#1#{} time(s)',
			'Increases by {C:attention}1{} whenever a {C:attention}10{} scores',
			' ',
			"{C:inactive,s:0.9,E:1}*The key on the back of his head tends to spin when he\'s focused or thinking.*",
			faceart('jenwalter666'),
			origin('Dandy\'s World')
		}
	},
	config = {retrig = 1},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 250,
	rarity = 'jen_wondrous',
	wee_incompatible = true,
	dangerous = true,
	unlocked = true,
	discovered = true,
	immutable = true,
	unique = true,
	debuff_immune = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jenboxten',
	loc_vars = function(self, info_queue, center)
		return {vars = {math.floor(center.ability.retrig)}}
	end,
    calculate = function(self, card, context)
		if not context.blueprint_card then
			if context.retrigger_joker_check and not context.retrigger_joker and context.other_card:gc().key ~= 'j_jen_boxten' then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.retrig,
					card = card
				}
			elseif jl.njr(context) and context.cardarea == G.play and jl.scj(context) then
				if context.other_card and context.other_card:get_id() == 10 then
					card_eval_status_text(card, 'extra', nil, nil, nil, {message = '+1 Retrigger', colour = G.C.FILTER})
					card.ability.retrig = card.ability.retrig + 1
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'goob_lefthand',
	loc_txt = {
		name = "Goob's {C:mult}Left Hand",
		text = {
			'{C:red}Discard{} all cards to the {C:attention}left',
			'of this card when {C:attention}playing a hand',
			'No effect if on the right side of the right hand',
			' ',
			faceart('jenwalter666'),
			origin('Dandy\'s World')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 0,
	rarity = 'jen_miscellaneous',
	wee_incompatible = true,
	no_doe = true,
	no_mysterious = true,
	unlocked = true,
	discovered = true,
	immutable = true,
	unique = true,
	uncopyable = true,
	debuff_immune = true,
	unhighlightable = true,
	unchangeable = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jengoob_lefthand'
}

goob_blurbs = {
	addtohand = {
		'Free hugs!',
		'Gorsh!',
		"It's time for hugs!",
		"Come here! Hehehe!",
		"Yyyoop!",
		"Hu-hahahahaha!",
		"Hehehehehe!"
	},
	hug = {
		"Get over here! Teeheehee!",
		"Huuuuug!",
		"Never hugged cards before!",
		"Group hug!",
		"Let's cuddle!",
		"Hugs!",
		"Let me turn that frown upside down!",
		"Hugs are the best medicine to a frown!",
	},
	play = {
		"Sorry, coming through!",
		"Excuse me!",
		"Need to make space!",
		"Sorry, cards!",
		"This way, please!",
		"Swoop!",
		"This is fun!",
		"Cleaning it up!",
		"Don't worry, I'm gentle!",
		"Pardon me!",
		"I apologise!",
		"We need other cards!",
		"I'm sure Scraps will look after those cards!",
		"Don't worry Goob, it's just cards...",
		"Silly me!"
	},
	discard = {
		"How about... this?",
		"Maybe this!",
		"Nope, this one!",
		"Thiiiiis!",
		"How's this fit on you?",
		"Like makeup for paper!",
		"Even cards need to dress to impress!",
		"This is getting better and better!",
		"Hmm...! What would Scraps choose?",
		"This one!",
		"Curvy...!",
		"I like it when it looks perfect!",
		"Let's try this!",
		"This?",
		"Nope, another one...",
		"Nah, this one!",
		"Hmmm...",
		"Decisions, decisions...",
		"I did Scraps's makeup, but this is hard!",
		"Oops, maybe this one..."
	},
	hands_lost = {
		"Oof!",
		"D'aaooww!",
		"Aaagh!",
		"My hands!",
		"Owww!",
		"Aaoowww!",
		"AAAAA-hoo-hoo-hooiee!",
		"Geeeoowwwch!"
	}
}

SMODS.Joker {
	key = 'goob',
	loc_txt = {
		name = '{C:chips,s:1.21}G{C:mult,s:0.79}o{C:chips,s:1.3}o{C:mult,s:0.9}b',
		text = {
			'After drawing the {C:attention}first hand{}, this Joker',
			'{C:attention}replaces the leftmost and rightmost',
			'playing cards back into the deck and',
			'{C:attention}places his {C:chips}h{C:mult}a{C:chips}n{C:mult}d{C:chips}s{} into your hand',
			'At the {C:attention}end of round{},',
			'the cards {C:attention}inbetween this Joker\'s {C:chips}h{C:mult}a{C:chips}n{C:mult}d{C:chips}s',
			'will {C:planet}upgrade your poker hands{} based on what poker hands',
			'{C:attention}could be made{} with those cards from {C:attention}all the possible choices',
			'{s:1.5,C:red}#1#',
			lore('He\'s a goofy goober; one who shows the kids that'),
			lore('hugs are one of the best medicines for a frown!'),
			faceart('jenwalter666'),
			origin('Dandy\'s World')
		}
	},
	config = {active = false, missinghands = false},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 12,
	rarity = 'cry_epic',
	wee_incompatible = true,
	unlocked = true,
	discovered = true,
	experimental = true,
	longful = true,
	immutable = true,
	debuff_immune = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immune_to_vermillion = true,
	unique = true,
	atlas = 'jengoob',
    loc_vars = function(self, info_queue, center)
		local qty = voucherscount()
        return {vars = {center.ability.missinghands and 'Incapacitated! End a round to recover this Joker.' or ''}}
    end,
	update = function(self, card, front)
		if card.added_to_deck then
			if card.children.floating_sprite and card.children.center then
				if card.ability.missinghands then
					card.children.center:set_sprite_pos({x = 0, y = 1})
					card.children.floating_sprite:set_sprite_pos({x = 3, y = 0})
				elseif ((G.GAME or {}).blind or {}).in_blind and card.ability.active then
					card.children.center:set_sprite_pos({x = 0, y = 0})
					card.children.floating_sprite:set_sprite_pos({x = 2, y = 0})
				else
					card.children.center:set_sprite_pos({x = 0, y = 0})
					card.children.floating_sprite:set_sprite_pos({x = 1, y = 0})
				end
			end
			if card.ability and G.hand then
				local lh = jl.fc('j_jen_goob_lefthand', 'all') or {}
				local rh = jl.fc('j_jen_goob_righthand', 'all') or {}
				card.ability.active = ((G.GAME or {}).blind or {}).in_blind and G.STATE == G.STATES.SELECTING_HAND and next(lh) and next(rh) and rh:xpos() > lh:xpos()
			end
			if ((G.GAME or {}).blind or {}).in_blind and not card.ability.missinghands and not card.goob_failsafe_activate then
				if #G.hand.cards <= 2 and card.ability.active then
					card.goob_failsafe_activate = true
					if #G.deck.cards > 0 then
						draw_card(G.deck, G.hand, 100, 'up')
						Q(function() if card then card.goob_failsafe_activate = nil end return true end)
					end
				end
			end
		end
	end,
	add_to_deck = function(self, card, from_debuff)
		if not from_debuff and (#SMODS.find_card('j_jen_goob', true) <= 0 or card.ability.mysterious_created) then
			local leftie = jl.fc('j_jen_goob_lefthand', 'all')
			if leftie then leftie:destroy() end
			local rightie = jl.fc('j_jen_goob_righthand', 'all')
			if rightie then rightie:destroy() end
			local lh = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_jen_goob_lefthand', 'goob_lh')
			lh:start_materialize({G.C.CHIPS})
			lh:add_to_deck()
			G.jokers:emplace(lh)
			card.ability.left_hand = lh.sort_id
			local rh = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_jen_goob_righthand', 'goob_rh')
			rh:add_to_deck({G.C.MULT})
			card.ability.right_hand = rh.sort_id
			G.jokers:emplace(rh)
			G.jokers:change_size_absolute(2)
		end
	end,
	remove_from_deck = function(self, card, from_debuff)
		if not from_debuff and #SMODS.find_card('j_jen_goob', true) <= 1 then
			local leftie = jl.fc('j_jen_goob_lefthand', 'all')
			if leftie then leftie:destroy() end
			local rightie = jl.fc('j_jen_goob_righthand', 'all')
			if rightie then rightie:destroy() end
			if ((G.GAME or {}).blind or {}).in_blind then
				G.hand:change_size(-2)
				G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) - 2
			end
			G.jokers:change_size_absolute(-2)
		end
	end,
    calculate = function(self, card, context)
		if not context.blueprint and jl.njr(context) and not context.jen_adding_card then
			local lh = jl.fc('j_jen_goob_lefthand', 'all') or {}
			local rh = jl.fc('j_jen_goob_righthand', 'all') or {}
			local lhih = (lh.area or {}) == G.hand
			local rhih = (rh.area or {}) == G.hand
			if not (next(lh) and next(rh)) and not card.ability.missinghands then
				play_sound_q('jen_hurt' .. math.random(3))
				card:speak(goob_blurbs.hands_lost, G.C.RED)
				card.ability.missinghands = true
				if ((G.GAME or {}).blind or {}).in_blind then
					G.hand:change_size(-2)
					G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) - 2
				end
			elseif (next(lh) and next(rh)) and card.ability.missinghands then
				play_sound_q('highlight2', 1, 0.6)
				card:speak('Recovered!', G.C.GREEN)
				card.ability.missinghands = false
				if lh.area and lh.area ~= G.jokers then
					Q(function() draw_card(lh.area, G.jokers, 100, 'up', false, lh) return true end)
				end
				if rh.area and rh.area ~= G.jokers then
					Q(function() draw_card(rh.area, G.jokers, 100, 'up', false, rh) return true end)
				end
			end
			if not card.ability.missinghands then
				if context.first_hand_drawn then
					card:speak(goob_blurbs.addtohand, G.C.CRY_BLOSSOM)
					Q(function()
						if next(lh) and next(rh) then
							if G.hand.config.card_limit < #G.playing_cards and #SMODS.find_card('j_cry_effarcire') then
								local firstcard = G.hand.cards[1]
								local lastcard = G.hand.cards[#G.hand.cards]
								if firstcard then draw_card(firstcard.area, G.deck, 100, 'down', false, firstcard) end
								if lastcard then draw_card(lastcard.area, G.deck, 100, 'down', false, lastcard) end
							end
							draw_card(lh.area, G.hand, 100, 'up', false, lh)
							draw_card(rh.area, G.hand, 100, 'up', false, rh)
							G.hand:change_size(2)
							G.GAME.round_resets.temp_handsize = (G.GAME.round_resets.temp_handsize or 0) + 2
							G.jokers:change_size_absolute(-2)
							Q(function() Q(function() save_run() return true end) return true end)
						end
					return true end)
				elseif context.pre_discard and card.ability.active then
					local to_randomise = {}
					for i = 1, #G.hand.cards do
						local tar = G.hand.cards[i]
						if tar then
							if not tar.highlighted and tar ~= rh and tar:xpos() > rh:xpos() then
								table.insert(to_randomise, tar)
							end
						end
					end
					if #to_randomise > 0 then
						card:speak(goob_blurbs.discard, G.C.BLUE)
						delay(0.5)
						Q(function()
							rh:juice_up(0.5, 0.8)
							play_sound('tarot1')
						return true end)
					end
					jl.randomise(to_randomise)
				end
			end
			if not context.individual and not context.repetition and context.end_of_round then
				if next(lh) and next(rh) and lhih and rhih then
					card:speak(goob_blurbs.hug, G.C.CRY_BLOSSOM)
					local hugging = {}
					for i = 1, #G.hand.cards do
						local tar = G.hand.cards[i]
						if tar then
							if tar ~= lh and tar ~= rh and tar:xpos() > lh:xpos() and tar:xpos() < rh:xpos() then
								table.insert(hugging, tar)
							elseif tar == rh then
								break
							end
						end
					end
					local hands = evaluate_poker_hand(hugging)
					if hands then
						for k, v in pairs(hands) do
							if G.GAME.hands[k] and next(v) then
								for i = 1, #v do
									for ii = 1, #v[i] do
										if type(v[i][ii].highlight) == 'function' then
											Q(function()
												v[i][ii]:highlight(true)
												play_sound('card3')
											return true end, .9)
										end
									end
								end
								delay(0.5)
								jl.th(k)
								for i = 1, #v do
									for ii = 1, #v[i] do
										if type(v[i][ii].highlight) == 'function' then
											local lvmod = (v[i][ii]:norankorsuit() and 0.01 or ((v[i][ii].base.id or 2)/100))
											v[i][ii]:do_jen_astronomy(k, lvmod)
											Q(function() if v[i][ii] then v[i][ii]:juice_up(0.5, 0.8) end return true end)
											fastlv(v[i][ii], k, nil, lvmod)
										end
									end
								end
								delay(0.5)
								for i = 1, #v do
									for ii = 1, #v[i] do
										if type(v[i][ii].highlight) == 'function' then
											Q(function()
												v[i][ii]:highlight(false)
												play_sound('card3', 0.8)
											return true end, .9)
										end
									end
								end
							end
						end
						jl.ch()
					end
				end
				if next(lh) and (lh.area or {}) == G.hand then
					if (lh.area or {}) ~= G.jokers then draw_card(lh.area, G.jokers, 100, 'up', false, lh) end
				else
					if next(lh) then lh:remove_from_deck(); lh:destroy() end
					Q(function()
						local nlh = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_jen_goob_lefthand', 'goob_nlh')
						nlh:start_materialize({G.C.CHIPS})
						nlh:add_to_deck()
						G.jokers:emplace(nlh)
					return true end)
				end
				if next(rh) and (rh.area or {}) == G.hand then
					if (rh.area or {}) ~= G.jokers then draw_card(rh.area, G.jokers, 100, 'up', false, rh) end
				else
					if next(rh) then rh:remove_from_deck(); rh:destroy() end
					Q(function()
						local nrh = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_jen_goob_righthand', 'goob_nrh')
						nrh:start_materialize({G.C.MULT})
						nrh:add_to_deck()
						G.jokers:emplace(nrh)
					return true end)
				end
				Q(function() G.jokers:change_size_absolute(2) return true end)
			end
		end
	end
}

SMODS.Joker {
	key = 'goob_righthand',
	loc_txt = {
		name = "Goob's {C:chips}Right Hand",
		text = {
			'{C:blue}Randomise{} all cards to the {C:attention}right',
			'of this card when {C:attention}discarding',
			'No effect if on the left side of the left hand',
			faceart('jenwalter666'),
			origin('Dandy\'s World')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 0,
	rarity = 'jen_miscellaneous',
	wee_incompatible = true,
	no_doe = true,
	no_mysterious = true,
	unlocked = true,
	discovered = true,
	immutable = true,
	unique = true,
	uncopyable = true,
	debuff_immune = true,
	unhighlightable = true,
	unchangeable = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	atlas = 'jengoob_righthand'
}

local rd_blurbs = {
	razzle = {
		active = {
			"It's my turn!",
			"Oh, it's time to shine!",
			"Let's gooo!",
			"Smile!",
			"Let's get the show on the road!",
			"I'm ready!",
			"Oh, I'm so in!"
		},
		trigger = {
			"Oh, what fun!",
			"Onto the next one!",
			"Teehee!",
			"Talk about a checkmate!",
			"I'm having so much fun!",
			"More!",
			"Hahahaha!",
			"I'm the mask of comedy for a reason!"
		}
	},
	dazzle = {
		active = {
			"...",
			"Oh... it's my turn, now?",
			"... Oh dear...",
			"Oh, no...",
			"Sigh...",
			"Is now the best time...?",
			"I never asked for this..."
		},
		trigger = {
			"Oh, the misery...",
			"Why...?",
			"Please, make it stop...!",
			"There's more...?",
			"Do I have to...?",
			"Hhm...",
			"When is it over? The tragedy..."
		}
	}
}

SMODS.Joker {
	key = 'razzledazzle',
	loc_txt = {
		name = 'Razzle {C:inactive}& {C:black}Dazzle',
		text = {
			'{C:attention}Oscillates{} between {C:attention}Razzle{} or {C:attention}Dazzle{} at the {C:attention}end of shop',
			'{X:inactive}==Razzle==',
			'{X:red,C:white}x2{C:red} discards{}, {C:hearts}L{C:diamonds}i{C:hearts}g{C:diamonds}h{C:hearts}t{} suits give {X:mult,C:white}x3{} Mult',
			'{C:spectral}Comedy{} will give {X:blue,C:white}twice{} as many {C:blue}hands{} when used',
			'{C:attention}Light Chess{} cards will {C:planet}level up{} their {C:attention}related poker hand',
			'by the {C:attention}number of times that hand has been played plus one',
			'When using a {C:attention}non-{C:dark_edition}Negative {C:attention}Light Chess{} card,',
			'create {C:attention}2 {C:dark_edition}Negative{} copies of its {C:attention}Dark{} variant',
			'{X:black,C:white}==Dazzle==',
			'{X:blue,C:white}x2{C:blue} hands{}, {C:spades}D{C:clubs}a{C:spades}r{C:clubs}k{} suits give {X:chips,C:white}x3{} Chips',
			'{C:spectral}Tragedy{} will give {X:red,C:white}thrice{} as many {C:red}discards{} when used',
			'{C:attention}Dark Chess{} cards can be used {C:attention}without making their related poker hand{},',
			'leveling up {C:attention}only the related{} poker hand by {C:attention}half the listed amount',
			'When using a {C:attention}non-{C:dark_edition}Negative {C:attention}Dark Chess{} card,',
			'create {C:attention}2 {C:dark_edition}Negative{} copies of its {C:attention}Light{} variant',
			lore('Despite their contrasting personalities,'),
			lore('they can relate to one another very well!'),
			faceart('jenwalter666'),
			origin('Dandy\'s World')
		}
	},
	config = {curmode = 'none'},
	wee_incompatible = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	unlocked = true,
	discovered = true,
	immutable = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	unique = true,
	atlas = 'jenrazzledazzle',
	update = function(self, card, front)
		if card.added_to_deck and card.ability and card.ability.curmode and card.children and card.children.center and card.children.floating_sprite then
			if card.ability.curmode == 'razzle' then
				card.children.center:set_sprite_pos({x = 0, y = 1})
				card.children.floating_sprite:set_sprite_pos({x = 1, y = 1})
			elseif card.ability.curmode == 'dazzle' then
				card.children.center:set_sprite_pos({x = 0, y = 2})
				card.children.floating_sprite:set_sprite_pos({x = 1, y = 2})
			elseif card.ability.curmode ~= 'razzle' then
				card.children.center:set_sprite_pos({x = 0, y = 0})
				card.children.floating_sprite:set_sprite_pos({x = 1, y = 0})
			end
		end
	end,
    calculate = function(self, card, context)
		if not context.blueprint then
			if jl.njr(context) then
				if context.ending_shop then
					if card.ability.curmode == 'none' or card.ability.curmode == 'dazzle' then
						card.ability.curmode = 'razzle'
						card:speak(rd_blurbs.razzle.active, G.C.WHITE)
						Q(function() card:juice_up(1, 1) play_sound('jen_e_ink',1,0.7) return true end)
					elseif card.ability.curmode == 'razzle' then
						card.ability.curmode = 'dazzle'
						card:speak(rd_blurbs.dazzle.active, G.C.BLACK)
						Q(function() card:juice_up(1, 1) play_sound('negative',1,0.7) return true end)
					end
				elseif context.setting_blind then
					if card.ability.curmode == 'razzle' then
						card:speak('x2 Discards', G.C.RED)
						ease_discard(G.GAME.round_resets.discards)
					elseif card.ability.curmode == 'dazzle' then
						card:speak('x2 Hands', G.C.BLUE)
						ease_hands_played(G.GAME.round_resets.hands)
					end
				end
				if context.using_consumeable and context.consumeable then
					local key = context.consumeable:gc().key
					if card.ability.curmode == 'razzle' then
						if key == 'c_jen_comedy' then
							card:speak(rd_blurbs.razzle.trigger, G.C.WHITE)
							G.GAME.round_resets.hands = G.GAME.round_resets.hands + (context.consumeable.ability.extra.add * context.consumeable:getEvalQty())
							ease_hands_played(context.consumeable.ability.extra.add * context.consumeable:getEvalQty())
						elseif string.find(key, 'c_jen_chess') and string.sub(key, string.len(key) - 1, string.len(key)) == '_l' and not (context.consumeable.edition or {}).negative then
							card:speak(rd_blurbs.razzle.trigger, G.C.WHITE)
							local duplicate = create_card('jen_chess', G.consumeables, nil, nil, nil, nil, string.sub(key, 1, string.len(key) - 1) .. 'd', 'razzle_negative')
							duplicate:set_edition({negative = true}, true)
							duplicate:setQty(context.consumeable:getEvalQty() * 2)
							duplicate:create_stack_display()
							duplicate:set_cost()
							duplicate.no_omega = true
							duplicate:add_to_deck()
							G.consumeables:emplace(duplicate)
						end
					elseif card.ability.curmode == 'dazzle' then
						if key == 'c_jen_tragedy' then
							card:speak(rd_blurbs.dazzle.trigger, G.C.BLACK)
							G.GAME.round_resets.discards = G.GAME.round_resets.discards + (context.consumeable.ability.extra.add * 2 * context.consumeable:getEvalQty())
							ease_discard(context.consumeable.ability.extra.add * 2 * context.consumeable:getEvalQty())
						elseif string.find(key, 'c_jen_chess') and string.sub(key, string.len(key) - 1, string.len(key)) == '_d' and not (context.consumeable.edition or {}).negative then
							card:speak(rd_blurbs.dazzle.trigger, G.C.BLACK)
							local duplicate = create_card('jen_chess', G.consumeables, nil, nil, nil, nil, string.sub(key, 1, string.len(key) - 1) .. 'l', 'dazzle_negative')
							duplicate:set_edition({negative = true}, true)
							duplicate:setQty(context.consumeable:getEvalQty() * 2)
							duplicate:create_stack_display()
							duplicate:set_cost()
							duplicate.no_omega = true
							duplicate:add_to_deck()
							G.consumeables:emplace(duplicate)
						end
					end
				end
			end
			if context.individual and context.cardarea == G.play then
				if card.ability.curmode == 'razzle' and (context.other_card:is_suit('Hearts') or context.other_card:is_suit('Diamonds')) then
					return {
						x_mult = (context.other_card:is_suit('Hearts') and context.other_card:is_suit('Diamonds')) and 9 or 3,
						colour = G.C.WHITE,
						card = card
					}, true
				elseif card.ability.curmode == 'dazzle' and (context.other_card:is_suit('Clubs') or context.other_card:is_suit('Spades')) then
					return {
						x_chips = (context.other_card:is_suit('Clubs') and context.other_card:is_suit('Spades')) and 9 or 3,
						colour = G.C.BLACK,
						card = card
					}, true
				end
			end
		end
	end
}

function manage_level_colour(level, force)
	local new_colour = G.C.WHITE
	level = type(level) == "number" and level or level:to_number()
	if not G.C.HAND_LEVELS[level] or force then 
		if level >= 1e80 then
			new_colour = G.C.jen_RGB
		elseif level >= 1e60 then
			new_colour = G.C.CRY_ASCENDANT
		elseif level >= 1e50 then
			new_colour = G.C.CRY_TWILIGHT
		elseif level >= 1e40 then
			new_colour = G.C.CRY_EMBER
		elseif level >= 1e30 then
			new_colour = G.C.CRY_BLOSSOM
		elseif level >= 1e20 then
			new_colour = G.C.CRY_EXOTIC
		elseif level >= 1e10 then
			new_colour = G.C.EDITION
		elseif level > 7200 then
			new_colour = G.C.DARK_EDITION
		elseif level >= 1 then
			-- I tweaked some of the values here so all levels are clearer.
			-- Feel free to change the formulas around, this was just done to make the low levels not look white.
			local r, g, b = hsv(0.05 * level, 0.25 * math.ceil(level / 1800), 1)
			local r2, g2, b2 = hsv(0.05 * level, 0.25 * math.ceil(level / 1800), 0.05 * math.ceil(level / 360))
			new_colour = {r, b, g, 1}
			if not G.C.HAND_LEVELS['!' .. level] then G.C.HAND_LEVELS['!' .. level] = {r2, b2, g2, 1} end
		end
		G.C.HAND_LEVELS[level] = new_colour
	end
end

local a13_sum = {}

local lusr = level_up_suit

function level_up_suit(card, suit, instant, amount, dontautoclear)
    amount = amount or 1
	if not instant then
		update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(suit, 'suits_plural'),chips = G.GAME.suits[suit].chips, mult = G.GAME.suits[suit].mult, level=G.GAME.suits[suit].level})
	end
	if lusr then lusr(card, suit, instant, amount) end
    G.GAME.suits[suit].level = math.max(G.GAME.suits[suit].level + amount, 0)
    G.GAME.suits[suit].chips = math.max(G.GAME.suits[suit].chips + (G.GAME.suits[suit].l_chips * amount), 0)
    G.GAME.suits[suit].mult = math.max(G.GAME.suits[suit].mult + (G.GAME.suits[suit].l_mult * amount), 0)
	manage_level_colour(G.GAME.suits[suit].level)
	if to_big(amount) > to_big(0) then
		add_malice(15 * amount)
	end
    if not instant then
		if (G.SETTINGS.FASTFORWARD or 0) > 0 then
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
				G.TAROT_INTERRUPT_PULSE = true
				return true end }))
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.9, delay = 0}, {chips = G.GAME.suits[suit].chips, mult = G.GAME.suits[suit].mult, level=G.GAME.suits[suit].level, StatusText = true})
		else
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
				G.TAROT_INTERRUPT_PULSE = true
				return true end }))
			update_hand_text({delay = 0}, {mult = G.GAME.suits[suit].mult, StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
				return true end }))
			update_hand_text({delay = 0}, {chips = G.GAME.suits[suit].chips, StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
				G.TAROT_INTERRUPT_PULSE = nil
				return true end }))
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.9, delay = 0}, {level=G.GAME.suits[suit].level})
		end
        delay(1.3)
		if not dontautoclear then jl.ch() end
    end
end

local lurr = level_up_rank

function level_up_rank(card, rank, instant, amount, dontautoclear)
    amount = amount or 1
	if not instant then
		update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=rank .. 's',chips = G.GAME.ranks[rank].chips, mult = G.GAME.ranks[rank].mult, level=G.GAME.ranks[rank].level})
	end
	if lurr then lurr(card, rank, instant, amount) end
    G.GAME.ranks[rank].level = math.max(G.GAME.ranks[rank].level + amount, 0)
    G.GAME.ranks[rank].chips = math.max(G.GAME.ranks[rank].chips + (G.GAME.ranks[rank].l_chips * amount), 0)
    G.GAME.ranks[rank].mult = math.max(G.GAME.ranks[rank].mult + (G.GAME.ranks[rank].l_mult * amount), 0)
	manage_level_colour(G.GAME.ranks[rank].level)
	if to_big(amount) > to_big(0) then
		add_malice(15 * amount)
	end
    if not instant then
		if (G.SETTINGS.FASTFORWARD or 0) > 0 then
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
				G.TAROT_INTERRUPT_PULSE = true
				return true end }))
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.9, delay = 0}, {chips = G.GAME.ranks[rank].chips, mult = G.GAME.ranks[rank].mult, level=G.GAME.ranks[rank].level, StatusText = true})
		else
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
				G.TAROT_INTERRUPT_PULSE = true
				return true end }))
			update_hand_text({delay = 0}, {mult = G.GAME.ranks[rank].mult, StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
				return true end }))
			update_hand_text({delay = 0}, {chips = G.GAME.ranks[rank].chips, StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
				G.TAROT_INTERRUPT_PULSE = nil
				return true end }))
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.9, delay = 0}, {level=G.GAME.ranks[rank].level})
		end
        delay(1.3)
		if not dontautoclear then jl.ch() end
    end
end

local luhr = level_up_hand
function level_up_hand(card, hand, instant, amount, no_astronomy, no_astronomy_omega, no_jokers)
	amount = math.min(amount or 1, 1e100) --until we port to newcalc, this will be capped to a googol
	if not no_astronomy and to_big(amount) > to_big(0) then
			if Jen.hv('astronomy', 9) then
				amount = amount * 5
			elseif Jen.hv('astronomy', 8) then
				amount = amount * 2
			end
		end
	if to_big(amount) > to_big(0) then
		if #SMODS.find_card('j_jen_guilduryn') > 0 and hand ~= jl.favhand() then
			for k, v in ipairs(G.jokers.cards) do
				if (G.SETTINGS.STATUSTEXT or 0) < 1 and v.gc and v:gc().key == 'j_jen_guilduryn' then
					card_eval_status_text(v, 'extra', nil, nil, nil, {message = 'Redirected!', colour = G.C.MONEY})
					break
				end
			end
			hand = jl.favhand()
			if not instant then
				jl.th(hand)
			end
		end
	end
	luhr(card, hand, instant, amount)
	if to_big(amount) > to_big(0) then
		add_malice(25 * amount)
	end
		if G.GAME.hands[hand].level > to_big(1e100) then --until we port to newcalc (which the new talisman is at), this failsafe will remain here.
			G.GAME.hands[hand].level = to_big(1e100)
			if not instant then
				update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {level=1e100})
				delay(0.3)
			end
		end
	manage_level_colour(G.GAME.hands[hand].level)
	if not no_jokers then
		jl.jokers({jen_lving = true, lvs = amount, lv_hand = hand, lv_instant = instant, card = card})
	end
	if to_big(amount) < to_big(0) and Jen.hv('astronomy', 11) and not no_astronomy then
	        local refund = math.abs(amount) / 4
	        local fav = jl.favhand()
	        if Jen.config.verbose_astronomicon then jl.th(fav) end
	        fastlv(card, fav, not Jen.config.verbose_astronomicon, refund, true)
	    end
	    if to_big(amount) > to_big(0) and Jen.hv('astronomy', 12) and not no_astronomy then
	        local dividend = amount / 10
	        local fav = jl.favhand()
	        if Jen.config.verbose_astronomicon then jl.th(fav) end
	        fastlv(card, fav, not Jen.config.verbose_astronomicon, dividend, true)
	    end
		if Jen.hv('astronomy', 13) and to_big(amount) >= to_big(1) and not no_astronomy_omega then
			local pos = jl.handpos(hand)
			--local edi = ((card or {}).edition or {}).key or 'e_base'
			--if edi == 'e_negative' then edi = 'e_base' end
			--if not a13_sum[edi] then a13_sum[edi] = {} end
			if G.handlist[pos + 1] then
				--if not astronomyomega_cumulative[G.handlist[pos + 1]] then astronomyomega_cumulative[G.handlist[pos + 1]] = 0 end
				if Jen.config.verbose_astronomicon_omega then jl.th(G.handlist[pos + 1]) end
				fastlv(card, G.handlist[pos + 1], not Jen.config.verbose_astronomicon_omega, amount / 2, true)
			end
		end
	--[[if card then
		if card.base then
			if card.base.value and G.GAME.ranks[card.base.value] and card.base.suit and G.GAME.suits[card.base.suit] then
				level_up_rank(card, card.base.value, instant, amount, true, true)
				level_up_suit(card, card.base.suit, instant, amount, true)
			end
		end
	end]]
end

local astro_blurbs = {
	'*Yawn*...',
	'Good night...',
	'Sweet dreams...',
	"If only it wasn't so noisy around here...",
	'My nap will have to wait...',
	'Nap time...',
	'Nap time... I think?',
	'So tired...',
	'Bed time.'
}

SMODS.Joker {
	key = 'astro',
	loc_txt = {
		name = '{C:cry_twilight}Astro',
		text = {
			'{C:planet}Hand level-ups{} have an {C:green}initial #1#% chance{} to {C:attention}repeat',
			'Repetitions {C:attention}continue until the chance fails',
			'Repetition chance decreases by {C:red}' .. Jen.config.astro.decrement * 100 .. '%{} per success,',
			'{C:attention}resets to initial chance{} after failure',
			'Using {C:attention}non-{C:dark_edition}Negative {C:planet}Neutron Stars{}, {C:red}visibly leveling down hands',
			'or {C:attention}applying editions to hands with {C:planet}Planets{} increases the {C:green}initial chance{} by {C:attention}+' .. Jen.config.astro.increment * 100 .. '%{}, up to a {C:attention}maximum of 100%',
			'If {C:green}initial chance{} is {C:attention}100%{}, the decrease on repetition chance is {C:attention}reduced to ' .. Jen.config.astro.decrement * 50 .. '%',
			'{C:inactive,s:0.8}(Chance upgrades and repetition processes are retriggerable)',
			'{C:inactive,s:0.8}(Chance decrease is ' .. Jen.config.astro.retrigger_mod .. 'x stronger during retriggers)',
			'{C:inactive,s:0.8}(Unaffected by probability alterations, ex. Oops! All 6s)',
			' ',
			"{C:inactive,s:0.9,E:1}*Dandy's closest friend! ...Right?*",
			faceart('jenwalter666'),
			origin('Dandy\'s World')
		}
	},
	config = {neutrons = 0, maxed = false},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 50,
	rarity = 'cry_exotic',
	dangerous = true,
	unlocked = true,
	discovered = true,
	immutable = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	unique = true,
	wee_incompatible = true,
	atlas = 'jenastro',
	loc_vars = function(self, info_queue, center)
		return {vars = {center.ability.maxed and 100 or ((Jen.config.astro.initial + (Jen.config.astro.increment * center.ability.neutrons)) * 100)}}
	end,
    calculate = function(self, card, context)
		if not context.blueprint_card and not context.destroying_card and not context.cry_ease_dollars and not context.post_trigger then
			if context.jen_lving and context.card then
				if not card.ability.maxed and context.lvs < 0 and not context.lv_instant then
					if (G.SETTINGS.STATUSTEXT or 0) < 1 then  card:speak(localize('k_upgrade_ex'), G.C.CRY_ASCENDANT) end
					card.ability.neutrons = card.ability.neutrons - context.lvs
					if (Jen.config.astro.initial + (Jen.config.astro.increment * card.ability.neutrons)) >= 1 then
						card.ability.maxed = true
						card_status_text(card, 'Maxed out!', nil, 0.05*card.T.h, G.C.EDITION, 0.6, 0.6, 2, 2, 'bm', 'jen_enlightened')
					end
					return nil, true
				elseif not context.card.astro_in_effect then
					context.card.astro_in_effect = true
					local odds = math.min(1, card.ability.maxed and 1 or (Jen.config.astro.initial + (Jen.config.astro.increment * card.ability.neutrons)))
					if context.lvs and to_big(context.lvs) > to_big(0) then
						local times = 0
						local firstpass = false
						if (G.SETTINGS.STATUSTEXT or 0) < 1 then 
							if jl.njr(context) then 
								card:speak(astro_blurbs, G.C.CRY_TWILIGHT)
							else
								card:speak(localize('k_again_ex'))
							end
						end
						while true do
							if odds >= 1 or (odds > 0 and jl.chance('astro_rng', 1/odds, true)) then
								times = times + 1
								odds = odds - ((Jen.config.astro.decrement / (card.ability.maxed and 2 or 1) * (context.retrigger_joker and Jen.config.astro.retrigger_mod or 1)))
							else
								if times > 0 then
									if context.card and context.card.speak and (G.SETTINGS.STATUSTEXT or 0) < 1 then context.card:speak('x' .. times, G.C.CRY_TWILIGHT) else card:speak('x' .. times, G.C.CRY_TWILIGHT) end
									level_up_hand(context.card, context.lv_hand, context.lv_instant, context.lvs * times, true, true, true)
									add_malice(5 * context.lvs * times)
								else
									if context.card and context.card.speak and (G.SETTINGS.STATUSTEXT or 0) < 1 then context.card:speak(localize('k_nope_ex'), G.C.FILTER) else card:speak(localize('k_nope_ex'), G.C.FILTER) end
								end
								break
							end
						end
					end
					if not card.ability.maxed and context.card and context.card.gc and context.card:gc().set == 'Planet' and (context.card:gc().key == 'c_cry_nstar' or next((context.card.edition or {}))) and not (context.card.edition or {}).negative then
						if (G.SETTINGS.STATUSTEXT or 0) < 1 then card:speak(localize('k_upgrade_ex'), G.C.CRY_ASCENDANT) end
						card.ability.neutrons = card.ability.neutrons + context.card:getEvalQty()
						if (Jen.config.astro.initial + (Jen.config.astro.increment * card.ability.neutrons)) >= 1 then
							card.ability.maxed = true
							card_status_text(card, 'Maxed out!', nil, 0.05*card.T.h, G.C.EDITION, 0.6, 0.6, 2, 2, 'bm', 'jen_enlightened')
						end
					end
					context.card.astro_in_effect = nil
					return nil, true
				end
			end
		end
	end
}

	SMODS.Joker {
		key = 'godsmarble',
		loc_txt = {
			name = 'Godsmarble',
			text = {
				'{C:dark_edition,s:2.5,E:1}???',
				' ',
				lore('An otherworldly artefact in CRAFTWORLD that exerts'),
				lore('incomprehensible levels of unbearable pain'),
				lore('to everything within a one kilometre radius'),
				lore('around itself, though it seems to be tame'),
				lore('towards a very few selection of beings,'),
				lore('like Kosmos or Jen Walter.'),
				faceart('jenwalter666'),
				origin('CRAFTWORLD')
			}
		},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0 },
		fusable = true,
		cost = 3,
		rarity = 3,
		cant_scare = true,
		unlocked = true,
		discovered = true,
		unique = true,
		debuff_immune = true,
		blueprint_compat = false,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		wee_incompatible = true,
		atlas = 'jengodsmarble',
		add_to_deck = function(self, card, from_debuff)
			if not from_debuff then
				ease_ante(1, true, true)
			end
		end,
		remove_from_deck = function(self, card, from_debuff)
			if not from_debuff then
				ease_ante(-1, true, true)
			end
		end
	}

SMODS.Consumable {
	key = 'fuse',
	loc_txt = {
		name = 'Fusion',
		text = {
			'{C:attention}Combines{} selected Jokers/Consumables',
			'if they make up a {C:attention}valid recipe',
			'{C:inactive}(This card only appears if you have at least 1 fusable)',
			'{C:inactive}(Some recipes may require more than 2 ingredients. Experiment!)',
			'{V:1,s:1.25}#1#'
		}
	},
	config = {},
	no_perkeo = true,
	set = 'jen_ability',
	permaeternal = true,
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 0,
	unlocked = true,
	discovered = true,
	hidden = true,
	hidden2 = true,
	no_doe = true,
	soul_rate = 0,
	atlas = 'jenfuse',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.fusion_details or 'Waiting for input', colours = {center.fusion_colour or G.C.UI.TEXT_INACTIVE}}}
    end,
	can_use = function(self, card)
		card.fusion_ready = nil
		card.target_fusion = nil
		card.fusion_colour = G.C.UI.TEXT_INACTIVE
		card.fusion_details = 'Waiting for input'
		card.input_cards = {}
		if #G.jokers.highlighted + math.max(0, #G.consumeables.highlighted - 1) > 0 then
			if #G.jokers.highlighted > 0 then
				for k, v in ipairs(G.jokers.highlighted) do
					table.insert(card.input_cards, v)
				end
			end
			if #G.consumeables.highlighted > 1 then
				for k, v in ipairs(G.consumeables.highlighted) do
					if v ~= card then
						table.insert(card.input_cards, v)
					end
				end
			end
		end
		local fusion = Jen.find_matching_recipe(card.input_cards)
		if fusion then
		            local can_afford = to_big(Jen.fusions[fusion].cost or 0) <= to_big(G.GAME.dollars)
		            if can_afford and not card.already_notified then
		                play_sound('jen_done')
		                card:juice_up(0.5, 0.5)
		                card.already_notified = true
		            elseif not can_afford then
		                card.already_notified = false
		            end
		            card.fusion_ready = can_afford
		            card.target_fusion = fusion
		            card.fusion_details = fusion .. ' : $' .. number_format(Jen.fusions[fusion].cost or 0)
		        elseif #G.jokers.highlighted + math.max(0, #G.consumeables.highlighted - 1) > 0 then
		            card.fusion_details = 'No recipe matches selected cards'
		            card.already_notified = false
		        end
		return ((card.edition or {}).negative or card.fusion_ready) and abletouseabilities()
	end,
	keep_on_use = function(self, card)
		return not (card.edition or {}).negative
	end,
	use = function(self, card, area, copier)
		if card.fusion_ready and card.target_fusion and Jen.has_ingredients(card.target_fusion) then
			fuse_cards(Jen.get_cards_for_recipe(card.target_fusion), Jen.fusions[card.target_fusion].output, (G.SETTINGS.FASTFORWARD or 0) > 1)
			ease_dollars(-Jen.fusions[card.target_fusion].cost)
		else
			card.fusion_ready = false
			card.target_fusion = nil
		end
		if (card.edition or {}).negative then
			ease_dollars(3)
		end
	end
}

	SMODS.Joker {
		key = 'pawn',
		loc_txt = {
			name = '{C:green}The Pawn of Pandemonium',
			text = {
				'{C:clubs}Clubs{} give',
				jl.tetmult('#1#') .. ' Mult when scored',
				' ',
				lore('See no evil.'),
				faceart('raidoesthings')
			}
		},
		config = {
			tet = 1.5
		},
		fusable = true,
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		no_doe = true,
		cost = 125,
		rarity = 'jen_ritualistic',
		unlocked = true,
		discovered = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenpawn',
		loc_vars = function(self, info_queue, center)
			return {vars = {
				center.ability.tet
			}}
		end,
		calculate = function(self, card, context)
			if context.individual and context.cardarea == G.play then
				if context.other_card:is_suit('Clubs') then
					return {
						ee_mult = card.ability.tet,
						colour = G.C.jen_RGB,
						card = card
					}, true
				end
			end
		end
	}

	SMODS.Joker {
		key = 'knight',
		loc_txt = {
			name = '{C:money}The Knight of Starvation',
			text = {
				'{C:diamonds}Diamonds{} give',
				jl.tetmult('#1#') .. ' Mult when scored',
				' ',
				lore('Speak no evil.'),
				faceart('raidoesthings')
			}
		},
		config = {
			tet = 1.5
		},
		fusable = true,
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		no_doe = true,
		cost = 125,
		rarity = 'jen_ritualistic',
		unlocked = true,
		discovered = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenknight',
		loc_vars = function(self, info_queue, center)
			return {vars = {
				center.ability.tet
			}}
		end,
		calculate = function(self, card, context)
			if context.individual and context.cardarea == G.play then
				if context.other_card:is_suit('Diamonds') then
					return {
						ee_mult = card.ability.tet,
						colour = G.C.jen_RGB,
						card = card
					}, true
				end
			end
		end
	}

	SMODS.Joker {
		key = 'jester',
		loc_txt = {
			name = '{C:blue}The Jester of Epidemics',
			text = {
				'{C:spades}Spades{} give',
				jl.tetmult('#1#') .. ' Mult when scored',
				' ',
				lore('Hear no evil.'),
				faceart('raidoesthings')
			}
		},
		config = {
			tet = 1.5
		},
		fusable = true,
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		no_doe = true,
		cost = 125,
		rarity = 'jen_ritualistic',
		unlocked = true,
		discovered = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenjester',
		loc_vars = function(self, info_queue, center)
			return {vars = {
				center.ability.tet
			}}
		end,
		calculate = function(self, card, context)
			if context.individual and context.cardarea == G.play then
				if context.other_card:is_suit('Spades') then
					return {
						ee_mult = card.ability.tet,
						colour = G.C.jen_RGB,
						card = card
					}, true
				end
			end
		end
	}

	SMODS.Joker {
		key = 'arachnid',
		loc_txt = {
			name = '{C:tarot}The Arachnid of War',
			text = {
				'{C:hearts}Hearts{} give',
				jl.tetmult('#1#') .. ' Mult when scored',
				' ',
				lore('Think no evil.'),
				faceart('raidoesthings')
			}
		},
		config = {
			tet = 1.5
		},
		fusable = true,
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		no_doe = true,
		cost = 125,
		rarity = 'jen_ritualistic',
		unlocked = true,
		discovered = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenarachnid',
		loc_vars = function(self, info_queue, center)
			return {vars = {
				center.ability.tet
			}}
		end,
		calculate = function(self, card, context)
			if context.individual and context.cardarea == G.play then
				if context.other_card:is_suit('Hearts') then
					return {
						ee_mult = card.ability.tet,
						colour = G.C.jen_RGB,
						card = card
					}, true
				end
			end
		end
	}

	SMODS.Joker {
		key = 'reign',
		loc_txt = {
			name = '{C:dark_edition}The Reign of Regicide',
			text = {
				'All {C:attention}Jokers{} to the {C:green}left',
				'of this {C:attention}Joker{} become {C:purple}Eternal',
				'All {C:attention}Jokers{} to the {C:green}right',
				'of this {C:attention}Joker{} {C:red}lose{} {C:purple}Eternal',
				'Removes {C:blue}Perishable{}, {C:attention}Pinned{},',
				'{C:money}Rental{} and {C:red}Debuffs{} from all {C:attention}Jokers',
				'{C:dark_edition}+1e100{} Joker slots, {C:attention}retrigger{} all Jokers {C:attention}#1#{} times',
				'{C:inactive}(Stickers update whenever jokers are calculated)',
				' ',
				'{C:inactive,s:1.25,E:1}Rule no evil.',
				faceart('raidoesthings')
			}
		},
		config = {
			extra = {
				special = 3
			}
		},
		fusable = true,
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		no_doe = true,
		cost = 125,
		rarity = 'jen_ritualistic',
		unlocked = true,
		discovered = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenreign',
		loc_vars = function(self, info_queue, center)
			return {vars = {
				center.ability.extra.special
			}}
		end,
		calculate = function(self, card, context)
			if not context.blueprint and card.added_to_deck and not context.retrigger_joker_check and not context.retrigger_joker and G.jokers and G.jokers.cards then
				for i=1, #G.jokers.cards do
					local other_card = G.jokers.cards[i]
					if other_card and other_card ~= card then
						if card.T.x + card.T.w/2 > other_card.T.x + other_card.T.w/2 then
							other_card:set_eternal(true)
						else
							other_card:set_eternal(nil)
						end
						if other_card.ability then
							other_card.ability.perishable = nil
						end
						other_card.debuff = nil
						other_card:set_rental(nil)
						other_card.pinned = nil
					end
				end
			end
			if context.retrigger_joker_check and not context.retrigger_joker then
				if context.other_card ~= card and context.other_card:gc().key ~= 'j_jen_kosmos' then
					return {
						message = localize('k_again_ex'),
						repetitions = card.ability.extra.special,
						card = card
					}
				end				
			end
		end,
		add_to_deck = function(self, card, from_debuff)
			G.jokers.config.card_limit_before_reign = G.jokers.config.card_limit
			G.jokers.config.card_limit = 1e100
		end,
		remove_from_deck = function(self, card, from_debuff)
			G.jokers.config.card_limit = (G.jokers.config.card_limit_before_reign or 5)
		end
	}

	SMODS.Joker {
		key = 'feline',
		loc_txt = {
			name = '{C:blood}The Feline of Quietus',
			text = {
				'{C:attention}Face cards{} give',
				jl.tetmult('#1#') .. ' Mult when scored',
				' ',
				lore('Do no evil.'),
				faceart('raidoesthings')
			}
		},
		config = {
			tet = 1.5
		},
		fusable = true,
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		no_doe = true,
		cost = 125,
		rarity = 'jen_ritualistic',
		unlocked = true,
		discovered = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenfeline',
		loc_vars = function(self, info_queue, center)
			return {vars = {
				center.ability.tet
			}}
		end,
		calculate = function(self, card, context)
			if context.individual and context.cardarea == G.play then
				if context.other_card:is_face() then
					return {
						ee_mult = card.ability.tet,
						colour = G.C.jen_RGB,
						card = card
					}, true
				end
			end
		end
	}

	SMODS.Joker {
		key = 'fateeater',
		loc_txt = {
			name = 'The Fateeater of Grim Nights',
			text = {
				'{C:tarot}Tarot{} cards permanently add',
				'either {X:blue,C:white}x#1#{} or {C:blue}+#2# Chips',
				'to all {C:attention}playing cards{} when used',
				'{C:inactive}(Uses whichever one that gives the better upgrade)',
				'When any card reaches {C:attention}1e100 chips or more{},',
				'{C:red}reset it to zero{}, {C:planet}level up all hands #3# time(s)',
				'and create a {C:dark_edition}Negative {C:spectral}Soul',
				'Grants an {C:green}ability{} which {C:red}devours {C:tarot}Tarot{} cards',
				'to {C:attention}provide a random amount of',
				'{C:planet}levels{}, {C:chips}+Chips{}, {C:mult}+Mult{},',
				'{X:chips,C:white}xChips{}, {X:mult,C:white}xMult{},',
				'{X:dark_edition,C:chips}^Chips{} and {X:dark_edition,C:red}^Mult',
				'to {C:attention}every poker hand, scaling with {C:attention}Ante',
				' ',
				'{C:inactive,s:1.25,E:1}Foretell no evil.',
				faceart('raidoesthings')
			}
		},
		config = {extra = {chips_additive = 100, chips_mult = 2, levelup = 10}},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		no_doe = true,
		cost = 125,
		rarity = 'jen_ritualistic',
		unlocked = true,
		discovered = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenfateeater',
		abilitycard = 'c_jen_fateeater_c',
		loc_vars = function(self, info_queue, center)
			return {vars = {center.ability.extra.chips_mult, center.ability.extra.chips_additive, center.ability.extra.levelup}}
		end,
		calculate = function(self, card, context)
			if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Tarot' and (#G.hand.cards > 0 or #G.deck.cards > 0) then
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = '...', colour = G.C.MULT})
				local e100cards = {}
				if #G.hand.cards > 0 then
					for k, v in pairs(G.hand.cards) do
						if not v.ability.perma_bonus then v.ability.perma_bonus = 0 end
						local res1 = 0
						local res2 = 0
						for i = 1, context.consumeable:getEvalQty() do
							res1 = v.ability.perma_bonus * card.ability.extra.chips_mult
							res2 = v.ability.perma_bonus + card.ability.extra.chips_additive
							v.ability.perma_bonus = math.max(res1, res2)
						end
						card_eval_status_text(v, 'extra', nil, nil, nil, {message = '+' .. v.ability.perma_bonus, colour = G.C.CHIPS})
						if v.ability.perma_bonus >= 1e100 then table.insert(e100cards, v) end
					end
				end
				if #G.deck.cards > 0 then
					for k, v in pairs(G.deck.cards) do
						if not v.ability.perma_bonus then v.ability.perma_bonus = 0 end
						local res1 = v.ability.perma_bonus * card.ability.extra.chips_mult
						local res2 = v.ability.perma_bonus + card.ability.extra.chips_additive
						v.ability.perma_bonus = math.max(res1, res2)
						if v.ability.perma_bonus >= 1e100 then table.insert(e100cards, v) end
					end
				end
				local ecs = #e100cards
				if ecs > 0 then
					card_status_text(card, '!!!', nil, 0.05*card.T.h, G.C.DARK_EDITION, 0.6, 0.6, 2, 2, 'bm', 'jen_enlightened')
					jl.th('all')
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
						play_sound('tarot1')
						card:juice_up(0.8, 0.5)
						G.TAROT_INTERRUPT_PULSE = true
					return true end }))
					update_hand_text({sound = 'button', volume = 0.7, pitch = 0.9, delay = 0}, {chips = '+', mult = '+', StatusText = true, level='+' .. number_format(card.ability.extra.levelup * ecs)})
					delay(1.3)
					for k, v in pairs(G.GAME.hands) do
						fastlv(v, k, true, card.ability.extra.levelup * ecs)
					end
					jl.ch()
					for k, v in pairs(e100cards) do
						v.ability.perma_bonus = 0
					end
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
						local soul = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_soul', nil)
						soul.no_forced_edition = true
						soul:set_edition({negative = true})
						soul.no_forced_edition = nil
						soul:setQty(ecs)
						if ecs > 1 then soul:create_stack_display() end
						soul:set_cost()
						soul:add_to_deck()
						G.consumeables:emplace(soul)
					return true end }))
				end
				return nil, true
			end
		end
	}
	
	SMODS.Consumable {
		key = 'fateeater_c',
		loc_txt = {
			name = 'Fateful Cuisine',
			text = {
				'{C:red}Devours {C:tarot}Tarot{} cards',
				'to {C:attention}provide a random amount of',
				'{C:planet}levels{}, {C:chips}+Chips{}, {C:mult}+Mult{},',
				'{X:chips,C:white}xChips{}, {X:mult,C:white}xMult{},',
				'{X:dark_edition,C:chips}^Chips{} and {X:dark_edition,C:red}^Mult',
				'to {C:attention}every poker hand, scaling with {C:attention}Ante',
				'{X:dark_edition,C:white}Negative{} {X:dark_edition,C:white}Ability:{} Levels up all poker hands once',
			}
		},
		config = {},
		set = 'jen_ability',
		permaeternal = true,
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		cost = 15,
		dangerous = true,
		unlocked = true,
		discovered = true,
		hidden = true,
		hidden2 = true,
		no_doe = true,
		soul_rate = 0,
		atlas = 'jenfateeater_c',
		can_use = function(self, card)
			return abletouseabilities()
		end,
		keep_on_use = function(self, card)
			return #SMODS.find_card('j_jen_fateeater') > 0 and not (card.edition or {}).negative
		end,
		use = function(self, card, area, copier)
			if (card.edition or {}).negative then
				lvupallhands(1, card)
			end
			local targets = {}
			for k, v in pairs(G.consumeables.cards) do
				if v.ability.set == 'Tarot' and not v.alrm then
					v.alrm = true
					table.insert(targets, v)
				end
			end
			if #targets > 0 then
				local intensity = 0
				for k, v in pairs(targets) do
					intensity = intensity + 1 + (v:getQty()/2) - 0.5
					G.consumeables:remove_card(v)
					G.play:emplace(v)
				end
				for _, hand in ipairs(G.handlist) do
					local fastforward = false
					jl.th(hand)
					for k, v in pairs(targets) do
						local qty = v:getQty()
						fastforward = intensity > 5
						local ante = math.min(math.max(1, G.GAME.round_resets.ante), 1e9)
						local levels = pseudorandom(pseudoseed('fateeater_levels'), ante, ante * 5)
						local addchips = pseudorandom(pseudoseed('fateeater_chips'), 25 * ante, 50 * ante)
						local addmult = pseudorandom(pseudoseed('fateeater_mult'), 4 * ante, 30 * ante)
						local xchips = pseudorandom(pseudoseed('fateeater_xchips'), 20 * (ante/2), 50 * ante) / 10
						local xmult = pseudorandom(pseudoseed('fateeater_xmult'), 20 * (ante/2), 50 * ante) / 10
						local echips = pseudorandom(pseudoseed('fateeater_echips'))/3 + 1 + (ante / 50)
						local emult = pseudorandom(pseudoseed('fateeater_emult'))/3 + 1 + (ante / 50)
						if fastforward then
							for i = 1, qty do
								G.GAME.hands[hand].chips = ((G.GAME.hands[hand].chips + addchips) * xchips) ^ echips
								G.GAME.hands[hand].mult = ((G.GAME.hands[hand].mult + addmult) * xmult) ^ emult
							end
						else
							for i = 1, qty do
								fastlv(v, hand, nil, levels)
								G.GAME.hands[hand].chips = ((G.GAME.hands[hand].chips + addchips) * xchips) ^ echips
								G.GAME.hands[hand].mult = ((G.GAME.hands[hand].mult + addmult) * xmult) ^ emult
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('chips1')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {chips = '+' .. tostring(addchips), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('talisman_xchip')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {chips = 'x' .. tostring(xchips), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('talisman_echip')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {chips = '^' .. tostring(jl.round(echips, 3)), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('multhit1')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {mult = '+' .. tostring(addmult), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('multhit2')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {mult = 'x' .. tostring(xmult), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('talisman_emult', 1)
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {mult = '^' .. tostring(jl.round(emult, 3)), StatusText = true})
							end
						end
					end
					if fastforward then
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
							play_sound('button')
						return true end }))
						update_hand_text({delay = 1.3}, {chips = '+++', mult = '+++', level = '+++', StatusText = true})
					end
					update_hand_text({sound = 'button', volume = 0.5, pitch = 1.1, delay = 3}, {handname=localize(hand, 'poker_hands'),chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult, level=G.GAME.hands[hand].level})
				end
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.5, func = function()
					for k, v in pairs(targets) do
						v:remove()
					end
					return true
				end}))
			else
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = 'Nothing to devour!', colour = G.C.MULT})
			end
			jl.ch()
		end
	}

	SMODS.Joker {
		key = 'foundry',
		loc_txt = {
			name = 'The Foundry of Armaments',
			text = {
				'Non-{C:dark_edition}editioned{} cards are',
				'{C:attention}given a random {C:dark_edition}Edition',
				'{C:inactive,s:0.8}(Some editions are excluded from the pool)',
				'{C:inactive,s:0.8}(UNO cards excluded)',
				'Grants an {C:green}ability{} which {C:red}smelts {C:spectral}Spectral{} cards',
				'to {C:attention}provide a random amount of',
				'{C:planet}levels{}, {C:chips}+Chips{}, {C:mult}+Mult{},',
				'{X:chips,C:white}xChips{}, {X:mult,C:white}xMult{},',
				'{X:dark_edition,C:chips}^Chips{} and {X:dark_edition,C:red}^Mult',
				'to {C:attention}every poker hand, scaling with {C:attention}Ante',
				' ',
				'{C:inactive,s:1.25,E:1}Forge no evil.',
				faceart('raidoesthings')
			}
		},
		config = {},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		no_doe = true,
		cost = 125,
		rarity = 'jen_ritualistic',
		unlocked = true,
		discovered = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenfoundry',
		abilitycard = 'c_jen_foundry_c'
	}
	
	SMODS.Consumable {
		key = 'foundry_c',
		loc_txt = {
			name = 'Paranormal Deliquesce',
			text = {
				'{C:red}Smelts {C:spectral}Spectral{} cards',
				'to {C:attention}provide a random amount of',
				'{C:planet}levels{}, {C:chips}+Chips{}, {C:mult}+Mult{},',
				'{X:chips,C:white}xChips{}, {X:mult,C:white}xMult{},',
				'{X:dark_edition,C:chips}^Chips{} and {X:dark_edition,C:red}^Mult',
				'to {C:attention}every poker hand, scaling with {C:attention}Ante',
				'{X:dark_edition,C:white}Negative{} {X:dark_edition,C:white}Ability:{} Levels up all poker hands once',
			}
		},
		config = {},
		set = 'jen_ability',
		permaeternal = true,
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		cost = 15,
		dangerous = true,
		unlocked = true,
		discovered = true,
		hidden = true,
		hidden2 = true,
		no_doe = true,
		soul_rate = 0,
		atlas = 'jenfoundry_c',
		can_use = function(self, card)
			return abletouseabilities()
		end,
		keep_on_use = function(self, card)
			return #SMODS.find_card('j_jen_foundry') > 0 and not (card.edition or {}).negative
		end,
		use = function(self, card, area, copier)
			if (card.edition or {}).negative then
				lvupallhands(1, card)
			end
			local targets = {}
			for k, v in pairs(G.consumeables.cards) do
				if v.ability.set == 'Spectral' and not v.alrm then
					v.alrm = true
					table.insert(targets, v)
				end
			end
			if #targets > 0 then
				local intensity = 0
				for k, v in pairs(targets) do
					intensity = intensity + 1 + (v:getQty()/2) - 0.5
					G.consumeables:remove_card(v)
					G.play:emplace(v)
				end
				for _, hand in ipairs(G.handlist) do
					local fastforward = false
					jl.th(hand)
					for k, v in pairs(targets) do
						local qty = v:getQty()
						fastforward = intensity > 5
						local ante = math.min(math.max(1, G.GAME.round_resets.ante), 1e9)
						local levels = pseudorandom(pseudoseed('foundry_levels'), ante, ante * 5)
						local addchips = pseudorandom(pseudoseed('foundry_chips'), 25 * ante, 50 * ante)
						local addmult = pseudorandom(pseudoseed('foundry_mult'), 4 * ante, 30 * ante)
						local xchips = pseudorandom(pseudoseed('foundry_xchips'), 20 * (ante/2), 50 * ante) / 10
						local xmult = pseudorandom(pseudoseed('foundry_xmult'), 20 * (ante/2), 50 * ante) / 10
						local echips = pseudorandom(pseudoseed('foundry_echips'))/3 + 1 + (ante / 50)
						local emult = pseudorandom(pseudoseed('foundry_emult'))/3 + 1 + (ante / 50)
						if fastforward then
							for i = 1, qty do
								G.GAME.hands[hand].chips = ((G.GAME.hands[hand].chips + addchips) * xchips) ^ echips
								G.GAME.hands[hand].mult = ((G.GAME.hands[hand].mult + addmult) * xmult) ^ emult
							end
						else
							for i = 1, qty do
								fastlv(v, hand, nil, levels)
								G.GAME.hands[hand].chips = ((G.GAME.hands[hand].chips + addchips) * xchips) ^ echips
								G.GAME.hands[hand].mult = ((G.GAME.hands[hand].mult + addmult) * xmult) ^ emult
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('chips1')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {chips = '+' .. tostring(addchips), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('talisman_xchip')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {chips = 'x' .. tostring(xchips), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('talisman_echip')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {chips = '^' .. tostring(jl.round(echips, 3)), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('multhit1')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {mult = '+' .. tostring(addmult), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('multhit2')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {mult = 'x' .. tostring(xmult), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('talisman_emult', 1)
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {mult = '^' .. tostring(jl.round(emult, 3)), StatusText = true})
							end
						end
					end
					if fastforward then
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
							play_sound('button')
						return true end }))
						update_hand_text({delay = 1.3}, {chips = '+++', mult = '+++', level = '+++', StatusText = true})
					end
					update_hand_text({sound = 'button', volume = 0.5, pitch = 1.1, delay = 3}, {handname=localize(hand, 'poker_hands'),chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult, level=G.GAME.hands[hand].level})
				end
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.5, func = function()
					for k, v in pairs(targets) do
						v:remove()
					end
					return true
				end}))
			else
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = 'Nothing to devour!', colour = G.C.MULT})
			end
			jl.ch()
		end
	}

	SMODS.Joker {
		key = 'broken',
		loc_txt = {
			name = 'The Broken Collector of the Fragile',
			text = {
				'{C:attention}Doubles{} the values of',
				'{C:attention}all Jokers{} whenever',
				'a Joker that is {C:red}not {C:blue}Common{} or {C:green}Uncommon{} is {C:money}sold{},',
				'then {C:attention}retrigger all add-to-inventory effects{} of {C:attention}all Jokers',
				'{C:inactive}(Not all values can be doubled, not all Jokers can be affected)',
				'Grants an {C:green}ability{} which {C:red}shatters {C:planet}Planet{} cards',
				'to {C:attention}provide a random amount of',
				'{C:planet}levels{}, {C:chips}+Chips{}, {C:mult}+Mult{},',
				'{X:chips,C:white}xChips{}, {X:mult,C:white}xMult{},',
				'{X:dark_edition,C:chips}^Chips{} and {X:dark_edition,C:red}^Mult',
				'to {C:attention}every poker hand, scaling with {C:attention}Ante',
				' ',
				'{C:inactive,s:1.25,E:1}Collect no evil.',
				faceart('raidoesthings')
			}
		},
		config = {},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		no_doe = true,
		cost = 125,
		rarity = 'jen_ritualistic',
		unlocked = true,
		discovered = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenbroken',
		abilitycard = 'c_jen_broken_c',
		calculate = function(self, card, context)
			if context.selling_card and context.card.ability.set == 'Joker' and context.card ~= card and context.card:gc().rarity ~= 1 and context.card:gc().rarity ~= 2 then
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = '...', colour = G.C.PURPLE})
				for k, v in pairs(G.jokers.cards) do
					if v ~= card and v ~= context.card then
						if not v:gc().immutable then
							v:remove_from_deck()
							for a, b in pairs(v.ability) do
								if a == 'extra' then
									if type(v.ability.extra) == 'number' then
										v.ability.extra = v.ability.extra * 2
									elseif type(v.ability.extra) == 'table' and next(v.ability.extra) then
										for c, d in pairs(v.ability.extra) do
											if type(d) == 'number' then
												v.ability.extra[c] = d * 2
											end
										end
									end
								elseif a ~= 'order' and type(b) == 'number' and ((a == 'x_mult' and b > 1) or b > 0 ) then
									v.ability[a] = b * 2
								end
							end
							v:add_to_deck()
						end
					end
				end
			end
		end
	}
	
	SMODS.Consumable {
		key = 'broken_c',
		loc_txt = {
			name = 'Extraterrestrial Rend',
			text = {
				'{C:red}Shatters {C:planet}Planet{} cards',
				'to {C:attention}provide a random amount of',
				'{C:planet}levels{}, {C:chips}+Chips{}, {C:mult}+Mult{},',
				'{X:chips,C:white}xChips{}, {X:mult,C:white}xMult{},',
				'{X:dark_edition,C:chips}^Chips{} and {X:dark_edition,C:red}^Mult',
				'to {C:attention}every poker hand, scaling with {C:attention}Ante',
				'{X:dark_edition,C:white}Negative{} {X:dark_edition,C:white}Ability:{} Levels up all poker hands once',
			}
		},
		config = {},
		set = 'jen_ability',
		permaeternal = true,
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		cost = 15,
		dangerous = true,
		unlocked = true,
		discovered = true,
		hidden = true,
		hidden2 = true,
		no_doe = true,
		soul_rate = 0,
		atlas = 'jenbroken_c',
		can_use = function(self, card)
			return abletouseabilities()
		end,
		keep_on_use = function(self, card)
			return #SMODS.find_card('j_jen_broken') > 0 and not (card.edition or {}).negative
		end,
		use = function(self, card, area, copier)
			if (card.edition or {}).negative then
				lvupallhands(1, card)
			end
			local targets = {}
			for k, v in pairs(G.consumeables.cards) do
				if v.ability.set == 'Planet' and not v.alrm then
					v.alrm = true
					table.insert(targets, v)
				end
			end
			if #targets > 0 then
				local intensity = 0
				for k, v in pairs(targets) do
					intensity = intensity + 1 + (v:getQty()/2) - 0.5
					G.consumeables:remove_card(v)
					G.play:emplace(v)
				end
				for _, hand in ipairs(G.handlist) do
					local fastforward = false
					jl.th(hand)
					for k, v in pairs(targets) do
						local qty = v:getQty()
						fastforward = intensity > 5
						local ante = math.min(math.max(1, G.GAME.round_resets.ante), 1e9)
						local levels = pseudorandom(pseudoseed('broken_levels'), ante, ante * 5)
						local addchips = pseudorandom(pseudoseed('broken_chips'), 25 * ante, 50 * ante)
						local addmult = pseudorandom(pseudoseed('broken_mult'), 4 * ante, 30 * ante)
						local xchips = pseudorandom(pseudoseed('broken_xchips'), 20 * (ante/2), 50 * ante) / 10
						local xmult = pseudorandom(pseudoseed('broken_xmult'), 20 * (ante/2), 50 * ante) / 10
						local echips = pseudorandom(pseudoseed('broken_echips'))/3 + 1 + (ante / 50)
						local emult = pseudorandom(pseudoseed('broken_emult'))/3 + 1 + (ante / 50)
						if fastforward then
							for i = 1, qty do
								G.GAME.hands[hand].chips = ((G.GAME.hands[hand].chips + addchips) * xchips) ^ echips
								G.GAME.hands[hand].mult = ((G.GAME.hands[hand].mult + addmult) * xmult) ^ emult
							end
						else
							for i = 1, qty do
								fastlv(v, hand, nil, levels)
								G.GAME.hands[hand].chips = ((G.GAME.hands[hand].chips + addchips) * xchips) ^ echips
								G.GAME.hands[hand].mult = ((G.GAME.hands[hand].mult + addmult) * xmult) ^ emult
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('chips1')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {chips = '+' .. tostring(addchips), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('talisman_xchip')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {chips = 'x' .. tostring(xchips), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('talisman_echip')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {chips = '^' .. tostring(jl.round(echips, 3)), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('multhit1')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {mult = '+' .. tostring(addmult), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('multhit2')
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {mult = 'x' .. tostring(xmult), StatusText = true})
								G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
									play_sound('talisman_emult', 1)
									v:juice_up(0.8, 0.5)
								return true end }))
								update_hand_text({delay = 1.3}, {mult = '^' .. tostring(jl.round(emult, 3)), StatusText = true})
							end
						end
					end
					if fastforward then
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
							play_sound('button')
						return true end }))
						update_hand_text({delay = 1.3}, {chips = '+++', mult = '+++', level = '+++', StatusText = true})
					end
					update_hand_text({sound = 'button', volume = 0.5, pitch = 1.1, delay = 3}, {handname=localize(hand, 'poker_hands'),chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult, level=G.GAME.hands[hand].level})
				end
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.5, func = function()
					for k, v in pairs(targets) do
						v:remove()
					end
					return true
				end}))
			else
				card_eval_status_text(card, 'extra', nil, nil, nil, {message = 'Nothing to devour!', colour = G.C.MULT})
			end
			jl.ch()
		end
	}

	SMODS.Joker {
		key = 'paragon',
		loc_txt = {
			name = 'The {C:dark_edition}Paragon{} of {C:cry_epic}Darkness',
			text = {
				'{X:inactive}Energy{} : {C:attention}#1#{C:inactive} / ' .. tostring(nyx_maxenergy*3) .. '',
				'Selling a {C:attention}Joker {C:inactive}(excluding this one){} or {C:attention}consumable{} will',
				'{C:attention}create a new random one{} of the {C:attention}same type/rarity',
				'{C:inactive}(Does not require slots, but may overflow, retains edition)',
				'{C:inactive}(Does not work on fusions or jokers better than Exotic)',
				'{C:inactive,s:1.35}(Currently {C:attention,s:1.35}#2#{C:inactive,s:1.35})',
				' ',
				'Recharges {C:attention}' .. math.ceil(nyx_maxenergy) .. ' energy{} at',
				'the end of every {C:attention}round',
				' ',
				"{C:inactive,s:1.2,E:1}-Wo--r-sh-ip y--ou---r g--o-ddess---...",
				faceart('ThreeCubed')
			}
		},
		config = {extra = {energy = nyx_maxenergy * 3}},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		cost = 400,
		rarity = 'jen_transcendent',
		unlocked = true,
		discovered = true,
		no_doe = true,
		unique = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenparagon',
		abilitycard = 'c_jen_nyx_c',
		loc_vars = function(self, info_queue, center)
			return {vars = {center.ability.extra.energy, (G.GAME or {}).nyx_enabled and 'ENABLED' or 'DISABLED'}}
		end,
		calculate = function(self, card, context)
			if not context.individual and not context.repetition and not card.debuff and context.end_of_round and not context.blueprint then
				card.ability.extra.energy = math.min(card.ability.extra.energy + nyx_maxenergy, nyx_maxenergy*3)
				card_status_text(card, card.ability.extra.energy .. '/' .. nyx_maxenergy*3, nil, 0.05*card.T.h, G.C.GREEN, 0.6, 0.6, nil, nil, 'bm', 'generic1')
			elseif context.selling_card and not context.selling_self then
				if (G.GAME or {}).nyx_enabled then
					if card.ability.extra.energy > 0 then
						local c = context.card
						local RARE = c:gc().rarity or 1
						local legendary = false
						if RARE == 1 then
							RARE = 0
						elseif RARE == 2 then
							RARE = 0.9
						elseif RARE == 3 then
							RARE = 0.99
						elseif RARE == 4 then
							RARE = nil
							legendary = true
						end
						local valid = c.ability.set ~= 'Joker' or not Jen.overpowered(RARE)
						if not c:gc().immune_to_nyx and valid and not c.playing_card then
							local new = 'n/a'
							local AREA = c.area
							if c.ability.set == 'Joker' then
								new = create_card(c.ability.set, AREA, legendary, RARE, nil, nil, nil, 'nyx_replacement')
							else
								new = create_card(c.ability.set, AREA, nil, nil, nil, nil, nil, 'nyx_replacement')
							end
							if c.ability.set == 'Booster' and new.ability.set ~= 'Booster' then
								new:set_ability(jl.rnd('paragon_booster_equilibrium', nil, G.P_CENTER_POOLS.Booster), true, nil)
							end
							if c.edition then
								new:set_edition(c.edition)
							end
							if c.ability.set ~= 'Joker' and c:getQty() > 1 then
								new:setQty(c:getQty())
								new:create_stack_display()
							end
							Q(function()
								new:add_to_deck()
								AREA:emplace(new)
							return true end)
							if jl.njr(context) and not context.blueprint then
								Q(function()
									card.ability.extra.energy = card.ability.extra.energy - 1
									card_status_text(card, card.ability.extra.energy .. '/' .. nyx_maxenergy, nil, 0.05*card.T.h, G.C.FILTER, 0.6, 0.6, nil, nil, 'bm', 'generic1')
								return true end)
							end
							return nil, true
						end
					elseif jl.njr(context) then
						card_status_text(card, 'No energy!', nil, 0.05*card.T.h, G.C.RED, 0.6, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
					end
				end
			end
		end
	}

	local astrophage_blurbs = {
		'M O R E . . .',
		'P O W E R   U P .',
		'A S C E N D .',
		'G L O R I O U S .',
		'S T R O N G E R . . .',
		"I   G R O W .",
		"S A V O U R   T H E   P O W E R .",
		'F U E L   T O   T H E   F I R E . . .',
		'C R U S H .',
		'A S S I M I L A T E .'
	}

	SMODS.Joker {
		key = 'astrophage',
		loc_txt = {
			name = 'The {C:planet}Astrophage{} of the {C:red}Other Side',
			text = {
				'{C:planet}Planets level up',
				'{C:attention}all hands 30 times',
				'when used or sold',
				'Whenever a {C:attention}non-{C:dark_edition}Negative{}, {C:attention}non-{C:planet}Planet',
				'consumable is used or sold,',
				'create {C:attention}5 {C:dark_edition}Negative {C:planet}Planet{} cards',
				'Poker hands gain {X:purple,C:edition}^2{C:chips} Chips{} & {C:mult}Mult{} when leveling up',
				mayoverflow,
				' ',
				"{C:red,s:0.9,E:1}E X C E L L E N T .",
				faceart('HexaCryonic')
			}
		},
		config = {},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		cost = 250,
		rarity = 'jen_transcendent',
		unlocked = true,
		discovered = true,
		no_doe = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenastrophage',
		calculate = function(self, card, context)
			if not context.cry_ease_dollars and not context.post_trigger and context.jen_lving then
				if to_big(context.lvs) > to_big(0) then
					local modifier = to_big(2) ^ context.lvs
					G.GAME.hands[context.lv_hand].chips = to_big(G.GAME.hands[context.lv_hand].chips) ^ modifier
					G.GAME.hands[context.lv_hand].mult = to_big(G.GAME.hands[context.lv_hand].mult) ^ modifier
					delay(0.5)
					Q(function() card:juice_up(0.5, 0.5) return true end)
					play_sound_q('talisman_echip')
					play_sound_q('talisman_emult')
					jl.hcm('^' .. number_format(modifier), '^' .. number_format(modifier), true)
					if not context.lv_instant then jl.hcm(G.GAME.hands[context.lv_hand].chips, G.GAME.hands[context.lv_hand].mult) end
					delay(0.5)
				end
			end
			if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Planet' then
				local quota = (context.consumeable:getEvalQty())
				card.cumulative_lvs = (card.cumulative_lvs or 0) + (quota*30)
				if jl.njr(context) then
					card:speak(astrophage_blurbs, G.C.RED)
					card:apply_cumulative_levels()
				end
				return nil, true
			elseif context.selling_card and not context.selling_self and context.card.ability.set == 'Planet' then
				local quota = (context.card:getEvalQty())
				card.cumulative_lvs = (card.cumulative_lvs or 0) + (quota*30)
				if jl.njr(context) then
					card:speak(astrophage_blurbs, G.C.RED)
					card:apply_cumulative_levels()
				end
				return nil, true
			elseif context.using_consumeable or context.selling_card then
				local target = context.consumeable or context.card
				if not (target.edition or {}).negative and target.ability and target.ability.consumeable and target.ability.set ~= 'Planet' then
					if jl.njr(context) then
						card:speak(astrophage_blurbs, G.C.RED)
					end
					for i = 1, 5 * target:getEvalQty() do
						Q(function()
							local new = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'astrophage_planet')
							new.no_forced_edition = true
							new:set_edition({negative = true}, true)
							new.no_omega = true
							new:add_to_deck()
							G.consumeables:emplace(new)
						return true end)
					end
				end
				return nil, true
			end
		end
	}
	
	local nexus_blurbs = {
		'01001000 01000101 01001100 01010000',
		'01000100 01001001 01000101',
		'01001011 01001001 01001100 01001100',
		'01000100 01000101 01000001 01010100 01001000',
		'01010011 01000001 01010100 01000001 01001110',
		'01011010 01000101 01010010 01001111',
		'01000001 01010011 01001000',
		'01001111 01010111 01001111',
		'01001101 01000101 01001111 01010111',
		'01000010 01001100 01001111 01001111 01000100',
		'01010000 01000001 01001001 01001110'
	}

	SMODS.Joker {
		key = 'nexus',
		loc_txt = {
			name = 'The {C:cry_code}Nexus{} of {C:spectral}Data',
			text = {
				'{C:cry_code}Codes {C:planet}level up',
				'{C:attention}all hands 30 times',
				'when used or sold',
				'Whenever a {C:attention}non-{C:dark_edition}Negative{}, {C:attention}non-{C:cry_code}Code',
				'consumable is used or sold,',
				'create {C:attention}5 {C:dark_edition}Negative {C:cry_code}Code{} cards',
				mayoverflow,
				' ',
				"{C:cry_code,s:0.9,E:1}: 01 000 01 1 : 0 1010 1 00 : 83 : 010 1001 0 : 01 0 0110 0 :",
				faceart('ThreeCubed')
			}
		},
		config = {},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		cost = 250,
		rarity = 'jen_transcendent',
		unlocked = true,
		discovered = true,
		no_doe = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jennexus',
		calculate = function(self, card, context)
			if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'Code' then
				local quota = (context.consumeable:getEvalQty())
				card.cumulative_lvs = (card.cumulative_lvs or 0) + (quota*30)
				if jl.njr(context) then
					card_eval_status_text(card, 'extra', nil, nil, nil, {message = nexus_blurbs[math.random(#nexus_blurbs)], colour = G.C.SET.Code})
					card:apply_cumulative_levels()
				end
				return nil, true
			elseif context.selling_card and not context.selling_self and context.card.ability.set == 'Code' then
				local quota = (context.card:getEvalQty())
				card.cumulative_lvs = (card.cumulative_lvs or 0) + (quota*30)
				if jl.njr(context) then
					card_eval_status_text(card, 'extra', nil, nil, nil, {message = nexus_blurbs[math.random(#nexus_blurbs)], colour = G.C.SET.Code})
					card:apply_cumulative_levels()
				end
				return nil, true
			elseif context.using_consumeable or context.selling_card then
				local target = context.consumeable or context.card
				if not (target.edition or {}).negative and target.ability and target.ability.consumeable and target.ability.set ~= 'Code' then
					if jl.njr(context) then
						card_eval_status_text(card, 'extra', nil, nil, nil, {message = nexus_blurbs[math.random(#nexus_blurbs)], colour = G.C.SET.Code})
					end
					for i = 1, 5 * target:getEvalQty() do
						Q(function()
							local new = create_card('Code', G.consumeables, nil, nil, nil, nil, nil, 'nexus_code')
							new.no_forced_edition = true
							new:set_edition({negative = true}, true)
							new.no_omega = true
							new:add_to_deck()
							G.consumeables:emplace(new)
						return true end)
					end
				end
				return nil, true
			end
		end
	}

	SMODS.Joker {
		key = 'bulwark',
		loc_txt = {
			name = 'The {C:edition}Bulwark{} of {C:inactive}The Unknown',
			text = {
				'{C:jen_RGB,E:1}Moire{}, {C:cry_exotic,E:1}Blood{} and {C:cry_exotic,E:1}Bloodfoil',
				'are {C:attention}250 times{} more likely to naturally appear',
				' ',
				caption('#1#'),
				faceart('laviolive')
			}
		},
		config = {off_op = 0},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		drama = { x = 3, y = 0 },
		cost = 1e4,
		rarity = 'jen_transcendent',
		unlocked = true,
		discovered = true,
		no_doe = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenbulwark',
		loc_vars = function(self, info_queue, center)
			return {vars = {Jen.dramatic and 'I... what...?' or 'Leave this realm, for I do not wish to hurt you.'}}
		end
	}

	SMODS.Joker {
		key = 'faceless',
		loc_txt = {
			name = 'The {C:cry_ascendant}Faceless{} Tyrant',
			text = {
				'{C:attention}All playing cards{} contribute to scoring',
				'Cards in played hand that are already scoring will {C:attention}score twice',
				'{C:inactive}(Order : Scoring hand > Hand cards > Deck cards > Played hand)',
				' ',
				caption('#1#'),
				faceart('CrimboJimbo')
			}
		},
		config = {off_op = 0},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		cost = 250,
		misc_badge = {
			colour = G.C.CRY_ASCENDANT,
			text_colour = G.C.EDITION,
			text = {
				'Ko-Fi Juggernaut',
				'CrimboJimbo',
				'£600+ Donated'
			}
		},
		rarity = 'jen_ritualistic',
		unlocked = true,
		discovered = true,
		no_doe = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenfaceless',
		loc_vars = function(self, info_queue, center)
			return {vars = {crimbo_quotes.fuse[math.random(#crimbo_quotes.fuse)]}}
		end
	}
	
	local charred_captions = {
		'Nothing... truly... lasts... forever.',
		'I will... char... you... down... to your... very... essence.',
		'You... did... this... to me... you... monster.',
		'Everything... will... succumb... to the... blazing... inferno.',
		'No... more... second... chances.',
		'Just... a... hollow... shell.',
		'Burn... them... all.'
	}

	SMODS.Joker {
		key = 'charred',
		loc_txt = {
			name = 'The Charred Cremator',
			text = {
				'Using a {C:attention}non-{C:dark_edition}Negative {C:jen_RGB,E:1}Omega {C:attention}consumable',
				'creates {C:attention}2 {C:dark_edition}Negative{} copies,',
				'a {C:attention}Booster{} and a {C:attention}Voucher',
				' ',
				caption('#1#'),
				faceart('Maxie')
			}
		},
		misc_badge = {
			colour = G.C.almanac,
			text_colour = G.C.CRY_BLOSSOM,
			text = {
				'Bishop of Kosmos',
				'Maxie'
			}
		},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		--drama = { x = 3, y = 0 },
		cost = 1e3,
		rarity = 'jen_transcendent',
		unlocked = true,
		discovered = true,
		no_doe = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jencharred',
		loc_vars = function(self, info_queue, center)
			return {vars = {charred_captions[math.random(#charred_captions)]}}
		end,
		calculate = function(self, card, context)
			if context.using_consumeable and context.consumeable and context.consumeable.ability.set == 'jen_omegaconsumable' and context.consumeable:gc().key ~= 'c_jen_soul_omega' then
				local quota = (context.consumeable:getEvalQty())
				local card_key = context.consumeable:gc().key
				local isnegative = (context.consumeable.edition or {}).negative
				if not isnegative then
					if not card.cumulative_qtys then card.cumulative_qtys = {} end
					card.cumulative_qtys[card_key] = (card.cumulative_qtys[card_key] or 0) + quota
					if jl.njr(context) then
						card_eval_status_text(card, 'extra', nil, nil, nil, {message = '. . .', colour = G.C.CRY_EMBER})
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
							G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
								if card then
									if card.cumulative_qtys then
										for k, v in pairs(card.cumulative_qtys) do
											local duplicate = create_card('Spectral', G.consumeables, nil, nil, nil, nil, k, 'charred_negative')
											duplicate.no_forced_edition = true
											duplicate:set_edition({negative = true}, true)
											duplicate.no_forced_edition = nil
											duplicate:setQty(2 * (v or 1))
											duplicate:create_stack_display()
											duplicate:set_cost()
											duplicate.no_omega = true
											duplicate:add_to_deck()
											G.consumeables:emplace(duplicate)
										end
										card.cumulative_qtys = nil
									end
								end
							return true end }))
						return true end }))
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
							if card then
								local duplicate = create_card('Booster', G.consumeables, nil, nil, nil, nil, k, 'charred_pack')
								if duplicate.gc and duplicate:gc().set ~= 'Booster' then
									duplicate:set_ability(jl.rnd('charred_booster_equilibrium', nil, G.P_CENTER_POOLS.Booster), true, nil)
									duplicate:set_cost()
								end
								duplicate:add_to_deck()
								G.consumeables:emplace(duplicate)
							end
						return true end }))
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
							if card then
								local duplicate = create_card('Voucher', G.consumeables, nil, nil, nil, nil, k, 'charred_voucher')
								if duplicate.gc and duplicate:gc().set ~= 'Voucher' then
									duplicate:set_ability(jl.rnd('charred_voucher_equilibrium', nil, G.P_CENTER_POOLS.Voucher), true, nil)
									duplicate:set_cost()
								end
								duplicate:add_to_deck()
								G.consumeables:emplace(duplicate)
							end
						return true end }))
					end
					return nil, true
				end
			end
		end
	}

local inhabited_quotes = {
	normal = {
		"YOU WILL LOSE",
		"DON'T EVEN TRY",
		"WE WILL STOP YOU",
		"He glares at the blinds with conviction."
	},
	scared = {
		"...H-how are you doing t-that...?",
		"This is... unsettling...",
		"S-... So much power..."
	}
}

	SMODS.Joker {
		key = 'inhabited',
		loc_txt = {
			name = 'The {C:fuchsia}Inhabited {C:dark_edition}Storm{} of {C:edition}Paranormality',
			text = {
				'{C:attention}Steel{} cards give',
				'{X:almanac,C:edition,s:2.5}#1#(P+1){} Chips & Mult',
				'when scored',
				'{C:inactive}(P = order/position of card in played hand, max. 5)',
				'{C:inactive}(P equals 1 if card is not played)',
				"{C:cry_ascendant,s:1.5,E:1}#2#" .. caption('#3#') .. lore('#4#'),
				faceart('ocksie')
			}
		},
		misc_badge = {
			colour = G.C.almanac,
			text_colour = G.C.CRY_BLOSSOM,
			text = {
				'Bishop of Kosmos',
				'ocksie'
			}
		},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		drama = { x = 3, y = 0 },
		cost = 250,
		rarity = 'jen_transcendent',
		unlocked = true,
		discovered = true,
		no_doe = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jeninhabited',
		loc_vars = function(self, info_queue, center)
			local selection = Jen.dramatic and inhabited_quotes.scared[math.random(#inhabited_quotes.scared)] or inhabited_quotes.normal[math.random(#inhabited_quotes.normal)]
			return {vars = {'{P-1}', (Jen.config.show_captions and not (Jen.dramatic or selection == inhabited_quotes.normal[4])) and selection or '', Jen.dramatic and selection or '', (not Jen.dramatic and selection == inhabited_quotes.normal[4]) and selection or ''}}
		end,
		calculate = function(self, card, context)
			if context.individual then
				if context.cardarea == G.play then
					if context.other_card.ability.name == 'Steel Card' then
						local ORDER = 1
						for k, v in ipairs(G.play.cards) do
							if v == context.other_card then
								ORDER = k
								break
							end
						end
						ORDER = math.min(ORDER, 5)
						if ORDER == 1 then
							return {
								x_chips = 2,
								x_mult = 2,
								colour = G.C.PURPLE,
								card = card
							}, true
						elseif ORDER == 2 then
							return {
								e_chips = 3,
								e_mult = 3,
								colour = G.C.PURPLE,
								card = card
							}, true
						elseif ORDER == 3 then
							return {
								ee_chips = 4,
								ee_mult = 4,
								colour = G.C.PURPLE,
								card = card
							}, true
						elseif ORDER == 4 then
							return {
								eee_chips = 5,
								eee_mult = 5,
								colour = G.C.PURPLE,
								card = card
							}, true
						elseif ORDER >= 5 then
							return {
								hyper_chips = {ORDER - 1, ORDER + 1},
								hyper_mult = {ORDER - 1, ORDER + 1},
								colour = G.C.PURPLE,
								card = card
							}, true
						end
					end
				end
			end
		end
	}

	SMODS.Joker {
		key = 'cracked',
		loc_txt = {
			name = '{C:stone}The {C:darkstone}Cracked {C:stone}Misery',
			text = {
				'{C:attention}Stone{} cards give',
				'the {C:chips}Chips{} and {C:mult}Mult{} of',
				'{C:attention}all poker hands{} added together,',
				'then {X:jen_RGB,C:white}tetrate{} {C:chips}Chips{} and {C:mult}Mult',
				'by the {C:attention}sum of the levels{} of all poker hands',
				"{C:inactive,E:1}#1#",
				faceart('ocksie')
			}
		},
		config = {},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		drama = { x = 3, y = 0 },
		cost = 50,
		rarity = 'jen_ritualistic',
		unlocked = true,
		discovered = true,
		no_doe = true,
		blueprint_compat = true,
		eternal_compat = true,
		perishable_compat = false,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jencracked',
		loc_vars = function(self, info_queue, center)
			return {vars = {'*Her eyes are looking around, as if she wants to say something...*'}}
		end,
		calculate = function(self, card, context)
			if context.individual then
				if context.cardarea == G.play then
					if context.other_card.ability.name == 'Stone Card' then
						local total_chips = to_big(0)
						local total_mult = to_big(0)
						local total_level = 0
						for k, v in pairs(G.GAME.hands) do
							total_chips = total_chips + v.chips
							total_mult = total_mult + v.mult
							total_level = total_level + v.level
						end
						if jl.invalid_number(number_format(total_level)) then total_level = 1e300 end
						return {
							chips = total_chips,
							mult = total_mult,
							ee_chips = total_level,
							ee_mult = total_level,
							colour = G.C.JOKER_GREY,
							card = card
						}, true
					end
				end
			end
		end
	}

	SMODS.Joker {
		key = 'wondergeist',
		loc_txt = {
			name = 'Jen Walter the Wondergeist',
			text = {
				'{C:attention}Poker hands{} gain',
				'{X:jen_RGB,C:white,s:3}^^2{} Chips and Mult',
				'when leveled up',
				' ',
				'{C:inactive,s:1.25,E:1}i feel... otherworldly...!',
				faceart('jenwalter666'),
				origin('CRAFTWORLD')
			}
		},
		config = {},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		fusable = true,
		no_doe = true,
		cost = 5e5,
		unique = true,
		rarity = 'jen_transcendent',
		unlocked = true,
		discovered = true,
		blueprint_compat = false,
		eternal_compat = true,
		perishable_compat = false,
		permaeternal = true,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenwondergeist',
		calculate = function(self, card, context)
			if not context.cry_ease_dollars and not context.post_trigger and context.jen_lving then
				if to_big(context.lvs) > to_big(0) then
					local iterations = math.min(1e3, to_big(context.lvs))
					for i = 1, #iterations do
						G.GAME.hands[context.lv_hand].chips = to_big(G.GAME.hands[context.lv_hand].chips):arrow(2, 2)
						G.GAME.hands[context.lv_hand].mult = to_big(G.GAME.hands[context.lv_hand].mult):arrow(2, 2)
					end
					if not context.lv_instant then
						delay(0.5)
						Q(function() card:juice_up(1, 1) return true end)
						play_sound_q('talisman_eechip')
						play_sound_q('talisman_eemult')
						jl.hcm('^^2 (x' .. iterations .. ')', '^^2 (x' .. iterations .. ')', true)
						jl.hcm(G.GAME.hands[context.lv_hand].chips, G.GAME.hands[context.lv_hand].mult)
						delay(0.5)
					end
				end
				return nil, true
			end
		end
	}

	SMODS.Joker {
		key = 'wondergeist2',
		loc_txt = {
			name = 'Jen Walter the Wondergeist {C:cry_ember}(Ascended)',
			text = {
				'{C:attention}Poker hands{} gain',
				'{X:black,C:red,s:4}^^^3{} Chips & Mult',
				'when leveled up',
				' ',
				"{C:inactive,s:1.25,E:1}my body feels so... delicate, but strong at the same time...?",
				faceart('jenwalter666'),
				origin('CRAFTWORLD')
			}
		},
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
		no_doe = true,
		cost = 5e8,
		unique = true,
		rarity = 'jen_transcendent',
		unlocked = true,
		discovered = true,
		blueprint_compat = false,
		eternal_compat = true,
		perishable_compat = false,
		permaeternal = true,
		immutable = true,
		unique = true,
		debuff_immune = true,
		atlas = 'jenwondergeist2',
		calculate = function(self, card, context)
			if not context.cry_ease_dollars and not context.post_trigger and context.jen_lving then
				if to_big(context.lvs) > to_big(0) then
					local iterations = math.min(1e3, to_big(context.lvs))
					for i = 1, #iterations do
						G.GAME.hands[context.lv_hand].chips = to_big(G.GAME.hands[context.lv_hand].chips):arrow(3, 3)
						G.GAME.hands[context.lv_hand].mult = to_big(G.GAME.hands[context.lv_hand].mult):arrow(3, 3)
					end
					if not context.lv_instant then 
						delay(0.5)
						Q(function() card:juice_up(2, 2) return true end)
						play_sound_q('talisman_eeechip')
						play_sound_q('talisman_eeemult')
						jl.hcm('^^^3 (x' .. iterations .. ')', '^^^3 (x' .. iterations .. ')', true)
						jl.hcm(G.GAME.hands[context.lv_hand].chips, G.GAME.hands[context.lv_hand].mult)
						delay(0.5)
					end
				end
				return nil, true
			end
		end
	}

SMODS.Joker {
	key = 'amalgam',
	loc_txt = {
		name = 'The {C:green}A{C:money}m{C:blue}a{C:tarot}l{C:red}g{C:blood}a{C:edition}m{C:cry_ascendant}a{C:cry_azure}t{C:cry_ember}i{C:cry_epic}o{C:cry_verdant}n{}, {C:dark_edition}Puppet{} of {C:blood}Kosmos',
		text = {
			'Generates {X:inactive,C:blood}Malice',
			'when you {C:money}sell{} a Joker,',
			'{C:attention}scaled{} based on {C:attention}current operator{}',
			'and the sold Joker\'s {C:attention}rarity',
			'{C:inactive}({X:red,C:white}#1#{C:inactive}, {X:cry_epic,C:white}#1#{C:inactive}, {X:tarot,C:white}#2#{C:inactive}, {X:cry_exotic,C:white}#3#{C:inactive}, {X:black,C:white}#4#{C:inactive}, {X:cry_ember,C:white}#5#{C:inactive}, {X:cry_azure,C:white}#6#{C:inactive}, {X:jen_RGB,C:white}#7#{C:inactive})',
			lore('The only thing they can feel and think of is pain. Pain down to the planck time.'),
			faceart('raidoesthings')
		}
	},
	config = {},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0, extra = { x = 2, y = 0 }},
	cost = 2e100,
	rarity = 'jen_omegatranscendent',
	cant_scare = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	immune_to_vermillion = true,
	no_doe = true,
	no_mysterious = true,
	debuff_immune = true,
	dissolve_immune = true,
	permaeternal = true,
	unique = true,
	atlas = 'jenamalgam',
	loc_vars = function(self, info_queue, center)
		return {vars = {get_amalgam_value('3'), get_amalgam_value('cry_epic'), get_amalgam_value('4'), get_amalgam_value('cry_exotic'), get_amalgam_value('jen_ritualistic'), get_amalgam_value('jen_wondrous'), get_amalgam_value('jen_extraordinary'), get_amalgam_value('jen_transcendent')}}
	end
}

SMODS.Joker {
	key = 'kosmos',
	loc_txt = {
		name = '{C:blood}K{C:cry_ember}o{C:blood}s{C:cry_ember}m{C:blood}o{C:cry_ember}s',
		text = {
			'{X:inactive,C:blood}Malice{} : {C:almanac}#1#{}#3#{C:inactive}#2#',
			' ',
			'{C:red,E:1,s:2}?????',
			' ',
			'{C:inactive,s:1.5,E:1}Baa.',
			faceart('jenwalter666'),
			origin('Cult of the Lamb'),
			au('ReiGN OF THe KiNGSLAYeR')
		}
	},
	config = {},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 6666,
	rarity = 'jen_omnipotent',
	cant_scare = true,
	unlocked = true,
	discovered = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	immune_to_vermillion = true,
	no_doe = true,
	no_mysterious = true,
	debuff_immune = true,
	dissolve_immune = true,
	permaeternal = true,
	unique = true,
	atlas = 'jenkosmos',
	loc_vars = function(self, info_queue, center)
		return {vars = {number_format(get_max_malice()) == '0' and '' or get_malice(), number_format(get_max_malice()) == '0' and '' or get_max_malice(), number_format(get_max_malice()) == '0' and 'Maxed out' or ' / '}}
	end
}

SMODS.Joker {
	key = 'sigil',
	loc_txt = {
		name = '{s:3,E:1,C:dark_edition}Jen\'s Sigil',
		text = {
			'{C:cry_twilight,E:1,s:3}?????',
			' ',
			lore('A sharp blue G-shaped swirl, the very same icon'),
			lore('that is burnt onto the back of Jen Walter\'s head.'),
			lore('He knows not why he bears such a symbol, but all'),
			lore('he does know is that he feels like a chosen one with it.'),
			lore('The sigil on his head bears untold, unawoken power.'),
			faceart('jenwalter666'),
			origin('CRAFTWORLD')
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 1e9,
	rarity = 'jen_omegatranscendent',
	cant_scare = true,
	unlocked = true,
	discovered = true,
	fusable = true,
	blueprint_compat = false,
	eternal_compat = true,
	perishable_compat = false,
	immutable = true,
	immune_to_vermillion = true,
	no_doe = true,
	no_mysterious = true,
	debuff_immune = true,
	dissolve_immune = true,
	permaeternal = true,
	unique = true,
	atlas = 'jensigil'
}

function Card:destroy(dissolve_colours, silent, dissolve_time_fac, no_juice)
	self.ability.eternal = nil
	self.ignore_incantation_consumable_in_use = true
	self.true_dissolve = true
	self:start_dissolve(dissolve_colours, silent, dissolve_time_fac, no_juice)
end

local dissolve_ref = Card.start_dissolve
function Card:start_dissolve(dissolve_colours, silent, dissolve_time_fac, no_juice)
	if self.true_dissolve then
		if self.gc and self:gc().key ~= 'j_jen_kosmos' and self.ability.set ~= 'jen_ability' and self.sell_cost > 0 and not G.screenwipe then
			add_malice(self.sell_cost * 3)
		end
		if (self.edition or {}).jen_encoded then
			for i = 1, (self.edition or {}).codes or 15 do
				local _card = create_card('Code', G.consumeables, nil, nil, nil, nil, nil, 'encoded_cards')
				_card.no_forced_edition = true
				_card:set_edition({negative = true})
				_card:add_to_deck()
				G.consumeables:emplace(_card)
			end
		end
		dissolve_ref(self, dissolve_colours, silent, dissolve_time_fac, no_juice)
	elseif ((self.config or {}).center or {}).dissolve_immune then
		card_status_text(card, 'Immune', nil, 0.05*card.T.h, G.C.RED, nil, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
		if not self.added_to_deck then
			self:add_to_deck()
			if self.ability.set == 'Joker' then G.jokers:emplace(self) else G.consumeables:emplace(self) end
		end
		return
	else
		if self.ability.set ~= 'Voucher' then
			if (self.edition or {}).jen_diplopia then
				card_status_text(self, 'Resist!', nil, 0.05*self.T.h, G.C.RED, nil, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
				if self.sell_cost > 0 and self.ability.set ~= 'jen_ability' and self.area then
					add_malice(self.sell_cost * 3)
				end
				if Jen.hv('astronomy', 7) and self.ability.set ~= 'jen_ability' and not self.no_astronomy and ((self.ability or {}).set or '') ~= 'Voucher' and ((self.ability or {}).set or '') ~= 'Booster' and self.gc and not self:gc().cant_astronomy then
					local hand = jl.rndhand()
					jl.th(hand)
					fastlv(self, hand, nil, self.sell_cost / 8)
					jl.ch()
				end
				self:set_edition(nil, true)
				if self.area then self.area:remove_card(self) end
				if not self.added_to_deck then self:add_to_deck() end
				if self.playing_card then
					local still_in_playingcard_table = false
					for k, v in pairs(G.playing_cards) do
						if v == self then
							still_in_playingcard_table = true
							break
						end
					end
					if not still_in_playingcard_table then
						G.playing_card = (G.playing_card and G.playing_card + 1) or 1
						table.insert(G.playing_cards, self)
					end
					G.deck:emplace(self)
				else
					(self.ability.set == 'Joker' and G.jokers or G.consumeables):emplace(self)
					if self.ability.set ~= 'Joker' then
						self:setQty(self.OverrideBulkUseLimit or (self.ability or {}).qty_initial or 1)
					end
				end
				return
			elseif not G.screenwipe then
				if (self.edition or {}).jen_encoded then
					for i = 1, (self.edition or {}).codes or 15 do
						local _card = create_card('Code', G.consumeables, nil, nil, nil, nil, nil, 'encoded_cards')
						_card.no_forced_edition = true
						_card:set_edition({negative = true})
						_card:add_to_deck()
						G.consumeables:emplace(_card)
					end
				end
				if self.sell_cost > 0 and self.ability.set ~= 'jen_ability' and self.area then
					add_malice(self.sell_cost * 3)
				end
				if Jen.hv('astronomy', 8) and self.ability.set ~= 'jen_ability' and not self.no_astronomy and ((self.ability or {}).set or '') ~= 'Voucher' and ((self.ability or {}).set or '') ~= 'Booster' and self.gc and not self:gc().cant_astronomy then
					local hand = jl.rndhand()
					jl.th(hand)
					fastlv(self, hand, nil, self.sell_cost / 8)
					jl.ch()
					Q(function() dissolve_ref(self, dissolve_colours, silent, dissolve_time_fac, no_juice) return true end)
				else
					dissolve_ref(self, dissolve_colours, silent, dissolve_time_fac, no_juice)
				end
			else
				dissolve_ref(self, dissolve_colours, silent, dissolve_time_fac, no_juice)
			end
		else
			if self.sell_cost > 0 and not G.screenwipe then
				if self.ability.set ~= 'jen_ability' then
					add_malice(self.sell_cost * 3)
				end
				if Jen.hv('astronomy', 8) and self.ability.set ~= 'jen_ability' and not self.no_astronomy and (self.facing or 'down') == 'up' and ((self.ability or {}).set or '') ~= 'Voucher' and ((self.ability or {}).set or '') ~= 'Booster' and self.gc and not self:gc().cant_astronomy then
					local hand = jl.rndhand()
					jl.th(hand)
					fastlv(self, hand, nil, self.sell_cost / 8)
					jl.ch()
					Q(function() dissolve_ref(self, dissolve_colours, silent, dissolve_time_fac, no_juice) return true end)
				else
					dissolve_ref(self, dissolve_colours, silent, dissolve_time_fac, no_juice)
				end
			end
		end
	end
end

local shatter_ref = Card.shatter

function Card:shatter()
	if ((self.config or {}).center or {}).dissolve_immune then
		card_status_text(card, 'Immune', nil, 0.05*card.T.h, G.C.RED, nil, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
		if not self.added_to_deck then
			self:add_to_deck()
			if self.ability.set == 'Joker' then G.jokers:emplace(self) else G.consumeables:emplace(self) end
		end
		return
	else
		if self.ability.set ~= 'Voucher' then
			if (self.edition or {}).jen_diplopia then
				card_status_text(self, 'Resist!', nil, 0.05*self.T.h, G.C.RED, nil, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
				if self.sell_cost > 0 and self.ability.set ~= 'jen_ability' and self.area then
					add_malice(self.sell_cost * 3)
				end
				if Jen.hv('astronomy', 8) and self.ability.set ~= 'jen_ability' and not self.no_astronomy and ((self.ability or {}).set or '') ~= 'Voucher' and ((self.ability or {}).set or '') ~= 'Booster' and self.gc and not self:gc().cant_astronomy then
					local hand = jl.rndhand()
					jl.th(hand)
					fastlv(self, hand, nil, self.sell_cost / 8)
					jl.ch()
				end
				self:set_edition(nil, true)
				if self.area then self.area:remove_card(self) end
				if not self.added_to_deck then self:add_to_deck() end
				if self.playing_card then
					local still_in_playingcard_table = false
					for k, v in pairs(G.playing_cards) do
						if v == self then
							still_in_playingcard_table = true
							break
						end
					end
					if not still_in_playingcard_table then
						G.playing_card = (G.playing_card and G.playing_card + 1) or 1
						table.insert(G.playing_cards, self)
					end
					G.deck:emplace(self)
				else
					(self.ability.set == 'Joker' and G.jokers or G.consumeables):emplace(self)
					if self.ability.set ~= 'Joker' then
						self:setQty((self.ability or {}).qty_initial or 1)
					end
				end
				return
			else
				if (self.edition or {}).jen_encoded then
					for i = 1, (self.edition or {}).codes or 15 do
						local _card = create_card('Code', G.consumeables, nil, nil, nil, nil, nil, 'encoded_cards')
						_card.no_forced_edition = true
						_card:set_edition({negative = true})
						_card:add_to_deck()
						G.consumeables:emplace(_card)
					end
				end
				if self.sell_cost > 0 and not G.screenwipe then
					if self.ability.set ~= 'jen_ability' then
						add_malice(self.sell_cost * 3)
					end
					if Jen.hv('astronomy', 8) and self.ability.set ~= 'jen_ability' and not self.no_astronomy and ((self.ability or {}).set or '') ~= 'Voucher' and ((self.ability or {}).set or '') ~= 'Booster' and self.gc and not self:gc().cant_astronomy then
						local hand = jl.rndhand()
						jl.th(hand)
						fastlv(self, hand, nil, self.sell_cost / 8)
						jl.ch()
						Q(function() shatter_ref(self) return true end)
					else
						shatter_ref(self)
					end
				end
			end
		else
			if self.sell_cost > 0 and not G.screenwipe then
				if self.ability.set ~= 'jen_ability' then
					add_malice(self.sell_cost * 3)
				end
				if Jen.hv('astronomy', 8) and not self.no_astronomy and ((self.ability or {}).set or '') ~= 'Voucher' and ((self.ability or {}).set or '') ~= 'Booster' and self.gc and not self:gc().cant_astronomy then
					local hand = jl.rndhand()
					jl.th(hand)
					fastlv(self, hand, nil, self.sell_cost / 8)
					jl.ch()
					Q(function() shatter_ref(self) return true end)
				else
					shatter_ref(self)
				end
			end
		end
	end
end

local csdr = Card.set_debuff
function Card:set_debuff(should_debuff)
	if #SMODS.find_card('j_jen_dandy') > 0 then
		return false
	elseif (((self.config or {}).center or {}).debuff_immune or (((self.config or {}).center or {}).rarity or 1) == 6) and should_debuff == true then
		card_status_text(self, 'Immune', nil, 0.05*self.T.h, G.C.RED, nil, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
		return false
	else
		csdr(self, should_debuff)
	end
end

local misprintedition_config = {
	additive = {0, 50},
	multiplicative = 5,
	exponential = 1.3
}

local ser = Card.set_edition
function Card:set_edition(edition, immediate, silent)
	if (((self.config or {}).center or {}).set or '') == 'jen_ability' and not (edition or {}).negative then
		return
	elseif ((self.config or {}).center or {}).cannot_edition then
		return
	elseif ((self.config or {}).center or {}).edition_immune then
		local immunity = self.gc and self:gc().edition_immune
		if type(immunity) ~= 'string' or (edition or {})[immunity] then
			card_status_text(self, localize('k_nope_ex'), nil, 0.05*self.T.h, G.C.RED, nil, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
			return
		else
			ser(self, edition, immediate, silent)
			if self.edition then
				if self.edition.jen_misprint then
					self.edition.chips = pseudorandom('misprintedition_1', misprintedition_config.additive[1], misprintedition_config.additive[2])
					self.edition.mult = pseudorandom('misprintedition_2', misprintedition_config.additive[1], misprintedition_config.additive[2])
					self.edition.x_chips = 1 + (jl.round(pseudorandom('misprintedition_3'), 2) * (misprintedition_config.multiplicative - 1))
					self.edition.x_mult = 1 + (jl.round(pseudorandom('misprintedition_4'), 2) * (misprintedition_config.multiplicative - 1))
					self.edition.e_chips = 1 + (jl.round(pseudorandom('misprintedition_5'), 3) * (misprintedition_config.exponential - 1))
					self.edition.e_mult = 1 + (jl.round(pseudorandom('misprintedition_6'), 3) * (misprintedition_config.exponential - 1))
				end
			end
		end
	else
		ser(self, edition, immediate, silent)
		if self.edition then
			if self.edition.jen_misprint then
				self.edition.chips = pseudorandom('misprintedition_1', misprintedition_config.additive[1], misprintedition_config.additive[2])
				self.edition.mult = pseudorandom('misprintedition_2', misprintedition_config.additive[1], misprintedition_config.additive[2])
				self.edition.x_chips = 1 + (jl.round(pseudorandom('misprintedition_3'), 2) * (misprintedition_config.multiplicative - 1))
				self.edition.x_mult = 1 + (jl.round(pseudorandom('misprintedition_4'), 2) * (misprintedition_config.multiplicative - 1))
				self.edition.e_chips = 1 + (jl.round(pseudorandom('misprintedition_5'), 3) * (misprintedition_config.exponential - 1))
				self.edition.e_mult = 1 + (jl.round(pseudorandom('misprintedition_6'), 3) * (misprintedition_config.exponential - 1))
			end
		end
	end
end

local etref = Card.set_eternal
function Card:set_eternal(e)
	if ((self.config or {}).center or {}).permaeternal then
		self.ability.eternal = true
	else
		etref(self, e)
	end
end

local blank_types = {
	'Planet',
	'Spectral',
	'Tarot',
	'Code'
}

local function can_use_booster()
	return (G.STATE == G.STATES.BLIND_SELECT or G.STATE == G.STATES.SHOP or G.CONTROLLER.locked or (G.GAME.STOP_USE and G.GAME.STOP_USE > 0)) and not jl.booster()
end

G.FUNCS.jen_canopenpack = function(e)
    local card = e.config.ref_table
    if not can_use_booster() then 
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    else
        e.config.colour = G.C.SECONDARY_SET.Tarot
        e.config.button = 'jen_openpack'
    end
end

G.FUNCS.jen_openpack = function(e)
    local card = e.config.ref_table
	if card.config.center.set == 'Booster' then
		Q(function()
			local ncard = Card(
				G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2,
				G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2,
				G.CARD_W * 1.27,
				G.CARD_H * 1.27,
				G.P_CARDS.empty,
				G.P_CENTERS[card.config.center.key],
				{ bypass_discovery_center = true, bypass_discovery_ui = true }
			)
			ncard:start_materialize()
			if card.edition then ncard:set_edition(card.edition, true, true) end
			ncard.from_tag = true
			ncard.cost = 0
			ncard:fire()
		return true end)
		card:destroy()
	end
end

G.FUNCS.jen_canredeemvoucher = function(e)
    local card = e.config.ref_table
    if not jl.canuse() then 
        e.config.colour = G.C.UI.BACKGROUND_INACTIVE
        e.config.button = nil
    else
        e.config.colour = G.C.SECONDARY_SET.Spectral
        e.config.button = 'jen_redeemvoucher'
    end
end

G.FUNCS.jen_redeemvoucher = function(e)
    local card = e.config.ref_table
	if card.config.center.set == 'Voucher' then
		jl.voucher(card.config.center.key)
		card:destroy()
	end
end

local gfucr = G.FUNCS.use_card

G.FUNCS.use_card = function(e, mute, nosave)
	local card = e.config.ref_table
	if card then
		if not can_use_booster() and card.config.center.set == 'Booster' then
			if card.area then card.area:remove_card(card) end
			G.consumeables:emplace(card)
			G.from_tag = true
			G.sell_cost = 0
			G.sell_cost_label = 0
			G.cost = 0
			return
		end
	end
	gfucr(e, mute, nosave)
end

--TAGS
--[[
SMODS.Tag {
	key = 'comedy',
	loc_txt = {
		name = 'Comedy Tag',
		text = {
			'Immediately uses {C:spectral}Comedy'
		}
	},
	pos = { x = 6, y = 2 },
	config = { type = "new_blind_choice" },
	atlas = "jentags",
	loc_vars = function(self, info_queue)
		local tar = (self.ability or {}).pack_key or '
		return ((self.ability or {})
	end,
	in_pool = function()
		return false
	end,
	apply = function(tag, context)
		if context.type == "new_blind_choice" then
			tag:yep("+", G.C.almanac, function()
				local key = "p_cry_code_normal_" .. math.random(1, 2)
				local card = Card(
					G.play.T.x + G.play.T.w / 2 - G.CARD_W * 1.27 / 2,
					G.play.T.y + G.play.T.h / 2 - G.CARD_H * 1.27 / 2,
					G.CARD_W * 1.27,
					G.CARD_H * 1.27,
					G.P_CARDS.empty,
					G.P_CENTERS[key],
					{ bypass_discovery_center = true, bypass_discovery_ui = true }
				)
				card.cost = 0
				card.from_tag = true
				G.FUNCS.use_card({ config = { ref_table = card } })
				card:start_materialize()
				return true
			end)
			tag.triggered = true
			return true
		end
	end,
}
]]

--CONSUMABLES
for k, v in pairs(blank_types) do
	SMODS.Consumable {
		key = 'blank' .. string.lower(v),
		loc_txt = {
			name = 'Blank ' .. v,
			text = {
				'Copies the {C:attention}next',
				'{C:' .. string.lower(v) .. '}' .. v .. '{} card used',
				'{C:inactive,s:0.6}(Only works in Consumables tray)',
				'{C:inactive,s:0.6}(If in a different tray, use this card to add it to Consumables tray)',
				'{C:inactive}(Must have room)',
				'{C:inactive,s:0.8}(Other blanks' .. (v == 'Spectral' and ', The Genius, and POINTER://' or '') .. ' excluded)'
			}
		},
		set = v,
		pos = { x = (k - 1), y = 0 },
		cost = 2,
		aurinko = v == 'Planet',
		unlocked = true,
		discovered = true,
		atlas = 'jenblanks',
		can_use = function(self, card)
			return (card.area or {}) ~= G.consumeables and #G.consumeables < G.consumeables.config.card_limit
		end,
		use = function(self, card, area, copier)
			if not card.already_used_once then
				card.already_used_once = true
				local card2 = copy_card(card)
				card2:add_to_deck()
				G.consumeables:emplace(card2)
			end
		end
	}
end

local supported_tags = {
	{'tag_standard', 'Standard', 0, 0, 3},
	{'tag_charm', 'Charm', 1, 0, 5},
	{'tag_meteor', 'Meteor', 2, 0, 5},
	{'tag_ethereal', 'Ethereal', 3, 0, 5},
	{'tag_buffoon', 'Buffoon', 4, 0, 8},
	{'tag_cry_bundle', 'Bundle', 1, 1, 10},
	{'tag_uncommon', 'Uncommon', 2, 1, 3},
	{'tag_rare', 'Rare', 3, 1, 5},
	{'tag_cry_epic', 'Epic', 4, 1, 8},
	{'tag_foil', 'Foil', 1, 3, 3},
	{'tag_holo', 'Holographic', 2, 3, 4},
	{'tag_polychrome', 'Polychrome', 3, 3, 5},
	{'tag_negative', 'Negative', 4, 3, 10},
	{'tag_investment', 'Investment', 0, 3, 8},
	{'tag_voucher', 'Voucher', 4, 5, 5},
	{'tag_handy', 'Handy', 1, 5, 8},
	{'tag_garbage', 'Garbage', 0, 5, 6},
	{'tag_coupon', 'Coupon', 4, 4, 10},
	{'tag_juggle', 'Juggle', 2, 5, 2},
	{'tag_d_six', 'Dice', 0, 4, 2},
	{'tag_top_up', 'Top-up', 2, 4, 2},
	{'tag_skip', 'Speed', 4, 2, 7},
	{'tag_economy', 'Economy', 5, 2, 10},
	{'tag_double', 'Double', 0, 2, 6},
	{'tag_cry_triple', 'Triple', 1, 2, 8},
	{'tag_cry_quadruple', 'Quadruple', 2, 2, 10},
	{'tag_cry_quintuple', 'Quintuple', 3, 2, 13},
	{'tag_cry_memory', 'Memory', 5, 4, 8}
}

for k, v in pairs(supported_tags) do
	SMODS.Consumable {
		key = 'token_' .. v[1],
		set = 'jen_tokens',
		loc_txt = {
			name = v[2] .. ' Token',
			text = {
				'Use to create a',
				('{C:attention}' .. v[2] .. ' Tag'),
				spriter('cozyori')
			},
		},
		pos = {x = v[3], y = v[4]},
		cost = v[5],
		unlocked = true,
		discovered = true,
		atlas = 'jentokens',
		can_stack = true,
		can_divide = true,
		can_use = function(self, card)
			return jl.canuse()
		end,
		use = function(self, card, area, copier)
			play_sound('jen_e_gilded', 1.25, 0.4)
			add_tag(Tag(v[1]))
		end,
		bulk_use = function(self, card, area, copier, number)
			play_sound('jen_e_gilded', 1.25, 0.4)
			for i = 1, number do
				add_tag(Tag(v[1]))
			end
		end
	}
end

local torat = function(self, card, badges)
	badges[#badges + 1] = create_badge("Torat", get_type_colour(self or card.config, card), G.C.RED, 1.2)
end

SMODS.Consumable {
	key = 'reverse_fool',
	set = 'Spectral',
	loc_txt = {
		name = 'The Genius',
		text = {
			'Recreate {C:attention}all consumables',
			'you have {C:attention}used throughout the run{} as {C:dark_edition}Negatives',
			'{C:inactive,s:0.7}(The Genius, POINTER://, and Omega consumables excluded)',
			'{X:attention,C:white,s:2}x2{C:red,s:2} Ante'
		}
	},
	set_card_type_badge = torat,
	pos = { x = 9, y = 2 },
	cost = 50,
	unlocked = true,
	discovered = true,
	hidden = true,
	soul_rate = 0.001,
	atlas = 'jenrtarots',
	can_use = function(self, card)
		return jl.canuse() and next(G.GAME.consumeable_usage or {})
	end,
	use = function(self, card, area, copier)
		for k, v in pairs(G.GAME.consumeable_usage) do
			if k ~= 'c_jen_reverse_fool' and k ~= 'c_cry_pointer' and not string.find(k, '_omega') and not string.find(k, 'jen_cheat') then
				G.E_MANAGER:add_event(Event({
					delay = 0.1,
					func = function()
						local neg = create_card(v.set, G.consumeables, nil, nil, nil, nil, k, nil)
						neg.no_forced_edition = true
						neg:set_edition({negative = true})
						neg.no_forced_edition = nil
						neg:setQty(v.count)
						neg:add_to_deck()
						G.consumeables:emplace(neg)
						return true
					end
				}))
			end
		end
		add_malice(math.max(5000, get_malice()))
		multante()
	end,
	bulk_use = function(self, card, area, copier, number)
		for k, v in pairs(G.GAME.consumeable_usage) do
			if k ~= 'c_jen_reverse_fool' and not string.find(k, '_omega') then
				G.E_MANAGER:add_event(Event({
					delay = 0.1,
					func = function()
						local neg = create_card(v.set, G.consumeables, nil, nil, nil, nil, k, nil)
						neg.no_forced_edition = true
						neg:set_edition({negative = true})
						neg.no_forced_edition = nil
						neg:setQty(v.count * number)
						neg:add_to_deck()
						G.consumeables:emplace(neg)
						return true
					end
				}))
			end
		end
		add_malice(math.max(5000 * number, get_malice() * (2^number)))
		multante(number)
	end
}

local function createfulldeck(enhancement, edition, amount, emplacement)
	local cards = {}
	for k, v in pairs(G.P_CARDS) do
		local front = v
		for i = 1, (amount or 1) do
			G.E_MANAGER:add_event(Event({
				delay = 0.1,
				func = function()
					cards[i] = true
					G.playing_card = (G.playing_card and G.playing_card + 1) or 1
					local card = Card(G.play.T.x + G.play.T.w/2, G.play.T.y, G.CARD_W, G.CARD_H, v, enhancement or G.P_CENTERS.c_base, {playing_card = G.playing_card})
					if edition then
						card:set_edition(type(edition) == 'table' and edition or {[edition] = true}, true, true)
					end
					play_sound('card1')
					table.insert(G.playing_cards, card)
					card:add_to_deck()
					if emplacement then emplacement:emplace(card) else G.deck:emplace(card) end
					return true
				end
			}))
		end
	end
	Q(function()
		if next(cards) then
			playing_card_joker_effects(cards)
		end
	return true end)
	Q(function() cards = nil return true end)
end

local function createcardset(needle, enhancement, edition, amount, emplacement)
	local cards = {}
	for k, v in pairs(G.P_CARDS) do
		if string.find(k, needle) then
			local front = v
			for i = 1, (amount or 1) do
				G.E_MANAGER:add_event(Event({
					delay = 0.1,
					func = function()
						cards[i] = true
						G.playing_card = (G.playing_card and G.playing_card + 1) or 1
						local card = Card(G.play.T.x + G.play.T.w/2, G.play.T.y, G.CARD_W, G.CARD_H, v, enhancement or G.P_CENTERS.c_base, {playing_card = G.playing_card})
						if edition then
							card:set_edition(type(edition) == 'table' and edition or {[edition] = true}, true, true)
						end
						play_sound('card1')
						table.insert(G.playing_cards, card)
						card:add_to_deck()
						if emplacement then emplacement:emplace(card) else G.deck:emplace(card) end
						return true
					end
				}))
			end
		end
	end
	Q(function()
		if next(cards) then
			playing_card_joker_effects(cards)
		end
	return true end)
	Q(function() cards = nil return true end)
end

local enhancetarots_info = {
	{
		b = 'magician',
		n = 'The Scientist',
		o = 'The Magician',
		c = 'Lucky',
		e = G.P_CENTERS.m_lucky,
		p = { x = 8, y = 2 },
		omega = 1
	},
	{
		b = 'empress',
		n = 'The Peasant',
		o = 'The Empress',
		c = 'Mult',
		e = G.P_CENTERS.m_mult,
		p = { x = 6, y = 2 },
		omega = 3,
	},
	{
		b = 'hierophant',
		n = 'The Adversary',
		o = 'The Hierophant',
		c = 'Bonus',
		e = G.P_CENTERS.m_bonus,
		p = { x = 4, y = 2 },
		omega = 5
	},
	{
		b = 'lovers',
		n = 'The Rivals',
		o = 'The Lovers',
		c = 'Wild',
		e = G.P_CENTERS.m_wild,
		p = { x = 3, y = 2 },
		omega = 6
	},
	{
		b = 'chariot',
		n = 'The Hitchhiker',
		o = 'The Chariot',
		c = 'Steel',
		e = G.P_CENTERS.m_steel,
		p = { x = 2, y = 2 },
		omega = 7
	},
	{
		b = 'justice',
		n = 'Injustice',
		o = 'Justice',
		c = 'Glass',
		e = G.P_CENTERS.m_glass,
		p = { x = 1, y = 2 },
		omega = 8
	},
	{
		b = 'devil',
		n = 'The Angel',
		o = 'The Devil',
		c = 'Gold',
		e = G.P_CENTERS.m_gold,
		p = { x = 4, y = 1 },
		omega = 15,
	},
	{
		b = 'tower',
		n = 'The Collapse',
		o = 'The Tower',
		c = 'Stone',
		e = G.P_CENTERS.m_stone,
		p = { x = 3, y = 1 },
		omega = 16
	}
}

for k, v in ipairs(enhancetarots_info) do
	SMODS.Consumable {
		key = 'reverse_' .. v.b,
		set = 'Spectral',
		loc_txt = {
			name = v.n,
			text = {
				'Creates a {C:green}full deck{} of {C:attention}' .. v.c .. '',
				'cards and {C:blue}adds them to your deck'
			}
		},
		set_card_type_badge = torat,
		config = {},
		pos = v.p,
		cost = 13,
		aurinko = true,
		unlocked = true,
		discovered = true,
		hidden = true,
		soul_rate = 0.002,
		atlas = 'jenrtarots',
		can_use = function(self, card)
			return jl.canuse()
		end,
		use = function(self, card, area, copier)
			createfulldeck(v.e, not (card.edition or {}).negative and card.edition or nil)
			add_malice(80)
		end,
		bulk_use = function(self, card, area, copier, number)
			createfulldeck(v.e, not (card.edition or {}).negative and card.edition or nil, number)
			add_malice(80 * number)
		end
	}
end

SMODS.Consumable {
	key = 'reverse_high_priestess',
	set = 'Spectral',
	loc_txt = {
		name = 'The Low Laywoman',
		text = {
			'Create {C:attention}#1#',
			'{C:planet}Meteor {C:attention}Tags'
		}
	},
	set_card_type_badge = torat,
	config = {extra = {planetpacks = 10}},
	pos = { x = 7, y = 2 },
	cost = 13,
	unlocked = true,
	discovered = true,
	hidden = true,
	soul_rate = 0.002,
	atlas = 'jenrtarots',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.planetpacks}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		for i = 1, card.ability.extra.planetpacks do
			add_tag(Tag('tag_meteor'))
		end
		add_malice(200)
	end,
	bulk_use = function(self, card, area, copier, number)
		for i = 1, card.ability.extra.planetpacks * number do
			add_tag(Tag('tag_meteor'))
		end
		add_malice(200 * number)
	end
}

SMODS.Consumable {
	key = 'reverse_emperor',
	set = 'Spectral',
	loc_txt = {
		name = 'The Servant',
		text = {
			'Gives {C:attention}#1#{C:spectral} Ethereal',
			'and {C:tarot}Charm{C:attention} Tags',
			'{C:attention}+1{C:red} Ante'
		}
	},
	set_card_type_badge = torat,
	config = {extra = {tags = 5}},
	pos = { x = 5, y = 2 },
	cost = 13,
	unlocked = true,
	discovered = true,
	hidden = true,
	soul_rate = 0.002,
	atlas = 'jenrtarots',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.tags}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		for i = 1, card.ability.extra.tags do
			add_tag(Tag('tag_ethereal'))
			add_tag(Tag('tag_charm'))
		end
		ease_ante(1)
		add_malice(50)
	end,
	bulk_use = function(self, card, area, copier, number)
		for i = 1, card.ability.extra.tags * number do
			add_tag(Tag('tag_ethereal'))
			add_tag(Tag('tag_charm'))
		end
		ease_ante(number)
		add_malice(50 * number)
	end
}

local function rhermittotal()
	if not G.jokers or not G.hand or not G.consumeables or not G.deck then return 0 end
	local value = 0
	for k, v in pairs(G.hand.cards) do
		value = value + (v.sell_cost or 0)
	end
	for k, v in pairs(G.jokers.cards) do
		value = value + (v.sell_cost or 0)
	end
	for k, v in pairs(G.consumeables.cards) do
		value = value + (v.sell_cost or 0)
	end
	for k, v in pairs(G.deck.cards) do
		value = value + (v.sell_cost or 0)
	end
	return value
end

local function rtemperancemult()
	if not G.jokers then return 2 end
	return 2 + #G.jokers.cards
end

SMODS.Consumable {
	key = 'reverse_hermit',
	set = 'Spectral',
	loc_txt = {
		name = 'The Extrovert',
		text = {
			'Gives you {C:money}money{} equal to the',
			'{C:money}net sell value{} of {C:attention,s:1.5}ALL{} cards you have',
			'{C:inactive}(Currently {C:money}$#1#{C:inactive})',
			'{C:attention}+2{C:red} Ante'
		}
	},
	set_card_type_badge = torat,
	pos = { x = 0, y = 2 },
	cost = 30,
	unlocked = true,
	discovered = true,
	hidden = true,
	soul_rate = 0.002,
	atlas = 'jenrtarots',
    loc_vars = function(self, info_queue, center)
        return {vars = {rhermittotal()}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		ease_dollars(rhermittotal())
		ease_ante(2)
		add_malice(150)
	end,
	bulk_use = function(self, card, area, copier, number)
		ease_dollars(rhermittotal() * number)
		ease_ante(2 * number)
		add_malice(150 * number)
	end
}

SMODS.Consumable {
	key = 'reverse_wheel',
	set = 'Spectral',
	loc_txt = {
		name = 'The Disc of Penury',
		text = {
			'{C:attention}Randomises{} the {C:dark_edition}editions{} of',
			'your {C:attention}Jokers{}, {C:attention}consumables{} and {C:attention}playing cards',
			'{C:attention}+1{C:red} Ante',
			'{C:inactive,s:0.8}(Some editions are excluded from the pool)',
			'{C:inactive,s:0.8}(Does not randomise Negative cards)'
		}
	},
	set_card_type_badge = torat,
	pos = { x = 9, y = 1 },
	cost = 25,
	unlocked = true,
	discovered = true,
	hidden = true,
	soul_rate = 0.002,
	atlas = 'jenrtarots',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		for k, v in pairs(G.jokers.cards) do
			if not (v.edition or {}).negative and not v:is_exotic_edition() then
				v:set_edition({[random_editions[pseudorandom('disc1', 1, #random_editions)]] = true}, k > 50, k > 50)
			end
		end
		for k, v in pairs(G.hand.cards) do
			if not (v.edition or {}).negative and not v:is_exotic_edition() then
				v:set_edition({[random_editions[pseudorandom('disc2', 1, #random_editions)]] = true}, k > 52, k > 52)
			end
		end
		for k, v in pairs(G.deck.cards) do
			if not (v.edition or {}).negative and not v:is_exotic_edition() then
				v:set_edition({[random_editions[pseudorandom('disc3', 1, #random_editions)]] = true}, true, true)
			end
		end
		for k, v in pairs(G.consumeables.cards) do
			if not (v.edition or {}).negative and not v:is_exotic_edition() and v.ability.set ~= 'jen_ability' then
				v:set_edition({[random_editions[pseudorandom('disc4', 1, #random_editions)]] = true}, k > 20, k > 20)
			end
		end
		ease_ante(1)
		add_malice(200)
	end
}

SMODS.Consumable {
	key = 'reverse_strength',
	set = 'Spectral',
	loc_txt = {
		name = 'Infirmity',
		text = {
			'{C:attention}+#1#{} hand size',
			'{C:attention}+#1#{} maximum selectable cards',
			'{C:attention}+1{C:red} Ante'
		}
	},
	set_card_type_badge = torat,
	pos = { x = 8, y = 1 },
	config = {extra = {increase = 1}},
	cost = 20,
	unlocked = true,
	discovered = true,
	hidden = true,
	soul_rate = 0.002,
	atlas = 'jenrtarots',
    loc_vars = function(self, info_queue, center)
        return {vars = {math.ceil(center.ability.extra.increase)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		G.hand:change_size(math.ceil(card.ability.extra.increase))
		G.hand:change_max_highlight(math.ceil(card.ability.extra.increase))
		ease_ante(1)
		add_malice(175)
	end,
	bulk_use = function(self, card, area, copier, number)
		G.hand:change_size(math.ceil(card.ability.extra.increase) * number)
		G.hand:change_max_highlight(math.ceil(card.ability.extra.increase) * number)
		ease_ante(number)
		add_malice(175 * number)
	end
}

SMODS.Consumable {
	key = 'reverse_hanged_man',
	set = 'Spectral',
	loc_txt = {
		name = 'Zen',
		text = {
			'{C:attention}Reset{} your deck to',
			'a {C:attention}standard 52-card deck'
		}
	},
	config = {extra = {destruction = 0.5}},
	set_card_type_badge = torat,
	pos = { x = 7, y = 1 },
	cost = 15,
	unlocked = true,
	discovered = true,
	hidden = true,
	soul_rate = 0.002,
	atlas = 'jenrtarots',
    loc_vars = function(self, info_queue, center)
        return {vars = {math.min(100, center.ability.extra.destruction * 100), math.ceil(#(G.playing_cards or {}) * center.ability.extra.destruction)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		Q(function()
			for k, v in pairs(G.playing_cards) do
				v:destroy()
			end
		return true end)
		jl.rd(1)
		createfulldeck()
	end
}

SMODS.Consumable {
	key = 'reverse_death',
	set = 'Spectral',
	loc_txt = {
		name = 'Life',
		text = {
			'Duplicate {C:attention}every card{} in',
			'{C:blue}your hand'
		}
	},
	set_card_type_badge = torat,
	pos = { x = 6, y = 1 },
	cost = 10,
	unlocked = true,
	discovered = true,
	hidden = true,
	soul_rate = 0.002,
	atlas = 'jenrtarots',
	can_use = function(self, card)
		return jl.canuse() and #G.hand.cards > 0
	end,
	use = function(self, card, area, copier)
		local cards = {}
		for k, v in pairs(G.hand.cards) do
			G.playing_card = (G.playing_card and G.playing_card + 1) or 1
			local copy = copy_card(v, nil, nil, G.playing_card)
			copy:add_to_deck()
			copy:start_materialize()
			table.insert(cards, copy)
		end
		for k, v in pairs(cards) do
			if v ~= card then
				table.insert(G.playing_cards, v)
				G.hand:emplace(v)
			end
		end
		add_malice(60)
		playing_card_joker_effects(cards)
	end
}

SMODS.Consumable {
	key = 'reverse_temperance',
	set = 'Spectral',
	loc_txt = {
		name = 'Prodigality',
		text = {
			'Multiplies your {C:money}money{} by',
			'{C:attention}the number of Jokers{} you have {C:green}plus two',
			'{C:inactive}(Currently {X:money,C:white}$x#1#{C:tarot} = {C:money}$#2#{C:inactive})',
			'{X:attention,C:white,s:2}x2{C:red,s:2} Ante'
		}
	},
	set_card_type_badge = torat,
	pos = { x = 5, y = 1 },
	cost = 30,
	unlocked = true,
	discovered = true,
	hidden = true,
	soul_rate = 0.002,
	atlas = 'jenrtarots',
    loc_vars = function(self, info_queue, center)
        return {vars = {rtemperancemult(), math.min(1e308, (G.GAME.dollars or 0) * rtemperancemult())}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		ease_dollars(math.min(1e308, G.GAME.dollars * (rtemperancemult()) - G.GAME.dollars))
		multante()
		add_malice(1000)
	end,
	bulk_use = function(self, card, area, copier, number)
		ease_dollars(math.min(1e308, G.GAME.dollars * (rtemperancemult()^number) - G.GAME.dollars))
		multante(number)
		add_malice(1000)
	end
}

local suittarots_info = {
	{
		b = 'star',
		n = 'The Flash',
		s = 'Diamonds',
		p = { x = 2, y = 1 },
		o = 17
	},
	{
		b = 'moon',
		n = 'The Eclipse',
		s = 'Clubs',
		p = { x = 1, y = 1 },
		o = 18
	},
	{
		b = 'sun',
		n = 'The Darkness',
		s = 'Hearts',
		p = { x = 0, y = 1 },
		o = 19
	},
	{
		b = 'world',
		n = 'Desolate',
		s = 'Spades',
		p = { x = 8, y = 0 },
		o = 21
	}
}

for kk, vv in pairs(suittarots_info) do
	SMODS.Consumable {
		key = 'reverse_' .. vv.b,
		set = 'Spectral',
		loc_txt = {
			name = vv.n,
			text = {
				'Duplicate {C:attention}all{} of your',
				'{C:' .. string.lower(vv.s) .. '}' .. string.sub(vv.s, 1, string.len(vv.s) - 1) .. '{} card(s)',
				'{s:0.7}Also considers {C:attention,s:0.7}Wilds',
				'{s:0.7}and any {C:attention,s:0.7}Joker effects{s:0.7},',
				'{s:0.7}bypasses {C:red,s:0.7}debuffs'
			}
		},
		set_card_type_badge = torat,
		pos = vv.p,
		cost = 30,
		unlocked = true,
		discovered = true,
		hidden = true,
		soul_rate = 0.002,
		atlas = 'jenrtarots',
		can_use = function(self, card)
			return jl.canuse()
		end,
		use = function(self, card, area, copier)
			local cards = {}
			local handcards = {}
			local deckcards = {}
			if next(G.hand.cards) then
				for k, v in pairs(G.hand.cards) do
					if v:is_suit(vv.s, true) then
						cards[#cards + 1] = true
						G.playing_card = (G.playing_card and G.playing_card + 1) or 1
						local copy = copy_card(v, nil, nil, G.playing_card)
						copy:add_to_deck()
						copy:start_materialize()
						table.insert(handcards, copy)
					end
				end
			end
			if next(G.deck.cards) then
				for k, v in pairs(G.deck.cards) do
					if v:is_suit(vv.s, true) then
						cards[#cards + 1] = true
						G.playing_card = (G.playing_card and G.playing_card + 1) or 1
						local copy = copy_card(v, nil, nil, G.playing_card)
						copy:add_to_deck()
						copy:start_materialize()
						table.insert(deckcards, copy)
					end
				end
			end
			if next(handcards) then
				for k, v in pairs(handcards) do
					if v ~= card then
						table.insert(G.playing_cards, v)
						G.hand:emplace(v)
					end
				end
			end
			if next(deckcards) then
				for k, v in pairs(deckcards) do
					if v ~= card then
						table.insert(G.playing_cards, v)
						G.deck:emplace(v)
					end
				end
			end
			if #cards > 0 then playing_card_joker_effects(cards) end
			add_malice(100)
		end
	}
end

SMODS.Consumable {
	key = 'reverse_judgement',
	set = 'Spectral',
	loc_txt = {
		name = 'Cunctation',
		text = {
			'Gives {C:attention}#1# {X:inactive}Buffoon',
			'and {C:attention}Standard Tags'
		}
	},
	set_card_type_badge = torat,
	config = {extra = {tags = 5}},
	pos = { x = 9, y = 0 },
	cost = 13,
	unlocked = true,
	discovered = true,
	hidden = true,
	soul_rate = 0.002,
	atlas = 'jenrtarots',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.tags}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		for i = 1, card.ability.extra.tags do
			add_tag(Tag('tag_buffoon'))
			add_tag(Tag('tag_standard'))
		end
		add_malice(250)
	end,
	bulk_use = function(self, card, area, copier, number)
		for i = 1, card.ability.extra.tags * number do
			add_tag(Tag('tag_buffoon'))
			add_tag(Tag('tag_standard'))
		end
		add_malice(250)
	end
}

SMODS.Consumable {
	key = 'obfuscation',
	set = 'Spectral',
	loc_txt = {
		name = 'Obfuscation',
		text = {
			'{C:green,E:1}Randomises{} all cards in hand',
			'{C:inactive}(Rank, seal, edition, enhancement and suit)',
			spriter('ocksie')
		}
	},
	pos = { x = 0, y = 4 },
	cost = 4,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
	can_use = function(self, card)
		return jl.canuse() and #((G.hand or {}).cards or {}) > 0
	end,
	use = function(self, card, area, copier)
		G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
			play_sound('tarot1')
			card:juice_up(0.3, 0.5)
			return true
		end }))
		jl.randomise(G.hand.cards)
		delay(0.5)
	end
}

SMODS.Consumable {
	key = 'bisection',
	set = 'Spectral',
	loc_txt = {
		name = 'Bisection',
		text = {
			'{C:green}Randomly {C:red}destroy {C:attention}#1#% {C:inactive}(#2#){} of all owned',
			'playing cards for {C:attention}+#3#{} Joker slot(s)',
			spriter('cozyori')
		}
	},
	config = {extra = {destruction = 0.5, slots = 1}},
	pos = { x = 1, y = 4 },
	cost = 5,
	unlocked = true,
	discovered = true,
	no_ratau = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {math.min(99.99, center.ability.extra.destruction * 100), math.min(math.ceil(#(G.playing_cards or {}) * center.ability.extra.destruction), math.max(0, #(G.playing_cards or {}) - 1)), center.ability.extra.slots}}
    end,
	can_use = function(self, card)
		return jl.canuse() and #G.playing_cards > 1
	end,
	use = function(self, card, area, copier)
		local todestroy = 0
		local targets = {}
		local count = #G.playing_cards
		local allcards = G.playing_cards
		if count > 1 then
			todestroy = math.min(count - 1, math.ceil(count * card.ability.extra.destruction))
			while todestroy > 0 do
				local sel = allcards[pseudorandom('offering1', 1, count)]
				if not sel.rhm then
					sel.rhm = true
					if sel.area then sel.area:remove_card(sel) end
					table.insert(targets, sel)
					todestroy = todestroy - 1
				end
			end
		end
		if #targets > 0 then
			for k, v in pairs(targets) do
				v.rhm = false
				v:start_dissolve()
				add_malice(v.sell_cost * 3)
			end
			jl.jokers({ remove_playing_cards = true, removed = targets })
		end
		delay(0.5)
		G.E_MANAGER:add_event(Event({func = function()
			if G.jokers then 
				G.jokers:change_size_absolute(card.ability.extra.slots)
			end
			todestroy = nil
			targets = nil
			count = nil
			cards = nil
		return true end }))
	end
}

SMODS.Consumable {
	key = 'conjure',
	set = 'Spectral',
	loc_txt = {
		name = 'Conjure',
		text = {
			'Creates up to {C:attention}#1#',
			'{C:spectral}Spectral{} card(s)',
			'{C:inactive}(Must have room)',
			spriter('mailingway')
		}
	},
	config = {extra = {spectrals = 2}},
	pos = { x = 2, y = 4 },
	cost = 4,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {math.ceil(center.ability.extra.spectrals)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		for i = 1, math.min(math.ceil(card.ability.extra.spectrals), G.consumeables.config.card_limit - #G.consumeables.cards) do
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
				if G.consumeables.config.card_limit > #G.consumeables.cards then
					play_sound('jen_draw')
					local card2 = create_card('Spectral', G.consumeables, nil, nil, nil, nil, nil, 'pri')
					card2:add_to_deck()
					G.consumeables:emplace(card2)
					card:juice_up(0.3, 0.5)
				end
				return true
			end }))
		end
		delay(0.6)
	end,
	bulk_use = function(self, card, area, copier, number)
		for i = 1, math.min(math.ceil(card.ability.extra.spectrals) * number, G.consumeables.config.card_limit - #G.consumeables.cards) do
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
				if G.consumeables.config.card_limit > #G.consumeables.cards then
					play_sound('jen_draw')
					local card2 = create_card('Spectral', G.consumeables, nil, nil, nil, nil, nil, 'pri')
					card2:add_to_deck()
					G.consumeables:emplace(card2)
					card:juice_up(0.3, 0.5)
				end
				return true
			end }))
		end
		delay(0.6)
	end
}

SMODS.Consumable {
	key = 'shadows',
	set = 'Spectral',
	loc_txt = {
		name = 'Shadows',
		text = {
			'Create {C:attention}#1#{} {C:green}random',
			'{C:dark_edition}Negative {C:attention}Perishable {C:attention}Joker(s){},',
			'set {C:money}sell value{} of {C:attention}all Jokers{} to {C:money}$0',
			spriter('mailingway')
		}
	},
	config = {extra = {shadows = 2}},
	pos = { x = 3, y = 4 },
	cost = 4,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center.ability or {}).extra or {}).shadows or 2}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		for i = 1, card.ability.extra.shadows do
			local card2 = create_card("Joker", G.jokers, nil, nil, nil, nil, nil, 'phantom')
			card2.no_forced_edition = true
			card2:set_edition({negative = true})
			card2.no_forced_edition = nil
			card2.ability.eternal = false
			card2.ability.perishable = true
			card2.ability.perish_tally = 5
			card2:add_to_deck()
			G.jokers:emplace(card2)
		end
		delay(0.6)
		for i=1, #G.jokers.cards do
			G.jokers.cards[i].base_cost = 0
			G.jokers.cards[i].extra_cost = 0
			G.jokers.cards[i].cost = 0
			G.jokers.cards[i].sell_cost = 0
			G.jokers.cards[i].sell_cost_label = G.jokers.cards[i].facing == 'back' and '?' or G.jokers.cards[i].sell_cost
		end
	end,
	bulk_use = function(self, card, area, copier, number)
		for i = 1, card.ability.extra.shadows * number do
			local card2 = create_card("Joker", G.jokers, nil, nil, nil, nil, nil, 'phantom')
			card2.no_forced_edition = true
			card2:set_edition({negative = true})
			card2.no_forced_edition = nil
			card2.ability.eternal = false
			card2.ability.perishable = true
			card2.ability.perish_tally = 5
			card2:add_to_deck()
			G.jokers:emplace(card2)
		end
		delay(0.6)
		for i=1, #G.jokers.cards do
			G.jokers.cards[i].base_cost = 0
			G.jokers.cards[i].extra_cost = 0
			G.jokers.cards[i].cost = 0
			G.jokers.cards[i].sell_cost = 0
			G.jokers.cards[i].sell_cost_label = G.jokers.cards[i].facing == 'back' and '?' or G.jokers.cards[i].sell_cost
		end
	end
}

SMODS.Consumable {
	key = 'rift',
	set = 'Spectral',
	loc_txt = {
		name = 'Rift',
		text = {
			'Create {C:attention}#1#{} random {C:attention}consumables',
			'that {C:attention}also act as playing cards{},',
			'and shuffle them into your deck',
			'{C:inactive}(Suit and rank will be random, most editions will carry over)',
			spriter('mailingway')
		}
	},
	config = {extra = {rift = 5}},
	pos = { x = 4, y = 4 },
	cost = 4,
	jumbo_mod = 5,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.rift}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local cards = {}
		local objects = {}
		for i = 1, card.ability.extra.rift do
			cards[i] = true
			local new = create_playing_card(nil, G.play, nil, i ~= 1, {G.C.SECONDARY_SET.Spectral})
			if card.edition and not card.edition.negative and not card.edition.jen_jumbo and not card.edition.cry_double_sided then
				new:set_edition(card.edition)
			end
			table.insert(objects, new)
		end
		jl.rd(0.5)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1')
				v:juice_up(0.3, 0.3)
				v:flip()
				return true
			end, 0.2, 'REAL')
		end
		jl.rd(0.5)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1', 0.9)
				v:set_ability(jl.rnd('jen_rift'), true, nil)
				v:juice_up(0.3, 0.3)
				v:flip()
				return true
			end, 0.2, 'REAL')
		end
		jl.rd(1.5)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1', 1.1)
				v:add_to_deck()
				G.play:remove_card(v)
				G.deck:emplace(v)
				return true
			end, 0.2, 'REAL')
		end
		Q(function()
			if next(cards) then
				playing_card_joker_effects(cards)
			end
		return true end)
	end,
	bulk_use = function(self, card, area, copier, number)
		local cards = {}
		local objects = {}
		for i = 1, card.ability.extra.rift * number do
			cards[i] = true
			local new = create_playing_card(nil, G.play, nil, i ~= 1, {G.C.SECONDARY_SET.Spectral})
			if card.edition and not card.edition.negative and not card.edition.jen_jumbo and not card.edition.cry_double_sided then
				new:set_edition(card.edition)
			end
			table.insert(objects, new)
		end
		jl.rd(0.5/number)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1')
				v:juice_up(0.3, 0.3)
				v:flip()
				return true
			end, 0.2/number, 'REAL')
		end
		jl.rd(0.5/number)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1', 0.9)
				v:set_ability(jl.rnd('jen_rift'), true, nil)
				v:juice_up(0.3, 0.3)
				v:flip()
				return true
			end, 0.2/number, 'REAL')
		end
		jl.rd(1.5/number)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1', 1.1)
				v:add_to_deck()
				G.play:remove_card(v)
				G.deck:emplace(v)
				return true
			end, 0.2/number, 'REAL')
		end
		Q(function()
			if next(cards) then
				playing_card_joker_effects(cards)
			end
		return true end)
	end
}

local maskcard = function(self, card, badges)
	badges[#badges + 1] = create_badge("Mask", get_type_colour(self or card.config, card), G.C.DARK_EDITION, 1.2)
end

SMODS.Consumable {
	key = 'comedy',
	set = 'Spectral',
	loc_txt = {
		name = '{C:blue}Comedy',
		text = {
			'{C:blue}+#1#{} hand(s)',
			'{C:dark_edition,s:0.7,E:2}Art by : spikeberd'
		}
	},
	set_card_type_badge = maskcard,
	config = {extra = {add = 1}},
	pos = { x = 5, y = 4 },
	cost = 15,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
	hidden = true,
	soul_rate = 0.02,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.add}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local additive = card.ability.extra.add
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + additive
        ease_hands_played(additive)
	end,
	bulk_use = function(self, card, area, copier, number)
		local additive = card.ability.extra.add * number
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + additive
        ease_hands_played(additive)
	end
}

SMODS.Consumable {
	key = 'tragedy',
	set = 'Spectral',
	loc_txt = {
		name = '{C:red}Tragedy',
		text = {
			'{C:red}+#1#{} discard(s)',
			'{C:dark_edition,s:0.7,E:2}Art by : spikeberd'
		}
	},
	set_card_type_badge = maskcard,
	config = {extra = {add = 1}},
	pos = { x = 6, y = 4 },
	cost = 15,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
	hidden = true,
	soul_rate = 0.02,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.add}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local additive = card.ability.extra.add
        G.GAME.round_resets.discards = G.GAME.round_resets.discards + additive
        ease_discard(additive)
	end,
	bulk_use = function(self, card, area, copier, number)
		local additive = card.ability.extra.add * number
        G.GAME.round_resets.discards = G.GAME.round_resets.discards + additive
        ease_discard(additive)
	end
}

SMODS.Consumable {
	key = 'whimsy',
	set = 'Spectral',
	loc_txt = {
		name = '{C:attention}Whimsy',
		text = {
			'{C:attention}+#1#{} hand size, Joker slot(s) & consumable slot(s)',
			'{C:dark_edition,s:0.7,E:2}Art by : spikeberd'
		}
	},
	set_card_type_badge = maskcard,
	config = {extra = {add = 1}},
	pos = { x = 7, y = 4 },
	cost = 20,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
	hidden = true,
	soul_rate = 0.02,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.add}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local additive = card.ability.extra.add
		G.hand:change_size(additive)
		G.jokers:change_size_absolute(additive)
		G.consumeables:change_size_absolute(additive)
	end,
	bulk_use = function(self, card, area, copier, number)
		local additive = card.ability.extra.add * number
		G.hand:change_size(additive)
		G.jokers:change_size_absolute(additive)
		G.consumeables:change_size_absolute(additive)
	end
}

SMODS.Consumable {
	key = 'entropy',
	set = 'Spectral',
	loc_txt = {
		name = '{C:green}Entropy',
		text = {
			'{C:attention}-#1#{} Ante',
			'{C:dark_edition,s:0.7,E:2}Art by : spikeberd'
		}
	},
	set_card_type_badge = maskcard,
	config = {extra = {add = 1}},
	pos = { x = 8, y = 4 },
	cost = 20,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
	hidden = true,
	soul_rate = 0.02,
    loc_vars = function(self, info_queue, center)
        return {vars = {center.ability.extra.add}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local additive = card.ability.extra.add
		ease_ante(-additive)
	end,
	bulk_use = function(self, card, area, copier, number)
		local additive = card.ability.extra.add * number
		ease_ante(-additive)
	end
}

SMODS.Consumable {
	key = 'wonder',
	set = 'Spectral',
	loc_txt = {
		name = '{C:tarot}Wonder',
		text = {
			'Gives {C:attention}#1# {C:tarot}Charm{},',
			'{X:inactive}Buffoon{}, {C:planet}Meteor{},',
			'{C:attention}Standard{} and {C:spectral}Ethereal {C:attention}Tags',
			'{C:dark_edition,s:0.7,E:2}Art by : spikeberd'
		}
	},
	set_card_type_badge = maskcard,
	config = {extra = {add = 2}},
	pos = { x = 9, y = 4 },
	cost = 12,
	unlocked = true,
	discovered = true,
	hidden = true,
	soul_rate = 0.02,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {(((center or {}).ability or {}).extra or {}).add or 2}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local additive = card.ability.extra.add
		for i = 1, additive do
			add_tag(Tag('tag_charm'))
			add_tag(Tag('tag_buffoon'))
			add_tag(Tag('tag_meteor'))
			add_tag(Tag('tag_standard'))
			add_tag(Tag('tag_ethereal'))
		end
	end,
	bulk_use = function(self, card, area, copier, number)
		local additive = card.ability.extra.add * number
		for i = 1, additive do
			add_tag(Tag('tag_charm'))
			add_tag(Tag('tag_buffoon'))
			add_tag(Tag('tag_meteor'))
			add_tag(Tag('tag_standard'))
			add_tag(Tag('tag_ethereal'))
		end
	end
}

local sssb = function(self, card, badges)
	badges[#badges + 1] = create_badge('S.S.S.B.', get_type_colour(self or card.config, card), nil, 1.2)
end

local spacedebris = function(self, card, badges)
	badges[#badges + 1] = create_badge('Space Debris', get_type_colour(self or card.config, card), nil, 1.2)
end

local stardust = function(self, card, badges)
	badges[#badges + 1] = create_badge('Stardust', get_type_colour(self or card.config, card), nil, 1.2)
end

local spacecraft = function(self, card, badges)
	badges[#badges + 1] = create_badge('Spacecraft', get_type_colour(self or card.config, card), nil, 1.2)
end

local natsat = function(self, card, badges)
	badges[#badges + 1] = create_badge('Natural Satellite', get_type_colour(self or card.config, card), nil, 1.2)
end

local galilean = function(self, card, badges)
	badges[#badges + 1] = create_badge('Galilean Moon', get_type_colour(self or card.config, card), nil, 1.2)
end

local hoxxesplanet = function(self, card, badges)
	badges[#badges + 1] = create_badge("Karl's Hellhole", get_type_colour(self or card.config, card), nil, 1.2)
end

local hoxxesblurbs = {
	'Rock and Stone!',
	'Like that; Rock and Stone!',
	'Stone and Rock! ...Oh, wait-?',
	'Rock solid!',
	"Rock'n'roll'n'stone!",
	'Rock on!',
	'For Rock and Stone!',
	'Rock and Stone forever!',
	'By the Beard!',
	'Stone.',
	'Yeah, yeah, Rock and Stone...',
	'We fight, for Rock and Stone!',
	'Did I hear a Rock and Stone?',
	'Rock and Stone, brotha!',
	'Leave no dwarf behind!',
	"If y'don't Rock 'n' Stone; you ain't comin' home!",
	'Karl would approve of this!',
	'For Karl!',
	'To Karl!',
	'Skal!',
	"We're rich!",
	"Mushroom.",
	"Mushroom!"
}


--[[ ##THIS NEEDS A REVISION##
local hoxxes_max = 1000

SMODS.Consumable {
	key = 'hoxxes',
	loc_txt = {
		name = 'Hoxxes',
		text = {
			'{C:attention}Mines{} each {C:attention}playing card{} in hand, {C:attention}downgrading{} its {C:attention}rank{} by {C:attention}1',
			'Repeat this by its {C:attention}max number of self-retriggers{} if it has any',
			'Apply {C:attention}various bonuses {C:inactive}(chip, mult, dollars){} to {C:attention}most played hand{} for each hit',
			'If card is a {C:attention}2{} or {C:attention}Stone{}, {C:red}destroy it{} and {C:planet}level up the hand',
			'{C:attention}Glass{} cards have a {C:green}#1# in 4 chance{} to {C:red}be destroyed instantly{} with each hit',
			'{C:inactive}(Most played hand : {C:attention}#2#{C:inactive})',
			'{C:inactive}(Max limit of ' .. number_format(hoxxes_max) .. ' cards)'
		}
	},
	set = 'Spectral',
    hidden = true,
	soul_rate = 0.02,
    soul_set = "Planet",
	set_card_type_badge = hoxxesplanet,
	pos = { x = 0, y = 0 },
	cost = 15,
	unlocked = true,
	discovered = true,
	atlas = 'jenhoxxes',
    loc_vars = function(self, info_queue, center)
        return {vars = {G.GAME.probabilities.normal, localize(jl.favhand(), 'poker_hands')}}
    end,
	can_use = function(self, card)
		return jl.canuse() and (G.STATE == G.STATES.SELECTING_HAND or (jl.booster() and (((card.area or {}) ~= G.consumeables) or #G.hand.cards > 0)))
	end,
	use = function(self, card, area, copier)
		if #G.hand.cards > 0 then
			local hand = jl.favhand()
			local exhausted = {}
			jl.th(hand)
			for k, v in ipairs(G.hand.cards) do
				if k <= hoxxes_max and v.gc and v:gc().key ~= 'j_jen_goob_lefthand' and v:gc().key ~= 'j_jen_goob_righthand' then
					local iterations = 1
					local extrachips = v.ability.name == 'Stone Card' and 0 or v.base.nominal
					local extramult = 0
					local xm = 1
					local xc = 1
					local em = 1
					local ec = 1
					local eem = to_big(1)
					local eec = to_big(1)
					local eeem = to_big(1)
					local eeec = to_big(1)
					local money = 0
					local willbreak = -1
					local predictedrank = v.base.id or 2
					local obj = v.edition or {}
					local levelup = false
					if v.ability.retriggers or v.ability.repetitions then
						iterations = iterations + (v.ability.retriggers or v.ability.repetitions)
					end
					if obj.retriggers or obj.repetitions then
						iterations = iterations + (obj.retriggers or obj.repetitions)
					end
						local obj2 = v:gc().config
						if obj2.retriggers or obj2.repetitions then
							iterations = iterations + (obj2.retriggers or obj2.repetitions)
						end
						for i = 1, iterations do
							if i ~= 1 then
								extrachips = extrachips + predictedrank
							end
							if obj2.mult and obj2.mult > 0 then
								extramult = extramult + obj2.mult
							end
							if obj2.bonus and obj2.bonus > 0 then
								extrachips = extrachips + obj2.bonus
							end
							if obj2.p_dollars and obj2.p_dollars > 0 then
								money = money + obj2.p_dollars
							end
							if obj2.h_dollars and obj2.h_dollars > 0 then
								money = money + obj2.h_dollars
							end
							if v.ability.perma_bonus and v.ability.perma_bonus > 0 then
								extrachips = extrachips + v.ability.perma_bonus
							end
							if obj2.h_x_mult and obj2.h_x_mult > 1 then
								xm = xm * obj2.h_x_mult
							end
							if obj2.Xmult and obj2.Xmult > 1 then
								xm = xm * obj2.Xmult
							end
							if obj and next(obj) ~= nil and not obj.negative then
								if obj.chips then
									extrachips = extrachips + obj.chips
								end
								if obj.mult then
									extramult = extramult + obj.mult
								end
								if obj.p_dollars then
									money = money + obj.p_dollars
								end
								if obj.x_mult then
									xm = xm * obj.x_mult
								end
								if obj.x_chips then
									xc = xc * obj.x_chips
								end
								if obj.e_mult then
									em = (em <= 1 and obj.e_mult or (em ^ obj.e_mult))
								end
							end
							predictedrank = predictedrank - 1
							if (v.ability.name == 'Glass Card' and jl.chance('mining_glass', 4)) or predictedrank < 2 or v:norank() then
								willbreak = i
								levelup = true
								break
							end
						end
					G.E_MANAGER:add_event(Event({delay = 1, func = function()
						card:juice_up(0.5, 0.2)
						v:juice_up(1, 1)
						if v:get_id() <= 2 or iterations == willbreak then
							iterations = 0
							play_sound(v.ability.name == 'Glass Card' and 'jen_crystalbreak' or ('jen_metalbreak' .. math.random(2)), 1, 0.4)
							if v.facing == 'front' then v:flip() end
							local suit_prefix = string.sub(v.base.suit, 1, 1)..'_'
							v:set_base(G.P_CARDS[suit_prefix..'2'])
							table.insert(exhausted, v)
							add_malice(5)
						else
							iterations = iterations - 1
							local suit_prefix = string.sub(v.base.suit, 1, 1)..'_'
							local rank_suffix = math.max(v.base.id-1, 2)
							if rank_suffix < 10 then rank_suffix = tostring(rank_suffix)
							elseif rank_suffix == 10 then rank_suffix = 'T'
							elseif rank_suffix == 11 then rank_suffix = 'J'
							elseif rank_suffix == 12 then rank_suffix = 'Q'
							elseif rank_suffix == 13 then rank_suffix = 'K'
							end
							if G.P_CARDS[suit_prefix..rank_suffix] then
							v:set_base(G.P_CARDS[suit_prefix..rank_suffix])
							play_sound(v.ability.name == 'Glass Card' and ('jen_crystalhit' .. math.random(3)) or 'jen_metalhit', 1, 0.4)
						end
					return iterations < 1 end }))
						if levelup then
							level_up_hand(v, hand, nil, 1)
						end
						if extrachips > 0 then
							G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
								play_sound('chips1')
								v:juice_up(0.8, 0.5)
							return true end }))
							update_hand_text({delay = 0}, {chips = '+' .. number_format(extrachips), StatusText = true})
							G.GAME.hands[hand].chips = G.GAME.hands[hand].chips + extrachips
						end
						if extramult > 0 then
							G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
								play_sound('multhit1')
								v:juice_up(0.8, 0.5)
							return true end }))
							update_hand_text({delay = 0}, {mult = '+' .. number_format(extramult), StatusText = true})
							G.GAME.hands[hand].mult = G.GAME.hands[hand].mult + extramult
						end
						if xc > 1 then
							G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
								play_sound('talisman_xchip')
								v:juice_up(0.8, 0.5)
							return true end }))
							update_hand_text({delay = 0}, {chips = 'x' .. tostring(jl.round(xc, 3)), StatusText = true})
							G.GAME.hands[hand].chips = G.GAME.hands[hand].chips * xc
						end
						if xm > 1 then
							G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
								play_sound('multhit2')
								v:juice_up(0.8, 0.5)
							return true end }))
							update_hand_text({delay = 0}, {mult = 'x' .. tostring(jl.round(xm, 3)), StatusText = true})
							G.GAME.hands[hand].mult = G.GAME.hands[hand].mult * xm
						end
						if em > 1 then
							G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.3, func = function()
								play_sound('talisman_emult')
								v:juice_up(0.8, 0.5)
							return true end }))
							update_hand_text({delay = 0}, {mult = '^' .. tostring(jl.round(em, 3)), StatusText = true})
							G.GAME.hands[hand].mult = G.GAME.hands[hand].mult ^ em
						end
						if money > 0 then
							ease_dollars(money)
						end
					delay(1)
					update_hand_text({sound = 'button', volume = 0.5, pitch = 1.1, delay = 0.3}, {handname=localize(hand, 'poker_hands'),chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult, level=G.GAME.hands[hand].level})
				end
			end
			jl.rd(2)
			jl.ch()
			G.E_MANAGER:add_event(Event({trigger = 'after', func = function()
				for k, v in pairs(exhausted) do
					v:start_dissolve()
				end
				jl.jokers({ remove_playing_cards = true, removed = exhausted })
			return true end }))
			local rnd = math.random(#hoxxesblurbs)
			if rnd == #hoxxesblurbs - 2 then
				play_sound_q('jen_wererich')
			elseif rnd == #hoxxesblurbs - 1 then
				play_sound_q('jen_mushroom1')
			elseif rnd == #hoxxesblurbs then
				play_sound_q('jen_mushroom2')
			end
			add_malice(25)
			card_eval_status_text(card, 'extra', nil, nil, nil, {message = hoxxesblurbs[rnd], colour = G.C.PURPLE})
		else
			local card2 = create_card('Spectral', G.consumeables, nil, nil, nil, nil, card:gc().key, 'hoxxesreturn')
			card2:add_to_deck()
			G.consumeables:emplace(card2)
		end
	end
}
]]

local yawetag_badge = function(self, card, badges)
	badges[#badges + 1] = create_badge("Spectral?", G.C.CRY_EMBER, G.C.CRY_ASCENDANT, 1.2)
end

SMODS.Consumable {
	key = 'yawetag',
	loc_txt = {
		name = 'Yawetag',
		text = {
			'Create a {C:jen_RGB,E:1,s:1.5}Wondrous{C:attention} Joker{},',
			'{C:red}destroy{} all other Jokers, {C:red,s:1.25}including {C:purple,s:1.25}Eternals'
		}
	},
	set = 'Spectral',
	pos = { x = 0, y = 0 },
	soul_pos = { x = 2, y = 0, extra = { x = 1, y = 0 }},
	cost = 15,
	unlocked = true,
	discovered = true,
	atlas = 'jenyawetag',
	set_card_type_badge = yawetag_badge,
	hidden = true,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		if #SMODS.find_card("j_jen_saint_attuned") <= 0 then
			Q(function()
				for k, v in ipairs(G.jokers.cards) do
					if v.gc and v:gc().key ~= 'j_jen_kosmos' then
						v:destroy()
					end
				end
				return true
			end, 0.4)
		end
		Q(function()
			play_sound('jen_gong')
			local card = create_card('Joker', G.jokers, nil, 'jen_wondrous', nil, nil, nil, 'jen_yawetag')
			card:add_to_deck()
			G.jokers:emplace(card)
			card:juice_up(0.3, 0.5)
			return true
		end, 0.75)
	end,
}

SMODS.Consumable {
	key = 'debris',
	loc_txt = {
		name = 'Debris',
		text = {
			'Upgrade a {C:green}random',
			'poker hand by {C:attention}one-twentieth',
			'{C:inactive,s:0.75}(Cannot be editioned, and does not trigger Astronomicon or leveling jokers)',
			'{C:dark_edition,s:0.7,E:2}Art by : Maxie'
		}
	},
	set = 'Planet',
	set_card_type_badge = spacedebris,
	pos = { x = 6, y = 2 },
	cost = 1,
	unlocked = true,
	discovered = true,
	cannot_edition = true,
	cant_astronomy = true,
	atlas = 'jenacc',
	in_pool = function() return false end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local hand = jl.rndhand()
		jl.th(hand)
		level_up_hand(card, hand, nil, 0.05, true, true, true)
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		local hands = {}
		for i = 1, number do
			local hand = jl.rndhand()
			hands[hand] = (hands[hand] or 0) + 0.05
		end
		for k, v in pairs(hands) do
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(k, 'poker_hands'),chips = G.GAME.hands[k].chips, mult = G.GAME.hands[k].mult, level=G.GAME.hands[k].level})
			jl.a('+' .. tostring(v), 0.75, 2, G.C.BLUE, 'generic1')
			delay(0.75)
			level_up_hand(card, k, nil, v, true, true, true)
		end
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'comet',
	loc_txt = {
		name = 'Comet',
		text = {
			'Upgrade a {C:green}random',
			'poker hand by {C:attention}#1#',
			'{C:dark_edition,s:0.7,E:2}Art by : spikeberd'
		}
	},
	config = {extra = {levels = 2}},
	set = 'Planet',
	set_card_type_badge = sssb,
	pos = { x = 0, y = 2 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {(((center or {}).ability or {}).extra or {}).levels or 2}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local hand = jl.rndhand()
		jl.th(hand)
		level_up_hand(card, hand, nil, card.ability.extra.levels)
		jl.ch()
	end,
	bulk_use = function(self,card,area,copier,number)
		local hands = {}
		for i = 1, number do
			local hand = jl.rndhand()
			hands[hand] = (hands[hand] or 0) + card.ability.extra.levels
		end
		for k, v in pairs(hands) do
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(k, 'poker_hands'),chips = G.GAME.hands[k].chips, mult = G.GAME.hands[k].mult, level=G.GAME.hands[k].level})
			jl.a('+' .. tostring(v), 0.75, 2, G.C.BLUE, 'generic1')
			delay(0.75)
			level_up_hand(card, k, nil, v)
		end
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'meteor',
	loc_txt = {
		name = 'Meteor',
		text = {
			'Upgrades a {C:green}random',
			'poker hand by {C:attention}#1#{},',
			'but {C:red}downgrades{} a {C:attention}different',
			'{C:green}random{} poker hand by {C:red}#2#',
			'{C:dark_edition,s:0.7,E:2}Art by : spikeberd'
		}
	},
	config = {extra = {levels = 3, downgrades = 1}},
	jumbo_mod = 3,
	set = 'Planet',
	set_card_type_badge = spacedebris,
	pos = { x = 1, y = 2 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {(((center or {}).ability or {}).extra or {}).levels or 3, ((((center or {}).ability or {}).extra or {}).downgrades or 1)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local hand = jl.rndhand()
		jl.th(hand)
		level_up_hand(card, hand, nil, card.ability.extra.levels)
		hand = jl.rndhand(hand)
		local downgradefactor = card.ability.extra.downgrades
		jl.th(hand)
		if downgradefactor <= 0 then
			jl.a('Safe!', 0.75, 2, G.C.FILTER, 'generic1')
			delay(0.75)
		else
			level_up_hand(card, hand, nil, -downgradefactor)
		end
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		local hands = {}
		for i = 1, number do
			local hand = jl.rndhand()
			hands[hand] = (hands[hand] or 0) + card.ability.extra.levels
			hand = jl.rndhand(hand)
			hands[hand] = (hands[hand] or 0) - card.ability.extra.downgrades
		end
		for k, v in pairs(hands) do
			local downgradefactor = v
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(k, 'poker_hands'),chips = G.GAME.hands[k].chips, mult = G.GAME.hands[k].mult, level=G.GAME.hands[k].level})
			if v == 0 then
				jl.a('0', 0.75, 2, G.C.FILTER, 'generic1')
				delay(0.75)
			else
				jl.a((v > 0 and '+' or '-') .. tostring(math.abs(v)), 0.75, 2, (v < 0 and G.C.RED or G.C.BLUE), 'generic1')
				delay(0.75)
				level_up_hand(card, k, nil, v)
			end
		end
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'satellite',
	loc_txt = {
		name = 'Satellite',
		text = {
			'Creates up to {C:attention}#1#',
			'random {C:planet}Planet{} card(s)',
			'{C:inactive}(Copies edition of this card if it has one)',
			mayoverflow,
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	config = {extra = {planets = 2}},
	set = 'Planet',
	set_card_type_badge = spacecraft,
	pos = { x = 2, y = 2 },
	cost = 3,
	jumbo_mod = 3,
	aurinko = true,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {math.ceil((((center or {}).ability or {}).extra or {}).planets or 2)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		if not card.already_used_once then
			card.already_used_once = true
			for i = 1, math.ceil(card.ability.extra.planets) do
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
						play_sound('jen_draw')
						local card2 = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'satellite_planet')
						if card.edition then
							card2:set_edition(card.edition, true)
						end
						card2:add_to_deck()
						G.consumeables:emplace(card2)
						card:juice_up(0.3, 0.5)
					return true
				end }))
			end
			Q(function() Q(function() if card then card.already_used_once = nil end return true end) return true end)
			delay(0.6)
		end
	end,
	bulk_use = function(self, card, area, copier, number)
		if not card.already_used_once then
			local quota = math.ceil(card.ability.extra.planets) * number
			card.already_used_once = true
			if quota > 20 then
				for i = 1, quota do
					local card2 = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'satellite_planet')
					if card.edition then
						card2:set_edition(card.edition, true)
					end
					card2:add_to_deck()
					G.consumeables:emplace(card2)
					card:juice_up(0.3, 0.5)
				end
			else
				for i = 1, quota do
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'satellite_planet')
							if card.edition then
								card2:set_edition(card.edition, true)
							end
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
						return true
					end }))
				end
			end
			Q(function() Q(function() if card then card.already_used_once = nil end return true end) return true end)
			delay(0.6)
		end
	end
}

local power_enhancements = {
	'xmult',
	'emult',
	'xchip',
	'echip',
	'power',
	'tossy',
	'handy',
	'juggler',
	'cash',
	'potassium',
	'fizzy',
	'osmium',
	'fortune',
	'astro'
}

SMODS.Consumable {
	key = 'centurion',
	loc_txt = {
		name = 'The Centurion',
		text = {
			'Enhance up to {C:attention}#1#{} selected card(s)',
			'into a random {C:cry_exotic,E:1}Power{} card',
			spriter('mailingway')
		}
	},
	config = {max_highlighted = 2},
	set = 'Tarot',
	pos = { x = 0, y = 0 },
	cost = 4,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).max_highlighted or 2}}
    end,
	can_use = function(self, card)
		return jl.canuse() and #G.hand.highlighted <= (card.ability.max_highlighted + (card.area == G.hand and 1 or 0)) and #G.hand.highlighted > (card.area == G.hand and 1 or 0)
	end,
	use = function(self, card, area, copier)
		if #G.hand.highlighted > 0 then
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
				play_sound('tarot1')
				card:juice_up(0.3, 0.5)
			return true end }))
			for i=1, #G.hand.highlighted do
				local percent = 1.15 - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
				G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.highlighted[i]:flip();play_sound('card1', percent);G.hand.highlighted[i]:juice_up(0.3, 0.3);return true end }))
			end
			delay(0.2)
			for i=1, #G.hand.highlighted do
				local CARD = G.hand.highlighted[i]
				local percent = 0.85 + (i-0.999)/(#G.hand.highlighted-0.998)*0.3
				G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand:remove_from_highlighted(CARD);CARD:flip();CARD:set_ability(G.P_CENTERS['m_jen_' .. pseudorandom_element(power_enhancements, pseudoseed("centurion_random"))], true, nil);play_sound('jen_pop');CARD:juice_up(0.3, 0.3);return true end }))
			end
		end
	end
}

SMODS.Consumable {
	key = 'sleeve',
	loc_txt = {
		name = 'The Sleeve',
		text = {
			'Enhance up to {C:attention}#1#{} selected card(s)',
			'into a random {C:cry_epic,E:1}Hand{} card',
			spriter('mailingway')
		}
	},
	config = {max_highlighted = 3},
	set = 'Tarot',
	pos = { x = 1, y = 0 },
	cost = 4,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).max_highlighted or 3}}
    end,
	can_use = function(self, card)
		return jl.canuse() and #G.hand.highlighted <= (card.ability.max_highlighted + (card.area == G.hand and 1 or 0)) and #G.hand.highlighted > (card.area == G.hand and 1 or 0)
	end,
	use = function(self, card, area, copier)
		if #G.hand.highlighted > 0 then
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
				play_sound('tarot1')
				card:juice_up(0.3, 0.5)
			return true end }))
			for i=1, #G.hand.highlighted do
				local percent = 1.15 - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
				G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand.highlighted[i]:flip();play_sound('card1', percent);G.hand.highlighted[i]:juice_up(0.3, 0.3);return true end }))
			end
			delay(0.2)
			for i=1, #G.hand.highlighted do
				local CARD = G.hand.highlighted[i]
				local percent = 0.85 + (i-0.999)/(#G.hand.highlighted-0.998)*0.3
				G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand:remove_from_highlighted(CARD);CARD:flip();CARD:set_ability(G.P_CENTERS['m_jen_' .. string.lower(pseudorandom_element(handinacard, pseudoseed("sleeve_random"))[2])], true, nil);play_sound('jen_pop');CARD:juice_up(0.3, 0.3);return true end }))
			end
		end
	end
}

SMODS.Consumable {
	key = 'sizeoflife',
	loc_txt = {
		name = 'The Size of Life',
		text = {
			'Apply {C:dark_edition}Wee{} on',
			'up to {C:attention}#1#{} selected card(s)',
			spriter('mailingway')
		}
	},
	config = {max_highlighted = 1},
	set = 'Tarot',
	pos = { x = 2, y = 0 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).max_highlighted or 1}}
    end,
	can_use = function(self, card)
		return jl.canuse() and #G.hand.highlighted <= (card.ability.max_highlighted + (card.area == G.hand and 1 or 0)) and #G.hand.highlighted > (card.area == G.hand and 1 or 0)
	end,
	use = function(self, card, area, copier)
		if #G.hand.highlighted > 0 then
			for k, v in pairs(G.hand.highlighted) do
				v:set_edition({jen_wee = true})
				Q(function() G.hand:remove_from_highlighted(v) return true end)
			end
		end
	end
}

--[[SMODS.Consumable {
	key = 'bazaar',
	loc_txt = {
		name = 'The Bazaar',
		text = {
			'Choose up to {C:attention}#1#{} playing cards',
			'If the card is {C:attention}not enhanced{}, {C:green,E:1}randomise{} it for {C:money}$1',
			'If the card is {C:attention}enhanced{}, {C:money}sell{} it for {C:money}$4 + its sell value'
			spriter('cozyori')
		}
	},
	config = {max_highlighted = 5},
	set = 'Tarot',
	pos = { x = 3, y = 0 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).max_highlighted or 1}}
    end,
	can_use = function(self, card)
		return jl.canuse() and #G.hand.highlighted <= (card.ability.max_highlighted + (card.area == G.hand and 1 or 0)) and #G.hand.highlighted > (card.area == G.hand and 1 or 0)
	end,
	use = function(self, card, area, copier)
		if #G.hand.highlighted > 0 then
			for k, v in pairs(G.hand.highlighted) do
				v:set_edition({jen_wee = true})
				Q(function() G.hand:remove_from_highlighted(v) return true end)
			end
		end
	end
}]]

local jokerinatarot_blurbs = {
	"Hey! Pick me!",
	"You wouldn't say no to a free negative me, would you?",
	"Sometimes, an extra four mult goes a long way!",
	"I won't take up space, I promise!",
	"Don't ask how I ended up in a tarot!",
	"Hee-hee, hoo-hoo!",
	"Who knew even fortunes could be a circus act?",
	"Looks like the joke is on the crystal globe!",
	"It's a little cramped in this tarot...!",
	"Ouch, I think the joke is on me!",
	"Looks like the joke is on you!",
	"I'm not just a clown; I'm the whole circus!",
	"Seems a little suspicious for a jolly old fella like me to be in this card...",
	"I can't help if I'm still in this silly old card, break me out!",
	"Let me tell you, you'd love the show going on in this tarot!",
	"I'd give you more tickets to JimCon, but I'm fresh out.",
	"I've heard of a round buffoon that lives in a pretty funky town...",
	"I can't give four mult if I'm still in this card!",
	"I'm rooting for you! Even if it means I'll never get out of this card...",
	"Who knew I'd have access to a great show? That show being you!",
	"The stakes are only gonna rise here!",
	"Juggling is one of my favourite passtimes!",
	"I wonder what's the deal with pairs?",
	"You don't need to understand math to enjoy watching the digits climb!",
	"You should meet my friend Joseph; he's stuck in a Planet card!",
	"M!",
	"Hotfix!"
}

local jokerinaplanet_blurbs = {
	"Hey, can you hear me? You gotta get me outta here.",
	"I don't trust Jimbo...",
	"This card is making me feel breathless. Literally!",
	"How did I even get here?",
	"I don't even like astronomy.",
	"John, wherever you are... HEEEEEEEEEELP!!!",
	"Get me outta here, man!!",
	"Why must I be in this dang card?",
	"I guess I could help you...",
	"Have you been grinding for that one-in-a-thousand chance for Jimbo?",
	"I need some Joker-Cola...",
	"Have you seen John? He's my friend, and I heard he's got himself into a Tarot card...",
	"M... I guess?",
	"Hotfix... I guess?"
}

SMODS.Consumable {
	key = 'jokerinatarot',
	loc_txt = {
		name = 'Joker-in-a-Tarot',
		text = {
			'Create a {C:dark_edition}Negative {C:attention}default Joker',
			'{C:green}0.1% chance{} to create {C:jen_RGB,E:1,s:1.5}Jimbo{} instead',
			"{C:inactive,E:1}#1#{}"
		}
	},
	config = {},
	set = 'Tarot',
	pos = { x = 0, y = 1 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {jokerinatarot_blurbs[math.random(#jokerinatarot_blurbs)]}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		if jl.chance('jokerinatarot_secret', 1000, true) then
			local card2 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_jen_jimbo', 'jokerfromatarot')
			G.jokers:emplace(card2)
			play_sound_q('jen_omegacard', 1, 0.75)
			card2:add_to_deck()
			jl.a('Hee-hee, hoo-hoo!!', G.SETTINGS.GAMESPEED, 1, G.C.DARK_EDITION)
			jl.rd(1)
		else
			local card2 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_joker', 'jokerfromatarot')
			card2.no_forced_edition = true
			card2:set_edition({negative = true}, true)
			card2.no_forced_edition = nil
			card2.base_cost = 1
			card2.extra_cost = 0
			card2.cost = 1
			card2.sell_cost = 1
			card2.sell_cost_label = card2.facing == 'back' and '?' or card2.sell_cost
			card2:add_to_deck()
			G.jokers:emplace(card2)
		end
	end,
	bulk_use = function(self, card, area, copier, number)
		for i = 1, number do
			if jl.chance('jokerinatarot_secret', 1000, true) then
				local card2 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_jen_jimbo', 'jokerfromatarot')
				G.jokers:emplace(card2)
				play_sound_q('jen_omegacard', 1, 0.75)
				card2:add_to_deck()
				jl.a('Hee-hee, hoo-hoo!!', G.SETTINGS.GAMESPEED, 1, G.C.DARK_EDITION)
				jl.rd(1)
			else
				local card2 = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_joker', 'jokerfromatarot')
				card2.no_forced_edition = true
				card2:set_edition({negative = true}, true)
				card2.no_forced_edition = nil
				card2.base_cost = 1
				card2.extra_cost = 0
				card2.cost = 1
				card2.sell_cost = 1
				card2.sell_cost_label = card2.facing == 'back' and '?' or card2.sell_cost
				card2:add_to_deck()
				G.jokers:emplace(card2)
			end
		end
	end
}

SMODS.Consumable {
	key = 'jokerinaplanet',
	loc_txt = {
		name = 'Joker-in-a-Planet',
		text = {
			"For each {C:attention}default Joker{}, {C:planet}level up",
			'a {C:attention}random discovered poker hand{} by {C:attention}1',
			'plus {C:attention}1{} for each {C:attention}other default Joker{} that came before it',
			'{C:jen_RGB,E:1,s:1.5}Jimbo{} levels up by {X:planet,C:dark_edition}^1.13{} instead',
			"{C:inactive,E:1}#1#{}"
		}
	},
	ignore_allplanets = true,
	set = 'Planet',
	pos = { x = 1, y = 1 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
	in_pool = function() return #SMODS.find_card('j_joker') > 0 end,
    loc_vars = function(self, info_queue, center)
        return {vars = {jokerinaplanet_blurbs[math.random(#jokerinaplanet_blurbs)]}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local hand = 'n/a'
		local upgrades = 0
		if #SMODS.find_card('j_joker') + #SMODS.find_card('j_jen_jimbo') > 0 then
			for k, v in ipairs(SMODS.find_card('j_joker')) do
				hand = jl.rndhand()
				jl.th(hand)
				Q(function() v:juice_up(1, 0.5) return true end)
				upgrades = upgrades + 1
				level_up_hand(card, hand, nil, upgrades)
			end
			for k, v in ipairs(SMODS.find_card('j_jen_jimbo')) do
				hand = jl.rndhand()
				local lvs = math.ceil(G.GAME.hands[hand].level ^ 1.13) - G.GAME.hands[hand].level
				jl.th(hand)
				Q(function() v:juice_up(1, 0.5) return true end)
				level_up_hand(card, hand, nil, lvs)
			end
			jl.ch()
		else
			jl.a('No default jokers!', G.SETTINGS.GAMESPEED, 0.65, G.C.RED, 'timpani')
			jl.rd(1)
		end
	end,
	bulk_use = function(self, card, area, copier, number)
		local hand = 'n/a'
		local upgrades = 0
		if #SMODS.find_card('j_joker') + #SMODS.find_card('j_jen_jimbo') > 0 then
			for i = 1, number do
				upgrades = 0
				for k, v in ipairs(SMODS.find_card('j_joker')) do
					hand = jl.rndhand()
					jl.th(hand)
					Q(function() v:juice_up(1, 0.5) return true end)
					upgrades = upgrades + 1
					level_up_hand(card, hand, nil, upgrades)
				end
				for k, v in ipairs(SMODS.find_card('j_jen_jimbo')) do
					hand = jl.rndhand()
					local lvs = math.ceil(G.GAME.hands[hand].level ^ 1.13) - G.GAME.hands[hand].level
					jl.th(hand)
					Q(function() v:juice_up(1, 0.5) return true end)
					level_up_hand(card, hand, nil, lvs)
				end
			end
			jl.ch()
		else
			jl.a('No default jokers!', G.SETTINGS.GAMESPEED, 0.65, G.C.RED, 'timpani')
			jl.rd(1)
		end
	end
}

SMODS.Consumable {
	key = 'moon',
	loc_txt = {
		name = 'Moon',
		text = {
			'Creates up to {C:attention}#1#',
			'random {C:attention}consumable(s)',
			'{C:inactive}(Copies edition of this card if it has one)',
			mayoverflow,
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	config = {extra = {extraconsumables = 1}},
	set = 'Planet',
	set_card_type_badge = natsat,
	pos = { x = 3, y = 2 },
	cost = 3,
	jumbo_mod = 3,
	aurinko = true,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {math.ceil((((center or {}).ability or {}).extra or {}).extraconsumables or 1)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		if not card.already_used_once then
			card.already_used_once = true
			for i = 1, math.ceil(card.ability.extra.extraconsumables) do
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
						play_sound('jen_draw')
						local card2 = create_card('Consumeables', G.consumeables, nil, nil, nil, nil, nil, 'moon_planet')
						if card.edition then
							card2:set_edition(card.edition, true)
						end
						card2:add_to_deck()
						G.consumeables:emplace(card2)
						card:juice_up(0.3, 0.5)
					return true
				end }))
			end
			Q(function() Q(function() if card then card.already_used_once = nil end return true end) return true end)
			delay(0.6)
		end
	end,
	bulk_use = function(self, card, area, copier, number)
		if not card.already_used_once then
			local quota = math.ceil(card.ability.extra.extraconsumables) * number
			card.already_used_once = true
			if quota > 20 then
				for i = 1, quota do
					local card2 = create_card('Consumeables', G.consumeables, nil, nil, nil, nil, nil, 'moon_planet')
					if card.edition then
						card2:set_edition(card.edition, true)
					end
					card2:add_to_deck()
					G.consumeables:emplace(card2)
					card:juice_up(0.3, 0.5)
				end
			else
				for i = 1, quota do
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Consumeables', G.consumeables, nil, nil, nil, nil, nil, 'moon_planet')
							if card.edition then
								card2:set_edition(card.edition, true)
							end
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
						return true
					end }))
				end
			end
			Q(function() Q(function() if card then card.already_used_once = nil end return true end) return true end)
			delay(0.6)
		end
	end
}

SMODS.Consumable {
	key = 'spacestation',
	loc_txt = {
		name = 'Space Station',
		text = {
			'Upgrade your {C:attention}most played poker hand',
			'by {C:attention}#1#{} level(s)',
			'{C:inactive}(#2#)',
			'{C:dark_edition,s:0.7,E:2}Art by : spikeberd'
		}
	},
	config = {extra = {levels = 1}},
	jumbo_mod = 3,
	set = 'Planet',
	set_card_type_badge = spacecraft,
	pos = { x = 4, y = 2 },
	cost = 3,
	ayanami = true,
	aurinko = true,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {(((center or {}).ability or {}).extra or {}).levels or 1, localize(jl.favhand(), 'poker_hands')}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local hand = jl.favhand()
		card:do_jen_astronomy(hand)
		jl.th(hand)
		level_up_hand(card, hand, nil, card.ability.extra.levels)
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		local hand = jl.favhand()
		card:do_jen_astronomy(hand, number)
		jl.th(hand)
		level_up_hand(card, hand, nil, card.ability.extra.levels * number)
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'dysnomia',
	loc_txt = {
		name = 'Dysnomia',
		text = {
			'{C:green}Randomly{} shifts the level of',
			'{C:attention}all poker hands{} by',
			'{C:red}#1#{} to {C:attention}#2#{} level(s)',
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	config = {extra = {down = -1, up = 2}},
	set = 'Planet',
	set_card_type_badge = natsat,
	pos = { x = 5, y = 2 },
	cost = 3,
	jumbo_mod = 3,
	aurinko = true,
	unlocked = true,
	discovered = true,
	atlas = 'jenacc',
    loc_vars = function(self, info_queue, center)
        return {vars = {math.floor((((center or {}).ability or {}).extra or {}).down or -1), math.ceil((((center or {}).ability or {}).extra or {}).up or 2)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		if card.ability.cry_rigged then
			Q(function()
				play_sound('gong', 0.94, 0.3)
				play_sound('gong', 0.94*1.5, 0.2)
				play_sound('tarot1', 1.5)
			return true end)
			jl.a('Rigged!', G.SETTINGS.GAMESPEED/2, 1.4, G.C.SET.Code)
			jl.rd(.5)
			lvupallhands(math.ceil(card.ability.extra.up), card)
		else
			jl.th('all')
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = true
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { mult = "?", notifcol = G.C.JOKER_GREY, StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { chips = "?", notifcol = G.C.JOKER_GREY, StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = nil
					return true
				end,
			}))
			update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, { level = card.ability.extra.down .. '~+' .. card.ability.extra.up })
			delay(1.3)
			for _, hand in ipairs(G.handlist) do
				local shift = pseudorandom('dysnomia', math.floor(card.ability.extra.down), math.ceil(card.ability.extra.up))
				if shift ~= 0 then
					level_up_hand(card, hand, true, shift)
				end
				jl.th(hand)
			end
			jl.ch()
		end
	end,
	bulk_use = function(self, card, area, copier, number)
		if card.ability.cry_rigged then
			Q(function()
				play_sound('gong', 0.94, 0.3)
				play_sound('gong', 0.94*1.5, 0.2)
				play_sound('tarot1', 1.5)
			return true end)
			jl.a('Rigged!', G.SETTINGS.GAMESPEED/2, 1.4, G.C.SET.Code)
			jl.rd(.5)
			lvupallhands(math.ceil(card.ability.extra.up) * number, card)
		else
			local hands = {}
			for i = 1, number do
				for _, hand in ipairs(G.handlist) do
					hands[hand] = (hands[hand] or 0) + pseudorandom('dysnomia', math.floor(card.ability.extra.down), math.ceil(card.ability.extra.up))
				end
			end
			jl.th('all')
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = true
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { mult = "?", notifcol = G.C.JOKER_GREY, StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { chips = "?", notifcol = G.C.JOKER_GREY, StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = nil
					return true
				end,
			}))
			update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, { level = card.ability.extra.down*number .. '~+' .. card.ability.extra.up*number })
			delay(1.3)
			for hand, lv in pairs(hands) do
				if lv ~= 0 then
					level_up_hand(card, hand, true, lv)
				end
				jl.th(hand)
			end
			jl.ch()
		end
	end
}

SMODS.Consumable {
	key = 'asteroid',
	loc_txt = {
		name = 'Asteroid',
		text = {
			'{C:planet}Level up{} all {C:purple}poker hands',
			'by {C:attention}#1#{}, plus another {C:attention}#1#',
			'for each {C:spectral}Spectral{} card used this run',
			'{C:inactive}(Currently #2#)',
			'{C:dark_edition,s:0.7,E:2}Art by : abreaker'
		}
	},
	config = {extra = {levels = 0.15}},
	jumbo_mod = 3,
	set = 'Planet',
	pos = { x = 0, y = 0 },
	cost = 3,
	aurinko = true,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
		local lv = (((center or {}).ability or {}).extra or {}).levels or 0.15
        return {vars = {lv, lv * (jl.ctu('spectral') + 1)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		card:blackhole(card.ability.extra.levels * (jl.ctu('spectral') + 1))
	end,
	bulk_use = function(self, card, area, copier, number)
		card:blackhole(card.ability.extra.levels * (jl.ctu('spectral') + 1) * number)
	end
}

SMODS.Consumable {
	key = 'voy1',
	loc_txt = {
		name = 'Voyager 1',
		text = {
			'{C:planet}Level up{} all {C:purple}poker hands',
			'by {C:attention}#1#{}, plus another {C:attention}#1#',
			'for each {C:planet}Planet{} card used this run',
			'{C:inactive}(Currently #2#)',
			'{C:dark_edition,s:0.7,E:2}Art by : ThreeCubed'
		}
	},
	config = {extra = {levels = 0.05}},
	jumbo_mod = 3,
	set_card_type_badge = spacecraft,
	set = 'Planet',
	pos = { x = 1, y = 0 },
	cost = 3,
	aurinko = true,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
		local lv = (((center or {}).ability or {}).extra or {}).levels or 0.05
        return {vars = {lv, lv * (jl.ctu('planet') + 1)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		card:blackhole(card.ability.extra.levels * jl.ctu('planet'))
	end,
	bulk_use = function(self, card, area, copier, number)
		card:blackhole(card.ability.extra.levels * jl.ctu('planet') * number)
	end
}

SMODS.Consumable {
	key = 'nebula',
	loc_txt = {
		name = 'Nebula',
		text = {
			'{C:planet}Level up{} all {C:purple}poker hands',
			'by {C:attention}#1#{}, plus another {C:attention}#1#',
			'for each {C:tarot}Tarot{} card used this run',
			'{C:inactive}(Currently #2#)',
			'{C:dark_edition,s:0.7,E:2}Art by : hexatheboi'
		}
	},
	config = {extra = {levels = 0.1}},
	jumbo_mod = 3,
	set_card_type_badge = stardust,
	set = 'Planet',
	pos = { x = 2, y = 0 },
	cost = 3,
	aurinko = true,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
		local lv = (((center or {}).ability or {}).extra or {}).levels or 0.1
        return {vars = {lv, lv * (jl.ctu('tarot') + 1)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		card:blackhole(card.ability.extra.levels * (jl.ctu('tarot') + 1))
	end,
	bulk_use = function(self, card, area, copier, number)
		card:blackhole(card.ability.extra.levels * (jl.ctu('tarot') + 1) * number)
	end
}

SMODS.Consumable {
	key = 'deimos',
	loc_txt = {
		name = 'Deimos',
		text = {
			'Take {C:attention}all but one{} levels from',
			'all {C:purple}poker hands{}, then',
			'{C:attention}equally redistribute{} taken levels',
			'across all {C:attention}discovered {C:purple}poker hands',
			'{C:dark_edition,s:0.7,E:2}Art by : smg9000'
		}
	},
	ignore_allplanets = true,
	set = 'Planet',
	pos = { x = 0, y = 1 },
	cost = 5,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local HANDS = {}
		local numhands = 0
		local levels = 0
		for k, v in pairs(G.GAME.hands) do
			if v.visible then
				HANDS[k] = true
				numhands = numhands + 1
			end
			    if to_big(v.level) > to_big(1) then
			                levels = levels + math.max(0, v.level - 1)
			                level_up_hand(nil, k, true, -v.level + 1, true, true)
			            end
		end
		jl.th('all')
		delay(1)
		levels = jl.round(levels / numhands, 2)
		Q(function()
			play_sound('gong', 0.94, 0.3)
			play_sound('gong', 0.94*1.5, 0.2)
			play_sound('tarot1', 1.5)
			card:juice_up(1, 0.5)
		return true end)
		jl.h(localize('k_all_hands'), '=', '=', '=' .. number_format(levels + 1), true)
		delay(1)
		for k, v in pairs(HANDS) do
			level_up_hand(nil, k, true, levels, true, true)
		end
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		local HANDS = {}
		local numhands = 0
		local levels = 0
		for k, v in pairs(G.GAME.hands) do
			if v.visible then
				HANDS[k] = true
				numhands = numhands + 1
			end
			    if to_big(v.level) > to_big(1) then
			                levels = levels + math.max(0, v.level - 1)
			                level_up_hand(nil, k, true, -v.level + 1, true, true)
			            end
		end
		jl.th('all')
		delay(1)
		levels = jl.round(levels / numhands, 2)
		Q(function()
			play_sound('gong', 0.94, 0.3)
			play_sound('gong', 0.94*1.5, 0.2)
			play_sound('tarot1', 1.5)
			card:juice_up(1, 0.5)
		return true end)
		jl.h(localize('k_all_hands'), '=', '=', '=' .. number_format(levels + 1), true)
		delay(1)
		for k, v in pairs(HANDS) do
			level_up_hand(nil, k, true, levels, true, true)
		end
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'phobos',
	loc_txt = {
		name = 'Phobos',
		text = {
			'Take {C:attention}#1# level(s){} from your',
			'{C:attention}most-leveled poker hand(s)',
			'and {C:attention}add three times{} the amount taken',
			'to your {C:attention}most played hand',
			'{C:inactive}(#2#)',
			'{C:inactive}(Can target itself)',
			'{C:dark_edition,s:0.7,E:2}Art by : Basilloon'
		}
	},
	ayanami = true,
	jumbo_mod = 3,
	config = {level_mod = 1},
	set = 'Planet',
	pos = { x = 1, y = 1 },
	cost = 5,
	unlocked = true,
	discovered = true,
	ayanami = true,
	atlas = 'jenplanets',
	can_use = function(self, card)
		return jl.canuse()
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).level_mod or 1, localize(jl.favhand(), 'poker_hands')}}
    end,
	use = function(self, card, area, copier)
		local hands = {}
		local max_level = 0
		local levels = 0
		for k, v in pairs(G.GAME.hands) do
					if to_big(v.level) > to_big(max_level) then
						hands = {[k] = true}
						max_level = v.level
					elseif to_big(v.level) == to_big(max_level) then
						hands[k] = true
					end
				end
		for k, v in pairs(hands) do
			levels = levels + card.ability.level_mod
			jl.th(k)
			level_up_hand(card, k, false, -card.ability.level_mod)
		end
		local fav = jl.favhand()
		card:do_jen_astronomy(fav, levels * 3) 
		jl.th(fav)
		level_up_hand(card, fav, false, levels * 3)
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		local current_levels = {}
		local hands = {}
		local fav = jl.favhand()
		local max_level = 0
		local levels = 0
		for k, v in pairs(G.GAME.hands) do
			current_levels[k] = v.level
		end
		for i = 1, number do
			hands = {}
			levels = 0
			for k, v in pairs(G.GAME.hands) do
							if current_levels[k] > to_big(max_level) then
								hands = {[k] = true}
								max_level = v.level
							elseif current_levels[k] == to_big(max_level) then
								hands[k] = true
							end
						end
			for k, v in pairs(hands) do
				levels = levels + card.ability.level_mod
				current_levels[k] = current_levels[k] - card.ability.level_mod
			end
			current_levels[fav] = current_levels[fav] + (levels * 3)
		end
		for k, v in pairs(current_levels) do
			if v > G.GAME.hands[k].level then
				card:do_jen_astronomy(fav, v - G.GAME.hands[k].level)
			end
			if v ~= G.GAME.hands[k].level then
				jl.th(k)
				level_up_hand(card, k, false, v - G.GAME.hands[k].level)
			end
		end
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'pallas',
	loc_txt = {
		name = '2 Pallas',
		text = {
			'Level up all {C:purple}poker hands',
			'by {C:attention}one-fifth{} of a level',
			'{C:dark_edition,s:0.7,E:2}Art by : ThreeCubed'
		}
	},
	set = 'Planet',
	pos = { x = 2, y = 1 },
	cost = 4,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		card:blackhole(0.2)
	end,
	bulk_use = function(self, card, area, copier, number)
		card:blackhole(0.2*number)
	end
}

SMODS.Consumable {
	key = 'vesta',
	loc_txt = {
		name = '4 Vesta',
		text = {
			'{C:red}Level down{} your {C:attention}most played poker hand',
			'by {C:attention}#1#{}, but {C:planet}level up',
			'all {C:attention}other {C:purple}poker hands',
			'by {C:attention}half of that amount',
			'{C:inactive}(#2#)',
			'{C:dark_edition,s:0.7,E:2}Art by : ThreeCubed'
		}
	},
	jumbo_mod = 3,
	config = {level_mod = 2},
	set = 'Planet',
	pos = { x = 0, y = 2 },
	cost = 6,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).level_mod or 1, localize(jl.favhand(), 'poker_hands')}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local fav = jl.favhand()
		local mod = card.ability.level_mod
		jl.th(fav)
		level_up_hand(card, fav, nil, -mod)
		delay(0.5)
		jl.h('Other Hands', '...', '...', '')
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = true
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { mult = "+", StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { chips = "+", StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = nil
					return true
				end,
			}))
			update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, { level = "+" .. (mod / 2) })
			delay(1.3)
			for k, v in pairs(G.GAME.hands) do
				if k ~= fav then
					level_up_hand(card, k, true, mod / 2)
				end
			end
			jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		local fav = jl.favhand()
		local mod = card.ability.level_mod * number
		jl.th(fav)
		level_up_hand(card, fav, nil, -mod)
		delay(0.5)
		jl.h('Other Hands', '...', '...', '')
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = true
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { mult = "+", StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { chips = "+", StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = nil
					return true
				end,
			}))
			update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, { level = "+" .. (mod / 2) })
			delay(1.3)
			for k, v in pairs(G.GAME.hands) do
				level_up_hand(card, k, true, mod / 2)
			end
			jl.ch()
	end
}

SMODS.Consumable {
	key = 'hygiea',
	set = 'Planet',
	loc_txt = {
		name = '10 Hygiea',
		text = {
			'Create between {C:attention}#1#{} to {C:attention}#2#',
			'random {C:attention}playing ("CCD") {C:planet}Planet {C:attention}cards',
			'and shuffle them into your deck',
			'{C:inactive}(Suit and rank will be random, most editions will carry over)',
			'{C:dark_edition,s:0.7,E:2}Art by : ThreeCubed'
		}
	},
	ignore_allplanets = true,
	config = {min_planets = 2, max_planets = 4},
	pos = { x = 1, y = 2 },
	cost = 4,
	jumbo_mod = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {math.ceil(((center or {}).ability or {}).min_planets or 1), math.ceil(((center or {}).ability or {}).max_planets or 3)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local cards = {}
		local objects = {}
		local ccdamnt = pseudorandom('hygiearandom', math.ceil(card.ability.min_planets), math.ceil(card.ability.max_planets))
		for i = 1, ccdamnt do
			cards[i] = true
			local new = create_playing_card(nil, G.play, nil, i ~= 1, {G.C.SECONDARY_SET.Planet})
			if card.edition and not card.edition.negative and not card.edition.jen_jumbo and not card.edition.cry_double_sided then
				new:set_edition(card.edition)
			end
			table.insert(objects, new)
		end
		jl.rd(0.5)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1')
				v:juice_up(0.3, 0.3)
				v:flip()
				return true
			end, 0.2, 'REAL')
		end
		jl.rd(0.5)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1', 0.9)
				v:set_ability(jl.rnd('jen_hygiea', nil, G.P_CENTER_POOLS.Planet), true, nil)
				v:juice_up(0.3, 0.3)
				v:flip()
				return true
			end, 0.2, 'REAL')
		end
		jl.rd(1.5)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1', 1.1)
				v:add_to_deck()
				G.play:remove_card(v)
				G.deck:emplace(v)
				return true
			end, 0.2, 'REAL')
		end
		Q(function()
			if next(cards) then
				playing_card_joker_effects(cards)
			end
		return true end)
	end,
	bulk_use = function(self, card, area, copier, number)
		local cards = {}
		local objects = {}
		local ccdamnt = pseudorandom('hygiearandom', math.ceil(card.ability.min_planets) * number, math.ceil(card.ability.max_planets) * number)
		for i = 1, ccdamnt do
			cards[i] = true
			local new = create_playing_card(nil, G.play, nil, i ~= 1, {G.C.SECONDARY_SET.Planet})
			if card.edition and not card.edition.negative and not card.edition.jen_jumbo and not card.edition.cry_double_sided then
				new:set_edition(card.edition)
			end
			table.insert(objects, new)
		end
		jl.rd(0.5/number)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1')
				v:juice_up(0.3, 0.3)
				v:flip()
				return true
			end, 0.2/number, 'REAL')
		end
		jl.rd(0.5/number)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1', 0.9)
				v:set_ability(jl.rnd('jen_hygiea', nil, G.P_CENTER_POOLS.Planet), true, nil)
				v:juice_up(0.3, 0.3)
				v:flip()
				return true
			end, 0.2/number, 'REAL')
		end
		jl.rd(1.5/number)
		for k, v in ipairs(objects) do
			Q(function()
				play_sound('card1', 1.1)
				v:add_to_deck()
				G.play:remove_card(v)
				G.deck:emplace(v)
				return true
			end, 0.2/number, 'REAL')
		end
		Q(function()
			if next(cards) then
				playing_card_joker_effects(cards)
			end
		return true end)
	end
}

SMODS.Consumable {
	key = 'io',
	loc_txt = {
		name = 'Io',
		text = {
			'{C:planet}Level up{} all {C:purple}poker hands',
			'by {C:attention}#1#{}, plus another {C:attention}#1#',
			'for each {C:cry_code}Code{} card used this run',
			'{C:inactive}(Currently #2#)',
			'{C:dark_edition,s:0.7,E:2}Art by : ThreeCubed'
		}
	},
	config = {extra = {levels = 0.1}},
	jumbo_mod = 3,
	set_card_type_badge = galilean,
	set = 'Planet',
	pos = { x = 2, y = 2 },
	cost = 3,
	aurinko = true,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
		local lv = (((center or {}).ability or {}).extra or {}).levels or 0.1
        return {vars = {lv, lv * (jl.ctu('code') + 1)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		card:blackhole(card.ability.extra.levels * (jl.ctu('code') + 1))
	end,
	bulk_use = function(self, card, area, copier, number)
		card:blackhole(card.ability.extra.levels * (jl.ctu('code') + 1) * number)
	end
}

SMODS.Consumable {
	key = 'europa',
	loc_txt = {
		name = 'Europa',
		text = {
			'Exchange the {C:attention}rightmost consumable',
			'for {C:attention}#1# {C:planet}Planet{} per {C:money}$#2#',
			'of sell value that consumable has',
			mayoverflow,
			'{C:dark_edition,s:0.7,E:2}Art by : ThreeCubed'
		}
	},
	no_ratau = true,
	ignore_allplanets = true,
	config = {exchange = 1, exchange_rate = 0.5},
	jumbo_mod = 3,
	set_card_type_badge = galilean,
	set = 'Planet',
	pos = { x = 0, y = 3 },
	cost = 3,
	aurinko = true,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {math.ceil(((center or {}).ability or {}).exchange or 1), ((center or {}).ability or {}).exchange_rate or 0.5}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local did_exchange = false
		local target = G.consumeables.cards[#G.consumeables.cards]
		if target and not (target.ability or {}).eternal then
			local absolute_value = target.sell_cost / target:getQty()
			if absolute_value >= card.ability.exchange_rate then
				local budget = absolute_value
				while budget >= card.ability.exchange_rate do
					did_exchange = true
					for i = 1, math.ceil(card.ability.exchange) do
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'europa_exchange')
							if card.edition then
								card2:set_edition(card.edition, true)
							end
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
							target:juice_up(0.3, 0.5)
							return true
						end }))
					end
					budget = budget - card.ability.exchange_rate
				end
			end
		end
		if not did_exchange then
			jl.a('No valid consumable!', G.SETTINGS.GAMESPEED, 0.65, G.C.RED, 'timpani')
			jl.rd(1)
		else
			if not target:getInfinite() then
				Q(function() if target:getQty() > 1 then target:subQty(1) else target:start_dissolve() end return true end)
			end
		end
	end,
	bulk_use = function(self, card, area, copier, number)
		local did_exchange = false
		local target = G.consumeables.cards[#G.consumeables.cards]
		if target and not (target.ability or {}).eternal then
			local absolute_value = target.sell_cost / target:getQty()
			if absolute_value >= card.ability.exchange_rate then
				local budget = absolute_value
				while budget >= card.ability.exchange_rate do
					did_exchange = true
					for i = 1, math.ceil(card.ability.exchange) do
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Planet', G.consumeables, nil, nil, nil, nil, nil, 'europa_exchange')
							if card.edition then
								card2:set_edition(card.edition, true)
							end
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
							target:juice_up(0.3, 0.5)
							return true
						end }))
					end
					budget = budget - card.ability.exchange_rate
				end
			end
		end
		if not did_exchange then
			jl.a('No valid consumable!', G.SETTINGS.GAMESPEED, 0.65, G.C.RED, 'timpani')
			jl.rd(1)
		else
			if not target:getInfinite() then
				Q(function() if target:getQty() > 1 then target:subQty(1) else target:start_dissolve() end return true end)
			end
		end
	end
}

SMODS.Consumable {
	key = 'ganymede',
	loc_txt = {
		name = 'Ganymede',
		text = {
			'{C:attention}Most played poker hand{} gains',
			'the {C:chips}Chips{} of a {C:green}random{},',
			'{C:attention}different discovered poker hand',
			'{C:inactive}(#1#)',
			'{C:dark_edition,s:0.7,E:2}Art by : ThreeCubed'
		}
	},
	set_card_type_badge = galilean,
	set = 'Planet',
	pos = { x = 1, y = 3 },
	cost = 4,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {localize(jl.favhand(), 'poker_hands')}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		update_operator_display_custom(' ', G.C.WHITE)
		local hand = jl.favhand()
		local sel = jl.rndhand(hand, 'jen_ganymede')
		if (G.SETTINGS.FASTFORWARD or 0) < 1 then
			for i = 1, math.random(6, 12) do
				jl.th(G.handlist[math.random(#G.handlist)])
				delay(0.2)
			end
		end
		jl.h(localize(sel, 'poker_hands'), G.GAME.hands[sel].chips, '', G.GAME.hands[sel].level)
		delay(2)
		jl.hc('')
		Q(function() play_sound('timpani') return true end)
		update_operator_display_custom('+' .. number_format(G.GAME.hands[sel].chips), G.C.CHIPS)
		delay(2)
		jl.h(localize(hand, 'poker_hands'), G.GAME.hands[hand].chips, '', G.GAME.hands[hand].level)
		delay(2)
		G.GAME.hands[hand].chips = G.GAME.hands[hand].chips + G.GAME.hands[sel].chips
		jl.hc(G.GAME.hands[hand].chips, true)
		Q(function() play_sound('talisman_xchip') return true end)
		update_operator_display_custom(' ', G.C.WHITE)
		delay(1)
		jl.th(hand)
		update_operator_display()
		delay(1)
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		update_operator_display_custom(' ', G.C.WHITE)
		local hand = jl.favhand()
		local sels = {}
		local rand = ''
		local total = to_big(0)
		for i = 1, number do
			rand = jl.rndhand(hand, 'jen_ganymede')
			sels[rand] = (sels[rand] or 0) + 1
		end
		if (G.SETTINGS.FASTFORWARD or 0) < 1 then
			for i = 1, math.random(6, 12) do
				jl.th(G.handlist[math.random(#G.handlist)])
				delay(0.2)
			end
		end
		for k, v in pairs(sels) do
			jl.h(localize(k, 'poker_hands'), G.GAME.hands[k].chips, v > 1 and ('x' .. v) or '', G.GAME.hands[k].level)
			delay(1)
			if v > 1 then
				Q(function() play_sound('talisman_xchip', 1.5) return true end)
				jl.hcm(G.GAME.hands[k].chips * v, '')
			end
			total = total + to_big(G.GAME.hands[k].chips * v)
			local txt = number_format(total)
			delay(1)
			jl.hc('')
			Q(function() play_sound('timpani') return true end)
			update_operator_display_custom('+' .. txt, G.C.CHIPS)
			delay(1)
		end
		delay(1)
		jl.h(localize(hand, 'poker_hands'), G.GAME.hands[hand].chips, '', G.GAME.hands[hand].level)
		delay(1)
		G.GAME.hands[hand].chips = G.GAME.hands[hand].chips + total
		jl.hc(G.GAME.hands[hand].chips, true)
		Q(function() play_sound('talisman_xchip') return true end)
		update_operator_display_custom(' ', G.C.WHITE)
		delay(1)
		jl.th(hand)
		update_operator_display()
		delay(1)
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'callisto',
	loc_txt = {
		name = 'Callisto',
		text = {
			'{C:attention}Most played poker hand{} gains',
			'the {C:mult}Mult{} of a {C:green}random{},',
			'{C:attention}different discovered poker hand',
			'{C:inactive}(#1#)',
			'{C:dark_edition,s:0.7,E:2}Art by : ThreeCubed'
		}
	},
	set_card_type_badge = galilean,
	set = 'Planet',
	pos = { x = 2, y = 3 },
	cost = 4,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {localize(jl.favhand(), 'poker_hands')}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		update_operator_display_custom(' ', G.C.WHITE)
		local hand = jl.favhand()
		local sel = jl.rndhand(hand, 'jen_callisto')
		if (G.SETTINGS.FASTFORWARD or 0) < 1 then
			for i = 1, math.random(6, 12) do
				jl.th(G.handlist[math.random(#G.handlist)])
				delay(0.2)
			end
		end
		jl.h(localize(sel, 'poker_hands'), '', G.GAME.hands[sel].mult, G.GAME.hands[sel].level)
		delay(2)
		jl.hm('')
		Q(function() play_sound('timpani') return true end)
		update_operator_display_custom(number_format(G.GAME.hands[sel].mult) .. '+', G.C.MULT)
		delay(2)
		jl.h(localize(hand, 'poker_hands'), '', G.GAME.hands[hand].mult, G.GAME.hands[hand].level)
		delay(2)
		G.GAME.hands[hand].mult = G.GAME.hands[hand].mult + G.GAME.hands[sel].mult
		jl.hm(G.GAME.hands[hand].mult, true)
		Q(function() play_sound('multhit2') return true end)
		update_operator_display_custom(' ', G.C.WHITE)
		delay(1)
		jl.th(hand)
		update_operator_display()
		delay(1)
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		update_operator_display_custom(' ', G.C.WHITE)
		local hand = jl.favhand()
		local sels = {}
		local rand = ''
		local total = to_big(0)
		for i = 1, number do
			rand = jl.rndhand(hand, 'jen_callisto')
			sels[rand] = (sels[rand] or 0) + 1
		end
		if (G.SETTINGS.FASTFORWARD or 0) < 1 then
			for i = 1, math.random(6, 12) do
				jl.th(G.handlist[math.random(#G.handlist)])
				delay(0.2)
			end
		end
		for k, v in pairs(sels) do
			jl.h(localize(k, 'poker_hands'), v > 1 and (v .. 'x') or '', G.GAME.hands[k].mult, G.GAME.hands[k].level)
			delay(1)
			if v > 1 then
				Q(function() play_sound('multhit2', 1.5) return true end)
				jl.hcm('', G.GAME.hands[k].mult * v)
			end
			total = total + to_big(G.GAME.hands[k].mult * v)
			local txt = number_format(total)
			delay(1)
			jl.hm('')
			Q(function() play_sound('timpani') return true end)
			update_operator_display_custom(txt .. '+', G.C.MULT)
			delay(1)
		end
		delay(1)
		jl.h(localize(hand, 'poker_hands'), '', G.GAME.hands[hand].mult, G.GAME.hands[hand].level)
		delay(1)
		G.GAME.hands[hand].mult = G.GAME.hands[hand].mult + total
		jl.hm(G.GAME.hands[hand].mult, true)
		Q(function() play_sound('multhit2') return true end)
		update_operator_display_custom(' ', G.C.WHITE)
		delay(1)
		jl.th(hand)
		update_operator_display()
		delay(1)
		jl.ch()
    end
}

SMODS.Consumable {
	key = 'mimas',
	loc_txt = {
		name = 'Mimas',
		text = {
			'Increases the {C:attention}most played poker hand\'s',
			'{C:chips}Chips-per-level{} and {C:mult}Mult-per-level',
			'by {C:attention}one-fifth of the square root{} of its {C:attention}current {C:chips}Chips{} & {C:mult}Mult{},',
			'then {C:attention}increase the hand\'s current {C:chips}Chips{} & {C:mult}Mult',
			'to reflect on its new {C:chips}Chips-per-level{} and {C:mult}Mult-per-level',
			'{C:inactive}(#1#)',
			'{C:dark_edition,s:0.7,E:2}Art by : smg9000'
		}
	},
	set_card_type_badge = natsat,
	set = 'Planet',
	pos = { x = 0, y = 4 },
	cost = 4,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {localize(jl.favhand(), 'poker_hands')}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local hand = jl.favhand()
		local data = G.GAME.hands[hand]
		update_operator_display_custom('Per Lv.', G.C.WHITE)
		jl.h(localize(hand, 'poker_hands'), data.l_chips, data.l_mult, data.level)
		local old_lchips = G.GAME.hands[hand].l_chips
		local old_lmult = G.GAME.hands[hand].l_mult
		local added_chips = (G.GAME.hands[hand].chips^.5) / 5
		local added_mult = (G.GAME.hands[hand].mult^.5) / 5
		G.GAME.hands[hand].l_chips = old_lchips + added_chips
		G.GAME.hands[hand].l_mult = old_lmult + added_mult
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("tarot1")
				card:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { mult = G.GAME.hands[hand].l_mult, StatusText = true })
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.9,
			func = function()
				play_sound("tarot1")
				card:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = nil
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { chips = G.GAME.hands[hand].l_chips, StatusText = true })
		delay(4)
		update_operator_display()
		jl.th(hand)
		G.GAME.hands[hand].chips = G.GAME.hands[hand].chips + (added_chips * data.level)
		G.GAME.hands[hand].mult = G.GAME.hands[hand].mult + (added_mult * data.level)
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("tarot1")
				card:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { mult = G.GAME.hands[hand].mult, StatusText = true })
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.9,
			func = function()
				play_sound("tarot1")
				card:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = nil
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { chips = G.GAME.hands[hand].chips, StatusText = true })
		delay(4)
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		local hand = jl.favhand()
		local data = G.GAME.hands[hand]
		update_operator_display_custom('Per Lv.', G.C.WHITE)
		jl.h(localize(hand, 'poker_hands'), data.l_chips, data.l_mult, data.level)
		local old_lchips = G.GAME.hands[hand].l_chips
		local old_lmult = G.GAME.hands[hand].l_mult
		local old_chips = G.GAME.hands[hand].chips
		local old_mult = G.GAME.hands[hand].mult
		local added_chips = 0
		local added_mult = 0
		for i = 1, math.max(1, number) do
			added_chips = added_chips + ((old_chips^.5) / 5)
			added_mult = added_mult + ((old_mult^.5) / 5)
			old_chips = old_chips + (added_chips * data.level)
			old_mult = old_mult + (added_mult * data.level)
		end
		G.GAME.hands[hand].l_chips = old_lchips + added_chips
		G.GAME.hands[hand].l_mult = old_lmult + added_mult
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("tarot1")
				card:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { mult = G.GAME.hands[hand].l_mult, StatusText = true })
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.9,
			func = function()
				play_sound("tarot1")
				card:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = nil
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { chips = G.GAME.hands[hand].l_chips, StatusText = true })
		delay(4)
		update_operator_display()
		jl.th(hand)
		G.GAME.hands[hand].chips = old_chips
		G.GAME.hands[hand].mult = old_mult
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.2,
			func = function()
				play_sound("tarot1")
				card:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = true
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { mult = G.GAME.hands[hand].mult, StatusText = true })
		G.E_MANAGER:add_event(Event({
			trigger = "after",
			delay = 0.9,
			func = function()
				play_sound("tarot1")
				card:juice_up(0.8, 0.5)
				G.TAROT_INTERRUPT_PULSE = nil
				return true
			end,
		}))
		update_hand_text({ delay = 0 }, { chips = G.GAME.hands[hand].chips, StatusText = true })
		delay(4)
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'enceladus',
	loc_txt = {
		name = 'Enceladus',
		text = {
			'Gain {C:money}$#1#{} for each time',
			'your {C:attention}most played poker hand',
			'has been played',
			'{C:inactive}(Max of $#2#)',
			'{C:inactive}(Currently #3#, {C:money}$#4#{C:inactive})',
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	config = {max_payout = 50, earnings = 1},
	set_card_type_badge = natsat,
	set = 'Planet',
	pos = { x = 1, y = 4 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {((center or {}).ability or {}).earnings or 1, ((center or {}).ability or {}).max_payout or 50, localize(jl.favhand(), 'poker_hands'), (((center or {}).ability or {}).earnings or 1) * ((((G.GAME or {}).hands or {})[jl.favhand()] or {}).played or 0)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local hand = jl.favhand()
		delay(1)
		ease_dollars(math.min(G.GAME.hands[hand].played * card.ability.earnings, card.ability.max_payout))
		Q(function() card:juice_up(0.8, 0.5) return true end)
	end,
	bulk_use = function(self, card, area, copier, number)
		local hand = jl.favhand()
		delay(1)
		ease_dollars(math.min(G.GAME.hands[hand].played * card.ability.earnings, card.ability.max_payout) * number)
		Q(function() card:juice_up(0.8, 0.5) return true end)
	end
}

SMODS.Consumable {
	key = 'tethys',
	loc_txt = {
		name = 'Tethys',
		text = {
			'Level up all {C:purple}poker hands',
			'by {C:attention}one-tenth{} of a level',
			'for every {C:attention}Joker{} you have',
			'{C:inactive}(Currently #1#)',
			'{C:dark_edition,s:0.7,E:2}Art by : Zahrizi'
		}
	},
	set = 'Planet',
	pos = { x = 2, y = 4 },
	cost = 4,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {not G.jokers and 0 or (#G.jokers.cards * 0.1)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		card:blackhole(#G.jokers.cards * 0.1)
	end,
	bulk_use = function(self, card, area, copier, number)
		card:blackhole(#G.jokers.cards * 0.1 * number)
	end
}

SMODS.Consumable {
	key = 'dione',
	loc_txt = {
		name = 'Dione',
		text = {
			'{C:red}Least leveled poker hand{} gains',
			'{C:attention}one-fifth{} of the {C:planet}levels',
			'from the {C:blue}most played poker hand',
			'{C:inactive}(Currently {C:red}#1#{C:inactive} and {C:blue}#2#{C:inactive})',
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	set = 'Planet',
	pos = { x = 0, y = 5 },
	cost = 4,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {localize(jl.lowhand(), 'poker_hands'), localize(jl.favhand(), 'poker_hands')}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local hand1 = jl.favhand()
		local hand2 = jl.lowhand()
		local mod = G.GAME.hands[hand1].level / 5
		card:do_jen_astronomy(hand2, mod)
		jl.th(hand2)
		level_up_hand(card, hand2, nil, mod)
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		local hand1 = jl.favhand()
		local hand2 = jl.lowhand()
		local mod = G.GAME.hands[hand1].level / 5
		if hand1 == hand2 then
			for i = 1, number do
				mod = (G.GAME.hands[hand1].level + mod) / 5
			end
		else
			mod = mod * number
		end
		card:do_jen_astronomy(hand2, mod)
		jl.th(hand2)
		level_up_hand(card, hand2, nil, mod)
		jl.ch()
	end
}

local function rhea_value()
	if not G.playing_cards then return 0 end
	local val = 0
	for k, v in ipairs(G.playing_cards) do
		if (v.edition or {}).jen_wee then
			val = val + (0.02 * (1 + (v.ability.wee_upgrades or 0)))
		end
	end
	return val
end

SMODS.Consumable {
	key = 'rhea',
	loc_txt = {
		name = 'Rhea',
		text = {
			'All hands gain {C:attention}+0.02 {C:planet}levels{}, plus {C:attention}another +0.02',
			'for each {C:dark_edition}Wee {C:attention}playing card',
			'as well as by how many times',
			'said card {C:attention}has been upgraded by {C:dark_edition}Wee',
			'{C:inactive}(Currently #1#)',
			'{C:dark_edition,s:0.7,E:2}Art by : abreaker'
		}
	},
	set = 'Planet',
	pos = { x = 1, y = 5 },
	cost = 2,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {rhea_value() + 0.02}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		card:blackhole(rhea_value() + 0.02)
	end,
	bulk_use = function(self, card, area, copier, number)
		card:blackhole((rhea_value() + 0.02) * number)
	end
}

local function faces_in_deck()
	local count = 0
	if not G.playing_cards then return count end
	for k, v in ipairs(G.playing_cards) do
		if v:is_face() then
			count = count + 1
		end
	end
	return count
end

local function odds_in_deck()
	local count = 0
	if not G.playing_cards then return count end
	if #SMODS.find_card('j_cry_maximized') > 0 then return count end
	for k, v in ipairs(G.playing_cards) do
		if v.base.id and not v:norankorsuit() and v.base.id ~= 13 and v.base.id ~= 12 and v.base.id ~= 11 and (math.floor(v.base.id / 2) ~= (v.base.id / 2) or v.base.id == 14) then
			count = count + 1
		end
	end
	return count
end

local function evens_in_deck()
	local count = 0
	if not G.playing_cards then return count end
	if #SMODS.find_card('j_cry_maximized') > 0 then
		if #SMODS.find_card('j_pareidolia') > 0 then
			return count
		else
			for k, v in ipairs(G.playing_cards) do
				if v.base.id and not v:norankorsuit() and not v:is_face() then
					count = count + 1
				end
			end
		end
	else
		for k, v in ipairs(G.playing_cards) do
			if v.base.id and not v:norankorsuit() and v.base.id < 11 and math.floor(v.base.id / 2) == (v.base.id / 2) then
				count = count + 1
			end
		end
	end
	return count
end

local function suits_in_deck(suit)
	local count = 0
	if not G.playing_cards then return count end
	for k, v in ipairs(G.playing_cards) do
		if v:is_suit(suit) then
			count = count + 1
		end
	end
	return count
end

SMODS.Consumable {
	key = 'titan',
	loc_txt = {
		name = 'Titan',
		text = {
			'All hands gain {C:attention}+0.01 {C:planet}levels{}, plus {C:attention}another +0.01',
			'for each {C:attention}face card{} in your deck',
			'{C:inactive}(J, Q, K)',
			'{C:inactive}(Currently #1#)',
			'{C:dark_edition,s:0.7,E:2}Art by : Maxie'
		}
	},
	set = 'Planet',
	pos = { x = 2, y = 5 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {(faces_in_deck() + 1) / 100}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		card:blackhole((faces_in_deck() + 1) / 100)
	end,
	bulk_use = function(self, card, area, copier, number)
		card:blackhole(((faces_in_deck() + 1) / 100) * number)
	end
}

SMODS.Consumable {
	key = 'hyperion',
	loc_txt = {
		name = 'Hyperion',
		text = {
			'All hands gain {C:attention}+0.005 {C:planet}levels{}, plus {C:attention}another +0.005',
			'for each {C:attention}odd-numbered card{} in your deck',
			'{C:inactive}(A, 3, 5, 7, 9)',
			'{C:inactive}(Currently #1#)',
			'{C:dark_edition,s:0.7,E:2}Art by : Maxie'
		}
	},
	set = 'Planet',
	pos = { x = 0, y = 6 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {tostring((odds_in_deck() + 1) / 200)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		card:blackhole((odds_in_deck() + 1) / 200)
	end,
	bulk_use = function(self, card, area, copier, number)
		card:blackhole(((odds_in_deck() + 1) / 200) * number)
	end
}

SMODS.Consumable {
	key = 'iapetus',
	loc_txt = {
		name = 'Iapetus',
		text = {
			'All hands gain {C:attention}+0.005 {C:planet}levels{}, plus {C:attention}another +0.005',
			'for each {C:attention}even-numbered card{} in your deck',
			'{C:inactive}(2, 4, 6, 8, 10)',
			'{C:inactive}(Currently #1#)',
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	set = 'Planet',
	pos = { x = 1, y = 6 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
        return {vars = {tostring((evens_in_deck() + 1) / 200)}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		card:blackhole((evens_in_deck() + 1) / 200)
	end,
	bulk_use = function(self, card, area, copier, number)
		card:blackhole(((evens_in_deck() + 1) / 200) * number)
	end
}

SMODS.Consumable {
	key = 'phoebe',
	loc_txt = {
		name = 'Phoebe',
		text = {
			'All hands gain {C:attention}+0.05 {C:planet}levels',
			'for each time that hand has been {C:attention}played',
			'{C:dark_edition,s:0.7,E:2}Art by : Basilloon'
		}
	},
	set = 'Planet',
	pos = { x = 2, y = 6 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		jl.th('all')
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = true
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { mult = "+", StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { chips = "+", StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = nil
					return true
				end,
			}))
			update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, { level = '+?' })
			delay(1.3)
		for k, v in pairs(G.GAME.hands) do
			if v.played > 0 then
				level_up_hand(card, k, true, v.played/20)
				jl.th(k)
			end
		end
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		jl.th('all')
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.2,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = true
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { mult = "+", StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					return true
				end,
			}))
			update_hand_text({ delay = 0 }, { chips = "+", StatusText = true })
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.9,
				func = function()
					play_sound("tarot1")
					card:juice_up(0.8, 0.5)
					G.TAROT_INTERRUPT_PULSE = nil
					return true
				end,
			}))
			update_hand_text({ sound = "button", volume = 0.7, pitch = 0.9, delay = 0 }, { level = '+?' })
			delay(1.3)
		for k, v in pairs(G.GAME.hands) do
			if v.played > 0 then
				level_up_hand(card, k, true, (v.played/20) * number)
				jl.th(k)
			end
		end
		jl.ch()
	end
}

local suitsindeck_planets = {
	{
		n = 'Miranda',
		s = 'Hearts',
		p = { x = 0, y = 7 },
		a = 'ThreeCubed'
	},
	{
		n = 'Ariel',
		s = 'Clubs',
		p = { x = 1, y = 7 },
		a = 'Zahrizi'
	},
	{
		n = 'Umbriel',
		s = 'Spades',
		p = { x = 2, y = 7 },
		a = 'abreaker'
	},
	{
		n = 'Titania',
		s = 'Diamonds',
		p = { x = 0, y = 8 },
		a = 'mailingway'
	}
}

for k, v in ipairs(suitsindeck_planets) do
	SMODS.Consumable {
		key = string.lower(v.n),
		loc_txt = {
			name = v.n,
			text = {
				'All hands gain {C:attention}+0.01 {C:planet}levels{}, plus {C:attention}another +0.01',
				'for each {C:' .. string.lower(string.sub(v.s, 1, string.len(v.s) - 1)) .. '}' .. string.sub(v.s, 1, string.len(v.s) - 1) .. '{} in your deck',
				'{C:inactive}(Currently #1#)',
				'{C:dark_edition,s:0.7,E:2}Art by : ' .. v.a
			}
		},
		set = 'Planet',
		pos = v.p,
		cost = 3,
		unlocked = true,
		discovered = true,
		atlas = 'jenplanets',
		loc_vars = function(self, info_queue, center)
			return {vars = {(suits_in_deck(v.s) + 1) / 100}}
		end,
		can_use = function(self, card)
			return jl.canuse()
		end,
		use = function(self, card, area, copier)
			card:blackhole((suits_in_deck(v.s) + 1) / 100)
		end,
		bulk_use = function(self, card, area, copier, number)
			card:blackhole(((suits_in_deck(v.s) + 1) / 100) * number)
		end
	}
end

local function count_identical_cards(rank, suit)
	local count = 0
	if not G.playing_cards then return count end
	for k, v in ipairs(G.playing_cards) do
		if not v:norankorsuit() and (v.base.id or 0) == rank and (v.base.suit or '') == suit and not v.oberon_created then
			count = count + 1
		end
	end
	return count
end

SMODS.Consumable {
	key = 'oberon',
	loc_txt = {
		name = 'Oberon',
		text = {
			'Shows a card with a {C:attention}random rank and suit{},',
			'then for each card in your deck',
			'that is {C:attention}identical in rank and suit',
			'to the shown card, {C:planet}upgrade {C:attention}all poker hands',
			'Level amount starts at {C:attention}0.25{}, and {C:attention}doubles each time',
			'{C:inactive}(ex. if you had 3 Jack of Hearts and',
			'{C:inactive}Jack of Hearts was the shown card,',
			'{C:inactive}all poker hands would level up',
			'{C:inactive}by +0.25, then by +0.5, then by +1, for a total of +1.75)',
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	set = 'Planet',
	pos = { x = 1, y = 8 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		jl.ch()
		jl.hcm('', '')
		update_operator_display_custom(' ', G.C.WHITE)
		local evaluator = create_playing_card(nil, G.play, nil, nil, {G.C.SECONDARY_SET.Planet})
		evaluator.oberon_created = true
		if card.edition then
			evaluator:set_edition(card.edition, true, true)
		end
		local cumulative = 0
		delay(3)
		jl.hn(SMODS.Ranks[evaluator.base.value].key .. ' of ' .. SMODS.Suits[evaluator.base.suit].key)
		play_sound_q('button')
		Q(function() if evaluator then evaluator:juice_up(0.8, 0.5) evaluator.highlighted = true end return true end)
		delay(3)
		local identical = count_identical_cards(evaluator.base.id, evaluator.base.suit)
		if identical > 0 then
			play_sound_q('button')
			jl.hm('x' .. identical)
			delay(3)
			for i = 1, identical do
				cumulative = cumulative + ((2 ^ (i-1))/4)
				play_sound_q('button', 1.1)
				jl.hcm('+' .. number_format(cumulative), i == identical and '' or ('x' .. (identical - i)))
				delay(0.25)
			end
			delay(2.75)
			update_operator_display()
			card:blackhole(cumulative)
		else
			jl.hcm('Nope!', 'Nope!')
			play_sound_q('timpani')
			delay(3)
			update_operator_display()
		end
		Q(function() if evaluator then evaluator.highlighted = false evaluator:destroy() end return true end)
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		jl.ch()
		jl.hcm('', '')
		update_operator_display_custom(' ', G.C.WHITE)
		local evaluators = {}
		for i = 1, number do
			evaluators[i] = create_playing_card(nil, G.play, nil, nil, {G.C.SECONDARY_SET.Planet})
			evaluators[i].oberon_created = true
			if card.edition then
				evaluators[i]:set_edition(card.edition, true, true)
			end
		end
		local cumulative = 0
		delay(3)
		for k, evaluator in ipairs(evaluators) do
			jl.hn(SMODS.Ranks[evaluator.base.value].key .. ' of ' .. SMODS.Suits[evaluator.base.suit].key)
			play_sound_q('button')
			Q(function() if evaluator then evaluator:juice_up(0.8, 0.5) evaluator.highlighted = true end return true end)
			delay(3)
			local identical = count_identical_cards(evaluator.base.id, evaluator.base.suit)
			if identical > 0 then
				play_sound_q('button')
				jl.hm('x' .. identical)
				delay(3)
				for i = 1, identical do
					cumulative = cumulative + ((2 ^ (i-1))/4)
					play_sound_q('button', 1.1)
					jl.hcm('+' .. number_format(cumulative), i == identical and '' or ('x' .. (identical - i)))
					delay(0.25)
				end
				delay(2.75)
			else
				if cumulative <= 0 then jl.hcm('Nope!', 'Nope!') else jl.hc('Nope!') end
				play_sound_q('timpani')
				delay(3)
			end
			Q(function() if evaluator then evaluator.highlighted = false end return true end)
		end
		update_operator_display()
		if cumulative > 0 then
			card:blackhole(cumulative)
		end
		Q(function() for k, evaluator in ipairs(evaluators) do if evaluator then evaluator:destroy() end end return true end)
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'orcus',
	loc_txt = {
		name = 'Orcus',
		text = {
			'Your {C:blue}most played hand{} will',
			'{C:purple,E:1}siphon {C:attention}half{} of the {C:planet}levels',
			'from the {C:red}poker hands{} that are {C:attention}adjacent{} to it',
			'{C:inactive}({C:red}#1# {C:purple}>> {C:blue}#2# {C:purple}<< {C:red}#3#{C:inactive})',
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	set = 'Planet',
	ayanami = true,
	pos = { x = 2, y = 8 },
	cost = 5,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
		local fav = jl.favhand()
		local hands = jl.adjacenthands(fav)
        return {vars = {hands.backhand and localize(hands.backhand, 'poker_hands') or '<none>', localize(fav, 'poker_hands'), hands.forehand and localize(hands.forehand, 'poker_hands') or '<none>'}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
		use = function(self, card, area, copier)
			local fav = jl.favhand()
			local hands = jl.adjacenthands(fav)
			local lv = to_big(0)
			local levels_siphoned = to_big(0)
			if hands.backhand then
				if G.GAME.hands[hands.backhand].level > to_big(0) then
					jl.th(hands.backhand)
					lv = G.GAME.hands[hands.backhand].level / to_big(2)
					level_up_hand(card, hands.backhand, nil, -lv)
					levels_siphoned = lv
				end
			end
			if hands.forehand then
				if G.GAME.hands[hands.forehand].level > to_big(0) then
					jl.th(hands.forehand)
					lv = G.GAME.hands[hands.forehand].level / to_big(2)
					level_up_hand(card, hands.forehand, nil, -lv)
					levels_siphoned = levels_siphoned + lv
				end
			end
			card:do_jen_astronomy(fav, levels_siphoned)
			jl.th(fav)
			level_up_hand(card, fav, nil, levels_siphoned)
			jl.ch()
		end,
		bulk_use = function(self, card, area, copier, number)
			local fav = jl.favhand()
			local hands = jl.adjacenthands(fav)
			local lv = to_big(0)
			local levels_siphoned = to_big(0)
			local divisor = to_big(2) - (1 / (2^(number-1)))
			if hands.backhand then
				if G.GAME.hands[hands.backhand].level > to_big(0) then
					jl.th(hands.backhand)
					lv = (G.GAME.hands[hands.backhand].level/divisor)
					level_up_hand(card, hands.backhand, nil, -lv)
					levels_siphoned = lv
				end
			end
			if hands.forehand then
				if G.GAME.hands[hands.forehand].level > to_big(0) then
					jl.th(hands.forehand)
					lv = (G.GAME.hands[hands.forehand].level/divisor)
					level_up_hand(card, hands.forehand, nil, -lv)
					levels_siphoned = levels_siphoned + lv
				end
			end
			card:do_jen_astronomy(fav, levels_siphoned)
			jl.th(fav)
			level_up_hand(card, fav, nil, levels_siphoned)
			jl.ch()
		end
}

SMODS.Consumable {
	key = 'vanth',
	loc_txt = {
		name = 'Vanth',
		text = {
			'{C:attention}Rounds{} all hand levels {C:attention}up',
			'to the {C:attention}next integer',
			'{C:inactive}(ex. 2.43 >becomes> 3, 5.81 >becomes> 6)',
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	set = 'Planet',
	pos = { x = 0, y = 9 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		for k, v in ipairs(G.handlist) do
			if math.ceil(G.GAME.hands[v].level) ~= G.GAME.hands[v].level then
				level_up_hand(nil, v, true, math.ceil(G.GAME.hands[v].level) - G.GAME.hands[v].level, true, true)
			end
		end
		jl.th('all')
		delay(1)
		jl.h(localize('k_all_hands'), '+', '+', '=ceil(#)', true)
		Q(function() card:juice_up(1, 0.5) play_sound('highlight2', 1, 0.6) return true end)
		delay(3)
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		for k, v in ipairs(G.handlist) do
			if math.ceil(G.GAME.hands[v].level) ~= G.GAME.hands[v].level then
				level_up_hand(nil, v, true, math.ceil(G.GAME.hands[v].level) - G.GAME.hands[v].level, true, true)
			end
		end
		jl.th('all')
		delay(1)
		jl.h(localize('k_all_hands'), '+', '+', '=ceil(#)', true)
		Q(function() card:juice_up(1, 0.5) play_sound('highlight2', 1, 0.6) return true end)
		delay(3)
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'charon',
	loc_txt = {
		name = 'Charon',
		text = {
			'{C:attention}Two {C:green}random {C:attention}discovered{} poker hands',
			'will {C:attention}swap over{} their statistics',
			'{C:inactive}(Chips, Mult, Chips/Level, Mult/Level, Level, Times Played)',
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	set = 'Planet',
	pos = { x = 1, y = 9 },
	cost = 6,
	unlocked = true,
	discovered = true,
	ignore_allplanets = true,
	atlas = 'jenplanets',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local hand1 = jl.rndhand()
		local hand2 = jl.rndhand(hand1)
		local card1 = jl.rawcard(jl.planethand(hand1), 1, 0.5)
		local card2 = jl.rawcard(jl.planethand(hand2), 1, 1.5)
		local hand1data = {
			chips = G.GAME.hands[hand1].chips,
			l_chips = G.GAME.hands[hand1].l_chips,
			mult = G.GAME.hands[hand1].mult,
			l_mult = G.GAME.hands[hand1].l_mult,
			level = G.GAME.hands[hand1].level,
			played = G.GAME.hands[hand1].played
		}
		if (G.SETTINGS.FASTFORWARD or 0) <= 0 then
			jl.h('', '', '', '')
			delay(1)
			jl.th(hand1)
			Q(function() card1:juice_up(0.3, 0.5); return true end)
			delay(2)
			update_operator_display_custom('Per Lv.', G.C.WHITE)
			jl.hcm(G.GAME.hands[hand1].l_chips, G.GAME.hands[hand1].l_mult)
			delay(2)
			update_operator_display()
			jl.th(hand2)
			Q(function() card2:juice_up(0.3, 0.5); return true end)
			delay(2)
			update_operator_display_custom('Per Lv.', G.C.WHITE)
			jl.hcm(G.GAME.hands[hand2].l_chips, G.GAME.hands[hand2].l_mult)
			delay(2)
			update_operator_display()
			jl.h('', '', '', '')
		else
			jl.ch()
		end
		delay(1)
		Q(function() card:juice_up(0.3, 0.5); play_sound('tarot1'); return true end)
		delay(0.5)
		Q(function() card1:fake_dissolve(); card2:fake_dissolve(); return true end)
		delay(0.5)
		card:speak('Swapped!')
		Q(function() card1:set_ability(G.P_CENTERS[jl.planethand(hand2)]); card2:set_ability(G.P_CENTERS[jl.planethand(hand1)]); card1:start_materialize(); card2:start_materialize(); play_sound('jen_misc1'); return true end)
		G.GAME.hands[hand1].chips = G.GAME.hands[hand2].chips
		G.GAME.hands[hand1].l_chips = G.GAME.hands[hand2].l_chips
		G.GAME.hands[hand1].mult = G.GAME.hands[hand2].mult
		G.GAME.hands[hand1].l_mult = G.GAME.hands[hand2].l_mult
		G.GAME.hands[hand1].level = G.GAME.hands[hand2].level
		G.GAME.hands[hand1].played = G.GAME.hands[hand2].played
		G.GAME.hands[hand2].chips = hand1data.chips
		G.GAME.hands[hand2].l_chips = hand1data.l_chips
		G.GAME.hands[hand2].mult = hand1data.mult
		G.GAME.hands[hand2].l_mult = hand1data.l_mult
		G.GAME.hands[hand2].level = hand1data.level
		G.GAME.hands[hand2].played = hand1data.played
		delay(1)
		if (G.SETTINGS.FASTFORWARD or 0) <= 0 then
			jl.th(hand2)
			Q(function() card1:juice_up(0.3, 0.5) return true end)
			delay(2)
			update_operator_display_custom('Per Lv.', G.C.WHITE)
			jl.hcm(G.GAME.hands[hand2].l_chips, G.GAME.hands[hand2].l_mult)
			delay(2)
			update_operator_display()
			jl.th(hand1)
			Q(function() card2:juice_up(0.3, 0.5) return true end)
			delay(2)
			update_operator_display_custom('Per Lv.', G.C.WHITE)
			jl.hcm(G.GAME.hands[hand1].l_chips, G.GAME.hands[hand1].l_mult)
			delay(2)
			update_operator_display()
			jl.ch()
		end
		Q(function() card1:destroy(); card2:destroy(); hand1data = nil; return true end)
	end
}

SMODS.Consumable {
	key = 'haumea',
	loc_txt = {
		name = 'Haumea',
		text = {
			'Your {C:red}most played hand{} will',
			'{C:planet}upgrade{} the {C:blue}poker hands{} that are',
			'{C:attention}adjacent{} to it by a {C:attention}fourth',
			'of its current level',
			'{C:inactive}({C:blue}#1# {C:green}<< {C:red}#2# {C:green}>> {C:blue}#3#{C:inactive})',
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	set = 'Planet',
	ayanami = true,
	pos = { x = 2, y = 9 },
	cost = 5,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
		local fav = jl.favhand()
		local hands = jl.adjacenthands(fav)
        return {vars = {hands.backhand and localize(hands.backhand, 'poker_hands') or '<none>', localize(fav, 'poker_hands'), hands.forehand and localize(hands.forehand, 'poker_hands') or '<none>'}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local fav = jl.favhand()
		local hands = jl.adjacenthands(fav)
		local mod = G.GAME.hands[fav].level / 4
		if to_big(G.GAME.hands[fav].level) > to_big(0) then
		            if hands.backhand then
		                card:do_jen_astronomy(hands.backhand, mod)
		                jl.th(hands.backhand)
		                level_up_hand(card, hands.backhand, nil, mod)
		            end
		            if hands.forehand then
		                card:do_jen_astronomy(hands.forehand, mod)
		                jl.th(hands.forehand)
		                level_up_hand(card, hands.forehand, nil, mod)
		            end
		        end
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		local fav = jl.favhand()
		local hands = jl.adjacenthands(fav)
		local mod = (G.GAME.hands[fav].level / 4) * number
		if G.GAME.hands[fav].level > 0 then
			if hands.backhand then
				card:do_jen_astronomy(hands.backhand, mod)
				jl.th(hands.backhand)
				level_up_hand(card, hands.backhand, nil, mod)
			end
			if hands.forehand then
				card:do_jen_astronomy(hands.forehand, mod)
				jl.th(hands.forehand)
				level_up_hand(card, hands.forehand, nil, mod)
			end
		end
		jl.ch()
	end
}

local namaka_data = {
	Tarot = G.C.SECONDARY_SET.Tarot,
	Planet = G.C.SECONDARY_SET.Planet,
	Spectral = G.C.SECONDARY_SET.Spectral,
	Code = HEX('14b341')
}

SMODS.Consumable {
	key = 'namaka',
	loc_txt = {
		name = 'Namaka',
		text = {
			'The number of {C:tarot}Tarots{}, {C:planet}Planets{}, {C:spectral}Spectrals{} or {C:code}Codes',
			'you have used throughout the run are',
			'{C:attention}applied as levels{} to {C:attention}four random {C:purple}poker hands',
			'{C:inactive}(The same hand can be picked multiple times)',
			'{C:inactive}({C:tarot}#1#{C:inactive}, {C:planet}#2#{C:inactive}, {C:spectral}#3#{C:inactive}, {C:code}#4#{C:inactive})',
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	set = 'Planet',
	set_card_type_badge = natsat,
	pos = { x = 0, y = 10 },
	cost = 5,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
		local fav = jl.favhand()
		local hands = jl.adjacenthands(fav)
        return {vars = {jl.ctu('tarot'), jl.ctu('planet'), jl.ctu('spectral'), jl.ctu('code')}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		jl.ch()
		jl.hcm('', '')
		update_operator_display_custom(' ', G.C.WHITE)
		delay(1)
		for k, v in pairs(namaka_data) do
			local amt = jl.ctu(string.lower(k))
			update_operator_display_custom(k, v)
			delay(2)
			update_operator_display_custom('+' .. number_format(amt), v)
			delay(2)
			if amt > 0 then
				local sel = jl.rndhand(nil, 'jen_namaka_' .. string.lower(k))
				if (G.SETTINGS.FASTFORWARD or 0) < 1 then
					for i = 1, math.random(3, 6) do
						jl.th(G.handlist[math.random(#G.handlist)])
						delay(0.15)
					end
				end
				jl.th(sel)
				delay(1)
				level_up_hand(card, sel, nil, amt)
			else
				play_sound_q('timpani')
				update_operator_display_custom('Nope!', G.C.RED)
				delay(1)
			end
			delay(1)
		end
		jl.ch()
		update_operator_display()
	end,
	bulk_use = function(self, card, area, copier, number)
		jl.ch()
		jl.hcm('', '')
		update_operator_display_custom(' ', G.C.WHITE)
		delay(1)
		for i = 1, number do
			for k, v in pairs(namaka_data) do
				local amt = jl.ctu(string.lower(k))
				update_operator_display_custom(k, v)
				delay(2/i)
				update_operator_display_custom('+' .. number_format(amt), v)
				delay(2/i)
				if amt > 0 then
					local sel = jl.rndhand(nil, 'jen_namaka_' .. string.lower(k))
					if i == 1 and (G.SETTINGS.FASTFORWARD or 0) < 1 then
						for i = 1, math.random(3, 6) do
							jl.th(G.handlist[math.random(#G.handlist)])
							delay(0.15)
						end
					end
					jl.th(sel)
					delay(1/i)
					level_up_hand(card, sel, nil, amt)
				else
					play_sound_q('timpani')
					update_operator_display_custom('Nope!', G.C.RED)
					delay(1)
				end
				delay(1/i)
			end
		end
		jl.ch()
		update_operator_display()
	end
}

SMODS.Consumable {
	key = 'hiiaka',
	loc_txt = {
		name = 'Hi\'iaka',
		text = {
			'{C:inactive}(Currently placeholder, has the same effect as Namaka)',
			'The number of {C:tarot}Tarots{}, {C:planet}Planets{}, {C:spectral}Spectrals{} or {C:code}Codes',
			'you have used throughout the run are',
			'{C:attention}applied as levels{} to {C:attention}four random {C:purple}poker hands',
			'{C:inactive}(The same hand can be picked multiple times)',
			'{C:inactive}({C:tarot}#1#{C:inactive}, {C:planet}#2#{C:inactive}, {C:spectral}#3#{C:inactive}, {C:code}#4#{C:inactive})',
			'{C:dark_edition,s:0.7,E:2}Art by : patchy'
		}
	},
	set = 'Planet',
	set_card_type_badge = natsat,
	pos = { x = 1, y = 10 },
	cost = 5,
	unlocked = true,
	discovered = true,
	atlas = 'jenplanets',
    loc_vars = function(self, info_queue, center)
		local fav = jl.favhand()
		local hands = jl.adjacenthands(fav)
        return {vars = {jl.ctu('tarot'), jl.ctu('planet'), jl.ctu('spectral'), jl.ctu('code')}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		jl.ch()
		jl.hcm('', '')
		update_operator_display_custom(' ', G.C.WHITE)
		delay(1)
		for k, v in pairs(namaka_data) do
			local amt = jl.ctu(string.lower(k))
			update_operator_display_custom(k, v)
			delay(2)
			update_operator_display_custom('+' .. number_format(amt), v)
			delay(2)
			if amt > 0 then
				local sel = jl.rndhand(nil, 'jen_namaka_' .. string.lower(k))
				if (G.SETTINGS.FASTFORWARD or 0) < 1 then
					for i = 1, math.random(3, 6) do
						jl.th(G.handlist[math.random(#G.handlist)])
						delay(0.15)
					end
				end
				jl.th(sel)
				delay(1)
				level_up_hand(card, sel, nil, amt)
			else
				play_sound_q('timpani')
				update_operator_display_custom('Nope!', G.C.RED)
				delay(1)
			end
			delay(1)
		end
		jl.ch()
		update_operator_display()
	end,
	bulk_use = function(self, card, area, copier, number)
		jl.ch()
		jl.hcm('', '')
		update_operator_display_custom(' ', G.C.WHITE)
		delay(1)
		for i = 1, number do
			for k, v in pairs(namaka_data) do
				local amt = jl.ctu(string.lower(k))
				update_operator_display_custom(k, v)
				delay(2/i)
				update_operator_display_custom('+' .. number_format(amt), v)
				delay(2/i)
				if amt > 0 then
					local sel = jl.rndhand(nil, 'jen_namaka_' .. string.lower(k))
					if i == 1 and (G.SETTINGS.FASTFORWARD or 0) < 1 then
						for i = 1, math.random(3, 6) do
							jl.th(G.handlist[math.random(#G.handlist)])
							delay(0.15)
						end
					end
					jl.th(sel)
					delay(1/i)
					level_up_hand(card, sel, nil, amt)
				else
					play_sound_q('timpani')
					update_operator_display_custom('Nope!', G.C.RED)
					delay(1)
				end
				delay(1/i)
			end
		end
		jl.ch()
		update_operator_display()
	end
}

--UNO CONSUMABLES

local uno_data = {
	values = {
		'2', '3', '4', '5', '6', '7', '8', '9', '10', 'Jack', 'Queen', 'King', 'Ace'
	},
	colours = {
		Red = 'Hearts',
		Blue = 'Spades',
		Green = 'Clubs',
		Yellow = 'Diamonds'
	}
}

SMODS.Consumable {
	key = 'uno_uno',
	loc_txt = {
		name = 'UNO',
		text = {
			'Level up {C:attention}all ranks',
			'and {C:hearts}s{C:spades}u{C:clubs}i{C:diamonds}t{C:attention}s{} by {C:attention}1',
			spriter('jenwalter666')
		}
	},
	set = 'Spectral',
	pos = { x = 2, y = 4 },
	cost = 3,
	hidden = true,
	unlocked = true,
	discovered = true,
	soul_set = 'jen_uno',
	atlas = 'jenuno',
	ignore_kudaai = true,
	can_use = function(self, card)
		return jl.canuse()
	end,
	can_mass_use = true,
	use = function(self, card, area, copier)
		delay(1)
		play_sound_q('jen_uno')
		jl.a('UNO!', 2, 1, G.C.MONEY)
		Q(function() if card then card:juice_up(0.8, 0.5) end return true end)
		delay(2)
		jl.h('All Ranks & Suits', '...', '...', '')
		delay(.5)
		if (G.SETTINGS.FASTFORWARD or 0) < 1 then
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
			return true end }))
			jl.hc('+', true)
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
			return true end }))
			jl.hm('+', true)
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
			return true end }))
			jl.hlv('+1')
			play_sound_q('button', 0.9, 0.7)
		else
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
			return true end }))
			jl.h('All Ranks & Suits', '+', '+', '+1', true)
		end
		delay(1)
		for a, b in ipairs(uno_data.values) do
			level_up_rank(card, b, true, 1)
		end
		for c, d in pairs(uno_data.colours) do
			level_up_suit(card, d, true, 1)
		end
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		delay(1)
		play_sound_q('jen_uno')
		jl.a('UNO!', 2, 1, G.C.MONEY)
		Q(function() if card then card:juice_up(0.8, 0.5) end return true end)
		delay(2)
		jl.h('All Ranks & Suits', '...', '...', '')
		delay(.5)
		if (G.SETTINGS.FASTFORWARD or 0) < 1 then
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
			return true end }))
			jl.hc('+', true)
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
			return true end }))
			jl.hm('+', true)
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
			return true end }))
			jl.hlv('+' .. number)
			play_sound_q('button', 0.9, 0.7)
		else
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.2, func = function()
				play_sound('tarot1')
				if card then card:juice_up(0.8, 0.5) end
			return true end }))
			jl.h('All Ranks & Suits', '+', '+', '+' .. number, true)
		end
		delay(1)
		for a, b in ipairs(uno_data.values) do
			level_up_rank(card, b, true, number)
		end
		for c, d in pairs(uno_data.colours) do
			level_up_suit(card, d, true, number)
		end
		jl.ch()
	end
}

for a, b in ipairs(uno_data.values) do
	for c, d in pairs(uno_data.colours) do
		SMODS.Consumable {
			key = 'uno_' .. string.lower(c) .. string.lower(b),
			loc_txt = {
				name = c .. ' ' .. b,
				text = {
					'Level up {C:attention}' .. b .. 's{} and {C:' .. string.lower(d) .. '}' .. d,
					'{C:attention}' .. b .. 's{C:inactive} | {V:1}lvl.#1#{} : {X:chips,C:white}+#2#{} X {X:mult,C:white}+#3#',
					'{C:' .. string.lower(d) .. '}' .. d .. '{C:inactive} | {V:2}lvl.#4#{} : {X:chips,C:white}+#5#{} X {X:mult,C:white}+#6#',
					spriter('jenwalter666')
				}
			},
			set = 'jen_uno',
			pos = { x = (a - 1) % 10, y = (d == 'Hearts' and 0 or d == 'Spades' and 1 or d == 'Clubs' and 2 or d == 'Diamonds' and 3 or 0) + (a > 10 and 5 or 0) },
			cost = b == 'Ace' and 3 or 2,
			unlocked = true,
			discovered = true,
			atlas = 'jenuno',
			ignore_kudaai = true,
			can_mass_use = true,
			loc_vars = function(self, info_queue, center)
				if not G.GAME or not (G.GAME or {}).suits or not (G.GAME or {}).ranks then
					return {
						vars = {
							1,
							Jen.config.rank_leveling[b].chips,
							Jen.config.rank_leveling[b].mult,
							1,
							Jen.config.suit_leveling[d].chips,
							Jen.config.suit_leveling[d].mult,
							colours = {
								G.C.UI.TEXT_DARK,
								G.C.UI.TEXT_DARK
							}
						},
					}
				end
				return {
					vars = {
						G.GAME.ranks[b].level,
						G.GAME.ranks[b].l_chips,
						G.GAME.ranks[b].l_mult,
						G.GAME.suits[d].level,
						G.GAME.suits[d].l_chips,
						G.GAME.suits[d].l_mult,
						colours = {
							G.GAME.ranks[b].level <= 7200 and G.C.HAND_LEVELS['!' .. G.GAME.ranks[b].level] or G.C.HAND_LEVELS[G.GAME.ranks[b].level] or G.C.UI.TEXT_DARK,
							G.GAME.suits[d].level <= 7200 and G.C.HAND_LEVELS['!' .. G.GAME.suits[d].level] or G.C.HAND_LEVELS[G.GAME.suits[d].level] or G.C.UI.TEXT_DARK
						}
					},
				}
			end,
			can_use = function(self, card)
				return jl.canuse()
			end,
			use = function(self, card, area, copier)
				level_up_rank(card, b, nil, 1, true)
				level_up_suit(card, d, nil, 1)
			end,
			bulk_use = function(self, card, area, copier, number)
				level_up_rank(card, b, nil, number, true)
				level_up_suit(card, d, nil, number)
			end
		}
	end
end

for k, v in pairs(uno_data.colours) do
	SMODS.Consumable {
		key = 'uno_' .. string.lower(k) .. 'drawtwo',
		loc_txt = {
			name = k .. ' Draw Two',
			text = {
				'Creates {C:attention}2 {C:' .. string.lower(v) .. '}' .. k,
				'{C:attention}numerical {C:uno}UNO{} cards',
				mayoverflow,
				spriter('jenwalter666')
			}
		},
		set = 'jen_uno',
		pos = { x = 3, y = k == 'Red' and 5 or k == 'Blue' and 6 or k == 'Green' and 7 or k == 'Yellow' and 8 or 5 },
		cost = 4,
		unlocked = true,
		discovered = true,
		atlas = 'jenuno',
		ignore_kudaai = true,
		can_mass_use = true,
		can_use = function(self, card)
			return jl.canuse()
		end,
		use = function(self, card, area, copier)
			if not card.already_used_once then
				card.already_used_once = true
				for i = 1, 2 do
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Consumeables', G.consumeables, nil, nil, nil, nil, 'c_jen_uno_' .. string.lower(k) .. string.lower(pseudorandom_element(uno_data.values, pseudoseed('unodrawtwo_' .. string.lower(k)))), 'unodrawtwo_' .. string.lower(k))
							--[[if card.edition then
								card2:set_edition(card.edition, true)
							end]]
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
						return true
					end }))
				end
				Q(function() Q(function() if card then card.already_used_once = nil end return true end) return true end)
				delay(0.6)
			end
		end,
		bulk_use = function(self, card, area, copier, number)
			if not card.already_used_once then
				local quota = 2 * number
				card.already_used_once = true
				if quota > 40 then
					for i = 1, quota do
						local card2 = create_card('Consumeables', G.consumeables, nil, nil, nil, nil, 'c_jen_uno_' .. string.lower(k) .. string.lower(pseudorandom_element(uno_data.values, pseudoseed('unodrawtwo' .. string.lower(k)))), 'unodrawtwo_' .. string.lower(k))
						--[[if card.edition then
							card2:set_edition(card.edition, true)
						end]]
						card2:add_to_deck()
						G.consumeables:emplace(card2)
						card:juice_up(0.3, 0.5)
					end
				else
					for i = 1, quota do
						G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
								play_sound('jen_draw')
								local card2 = create_card('Consumeables', G.consumeables, nil, nil, nil, nil, 'c_jen_uno_' .. string.lower(k) .. string.lower(pseudorandom_element(uno_data.values, pseudoseed('unodrawtwo' .. string.lower(k)))), 'unodrawtwo_' .. string.lower(k))
								--[[if card.edition then
									card2:set_edition(card.edition, true)
								end]]
								card2:add_to_deck()
								G.consumeables:emplace(card2)
								card:juice_up(0.3, 0.5)
							return true
						end }))
					end
				end
				Q(function() Q(function() if card then card.already_used_once = nil end return true end) return true end)
				delay(0.6)
			end
		end
	}
	
	SMODS.Consumable {
		key = 'uno_' .. string.lower(k) .. 'skip',
		loc_txt = {
			name = k .. ' Skip',
			text = {
				'{C:' .. string.lower(v) .. '}' .. v .. '{C:red} siphons{} up to{C:attention} half a level',
				'from {C:attention}all{} of the {C:attention}other{} suits',
				spriter('jenwalter666')
			}
		},
		set = 'jen_uno',
		pos = { x = 4, y = k == 'Red' and 5 or k == 'Blue' and 6 or k == 'Green' and 7 or k == 'Yellow' and 8 or 5 },
		cost = 4,
		unlocked = true,
		discovered = true,
		atlas = 'jenuno',
		ignore_kudaai = true,
		can_mass_use = true,
		can_use = function(self, card)
			return jl.canuse()
		end,
		use = function(self, card, area, copier)
			jl.h('Other Ranks & Suits', '...', '...', '')
			if (G.SETTINGS.FASTFORWARD or 0) < 1 then
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
					play_sound('tarot1')
					if card then card:juice_up(0.8, 0.5) end
				return true end }))
				jl.hc('-', true)
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
					play_sound('tarot1')
					if card then card:juice_up(0.8, 0.5) end
				return true end }))
				jl.hm('-', true)
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
					play_sound('tarot1')
					if card then card:juice_up(0.8, 0.5) end
				return true end }))
				jl.hlv('-0~0.5')
				play_sound_q('button', 0.9, 0.7)
			else
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
					play_sound('tarot1')
					if card then card:juice_up(0.8, 0.5) end
				return true end }))
				jl.h('Other Ranks & Suits', '-', '-', '-0~0.5', true)
			end
			delay(1.3)
			local siphoned = 0
			for a, b in pairs(uno_data.colours) do
				if b ~= v then
					local to_siphon = math.max(0, math.min(G.GAME.suits[b].level, 0.5))
					siphoned = siphoned + to_siphon
					level_up_suit(card, b, true, -to_siphon)
				end
			end
			level_up_suit(card, v, nil, siphoned)
		end,
		bulk_use = function(self, card, area, copier, number)
			jl.h('Other Ranks & Suits', '...', '...', '')
			if (G.SETTINGS.FASTFORWARD or 0) < 1 then
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
					play_sound('tarot1')
					if card then card:juice_up(0.8, 0.5) end
				return true end }))
				jl.hc('-', true)
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
					play_sound('tarot1')
					if card then card:juice_up(0.8, 0.5) end
				return true end }))
				jl.hm('-', true)
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
					play_sound('tarot1')
					if card then card:juice_up(0.8, 0.5) end
				return true end }))
				jl.hlv('-0~' .. (number / 2))
				play_sound_q('button', 0.9, 0.7)
			else
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.9, func = function()
					play_sound('tarot1')
					if card then card:juice_up(0.8, 0.5) end
				return true end }))
				jl.h('Other Ranks & Suits', '-', '-', '-0~' .. (number / 2), true)
			end
			delay(1.3)
			local siphoned = 0
			for a, b in pairs(uno_data.colours) do
				if b ~= v then
					local to_siphon = math.max(0, math.min(G.GAME.suits[b].level, number / 2))
					siphoned = siphoned + to_siphon
					level_up_suit(card, b, true, -to_siphon)
				end
			end
			level_up_suit(card, v, nil, siphoned)
		end
	}
	
	SMODS.Consumable {
		key = 'uno_' .. string.lower(k) .. 'reverse',
		loc_txt = {
			name = k .. ' Reverse',
			text = {
				'Swap the level of {C:' .. string.lower(v) .. '}' .. v,
				'with the level of the {C:attention}highest',
				'level among the {C:attention}other suits{},',
				'then {C:attention}level up both suits by 1',
				spriter('jenwalter666')
			}
		},
		set = 'jen_uno',
		pos = { x = 5, y = k == 'Red' and 5 or k == 'Blue' and 6 or k == 'Green' and 7 or k == 'Yellow' and 8 or 5 },
		cost = 4,
		unlocked = true,
		discovered = true,
		atlas = 'jenuno',
		ignore_kudaai = true,
		can_mass_use = true,
		can_use = function(self, card)
			return jl.canuse()
		end,
		use = function(self, card, area, copier)
			local selected = v
			local highest = 0
			for a, b in pairs(uno_data.colours) do
				if b ~= v then
					if G.GAME.suits[b].level > highest then
						highest = G.GAME.suits[b].level
						selected = b
					end
				end
			end
			delay(.5)
			local level1 = G.GAME.suits[v].level
			local level2 = G.GAME.suits[selected].level
			if level1 ~= level2 then
				Q(function() card:juice_up(0.3, 0.5); play_sound('tarot1'); return true end)
				delay(.25)
				play_sound_q('jen_misc1')
				card:speak('Swapped!')
				level_up_suit(card, v, nil, level2 - level1, true)
				level_up_suit(card, selected, nil, level1 - level2, true)
				Q(function() card:juice_up(0.3, 0.5); play_sound('tarot2'); return true end)
			else
				card:speak('No change!')
				Q(function() card:juice_up(0.3, 0.5); play_sound('tarot1'); return true end)
			end
			delay(.25)
			play_sound_q('jen_misc1', 1.15)
			level_up_suit(card, selected, nil, 1, true)
			level_up_suit(card, v, nil, 1)
		end,
		bulk_use = function(self, card, area, copier, number)
			local selected = v
			local highest = 0
			for a, b in pairs(uno_data.colours) do
				if b ~= v then
					if G.GAME.suits[b].level > highest then
						highest = G.GAME.suits[b].level
						selected = b
					end
				end
			end
			delay(.5)
			local level1 = G.GAME.suits[v].level
			local level2 = G.GAME.suits[selected].level
			if level1 ~= level2 and number / 2 ~= math.ceil(number / 2) then
				Q(function() card:juice_up(0.3, 0.5); play_sound('tarot1'); return true end)
				delay(.25)
				play_sound_q('jen_misc1')
				card:speak('Swapped!')
				level_up_suit(card, v, nil, level2 - level1, true)
				level_up_suit(card, selected, nil, level1 - level2, true)
				Q(function() card:juice_up(0.3, 0.5); play_sound('tarot2'); return true end)
			else
				card:speak('No change!')
				Q(function() card:juice_up(0.3, 0.5); play_sound('tarot1'); return true end)
			end
			delay(.25)
			play_sound_q('jen_misc1', 1.15)
			level_up_suit(card, selected, nil, number, true)
			level_up_suit(card, v, nil, number)
		end
	}
end

SMODS.Consumable {
	key = 'uno_wild',
	loc_txt = {
		name = 'Wild',
		text = {
			'Level up {C:attention}all {C:hearts}s{C:spades}u{C:clubs}i{C:diamonds}t{C:attention}s',
			'by {C:attention}#1#{}, plus {C:attention}another #1#',
			'for {C:attention}each playing card',
			'in deck that {C:attention}has the relative suit',
			'{C:inactive}({C:hearts}#2#{C:inactive}, {C:spades}#3#{C:inactive}, {C:clubs}#4#{C:inactive}, {C:diamonds}#5#{C:inactive})',
			spriter('jenwalter666')
		}
	},
	config = {levels = 0.1},
	set = 'jen_uno',
	pos = { x = 0, y = 4 },
	cost = 3,
	unlocked = true,
	discovered = true,
	atlas = 'jenuno',
	ignore_kudaai = true,
	can_mass_use = true,
    loc_vars = function(self, info_queue, center)
		local suits = jl.countsuit()
		if type(suits) ~= 'table' then suits = {} end
        return {vars = {((center or {}).ability or {}).levels or 0.1, suits.Hearts or 0, suits.Spades or 0, suits.Clubs or 0, suits.Diamonds or 0}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		for k, v in pairs(jl.countsuit()) do
			level_up_suit(card, k, nil, v * card.ability.levels, true)
		end
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		for k, v in pairs(jl.countsuit()) do
			level_up_suit(card, k, nil, v * card.ability.levels * number, true)
		end
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'uno_drawfour',
	loc_txt = {
		name = 'Wild Draw Four',
		text = {
			'Create {C:attention}4{} random {C:uno}UNO{}',
			'cards and level up {C:attention}all {C:hearts}s{C:spades}u{C:clubs}i{C:diamonds}t{C:attention}s',
			'by {C:attention}#1#{}, plus {C:attention}another #1#',
			'for {C:attention}each playing card',
			'in deck that {C:attention}has the relative suit',
			'{C:inactive}({C:hearts}#2#{C:inactive}, {C:spades}#3#{C:inactive}, {C:clubs}#4#{C:inactive}, {C:diamonds}#5#{C:inactive})',
			mayoverflow,
			spriter('jenwalter666')
		}
	},
	config = {levels = 0.05},
	set = 'jen_uno',
	pos = { x = 1, y = 4 },
	cost = 5,
	unlocked = true,
	discovered = true,
	atlas = 'jenuno',
	ignore_kudaai = true,
	can_mass_use = true,
    loc_vars = function(self, info_queue, center)
		local suits = jl.countsuit()
		if type(suits) ~= 'table' then suits = {} end
        return {vars = {((center or {}).ability or {}).levels or 0.05, suits.Hearts or 0, suits.Spades or 0, suits.Clubs or 0, suits.Diamonds or 0}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		for k, v in pairs(jl.countsuit()) do
			level_up_suit(card, k, nil, v * card.ability.levels, true)
		end
		jl.ch()
			if not card.already_used_once then
				card.already_used_once = true
				for i = 1, 4 do
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('jen_uno', G.consumeables, nil, nil, nil, nil, nil, 'unodrawfour')
							--[[if card.edition then
								card2:set_edition(card.edition, true)
							end]]
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
						return true
					end }))
				end
				Q(function() Q(function() if card then card.already_used_once = nil end return true end) return true end)
				delay(0.6)
			end
	end,
	bulk_use = function(self, card, area, copier, number)
		for k, v in pairs(jl.countsuit()) do
			level_up_suit(card, k, nil, v * card.ability.levels * number, true)
		end
			if not card.already_used_once then
				card.already_used_once = true
				for i = 1, 4 * number do
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('jen_uno', G.consumeables, nil, nil, nil, nil, nil, 'unodrawfour')
							--[[if card.edition then
								card2:set_edition(card.edition, true)
							end]]
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
						return true
					end }))
				end
				Q(function() Q(function() if card then card.already_used_once = nil end return true end) return true end)
				delay(0.6)
			end
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'uno_wild_paint',
	loc_txt = {
		name = 'Wild Paint',
		text = {
			'Level up {C:attention}all {C:hearts}s{C:spades}u{C:clubs}i{C:diamonds}t{C:attention}s',
			'by {C:attention}#1#{}, plus {C:attention}another #1#',
			'for {C:attention}each playing card',
			'in deck that {C:attention}has the relative suit{},',
			'and create a {C:attention}Draw Two{} of relative colours',
			'for {C:attention}every 2 occurrences{} of that suit',
			'{C:inactive}({C:hearts}#2#{C:inactive}, {C:spades}#3#{C:inactive}, {C:clubs}#4#{C:inactive}, {C:diamonds}#5#{C:inactive})',
			spriter('jenwalter666')
		}
	},
	config = {levels = 0.01},
	set = 'Spectral',
	pos = { x = 3, y = 4 },
	cost = 5,
	hidden = true,
	unlocked = true,
	discovered = true,
	soul_set = 'jen_uno',
	atlas = 'jenuno',
	ignore_kudaai = true,
	can_mass_use = true,
    loc_vars = function(self, info_queue, center)
		local suits = jl.countsuit()
		if type(suits) ~= 'table' then suits = {} end
        return {vars = {((center or {}).ability or {}).levels or 0.01, suits.Hearts or 0, suits.Spades or 0, suits.Clubs or 0, suits.Diamonds or 0}}
    end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		for k, v in pairs(jl.countsuit()) do
			level_up_suit(card, k, nil, v * card.ability.levels, true)
				if v / 2 > 1 then
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Consumeables', G.consumeables, nil, nil, nil, nil, 'c_jen_uno_' .. suit_to_uno(k) .. 'drawtwo', 'uno_paint')
							if math.floor(v / 2) > 1 then
								card2:setQty(math.floor(v / 2))
								card2:create_stack_display()
							end
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
						return true
					end }))
				end
			delay(0.6)
		end
		jl.ch()
	end,
	bulk_use = function(self, card, area, copier, number)
		for k, v in pairs(jl.countsuit()) do
			level_up_suit(card, k, nil, v * card.ability.levels * number, true)
				if v / 2 > 1 then
					G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
							play_sound('jen_draw')
							local card2 = create_card('Consumeables', G.consumeables, nil, nil, nil, nil, 'c_jen_uno_' .. suit_to_uno(k) .. 'drawtwo', 'uno_paint')
							card2:setQty(math.floor(v / 2) * number)
							card2:create_stack_display()
							card2:add_to_deck()
							G.consumeables:emplace(card2)
							card:juice_up(0.3, 0.5)
						return true
					end }))
				end
			delay(0.6)
		end
		jl.ch()
	end
}

SMODS.Consumable {
	key = 'uno_null',
	loc_txt = {
		name = 'Null',
		text = {
			'Does nothing',
			spriter('jenwalter666')
		}
	},
	set = 'jen_uno',
	pos = { x = 9, y = 9 },
	cost = 1,
	unlocked = true,
	discovered = true,
	atlas = 'jenuno',
	can_mass_use = true,
	in_pool = function() return false end,
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
	end,
	bulk_use = function(self, card, area, copier, number)
	end
}

--OMEGA CONSUMABLES

local omegaconsumables = {
	'ankh',
	'aura',
	'black_hole',
	'ceres',
	'chariot',
	'cryptid',
	'death',
	'deja_vu',
	'devil',
	'earth',
	'ectoplasm',
	'emperor',
	'empress',
	'eris',
	'familiar',
	'fool',
	'grim',
	'hanged_man',
	'hermit',
	'hex',
	'hierophant',
	'high_priestess',
	'immolate',
	'incantation',
	'judgement',
	'jupiter',
	'justice',
	'lovers',
	'magician',
	'mars',
	'medium',
	'mercury',
	'moon',
	'neptune',
	'ouija',
	'planet_x',
	'pluto',
	'saturn',
	'sigil',
	'soul',
	'star',
	'strength',
	'sun',
	'talisman',
	'temperance',
	'tower',
	'trance',
	'uranus',
	'venus',
	'wheel_of_fortune',
	'world',
	'wraith'
}

local omegaplanets = {
	{
		n = 'Pluto',
		c = 'pluto',
		h = 'High Card',
		y = 9,
		p = 'Duck',
		v = 1
	},
	{
		n = 'Mercury',
		c = 'mercury',
		h = 'Pair',
		y = 6,
		p = 'Peasant',
		v = 2
	},
	{
		n = 'Uranus',
		c = 'uranus',
		h = 'Two Pair',
		y = 11,
		p = 'Camel',
		v = 3
	},
	{
		n = 'Venus',
		c = 'venus',
		h = 'Three of a Kind',
		y = 12,
		p = 'Pawn',
		v = 4
	},
	{
		n = 'Saturn',
		c = 'saturn',
		h = 'Straight',
		y = 10,
		p = 'Knight',
		v = 5
	},
	{
		n = 'Jupiter',
		c = 'jupiter',
		h = 'Flush',
		y = 4,
		p = 'Bishop',
		v = 6
	},
	{
		n = 'Earth',
		c = 'earth',
		h = 'Full House',
		y = 2,
		p = 'Rook',
		v = 8
	},
	{
		n = 'Mars',
		c = 'mars',
		h = 'Four of a Kind',
		y = 5,
		p = 'Queen',
		v = 10
	},
	{
		n = 'Neptune',
		c = 'neptune',
		h = 'Straight Flush',
		y = 7,
		p = 'King',
		v = 15
	},
	{
		n = 'Planet X',
		c = 'planet_x',
		h = 'Five of a Kind',
		y = 8,
		p = 'Archbishop',
		v = 20
	},
	{
		n = 'Ceres',
		c = 'ceres',
		h = 'Flush House',
		y = 1,
		p = 'Chancellor',
		v = 30
	},
	{
		n = 'Eris',
		c = 'eris',
		h = 'Flush Five',
		y = 3,
		p = 'Amazon',
		v = 50
	}
}

for k, v in pairs(omegaplanets) do
	if Jen.config.chess_cards then
		SMODS.Consumable {
			key = 'chess_' .. string.lower(v.p) .. '_l',
			loc_txt = {
				name = 'Light ' .. v.p,
				text = {
					'Create the {C:attention}example{} of {C:attention}' .. v.h .. '',
					'and add it to {C:attention}hand/deck',
					'{C:inactive}(Unscoring cards excluded)',
					spriter('SentientWM')
				}
			},
			set = 'jen_chess',
			pos = { x = k-1, y = 1 },
			cost = math.ceil(v.v / 3),
			aurinko = true,
			unlocked = true,
			discovered = true,
			atlas = 'jenchess',
			can_stack = true,
			can_divide = true,
			can_bulk_use = true,
			can_use = function(self, card)
				return jl.canuse()
			end,
			use = function(self, card, area, copier)
				jl.rd(.3)
				if #SMODS.find_card('j_jen_razzledazzle') > 0 then
					jl.th(v.h)
					for a, b in ipairs(SMODS.find_card('j_jen_razzledazzle')) do
						if b.ability.curmode == 'razzle' then
							Q(function() b:juice_up(0.8, 0.5) return true end)
							level_up_hand(card, v.h, nil, G.GAME.hands[v.h].played + 1)
						end
					end
					jl.ch()
				end
				Q(function()
					play_sound('tarot1')
					card:juice_up(0.3, 0.5)
					local cardset = {}
					Q(function()
						for k2, v2 in ipairs(G.GAME.hands[v.h].example) do
							if v2[2] then
								local new = create_playing_card({front = G.P_CARDS[v2[1]]}, G.play, nil, i ~= 1, {G.C.WHITE})
								if card.edition and not card.edition.negative then new:set_edition(card.edition) end
								table.insert(cardset, new)
							end
						end
					return true end)
					jl.rd(1)
					Q(function()
						play_sound('cardFan2')
						for k2, v2 in ipairs(cardset) do
							if v2.area then v2.area:remove_card(v2) end
							v2:add_to_deck()
							if #G.hand.cards > 0 then
								G.hand:emplace(v2)
							else
								G.deck:emplace(v2)
							end
						end
					return true end)
					Q(function()
						if next(cardset) then
							playing_card_joker_effects(cardset)
						end
					return true end)
					Q(function()
						cardset = nil
					return true end)
				return true end)
				delay(2)
			end,
			bulk_use = function(self, card, area, copier, number)
				jl.rd(.3)
				if #SMODS.find_card('j_jen_razzledazzle') > 0 then
					jl.th(v.h)
					for a, b in ipairs(SMODS.find_card('j_jen_razzledazzle')) do
						if b.ability.curmode == 'razzle' then
							Q(function() b:juice_up(0.8, 0.5) return true end)
							level_up_hand(card, v.h, nil, (G.GAME.hands[v.h].played + 1) * number)
						end
					end
					jl.ch()
				end
				Q(function()
					play_sound('tarot1')
					card:juice_up(0.3, 0.5)
					local cardset = {}
					Q(function()
						for i = 1, number do
							for k2, v2 in ipairs(G.GAME.hands[v.h].example) do
								if v2[2] then
									local new = create_playing_card({front = G.P_CARDS[v2[1]]}, G.play, nil, i ~= 1, {G.C.WHITE})
									if card.edition and not card.edition.negative then new:set_edition(card.edition) end
									table.insert(cardset, new)
								end
							end
						end
					return true end)
					jl.rd(1)
					Q(function()
						play_sound('cardFan2')
						for k2, v2 in ipairs(cardset) do
							if v2.area then v2.area:remove_card(v2) end
							if #G.hand.cards > 0 then
								G.hand:emplace(v2)
							else
								G.deck:emplace(v2)
							end
						end
					return true end)
					Q(function()
						cardset = nil
					return true end)
				return true end)
				delay(2)
			end
		}
		
		SMODS.Consumable {
			key = 'chess_' .. string.lower(v.p) .. '_d',
			loc_txt = {
				name = 'Dark ' .. v.p,
				text = {
					'Select cards that make a {C:attention}' .. v.h,
					'then use this to {C:red}destroy them',
					'in exchange for {C:attention}' .. v.v .. ' {C:planet}level' .. (v.v > 1 and 's' or ''),
					'for {C:purple}all hands',
					spriter('SentientWM')
				}
			},
			set = 'jen_chess',
			pos = { x = k-1, y = 0 },
			cost = math.ceil(v.v / 2.5),
			aurinko = true,
			unlocked = true,
			discovered = true,
			atlas = 'jenchess',
			can_stack = true,
			can_divide = true,
			can_use = function(self, card)
				card.detectedhands = evaluate_poker_hand(G.hand.highlighted)
				card.dazzleactive = false
				if #SMODS.find_card('j_jen_razzledazzle') > 0 then
					for k, v in ipairs(SMODS.find_card('j_jen_razzledazzle')) do
						if v.ability.curmode == 'dazzle' then
							card.dazzleactive = true
							break
						end
					end
				end
				return jl.canuse() and (next(card.detectedhands[v.h]) or card.dazzleactive)
			end,
			use = function(self, card, area, copier)
				jl.rd(.3)
				Q(function()
					play_sound('tarot1')
					card:juice_up(0.3, 0.5)
				return true end)
				if card.detectedhands and card.detectedhands[v.h] and next(card.detectedhands[v.h]) then
					local _, hand = next(card.detectedhands[v.h])
					if hand then
						for a, b in ipairs(hand) do
							Q(function() if b then b:start_dissolve() end return true end)
						end
						lvupallhands(v.v, card)
					end
				elseif #SMODS.find_card('j_jen_razzledazzle') > 0 then
					jl.th(v.h)
					for a, b in ipairs(SMODS.find_card('j_jen_razzledazzle')) do
						if b.ability.curmode == 'dazzle' then
							Q(function() b:juice_up(0.8, 0.5) return true end)
							level_up_hand(card, v.h, nil, v.v / 2)
						end
					end
					jl.ch()
				end
			end
		}
	end
	
	SMODS.Consumable {
		key = v.c .. '_omega',
		loc_txt = {
			name = v.n .. ' {C:dark_edition}Omega',
			text = {
				'{C:attention,s:1.5,E:1}' .. v.h .. '',
				' ',
				'{C:attention}Triples {C:chips}Chips{}, {C:chips}Level Chips{}, {C:mult}Mult{}, and {C:mult}Level Mult{},',
				'and then {C:attention}doubles{} current {C:planet}level'
			}
		},
		set = 'jen_omegaconsumable',
		pos = { x = 0, y = v.y },
		soul_pos = { x = 1, y = v.y },
		cost = 15,
		no_doe = true,
		aurinko = true,
		unlocked = true,
		discovered = true,
		gloss = true,
		soul_rate = 0,
		atlas = 'jenomegaplanets',
		hidden = true,
		hidden2 = true,
		can_stack = true,
		can_divide = true,
		can_bulk_use = true,
		can_use = function(self, card)
			return jl.canuse()
		end,
		use = function(self, card, area, copier)
			local hand = v.h
			update_operator_display_custom('Per Lv.', G.C.WHITE)
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(hand, 'poker_hands'),chips = G.GAME.hands[hand].l_chips, mult = G.GAME.hands[hand].l_mult, level=G.GAME.hands[hand].level})
			G.GAME.hands[hand].l_chips = G.GAME.hands[hand].l_chips * 3
			G.GAME.hands[hand].l_mult = G.GAME.hands[hand].l_mult * 3
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost1', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {chips = 'x3', StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost2', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {mult = 'x3', StatusText = true})
			update_hand_text({sound = 'button', volume = 0.7, pitch = 1, delay = 1}, {chips = G.GAME.hands[hand].l_chips, mult = G.GAME.hands[hand].l_mult})
			delay(2)
			update_operator_display()
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 1}, {chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult})
			G.GAME.hands[hand].chips = G.GAME.hands[hand].chips * 3
			G.GAME.hands[hand].mult = G.GAME.hands[hand].mult * 3
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost3', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {chips = 'x3', StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost4', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {mult = 'x3', StatusText = true})
			update_hand_text({sound = 'button', volume = 0.7, pitch = 1, delay = 1}, {chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult})
			level_up_hand(card, hand, false, G.GAME.hands[hand].level)
			jl.ch()
		end,
		bulk_use = function(self, card, area, copier, number)
			local hand = v.h
			local factor = to_big(3) ^ number
			update_operator_display_custom('Per Lv.', G.C.WHITE)
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 0.3}, {handname=localize(hand, 'poker_hands'),chips = G.GAME.hands[hand].l_chips, mult = G.GAME.hands[hand].l_mult, level=G.GAME.hands[hand].level})
			G.GAME.hands[hand].l_chips = G.GAME.hands[hand].l_chips * factor
			G.GAME.hands[hand].l_mult = G.GAME.hands[hand].l_mult * factor
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost1', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 0.3}, {chips = 'x' .. number_format(factor), StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost2', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 0.3}, {mult = 'x' .. number_format(factor), StatusText = true})
			update_hand_text({sound = 'button', volume = 0.7, pitch = 1, delay = 1}, {chips = G.GAME.hands[hand].l_chips, mult = G.GAME.hands[hand].l_mult})
			delay(2)
			update_operator_display()
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 1}, {chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult})
			G.GAME.hands[hand].chips = G.GAME.hands[hand].chips * 3
			G.GAME.hands[hand].mult = G.GAME.hands[hand].mult * 3
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost3', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 0.3}, {chips = 'x' .. number_format(factor), StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost4', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 0.3}, {mult = 'x' .. number_format(factor), StatusText = true})
			update_hand_text({sound = 'button', volume = 0.7, pitch = 1, delay = 1}, {chips = G.GAME.hands[hand].chips, mult = G.GAME.hands[hand].mult})
			level_up_hand(card, hand, false, G.GAME.hands[hand].level * (number <= 1 and number or (2 ^ number)) - (number <= 1 and 0 or G.GAME.hands[hand].level))
			jl.ch()
		end
	}
end

	SMODS.Consumable {
		key = 'black_hole_omega',
		loc_txt = {
			name = '{C:dark_edition}Sagittarius A*',
			text = {
				'{C:attention}Nonuples {C:chips}Chips{}, {C:chips}Level Chips{}, {C:mult}Mult{}, and {C:mult}Level Mult{},',
				'and then {C:attention}quadruples{} current {C:planet}level{} of {C:purple}all poker hands'
			}
		},
		set = 'jen_omegaconsumable',
		pos = { x = 0, y = 0 },
		soul_pos = { x = 1, y = 0 },
		cost = 15,
		soul_rate = 0,
		fusable = true,
		no_doe = true,
		unlocked = true,
		discovered = true,
		atlas = 'jenomegaplanets',
		gloss = true,
		hidden = true,
		hidden2 = true,
		can_stack = true,
		can_divide = true,
		can_bulk_use = true,
		can_use = function(self, card)
			return jl.canuse()
		end,
		use = function(self, card, area, copier)
			update_operator_display_custom('Per Lv.', G.C.WHITE)
			jl.th('all')
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost1', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {chips = 'x9', StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost2', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {mult = 'x9', StatusText = true})
			update_hand_text({sound = 'button', volume = 0.7, pitch = 1, delay = 1}, {chips = '+++', mult = '+++'})
			delay(2)
			update_operator_display()
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 1}, {chips = '...', mult = '...'})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost3', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {chips = 'x9', StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost4', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {mult = 'x9', StatusText = true})
			update_hand_text({sound = 'button', volume = 0.7, pitch = 1, delay = 1}, {chips = '+++', mult = '+++'})
			update_hand_text({sound = 'button', volume = 0.7, pitch = 1, delay = 1}, {level = 'x4'})
			for k, v in pairs(G.handlist) do
				local hand = v
				G.GAME.hands[hand].l_chips = G.GAME.hands[hand].l_chips * 9
				G.GAME.hands[hand].l_mult = G.GAME.hands[hand].l_mult * 9
				G.GAME.hands[hand].chips = G.GAME.hands[hand].chips * 9
				G.GAME.hands[hand].mult = G.GAME.hands[hand].mult * 9
				level_up_hand(card, hand, true, G.GAME.hands[hand].level * 3)
			end
			jl.ch()
		end,
		bulk_use = function(self, card, area, copier, number)
			local factor = to_big(9) ^ number
			update_operator_display_custom('Per Lv.', G.C.WHITE)
			jl.th('all')
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost1', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {chips = 'x' .. number_format(factor), StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost2', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {mult = 'x' .. number_format(factor), StatusText = true})
			update_hand_text({sound = 'button', volume = 0.7, pitch = 1, delay = 1}, {chips = '+++', mult = '+++'})
			delay(2)
			update_operator_display()
			update_hand_text({sound = 'button', volume = 0.7, pitch = 0.8, delay = 1}, {chips = '...', mult = '...'})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost3', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {chips = 'x' .. number_format(factor), StatusText = true})
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 1, func = function()
				play_sound('jen_boost4', 1, 0.4)
				card:juice_up(0.8, 0.5)
			return true end }))
			update_hand_text({delay = 1}, {mult = 'x' .. number_format(factor), StatusText = true})
			update_hand_text({sound = 'button', volume = 0.7, pitch = 1, delay = 1}, {chips = '+++', mult = '+++'})
			update_hand_text({sound = 'button', volume = 0.7, pitch = 1, delay = 1}, {level = 'x' .. number_format(4^number)})
			for k, v in pairs(G.handlist) do
				local hand = v
				G.GAME.hands[hand].l_chips = G.GAME.hands[hand].l_chips * factor
				G.GAME.hands[hand].l_mult = G.GAME.hands[hand].l_mult * factor
				G.GAME.hands[hand].chips = G.GAME.hands[hand].chips * factor
				G.GAME.hands[hand].mult = G.GAME.hands[hand].mult * factor
				level_up_hand(card, hand, true, (G.GAME.hands[hand].level * (number <= 1 and 4 or (4^number))) - G.GAME.hands[hand].level)
			end
			jl.ch()
		end
	}

SMODS.Consumable {
	key = 'ankh_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Ankh {C:dark_edition}Omega',
		text = {
			'Create {C:attention}4{} copies',
			'of a {C:attention}selected Joker',
			'{C:inactive}(Chooses randomly if no Joker is chosen)',
			'{C:inactive}(Does not require room, but may overflow)'
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 20,
	soul_rate = 0,
	unlocked = true,
	discovered = true,
	no_doe = true,
	hidden = true,
	hidden2 = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse() and #((G.jokers or {}).cards or {}) > 0
	end,
	use = function(self, card, area, copier)
		local joker = G.jokers.highlighted[1]
		if not joker then
			joker = G.jokers.cards[pseudorandom('ankhexrandom', 1, #G.jokers.cards)]
		end
		if joker then
			for i = 1, 4 do	
				local ankhcard = copy_card(joker)
				ankhcard:start_materialize()
				ankhcard:add_to_deck()
				G.jokers:emplace(ankhcard)
			end
		end
	end,
	bulk_use = function(self, card, area, copier, number)
		local joker = G.jokers.highlighted[1]
		if not joker then
			joker = G.jokers.cards[pseudorandom('ankhexrandom', 1, #G.jokers.cards)]
		end
		if joker then
			for i = 1, 4 * number do	
				local ankhcard = copy_card(joker)
				ankhcard:start_materialize()
				ankhcard:add_to_deck()
				G.jokers:emplace(ankhcard)
			end
		end
	end
}

SMODS.Consumable {
	key = 'aura_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Aura {C:dark_edition}Omega',
		text = {
			'Apply a random {C:cry_exotic}Exotic Edition',
			'to any {C:attention}selected Joker{} and/or to',
			'{C:attention}any number{} of {C:attention}selected playing cards',
			'{C:inactive}(Can overwrite editions)'
		}
	},
	pos = { x = 0, y = 1 },
	soul_pos = { x = 1, y = 1 },
	cost = 20,
	soul_rate = 0,
	unlocked = true,
	discovered = true,
	no_doe = true,
	hidden = true,
	hidden2 = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse() and (#G.jokers.highlighted + #G.hand.highlighted) > 0 and #G.jokers.highlighted <= 1
	end,
	use = function(self, card, area, copier)
		local joker = G.jokers.highlighted[1]
		if joker then
			joker:set_edition({[exotic_editions[pseudorandom('auraexrandom', 1, #exotic_editions)]] = true})
		end
		if #G.hand.highlighted > 0 then
			for k, v in pairs(G.hand.highlighted) do
				v:set_edition({[exotic_editions[pseudorandom('auraexrandom', 1, #exotic_editions)]] = true})
			end
		end
	end
}

SMODS.Consumable {
	key = 'cryptid_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Cryptid {C:dark_edition}Omega',
		text = {
			'Create {C:attention}20{} copies of',
			'{C:attention}any number{} of {C:attention}selected playing cards'
		}
	},
	pos = { x = 0, y = 2 },
	soul_pos = { x = 1, y = 2 },
	cost = 20,
	soul_rate = 0,
	unlocked = true,
	discovered = true,
	no_doe = true,
	hidden = true,
	hidden2 = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse() and #G.hand.highlighted > (card.area == G.hand and 1 or 0)
	end,
	use = function(self, card, area, copier)
		if #G.hand.highlighted > 0 then
			for k, v in ipairs(G.hand.highlighted) do
				for i = 1, 20 do	
					local cryptidcard = copy_card(v)
					cryptidcard:start_materialize()
					cryptidcard:add_to_deck()
					G.hand:emplace(cryptidcard)
					G.playing_card = (G.playing_card and G.playing_card + 1) or 1
					table.insert(G.playing_cards, cryptidcard)
				end
			end
		end
	end,
	bulk_use = function(self, card, area, copier, number)
		if #G.hand.highlighted > 0 then
			for k, v in ipairs(G.hand.highlighted) do
				for i = 1, 20 * number do	
					local cryptidcard = copy_card(v)
					cryptidcard:start_materialize()
					cryptidcard:add_to_deck()
					G.hand:emplace(cryptidcard)
					G.playing_card = (G.playing_card and G.playing_card + 1) or 1
					table.insert(G.playing_cards, cryptidcard)
				end
			end
		end
	end
}

local exsealcards = {
	{
		n = 'Deja Vu',
		c = 'deja_vu',
		s = 'Red',
		y = 3
	},
	{
		n = 'Medium',
		c = 'medium',
		s = 'Purple',
		y = 10
	},
	{
		n = 'Talisman',
		c = 'talisman',
		s = 'Gold',
		y = 13
	},
	{
		n = 'Trance',
		c = 'trance',
		s = 'Blue',
		y = 14
	}
}

for k, v in pairs(exsealcards) do
	SMODS.Consumable {
		key = v.c .. '_omega',
		set = 'jen_omegaconsumable',
		loc_txt = {
			name = v.n .. ' {C:dark_edition}Omega',
			text = {
				'Apply a {C:attention}' .. v.s .. ' Seal{} to',
				'{C:attention}all playing cards{} you currently have'
			}
		},
		pos = { x = 0, y = v.y },
		soul_pos = { x = 1, y = v.y },
		cost = 20,
		soul_rate = 0,
		unlocked = true,
		discovered = true,
		no_doe = true,
		hidden = true,
		hidden2 = true,
		gloss = true,
		atlas = 'jenomegaspectrals',
		can_use = function(self, card)
			return jl.canuse()
		end,
		use = function(self, card, area, copier)
			if G.hand and G.hand.cards then
				for _, card in pairs(G.hand.cards) do
					card:set_seal(v.s, k > 50, k > 50)
				end
			end
			if G.deck and G.deck.cards then
				for _, card in pairs(G.deck.cards) do
					card:set_seal(v.s, true, true)
				end
			end
		end
	}
end

SMODS.Consumable {
	key = 'ectoplasm_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Ectoplasm {C:dark_edition}Omega',
		text = {
			'Apply {C:dark_edition}Negative{} to {C:attention}every Joker',
			'{C:inactive}(Overwrites any existing edition, except for Exotic+ editions)'
		}
	},
	pos = { x = 0, y = 4 },
	soul_pos = { x = 1, y = 4 },
	cost = 100,
	soul_rate = 0,
	unlocked = true,
	discovered = true,
	no_doe = true,
	hidden = true,
	hidden2 = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse() and #((G.jokers or {}).cards or {}) > 0
	end,
	use = function(self, card, area, copier)
		for k, v in pairs(G.jokers.cards) do
			if not v:is_exotic_edition() then
				v.no_forced_edition = true
				v:set_edition({negative = true}, k > 200, k > 200)
				v.no_forced_edition = nil
			end
		end
	end
}

SMODS.Consumable {
	key = 'familiar_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Familiar {C:dark_edition}Omega',
		text = {
			'Add a {C:attention}full set{} of {C:jen_RGB,E:1}Moire {C:attention}Kings{},',
			'{C:cry_exotic,E:1}Blood {C:attention}Queens{} and {C:cry_exotic,E:1}Bloodfoil {C:attention}Jacks',
			'to your deck'
		}
	},
	pos = { x = 0, y = 5 },
	soul_pos = { x = 1, y = 5 },
	cost = 100,
	soul_rate = 0,
	unlocked = true,
	discovered = true,
	no_doe = true,
	hidden = true,
	hidden2 = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		createcardset('_K', nil, 'jen_moire', 1)
		createcardset('_Q', nil, 'jen_blood', 1)
		createcardset('_J', nil, 'jen_bloodfoil', 1)
	end,
	bulk_use = function(self, card, area, copier, number)
		createcardset('_K', nil, 'jen_moire', number)
		createcardset('_Q', nil, 'jen_blood', number)
		createcardset('_J', nil, 'jen_bloodfoil', number)
	end
}

SMODS.Consumable {
	key = 'grim_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Grim {C:dark_edition}Omega',
		text = {
			'Add two {C:attention}full sets{} of',
			'{C:jen_RGB,E:1}Moire {C:attention}Aces{} to your deck'
		}
	},
	pos = { x = 0, y = 6 },
	soul_pos = { x = 1, y = 6 },
	cost = 80,
	soul_rate = 0,
	unlocked = true,
	discovered = true,
	no_doe = true,
	hidden = true,
	hidden2 = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		createcardset('_A', nil, 'jen_moire', 2)
	end,
	bulk_use = function(self, card, area, copier, number)
		createcardset('_A', nil, 'jen_moire', 2 * number)
	end
}

SMODS.Consumable {
	key = 'hex_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Hex {C:dark_edition}Omega',
		text = {
			'Apply a random {C:cry_exotic,E:1}Exotic Edition{} to',
			'a {C:green}random selection{} of {C:attention}half',
			'of your {C:attention}Jokers{} that {C:attention}do not already have',
			'an {C:cry_exotic,E:1}Exotic Edition'
		}
	},
	pos = { x = 0, y = 7 },
	soul_pos = { x = 1, y = 7 },
	cost = 150,
	soul_rate = 0,
	unlocked = true,
	discovered = true,
	no_doe = true,
	hidden = true,
	hidden2 = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local possible_selections = {}
		for k, v in pairs(G.jokers.cards) do
			if not v:is_exotic_edition() then
				table.insert(possible_selections, v)
			end
		end
		if #possible_selections > 0 then
			local selections = {}
			local toselect = math.ceil(#possible_selections / 2)
			local tries = 1e4
			local choice
			while toselect > 0 and tries > 0 do
				choice = possible_selections[pseudorandom('hex_omega_selection', 1, #possible_selections)]
				if not choice.selectedbyhexex then
					choice.selectedbyhexex = true
					table.insert(selections, choice)
					toselect = toselect - 1
				end
				tries = tries - 1
			end
			if #selections > 0 then
				for k, v in pairs(selections) do
					v:set_edition({[exotic_editions[pseudorandom('hexexrandom', 1, #exotic_editions)]] = true})
				end
			else
				card_status_text(card, 'No targets!', nil, 0.05*card.T.h, G.C.RED, nil, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
			end
		else
			card_status_text(card, 'No targets!', nil, 0.05*card.T.h, G.C.RED, nil, 0.6, nil, nil, 'bm', 'cancel', 1, 0.9)
		end
	end
}

SMODS.Consumable {
	key = 'immolate_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Immolate {C:dark_edition}Omega',
		text = {
			'Select {C:attention}any number{} of playing cards to {C:red}destroy{},',
			"For each destroyed card; {C:money}money{} is {C:attention}multiplied{} by {C:attention}R{},",
			"all hands {C:planet}level up{} by {X:green,C:white}3x{C:attention}R{},",
			"and increase Joker slots by {C:attention}R",
			'{C:inactive}(R = card rank)',
			'{C:inactive}(Stones are treated as a 2)'
		}
	},
	pos = { x = 0, y = 8 },
	soul_pos = { x = 1, y = 8 },
	cost = 200,
	soul_rate = 0,
	unlocked = true,
	discovered = true,
	no_doe = true,
	hidden = true,
	hidden2 = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse() and #G.hand.highlighted > (card.area == G.hand and 1 or 0)
	end,
	use = function(self, card, area, copier)
		if #G.hand.highlighted > 0 then
			for k, v in pairs(G.hand.highlighted) do
				local rank = v:norank() and 2 or v:get_id()
				if rank >= 1 then
					ease_dollars(math.min(1e308, G.GAME.dollars * rank - G.GAME.dollars))
					G.E_MANAGER:add_event(Event({trigger = 'after', func = function()
						v:juice_up(0.5, 0.5)
						return true
					end }))
					delay(0.25)
					lvupallhands(rank * 3, v, true)
					delay(0.25)
					G.jokers:change_size_absolute(rank)
					delay(0.25)
					G.E_MANAGER:add_event(Event({trigger = 'after', func = function()
						v:start_dissolve()
						return true
					end }))
				end
			end
		end
	end
}

SMODS.Consumable {
	key = 'incantation_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Incantation {C:dark_edition}Omega',
		text = {
			'Add a {C:attention}full set{} of cards {C:attention}2{} through {C:attention}10',
			'to your deck, with {C:cry_exotic,E:1}Bloodfoil{} on {C:attention}odd ranks{} and {C:cry_exotic,E:1}Blood{} on {C:attention}even ranks'
		}
	},
	pos = { x = 0, y = 9 },
	soul_pos = { x = 1, y = 9 },
	cost = 175,
	soul_rate = 0,
	unlocked = true,
	discovered = true,
	no_doe = true,
	hidden = true,
	hidden2 = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		createcardset('_2', nil, 'jen_blood', 1)
		createcardset('_3', nil, 'jen_bloodfoil', 1)
		createcardset('_4', nil, 'jen_blood', 1)
		createcardset('_5', nil, 'jen_bloodfoil', 1)
		createcardset('_6', nil, 'jen_blood', 1)
		createcardset('_7', nil, 'jen_bloodfoil', 1)
		createcardset('_8', nil, 'jen_blood', 1)
		createcardset('_9', nil, 'jen_bloodfoil', 1)
		createcardset('_T', nil, 'jen_blood', 1)
	end,
	bulk_use = function(self, card, area, copier, number)
		createcardset('_2', nil, 'jen_blood', number)
		createcardset('_3', nil, 'jen_bloodfoil', number)
		createcardset('_4', nil, 'jen_blood', number)
		createcardset('_5', nil, 'jen_bloodfoil', number)
		createcardset('_6', nil, 'jen_blood', number)
		createcardset('_7', nil, 'jen_bloodfoil', number)
		createcardset('_8', nil, 'jen_blood', number)
		createcardset('_9', nil, 'jen_bloodfoil', number)
		createcardset('_T', nil, 'jen_blood', number)
	end
}

SMODS.Consumable {
	key = 'ouija_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Ouija {C:dark_edition}Omega',
		text = {
			'Select {C:attention}any number{} of cards,',
			'all other cards whose rank',
			'{C:attention}does not match any of the selected cards',
			'will be removed and {C:money}sold',
			'{C:inactive}(Removes Diplopia from card before selling)'
		}
	},
	pos = { x = 0, y = 11 },
	soul_pos = { x = 1, y = 11 },
	cost = 175,
	soul_rate = 0,
	unlocked = true,
	discovered = true,
	no_doe = true,
	hidden = true,
	hidden2 = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse() and #G.hand.highlighted > (card.area == G.hand and 1 or 0)
	end,
	use = function(self, card, area, copier)
		local targets = {}
		if #G.hand.highlighted > 0 then
			for k, v in pairs(G.playing_cards) do
				local safe = false
				if not v.highlighted then
					for a, b in pairs(G.hand.highlighted) do
						if b:get_id() == v:get_id() or (b:norank() and v:norank()) then
							safe = true
							break
						end
					end
				end
				if not safe and not v.highlighted then
					if v.edition and v.edition.jen_diplopia then
						v:set_edition(nil, true, true)
					end
					table.insert(targets, v)
				end
			end
		end
		if #targets > 0 then
			bulk_sell_cards(targets, true, true)
		end
	end
}

SMODS.Consumable {
	key = 'sigil_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Sigil {C:dark_edition}Omega',
		text = {
			'Select {C:attention}any number{} of cards,',
			'all other cards whose suit',
			'{C:attention}does not match any of the selected cards',
			'will be removed and {C:money}sold',
			'{C:inactive}(Ignores effect of Wilds; card\'s ACTUAL suit must match)',
			'{C:inactive}(Removes Diplopia from card before selling)'
		}
	},
	pos = { x = 0, y = 12 },
	soul_pos = { x = 1, y = 12 },
	soul_rate = 0,
	cost = 175,
	unlocked = true,
	discovered = true,
	no_doe = true,
	hidden = true,
	hidden2 = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse() and #G.hand.highlighted > (card.area == G.hand and 1 or 0)
	end,
	use = function(self, card, area, copier)
		local targets = {}
		if #G.hand.highlighted > 0 then
			for k, v in pairs(G.playing_cards) do
				local safe = false
				if not v.highlighted then
					for a, b in pairs(G.hand.highlighted) do
						if (b:norank() and v:norank()) or b.base.suit == v.base.suit then
							safe = true
							break
						end
					end
				end
				if not safe and not v.highlighted then
					if v.edition and v.edition.jen_diplopia then
						v:set_edition(nil, true, true)
					end
					table.insert(targets, v)
				end
			end
		end
		if #targets > 0 then
			bulk_sell_cards(targets, true, true)
		end
	end
}

SMODS.Consumable {
	key = 'wraith_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'Wraith {C:dark_edition}Omega',
		text = {
			'Create one of every {C:cry_epic,E:1}Epic{} and',
			'{C:legendary,E:1}Legendary {C:almanac,E:1}Jen\'s Almanac {C:attention}Joker',
			mayoverflow
		}
	},
	pos = { x = 0, y = 15 },
	soul_pos = { x = 1, y = 15 },
	cost = 175,
	soul_rate = 0,
	hidden = true,
	hidden2 = true,
	unlocked = true,
	discovered = true,
	no_doe = true,
	gloss = true,
	atlas = 'jenomegaspectrals',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		for k, v in pairs(G.P_CENTERS) do
			if v.set == 'Joker' and string.sub(k, 1, 6) == 'j_jen_' and (tostring(v.rarity) == 'cry_epic' or (type(v.rarity) == 'number' and v.rarity == 4)) then
				local card2 = jl.card(v.key)
				card2:add_to_deck()
				G.jokers:emplace(card2)
			end
		end
	end
}

SMODS.Consumable {
	key = 'fool_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'The Fool {C:dark_edition}Omega',
		text = {
			'Create {C:attention}2{} random',
			'{C:red,E:1}Omega{} cards',
			'{C:inactive}(Excludes Balatro\'s Soul)',
			mayoverflow
		}
	},
	pos = { x = 0, y = 0 },
	soul_pos = { x = 1, y = 0 },
	cost = 175,
	soul_rate = 0,
	hidden = true,
	hidden2 = true,
	unlocked = true,
	discovered = true,
	no_doe = true,
	atlas = 'jenomegatarots',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local to_generate = 2
		local cntr
		while to_generate > 0 do
			cntr = ('c_jen_' .. pseudorandom_element(omegaconsumables, pseudoseed('fool_omega')) .. '_omega')
			while cntr == 'c_jen_soul_omega' do
				cntr = ('c_jen_' .. pseudorandom_element(omegaconsumables, pseudoseed('fool_omega')) .. '_omega')
			end
			if G.P_CENTERS[cntr] then
				local card2 = create_card('jen_omegaconsumable', G.consumeables, nil, nil, nil, nil, cntr, 'fool_omega')
				card2:add_to_deck()
				G.consumeables:emplace(card2)
				to_generate = to_generate - 1
			end
		end
	end
}

local omega_copyamount = 19
for k, v in ipairs(enhancetarots_info) do
	SMODS.Consumable {
		key = v.b .. '_omega',
		set = 'jen_omegaconsumable',
		loc_txt = {
			name = v.o .. ' {C:dark_edition}Omega',
			text = {
				'Select {C:attention}any number{} of cards to enhance to {C:attention}' .. v.c .. '{} cards,',
				'{C:red}destroy all other cards{} and {C:attention}duplicate the selected cards ' .. omega_copyamount .. ' times'
			}
		},
		pos = { x = 0, y = v.omega },
		soul_pos = { x = 1, y = v.omega },
		cost = 35,
		soul_rate = 0,
		hidden = true,
		hidden2 = true,
		unlocked = true,
		discovered = true,
		no_doe = true,
		atlas = 'jenomegatarots',
		can_use = function(self, card)
			return jl.canuse() and #G.hand.highlighted > (card.area == G.hand and 1 or 0)
		end,
		use = function(self, card, area, copier)
			local targets = {}
			for k, v in ipairs(G.playing_cards) do
				if not v.highlighted then v:destroy() end
			end
			delay(1)
			if #G.hand.highlighted > 0 then
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
					play_sound('tarot1')
					card:juice_up(0.3, 0.5)
				return true end }))
				for i=1, #G.hand.highlighted do
					local CARD = G.hand.highlighted[i]
					table.insert(targets, CARD)
					local percent = 1.15 - (i-0.999)/(#G.hand.highlighted-0.998)*0.3
					G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() CARD:flip();play_sound('card1', percent);CARD:juice_up(0.3, 0.3);return true end }))
				end
				delay(0.2)
				for i=1, #G.hand.highlighted do
					local CARD = G.hand.highlighted[i]
					local percent = 0.85 + (i-0.999)/(#G.hand.highlighted-0.998)*0.3
					G.E_MANAGER:add_event(Event({trigger = 'after',delay = 0.15,func = function() G.hand:remove_from_highlighted(CARD);CARD:flip();CARD:set_ability(v.e, true, nil);play_sound('tarot2', percent);CARD:juice_up(0.3, 0.3);return true end }))
				end
			end
			Q(function()
				for k, v in ipairs(targets) do
					for i = 1, omega_copyamount do
						local dupe = copy_card(v)
						dupe:start_materialize()
						dupe:add_to_deck()
						G.hand:emplace(dupe)
						G.playing_card = (G.playing_card and G.playing_card + 1) or 1
						table.insert(G.playing_cards, dupe)
					end
				end
			return true end)
		end
	}
end

SMODS.Consumable {
	key = 'high_priestess_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'The High Priestess {C:dark_edition}Omega',
		text = {
			'Every {C:attention}Joker{}, {C:attention}consumable{},',
			'and {C:attention}playing card{} will trigger',
			'as if they were {C:spectral}Black Holes'
		}
	},
	pos = { x = 0, y = 2 },
	soul_pos = { x = 1, y = 2 },
	cost = 200,
	soul_rate = 0,
	dangerous = true,
	hidden = true,
	hidden2 = true,
	unlocked = true,
	discovered = true,
	no_doe = true,
	atlas = 'jenomegatarots',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local uneditioned_lvups = not card.edition and 1 or 0
		if card.edition then
			lvupallhands(card:getQty(), card, true)
		end
		for k, v in ipairs(G.jokers.cards) do
			if v.edition then
				lvupallhands(1, v, true)
			else
				uneditioned_lvups = uneditioned_lvups + 1
			end
		end
		for k, v in ipairs(G.consumeables.cards) do
			if v.edition then
				lvupallhands(v:getQty(), v, true)
			else
				uneditioned_lvups = uneditioned_lvups + v:getQty()
			end
		end
		for k, v in ipairs(G.playing_cards) do
			if v.edition then
				lvupallhands(1, v, true)
			else
				uneditioned_lvups = uneditioned_lvups + 1
			end
		end
		if uneditioned_lvups > 0 then
			lvupallhands(uneditioned_lvups, nil, true)
		end
	end
}

SMODS.Consumable {
	key = 'emperor_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'The Emperor {C:dark_edition}Omega',
		text = {
			'Create a random {C:cry_exotic,E:1}Exotic {C:attention}Joker',
			'for every {C:attention}King{} in your deck',
			'Temporarily create a {X:attention}Showman',
			'for the joker-creation process',
			mayoverflow
		}
	},
	pos = { x = 0, y = 4 },
	soul_pos = { x = 1, y = 4 },
	cost = 300,
	soul_rate = 0,
	hidden = true,
	hidden2 = true,
	unlocked = true,
	discovered = true,
	no_doe = true,
	atlas = 'jenomegatarots',
	can_use = function(self, card)
		return jl.canuse()
	end,
	use = function(self, card, area, copier)
		local showman = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_ring_master', 'tempshowman')
		showman.ability.eternal = true
		showman:add_to_deck()
		G.jokers:emplace(showman)
		local exotics_to_create = 0
		for k, v in ipairs(G.playing_cards) do
			if not v:norank() and v:get_id() == 13 then
				exotics_to_create = exotics_to_create + 1
			end
		end
		if exotics_to_create < 0 then exotics_to_create = 1 end
		for i = 1, exotics_to_create do
			G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
				play_sound('timpani')
				local exotic = create_card('Joker', G.jokers, nil, "cry_exotic", nil, nil, nil, 'cry_gateway')
				exotic:add_to_deck()
				G.jokers:emplace(exotic)
				exotic:juice_up(0.3, 0.5)
            return true end }))
		end
		Q(function() showman:destroy() return true end)
	end
}

SMODS.Consumable {
	key = 'hermit_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'The Hermit {C:dark_edition}Omega',
		text = {
			'Gain {X:money,C:dark_edition,s:1.25}+$^2{C:inactive,s:0.75} (+$#1#)'
		}
	},
	pos = { x = 0, y = 9 },
	soul_pos = { x = 1, y = 9 },
	cost = 50,
	soul_rate = 0,
	hidden = true,
	hidden2 = true,
	unlocked = true,
	discovered = true,
	no_doe = true,
	atlas = 'jenomegatarots',
	can_use = function(self, card)
		return jl.canuse()
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {((G.GAME or {}).dollars or 0) ^ 2}}
    end,
	use = function(self, card, area, copier)
		ease_dollars(G.GAME.dollars ^ 2)
	end
}

SMODS.Consumable {
	key = 'wheel_of_fortune_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = 'The Wheel of Fortune {C:dark_edition}Omega',
		text = {
			'Create {C:dark_edition,s:1.5,E:1}500{} random {C:attention}consumables',
			'Temporarily create a {X:attention}Showman',
			'for the consumable-creation process',
			'{C:inactive}(Created cards cannot roll for OMEGA)'
		}
	},
	pos = { x = 0, y = 10 },
	soul_pos = { x = 1, y = 10 },
	cost = 50,
	soul_rate = 0,
	hidden = true,
	hidden2 = true,
	unlocked = true,
	discovered = true,
	no_doe = true,
	atlas = 'jenomegatarots',
	can_use = function(self, card)
		return jl.canuse()
	end,
    loc_vars = function(self, info_queue, center)
        return {vars = {((G.GAME or {}).dollars or 0) ^ 2}}
    end,
	use = function(self, card, area, copier)
		local used_consumable = copier or card
		local showman = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_ring_master', 'tempshowman')
		showman.ability.eternal = true
		showman:add_to_deck()
		G.jokers:emplace(showman)
		Q(function()
			for i = 1, 500 do
				G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.1, func = function()
						play_sound('timpani')
						local _card = create_card('Consumeables', G.consumables, nil, nil, nil, nil, nil, 'wofomega')
						_card.no_omega = true
						_card:add_to_deck()
						G.consumeables:emplace(_card)
						used_consumable:juice_up(0.3, 0.5)
				return true end }))
			end
			Q(function() showman:destroy() return true end)
		return true end)
	end
}

for kk, vv in pairs(suittarots_info) do
	
	SMODS.Consumable {
		key = vv.b .. '_omega',
		set = 'jen_omegaconsumable',
		loc_txt = {
			name = 'The ' .. string.upper(string.sub(vv.b, 1, 1)) .. string.sub(vv.b, 2, string.len(vv.b)) .. ' {C:dark_edition}Omega',
			text = {
				'Convert {C:attention}all {C:' .. string.lower(vv.s) .. '}' .. vv.s .. '{} in full deck',
				'into {C:cry_exotic,E:1}Exotic{} cards',
				'{C:inactive}(Does not consider Wilds, the actual suit must match)'
			}
		},
		pos = { x = 0, y = vv.o },
		soul_pos = { x = 1, y = vv.o },
		cost = 250,
		soul_rate = 0,
		hidden = true,
		hidden2 = true,
		unlocked = true,
		discovered = true,
		no_doe = true,
		atlas = 'jenomegatarots',
		can_use = function(self, card)
			return jl.canuse()
		end,
		use = function(self, card, area, copier)
			play_sound('jen_pop')
			for k, v in ipairs(G.playing_cards) do
				if v.base.suit == vv.s and not v:nosuit() then
					if v.area == G.hand then
						Q(function() v:set_ability(G.P_CENTERS['m_jen_exotic']) play_sound('jen_pop') v:juice_up(1, 0.5) return true end, 0.75)
					else
						v:set_ability(G.P_CENTERS['m_jen_exotic'])
					end
				end
			end
		end
	}
end

local randtext = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z',' ','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9','+','-','?','!','$','%','[',']','(',')'}

local function obfuscatedtext(length)
	local str = ''
	for i = 1, length do
		str = str .. randtext[math.random(#randtext)]
	end
	return str
end

SMODS.Consumable {
	key = 'soul_omega',
	set = 'jen_omegaconsumable',
	loc_txt = {
		name = '{C:red,s:3}Balatro\'s Soul',
		text = {
			'{C:red,s:5,E:1}?????'
		}
	},
	pos = { x = 0, y = 22 },
	soul_pos = { x = 1, y = 22, extra = {x = 2, y = 22} },
	cost = 0,
	soul_rate = 0,
	gloss = true,
	hidden = true,
	hidden2 = true,
	unlocked = true,
	discovered = true,
	no_doe = true,
	atlas = 'jenomegatarots',
	can_use = function(self, card)
		return jl.canuse() and not ((G.GAME or {}).banned_keys or {}).c_jen_soul_omega and #SMODS.find_card('j_jen_kosmos', true) <= 0
	end,
	use = function(self, card, area, copier)
		if not G.GAME.banned_keys then G.GAME.banned_keys = {} end
		G.GAME.banned_keys.c_jen_soul_omega = true
		jl.rd(1)
		for i = 1, 60 do
			card_status_text(card, obfuscatedtext(math.random(6,18)), nil, 0.05*card.T.h, G.C.RED, 0.6, 2.5 - (i/50), 0.4, 0.4, 'bm', 'generic1')
		end
		Q(function()
			for k, v in pairs(G.jokers.cards) do
				v:destroy()
			end
			for k, v in pairs(G.consumeables.cards) do
				v:destroy()
			end
			for k, v in pairs(G.playing_cards) do
				v:destroy()
			end
			for k, v in pairs(G.GAME.tags) do
				v:remove()
			end
		return true end)
		jl.rd(3)
		if G.GAME.round_resets.ante > 2 then ease_ante(math.floor(-G.GAME.round_resets.ante / 4 * 3), true, true, true) end
		createfulldeck()
		jl.a('Baaaa.', G.SETTINGS.GAMESPEED, 1, G.C.RED)
		card.sell_cost = 0
		Q(function()
			local kosmos = create_card('Joker', G.jokers, nil, nil, nil, nil, 'j_jen_kosmos', 'thekingslayer')
			kosmos.ability.eternal = true
			kosmos:add_to_deck()
			G.jokers:emplace(kosmos)
			QR(function() G.jokers:set_size_absolute(1) set_dollars(4) return true end, 99)
			G.consumeables:change_size_absolute(G.consumeables.config.card_limit)
		return true end, 1)
	end
}

--VOUCHERS

function Jen.hv(key, level)
	return G.GAME.used_vouchers['v_jen_' .. key .. (level == 13 and '_omega' or level)]
end

local vchrs = {
	colour = {
		depend = 'MoreFluff',
		n = 'Palettalium',
		p = { x = 5, y = 0 },
		tiers = 13,
		price = 5,
		increment = 3,
		multiplier = 1.1,
		tiers_desc = {
			{ --1
				'{C:attention}Playing ("CCD") {C:colourcard}Colour{} cards will',
				'{C:attention}gain a round{} when they score'
			},
			{ --2
				'{C:attention}Leftover rounds{} on used {C:colourcard}Colour{} cards',
				'are {C:attention}randomly redistributed{} to other {C:colourcard}Colour{} cards',
				' ',
				redeemprev
			},
			{ --3
				'{C:dark_edition}Polychrome {C:colourcard}Colour{} cards',
				'add {C:attention}half of their max rounds',
				'to {C:attention}all other {C:colourcard}Colour{} cards when used',
				' ',
				redeemprev
			},
			{ --4
				'{C:colourcard}Colour{} cards increase the {C:planet}level',
				'of {C:attention}all poker hands{} by the following equation when used:',
				'{X:attention,C:white}(Current Rounds / 2) + (Max Rounds / 4) + (Current Charges * 5)',
				' ',
				redeemprev
			},
			{ --5
				'At the end of round,',
				'{C:colourcard}Colour{} cards in the consumable tray',
				'{C:attention}gain a round{} for every {C:attention}round of progress they already have',
				' ',
				redeemprev
			},
			{ --6
				'At the end of round,',
				'{C:colourcard}Colour{} cards in the consumable tray',
				'{C:attention}gain progress equal to their maximum progress',
				' ',
				redeemprev
			},
			{ --7
				'Adds {C:attention}cycles{} to the end-of-round progression process',
				'of all {C:colourcard}Colour{} cards in the consumable tray, starting at {C:attention}one cycle',
				'Multiply number of cycles by {C:attention}the amount of progress{} they currently have {C:attention}plus one',
				' ',
				redeemprev
			},
			{ --8
				'Number of {C:attention}cycles{} from {C:attention}Palettalium VII',
				'is {C:attention}multiplied{} by the {C:colourcard}Colour{} card\'s',
				'{C:attention}maximum amount of progress',
				' ',
				redeemprev
			},
			{ --9
				'Number of {C:attention}cycles{} that {C:attention}Palettalium VII',
				'starts at is {C:attention}increased{} from one cycle to {C:attention}three cycles',
				' ',
				redeemprev
			},
			{ --10
				'Removes the {C:dark_edition}Polychrome',
				'requirement from {C:attention}Palettalium III',
				' ',
				redeemprev
			},
			{ --11
				'{C:colourcard}Colour{} cards add their',
				'{C:attention}current charges{} as {C:attention}rounds',
				'to {C:attention}all other {C:colourcard}Colour{} cards when used',
				' ',
				redeemprev
			},
			{ --12
				'{C:dark_edition}Negative {C:colourcard}Colour{} cards add',
				'rounds to {C:attention}all other {C:colourcard}Colour{} cards',
				'based on the following equation:',
				'{X:attention,C:white}((A+B+1)*(C+D+1))*(E^F)',
				'{C:inactive}A = Negative\'s maximum progress',
				'{C:inactive}B = Negative\'s current progress',
				'{C:inactive}C = Target\'s maximum progress',
				'{C:inactive}D = Target\'s current progress',
				'{C:inactive}E = Negative\'s current charges + 1',
				'{C:inactive}F = (Number of Colour cards / 10) + 1, max 1.5',
				'{C:inactive}Result is rounded up, max of 100,000 iterations per card',
				redeemprev
 			},
			{ --Omega
				'{C:attention}Palettalium II through XII{} now',
				'trigger when {C:attention}adding {C:colourcard}Colours',
				'to the consumable tray',
				redeemprev
 			},
		}
	},
	astronomy = {
		n = 'Astronomicon',
		p = { x = 3, y = 0 },
		tiers = 13,
		price = 10,
		increment = 3,
		multiplier = 1.15,
		tiers_desc = {
			{ --1
				'{C:attention}Specific-hand {C:planet}Planets{} will also',
				'upgrade {C:attention}adjacent{} poker hands',
				'{C:inactive}(ex. using Mercury to upgrade Pair will also upgrade High Card and Two Pair)'
			},
			{ --2
				'{C:attention}Specific-hand {C:planet}Planets{} will also',
				'upgrade {C:attention}non-adjacent{} poker hands by {C:attention}one-tenth',
				' ',
				redeemprev
			},
			{ --3
				'{C:attention}Specific-hand {C:planet}Planets{} will',
				'{C:attention}repeat{} for every held {C:planet}Planet{} consumable',
				'{C:inactive}(ex. using Mercury while there are 3 other Planet cards will level up Pair 3 extra times)',
				' ',
				redeemprev
			},
			{ --4
				'{C:attention}Specific-hand {C:planet}Planets{} will',
				'{C:attention}repeat at half strength{} for every held {C:attention}non-{C:planet}Planet{} consumable',
				'{C:inactive}(ex. using Mercury while there are 3 Spectrals will level up Pair 1.5 extra times)',
				' ',
				redeemprev
			},
			{ --5
				'{C:money}Selling{} any card that is',
				'{C:red}not{} a {C:dark_edition}Negative{}, a {C:planet}Planet{} and/or a {C:attention}playing card',
				'will generate a {C:planet}Planet{} card',
				mayoverflow,
				'{C:inactive}(Black Hole excluded)',
				' ',
				redeemprev
			},
			{ --6
				'{C:money}Selling{} any card will',
				'{C:planet}level up{} a {C:green}random',
				'{C:attention}discovered poker hand{} by',
				'a {C:attention}fourth{} of its {C:money}sell value',
				' ',
				redeemprev
			},
			{ --7
				'{C:attention}Removing cards{} in most ways',
				'will {C:planet}level up{} a {C:green}random',
				'{C:attention}discovered poker hand{} by',
				'an {C:attention}eighth{} of its {C:money}sell value',
				'{C:inactive}(Applies on top of Astronomicon VI)',
				' ',
				redeemprev
			},
			{ --8
				'Hand levelups are {C:attention}twice as strong',
				'{C:inactive}(ex. what would be 3 level-ups is now 6)',
				' ',
				redeemprev
			},
			{ --9
				'If a hand {C:red}levels down{} from a card that has an {C:dark_edition}edition{},',
				'that edition\'s effect is applied by the {C:attention}absolute value{} of the level change',
				'{C:inactive}(ex. if a Polychrome levels down a hand, it will still give {X:mult,C:white}x1.5{C:inactive} Mult instead of {X:mult,C:white}/1.5{C:inactive})',
				' ',
				redeemprev
			},
			{ --10
				'Hand levelups are {C:attention}five times as strong',
				'{C:inactive}(ex. what would be 3 level-ups is now 15)',
				' ',
				redeemprev
			},
			{ --11
				'Whenever hand levels are {C:red}lost{},',
				'{C:attention}25% of those levels{} are',
				'instead {C:attention}redirected to the most played hand',
				'{C:inactive}(Does not trigger joker effects or Astronomicon)',
				' ',
				redeemprev
			},
			{ --12
				'{C:attention}Most-played hand{} gains a {C:attention}10% dividend',
				'whenever {C:attention}any other hand{} levels up',
				'{C:inactive}(Does not trigger joker effects or Astronomicon)',
				'{C:attention}Astronomicon I and II{} now also',
				'extend to {C:attention}second-adjacent{} hands',
				' ',
				redeemprev
			},
			{ --Omega
				'Whenever a hand {C:attention}gains levels{},',
				'the hand that comes {C:attention}before{} it',
				'will {C:attention}upgrade by half of that amount',
				'if the amount is {C:attention}at least 1 or more',
				'{C:inactive}(ex. if Straight leveled up 4 times,',
				'{C:inactive}then Three of a Kind levels up 2 times, which',
				'{C:inactive}then levels up Two Pair 1 time, which',
				'{C:inactive}then levels up Pair 0.5 times, and stops there)',
				' ',
				redeemprev
			},
		}
	},
	singularity = {
		n = 'Singularium',
		p = { x = 6, y = 0 },
		tiers = 9,
		price = 10,
		increment = 5,
		multiplier = 1.15,
		tiers_desc = {
			{ --1
				'Create a {C:dark_edition}Negative {C:spectral}Black Hole',
				'when opening a {C:planet}Celestial Pack',
				mayoverflow
			},
			{ --2
				'Create a {C:dark_edition}Negative {C:spectral}Black Hole',
				'when a {C:attention}non-{C:dark_edition}Negative {C:planet}Planet{} is used',
				mayoverflow,
				redeemprev
			},
			{ --3
				'{C:spectral}Black Holes{} level up',
				'{C:attention}all suits and ranks{} as well',
				redeemprev
			},
			{ --4
				'{C:spectral}Black Holes{} are',
				'{C:attention}25 times{} as strong',
				redeemprev
			},
			{ --5
				'{C:spectral}Black Holes{} have a',
				'{C:green}10% chance{} to create',
				'a random {C:planet}Planet{} when used',
				'{C:inactive,s:0.8}(Limited to 100 successful rolls in a single stack)',
				mayoverflow,
				redeemprev
			},
			{ --6
				'{C:spectral}Black Holes{} are',
				'{C:attention}300 times{} as strong',
				'{C:inactive,s:0.8}(Overwrites Singularium IV)',
				redeemprev
			},
			{ --7
				'{C:spectral}Black Holes{} multiply',
				'{C:chips}Chips-per-Level{} and {C:mult}Mult-per-Level',
				'of all hands by {C:attention}2{} when used',
				redeemprev
			},
			{ --8
				'{C:attention}Singularium VII{} now',
				'applies to {C:attention}ranks and suits',
				redeemprev
			},
			{ --9
				'{C:attention}Singularium I and II{} create',
				'{C:attention}three times{} as many {C:spectral}Black Holes',
				redeemprev
			}
		}
	}
}

local cor=Card.open
function Card:open()
	if self.ability.set == "Booster" and string.find(string.lower(self.ability.name), 'celestial') and Jen.hv('singularity', 1) then
		Q(function()
			local card2 = create_card('Spectral', G.consumeables, nil, nil, nil, nil, 'c_black_hole', 'singularity1_blackhole')
			card2.no_omega = true
			if Jen.hv('singularity', 9) then
				card2:setQty(3)
				card2:create_stack_display()
			end
			card2:set_edition({negative = true}, true)
			play_sound('jen_draw')
			card2:add_to_deck()
			G.consumeables:emplace(card2)
		return true end)
	end
	return cor(self)
end

for k, v in pairs(vchrs) do
	if not v.depend or (SMODS.Mods[v.depend] or {}).can_load then
		for i = 1, math.min(v.tiers, 13) do
			local RED = {}
			if i > 1 then
				RED[1] = 'v_jen_' .. k .. i-1
			else
				RED = nil
			end
			SMODS.Voucher {
				key = k .. (i == 13 and '_omega' or i),
				loc_txt = {
					name = v.n .. ' ' .. (i == 13 and 'Omega' or roman(i)),
					text = v.tiers_desc[i]
				},
				pos = { x = 0, y = i == 13 and 14 or 0 },
				soul_pos = { x = v.p.x, y = v.p.y, extra = {x = 0, y = i} },
				cost = math.ceil((v.price + (v.increment * (i-1))) * (i == 13 and 3 or 1) * ((v.multiplier or 1)^(i-1))),
				unlocked = true,
				discovered = true,
				autoredeem = RED,
				atlas = 'jenvouchers',
				in_pool = function() return (((G.GAME or {}).round_resets or {}).ante or 0) > (i-2) end
			}
		end
	end
end

local catr = Card.apply_to_run
function Card:apply_to_run(center)
	catr(self, center)
	if self and self.gc and self:gc().autoredeem then
		for k, v in ipairs(self:gc().autoredeem) do
			if not G.GAME.used_vouchers[v] then
				Q(function() jl.voucher(v) return true end)
			end
		end
	end
end

local ccr = create_card

local function chance_for_omega(is_soul)
	if is_soul and type(is_soul) == 'string' then
		is_soul = (is_soul or '') == 'soul'
	end
	local chance = (Jen.config.omega_chance * (is_soul and Jen.config.soul_omega_mod or 1)) - 1
	if #SMODS.find_card('j_jen_apollo') > 0 then
		for _, claunecksmentor in ipairs(SMODS.find_card('j_jen_apollo')) do
			if is_soul then
				chance = chance / (((claunecksmentor.ability.omegachance_amplifier < Jen.config.soul_omega_mod and 1 or 0) + claunecksmentor.ability.omegachance_amplifier) / Jen.config.soul_omega_mod)
			else
				chance = chance / claunecksmentor.ability.omegachance_amplifier
			end
		end
	end
	if G.GAME and G.GAME.obsidian then chance = chance / 2 end
	return chance + 1
end

local omegas_found = 0

function create_card(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
	local card = ccr(_type, area, legendary, _rarity, skip_materialize, soulable, forced_key, key_append)
	if G.STAGE ~= G.STAGES.MAIN_MENU and card.gc then
		local cen = card:gc()
		for k, v in ipairs(omegaconsumables) do
			if cen.key == ('c_' .. v) and G.P_CENTERS['c_jen_' .. v .. '_omega'] and not G.GAME.banned_keys['c_jen_' .. v .. '_omega'] and jl.chance('omega_replacement', chance_for_omega(v), true) then
				G.E_MANAGER:add_event(Event({trigger = 'after', blockable = false, blocking = false, func = function()
					if card and not card.no_omega then
						card:set_ability(G.P_CENTERS['c_jen_' .. v .. '_omega'])
						card:set_cost()
						if chance_for_omega(v) > 10 then play_sound('jen_omegacard', 1, 0.4) end
						card:juice_up(1.5, 1.5)
						if omegas_found <= 0 then
							Q(function() play_sound_q('jen_chime', 1, 0.65); jl.a('Omega!' .. (omegas_found > 1 and (' x ' .. number_format(omegas_found)) or ''), G.SETTINGS.GAMESPEED, 1, G.C.jen_RGB); jl.rd(1); omegas_found = 0; return true end)
						end
						omegas_found = omegas_found + 1
					end
					return true
				end }))
				break
			end
		end
	end
	return card
end

local csar = Card.set_ability

function Card:set_ability(center,initial,delay_sprites)
	if self and self.gc then
		if self.added_to_deck and self:gc().unchangeable and not self.jen_ignoreunchangeable then
			return false
		end
	end
	csar(self,center,initial,delay_sprites)
	if #SMODS.find_card('j_jen_ratau') > 0 and self.gc and self:gc().key ~= 'c_base' and string.sub(self:gc().key, 1, 2) == 'c_' and not self:gc().no_ratau then
		local mod = 1
		for k, ratsmakemecrazy in pairs(SMODS.find_card('j_jen_ratau')) do
			mod = mod * (ratsmakemecrazy.ability.modifier or 3)
		end
		local tbl = {min= mod, max = mod}
				Cryptid.misprintize(self, tbl, nil, true)
	end
end

--OVERRIDES AND OTHER FUNCTIONS

local gigo = Game.init_game_object
function Game:init_game_object()
	local ret = gigo(self)
	for _, suit in ipairs(SMODS.Suit.obj_buffer) do
		ret.suits[suit] = {
			level = 1,
			chips = to_big(0),
			mult = to_big(0),
			l_chips = to_big((Jen.config.suit_leveling[suit] or {}).chips or 0),
			l_mult = to_big((Jen.config.suit_leveling[suit] or {}).mult or 0)
		}
	end
	for _, rank in ipairs(SMODS.Rank.obj_buffer) do
		ret.ranks[rank] = {
			level = 1,
			chips = to_big(0),
			mult = to_big(0),
			l_chips = to_big((Jen.config.rank_leveling[rank] or {}).chips or 0),
			l_mult = to_big((Jen.config.rank_leveling[rank] or {}).mult or 0)
		}
	end
	return ret
end

local cgcb = Card.get_chip_bonus
function Card:get_chip_bonus()
    if self.debuff then return to_big(0) end
    local ret = cgcb(self)
	if G.GAME.suits[self.base.suit] and self.ability.effect ~= 'Stone Card' and not self:nosuit() then
		ret = ret + G.GAME.suits[self.base.suit].chips
	end
	if G.GAME.ranks[self.base.value] and self.ability.effect ~= 'Stone Card' and not self:norank() then
		ret = ret + G.GAME.ranks[self.base.value].chips
	end
	return ret
end

local cgcm = Card.get_chip_mult
function Card:get_chip_mult()
    if self.debuff then return to_big(0) end
    local ret = cgcm(self)
	if G.GAME.suits[self.base.suit] and self.ability.effect ~= 'Stone Card' and not self:nosuit() then
		ret = ret + G.GAME.suits[self.base.suit].mult
	end
	if G.GAME.ranks[self.base.value] and self.ability.effect ~= 'Stone Card' and not self:norank() then
		ret = ret + G.GAME.ranks[self.base.value].mult
	end
	return ret
end

function is_valid_suit_rank(s, r)
	return (not SMODS.Ranks[r].in_pool or SMODS.Ranks[r]:in_pool({suit = s})) and (not SMODS.Suits[s].in_pool or SMODS.Suits[s]:in_pool({rank = r}))
end

function prune_valid_suits()
	local suits = {}
	for i = 1, #SMODS.Suit.obj_buffer do
		local v = SMODS.Suit.obj_buffer[i]
		if is_valid_suit_rank(v, G.suitrank.rank) then
			table.insert(suits, v)
		end
	end
	return suits
end

function prune_valid_ranks()
	local ranks = {}
	for i = 1, #SMODS.Rank.obj_buffer do
		local v = SMODS.Rank.obj_buffer[i]
		if is_valid_suit_rank(G.suitrank.suit, v) then
			table.insert(ranks, v)
		end
	end
	return ranks
end

function G.FUNCS.inc_sr_suit()
	local suits = prune_valid_suits()
	-- Find current suit position
	local pos = 0
	for i = 1, #suits do
		if suits[i] == G.suitrank.suit then
			pos = i
			break
		end
	end
	G.suitrank.suit = suits[(pos % #suits) + 1]
	recalc_suitrank()
end

function G.FUNCS.dec_sr_suit()
	local suits = prune_valid_suits()
	-- Find current suit position
	local pos = 0
	for i = 1, #suits do
		if suits[i] == G.suitrank.suit then
			pos = i
			break
		end
	end
	G.suitrank.suit = suits[(pos - 2) % #suits + 1]
	recalc_suitrank()
end

function G.FUNCS.inc_sr_rank()
	local ranks = prune_valid_ranks()
	-- Find current rank position
	local pos = 0
	for i = 1, #ranks do
		if ranks[i] == G.suitrank.rank then
			pos = i
			break
		end
	end
	G.suitrank.rank = ranks[(pos % #ranks) + 1]
	recalc_suitrank()
end

function G.FUNCS.dec_sr_rank()
	local ranks = prune_valid_ranks()
	-- Find current rank position
	local pos = 0
	for i = 1, #ranks do
		if ranks[i] == G.suitrank.rank then
			pos = i
			break
		end
	end
	G.suitrank.rank = ranks[(pos - 2) % #ranks + 1]
	recalc_suitrank()
end

local ckpu = Controller.key_press_update
function Controller:key_press_update(key, dt)
	if Cryptid.safe_get(G, "suitrank", "card") then
		if key == 'left' or key == 'a' then
			G.FUNCS.dec_sr_suit()
		elseif key == 'right' or key == 'd' then
			G.FUNCS.inc_sr_suit()
		elseif key == 'down' or key == 's' then
			G.FUNCS.dec_sr_rank()
		elseif key == 'up' or key == 'w' then
			G.FUNCS.inc_sr_rank()
		end
	end
	return ckpu(self, key, dt)
end

function recalc_suitrank()
	SMODS.change_base(G.suitrank.card, G.suitrank.suit, G.suitrank.rank)
	G.suitrank.suitconfig.name = localize(G.suitrank.suit, 'suits_plural')
	G.suitrank.rankconfig.name = localize(G.suitrank.rank, 'ranks')
	for _, k in pairs({"color", "outline_color", "level_color"}) do
		if not G.suitrank.suitconfig[k] then
			G.suitrank.suitconfig[k] = {}
		end
		if not G.suitrank.rankconfig[k] then
			G.suitrank.rankconfig[k] = {}
		end
	end
	for i = 1, 4 do
		G.suitrank.suitconfig.color[i] = G.C.SUITS[G.suitrank.suit][i]
		G.suitrank.suitconfig.outline_color[i] = G.C.SUITS[G.suitrank.suit][i] * 0.7
		G.suitrank.suitconfig.level_color[i] = G.C.HAND_LEVELS[G.GAME.suits[G.suitrank.suit].level][i]
		--todo: create rank colors automatically
		G.suitrank.rankconfig.color[i] = darken(G.C.SECONDARY_SET.Tarot, 0.5)[i]
		G.suitrank.rankconfig.outline_color[i] = darken(G.C.SECONDARY_SET.Tarot, 0.65)[i]
		G.suitrank.rankconfig.level_color[i] = G.C.HAND_LEVELS[G.GAME.ranks[G.suitrank.rank].level][i]
	end
	G.suitrank.suitconfig.level = localize('k_level_prefix')..number_format(G.GAME.suits[G.suitrank.suit].level)
	G.suitrank.suitconfig.count = jl.countsuit()[G.suitrank.suit] or 0
	G.suitrank.suitconfig.chips = "+"..number_format(G.GAME.suits[G.suitrank.suit].chips)
	G.suitrank.suitconfig.mult = "+"..number_format(G.GAME.suits[G.suitrank.suit].mult)
	G.suitrank.rankconfig.level = localize('k_level_prefix')..number_format(G.GAME.ranks[G.suitrank.rank].level)
	G.suitrank.rankconfig.count = jl.countrank()[G.suitrank.rank] or 0
	G.suitrank.rankconfig.chips = "+"..number_format(G.GAME.ranks[G.suitrank.rank].chips)
	G.suitrank.rankconfig.mult = "+"..number_format(G.GAME.ranks[G.suitrank.rank].mult)
end

function UIBox_button_w_sprite(args)
	args = args or {}
	args.button = args.button or "exit_overlay_menu"
	args.func = args.func or nil
	args.colour = args.colour or G.C.RED
	args.choice = args.choice or nil
	args.chosen = args.chosen or nil
	args.minw = args.minw or 2.7
	args.maxw = args.maxw or (args.minw - 0.2)
	if args.minw < args.maxw then args.maxw = args.minw - 0.2 end
	args.minh = args.minh or 0.9
	args.scale = args.scale or 0.5
	args.focus_args = args.focus_args or nil
	local but_UIT = args.col == true and G.UIT.C or G.UIT.R
  
	local but_UI_label = {}
  
	local button_pip = nil
	table.insert(but_UI_label, {n=G.UIT.R, config={align = "cm", padding = 0, minw = args.minw, maxw = args.maxw}, nodes={
		{n=G.UIT.O, config={object = args.sprite, scale = args.scale, shadow = args.shadow, focus_args = button_pip and args.focus_args or nil, func = button_pip, ref_table = args.ref_table}}
	}})
  
	return 
	{n= but_UIT, config = {align = 'cm'}, nodes={
	{n= G.UIT.C, config={
		align = "cm",
		padding = args.padding or 0,
		r = 0.1,
		hover = true,
		colour = args.colour,
		one_press = args.one_press,
		button = (args.button ~= 'nil') and args.button or nil,
		choice = args.choice,
		chosen = args.chosen,
		focus_args = args.focus_args,
		minh = args.minh - 0.3*(args.count and 1 or 0),
		shadow = true,
		func = args.func,
		id = args.id,
		back_func = args.back_func,
		ref_table = args.ref_table,
		mid = args.mid
	  }, nodes=
	  but_UI_label
	  }}}
  end
local mcp = Moveable.calculate_parrallax
function Moveable:calculate_parrallax()
	if self.no_parallax then
		self.shadow_parrallax = {x = 0, y = 0}
	end
	return mcp(self)
end
function ui_suits_ranks()
	if not G.suitrank then
		G.suitrank = {}
	end
	if G.suitrank.card then
		G.suitrank.card:remove()
	end
	if not G.suitrank.rank or not G.suitrank.suit or not is_valid_suit_rank(G.suitrank.suit, G.suitrank.rank) then
		for i = 1, #SMODS.Rank.obj_buffer do
			local r = SMODS.Rank.obj_buffer[i]
			for j = 1, #SMODS.Suit.obj_buffer do
				local s = SMODS.Suit.obj_buffer[j]
				if is_valid_suit_rank(s, r) then
					G.suitrank.suit = s
					G.suitrank.rank = r
					break
				end
			end
		end
	end
	G.suitrank.card = Card(0,0,1.5*G.CARD_W,1.5*G.CARD_H,G.P_CARDS.S_A,G.P_CENTERS.c_base)
	G.suitrank.card.ambient_tilt = 0
	G.suitrank.card.states.hover.can = false
	G.suitrank.card.hover_tilt = 0
	G.suitrank.card.no_parallax = true
	G.suitrank.card.shadow = false
	if not G.suitrank.suitconfig then
		G.suitrank.suitconfig = {}
	end
	if not G.suitrank.rankconfig then
		G.suitrank.rankconfig = {}
	end
	recalc_suitrank()
	return {
		n = G.UIT.ROOT,
		config = { align = "cm", minw = 3, padding = 0.1, r = 0.1, colour = G.C.CLEAR },
		nodes = {
			{n=G.UIT.R, config={align = "cm", colour = G.C.CLEAR, }, nodes={
				{n=G.UIT.C, config={align = "cm", colour = G.C.CLEAR, }, nodes={
					{n = G.UIT.R, config = {minw=2, minh=1.5, colour = G.C.CLEAR, padding = 0.15, align = "bm"}, nodes = {
						UIBox_button_w_sprite({
							colour = G.C.CLEAR,
							button = "inc_sr_rank",
							sprite = Sprite(0, 0, 1, 1,  G.ASSET_ATLAS["gamepad_ui"], {x = 10, y = 0}),
							scale = 0.6,
							minw = 1,
						})
					}},
					{n = G.UIT.R, config = {minw=2, minh=1.5, colour = G.C.CLEAR, padding = 0.15}, nodes = {
						{n=G.UIT.C, config={align = "cr", colour = G.C.CLEAR, }, nodes={
							UIBox_button_w_sprite({
								colour = G.C.CLEAR,
								button = "dec_sr_suit",
								sprite = Sprite(0, 0, 1, 1,  G.ASSET_ATLAS["gamepad_ui"], {x = 13, y = 0}),
								scale = 0.6,
								minw = 1,
							})
						}},
						{n=G.UIT.C, config={minw=2.5, align = "cm", colour = G.C.CLEAR, }, nodes={
							{n=G.UIT.O, config={colour = G.C.BLUE, object = G.suitrank.card, hover = false, can_collide = false}},
						}},
						{n=G.UIT.C, config={align = "cl", colour = G.C.CLEAR, }, nodes={
							UIBox_button_w_sprite({
								colour = G.C.CLEAR,
								button = "inc_sr_suit",
								sprite = Sprite(0, 0, 1, 1,  G.ASSET_ATLAS["gamepad_ui"], {x = 11, y = 0}),
								scale = 0.6,
								minw = 1,
							})
						}},
					}},
					{n = G.UIT.R, config = {minw=2, minh=1.5, colour = G.C.CLEAR, padding = 0.15, align = "tm"}, nodes = {
						UIBox_button_w_sprite({
							colour = G.C.CLEAR,
							button = "dec_sr_rank",
							sprite = Sprite(0, 0, 1, 1,  G.ASSET_ATLAS["gamepad_ui"], {x = 12, y = 0}),
							scale = 0.6,
							minw = 1,
						})
					}},
				}},
				{n=G.UIT.C, config={align = "cm", colour = G.C.CLEAR, minw = 6, padding = 0.3 }, nodes={
					{n=G.UIT.R, config={align = "cm", colour = G.suitrank.suitconfig.color, minw = 5, minh = 2, r = 0.2, outline = 1, outline_colour = G.suitrank.suitconfig.outline_color, padding = 0.3}, nodes = {
						{n = G.UIT.C, config={align = "cm", colour = G.C.CLEAR, minw = 6, r = 0.2, padding = 0.03,}, nodes = {
							{n=G.UIT.R, config={align = "cm", colour = G.C.CLEAR, minw = 6, r = 0.2}, nodes = {
								{n=G.UIT.C, config={align = "cl", colour = G.C.CLEAR, minw = 5, r = 0.2,}, nodes = {
									{n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.suitrank.suitconfig, ref_value = "name"}}, scale = 0.8, shadow = true, colours = {G.C.WHITE}})}},
								}},
								{n=G.UIT.C, config={align = "cm", padding = 0.05, r = 0.1, colour = G.suitrank.suitconfig.level_color, minw = 1.5, outline = 0.8, outline_colour = G.suitrank.suitconfig.outline_color}, nodes={
									{n=G.UIT.T, config={ref_table = G.suitrank.suitconfig, ref_value = "level", scale = 0.5, colour = G.C.UI.TEXT_DARK}}
								}},
							}},
							{n=G.UIT.R, config={align = "cm", colour = G.C.CLEAR, minw = 6, r = 0.2}, nodes = {
								{n=G.UIT.C, config={align = "cl"}, nodes={
									{n=G.UIT.T, config={text = '#', scale = 0.45, colour = G.C.WHITE, shadow = true}}
								  }},
								{n=G.UIT.C, config={align = "cm", padding = 0.05, colour = G.suitrank.suitconfig.outline_color,r = 0.1, minw = 0.9}, nodes={
								  {n=G.UIT.T, config={ref_table = G.suitrank.suitconfig, ref_value = "count", scale = 0.45, colour = G.suitrank.suitconfig.color, shadow = true}},
								}},
								{n=G.UIT.C, config={align = "cr", minw = 5.5}, nodes={
									{n=G.UIT.C, config={align = "cm", padding = 0.03, r = 0.1, colour = G.C.CHIPS, minw = 0.8}, nodes={
										{n=G.UIT.T, config={ref_table = G.suitrank.suitconfig, ref_value = "chips", scale = 0.45, colour = G.C.UI.TEXT_LIGHT}},
									}},
									{n=G.UIT.C, config={align = "cm", padding = 0.03, r = 0.1, colour = G.C.MULT, minw = 0.8}, nodes={
										{n=G.UIT.T, config={ref_table = G.suitrank.suitconfig, ref_value = "mult", scale = 0.45, colour = G.C.UI.TEXT_LIGHT}}
									}},
								}},
							}},
						}},
					}},
					{n=G.UIT.R, config={align = "cm", colour = G.suitrank.rankconfig.color, minw = 5, minh = 2, r = 0.2, outline = 1, outline_colour = G.suitrank.rankconfig.outline_color, padding = 0.3}, nodes = {
						{n = G.UIT.C, config={align = "cm", colour = G.C.CLEAR, minw = 6, r = 0.2, padding = 0.03,}, nodes = {
							{n=G.UIT.R, config={align = "cm", colour = G.C.CLEAR, minw = 6, r = 0.2}, nodes = {
								{n=G.UIT.C, config={align = "cl", colour = G.C.CLEAR, minw = 5, r = 0.2,}, nodes = {
									{n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.suitrank.rankconfig, ref_value = "name"}}, scale = 0.8, shadow = true, colours = {G.C.WHITE}})}},
								}},
								{n=G.UIT.C, config={align = "cm", padding = 0.04, r = 0.1, colour = G.suitrank.rankconfig.level_color, minw = 1.5, outline = 0.8, outline_colour = G.suitrank.rankconfig.outline_color}, nodes={
									{n=G.UIT.T, config={ref_table = G.suitrank.rankconfig, ref_value = "level", scale = 0.5, colour = G.C.UI.TEXT_DARK}}
								}},
							}},
							{n=G.UIT.R, config={align = "cm", colour = G.C.CLEAR, minw = 6, r = 0.2}, nodes = {
								{n=G.UIT.C, config={align = "cl"}, nodes={
									{n=G.UIT.T, config={text = '#', scale = 0.45, colour = G.C.WHITE, shadow = true}}
								  }},
								{n=G.UIT.C, config={align = "cm", padding = 0.05, colour = G.suitrank.rankconfig.outline_color,r = 0.1, minw = 0.9}, nodes={
								  {n=G.UIT.T, config={ref_table = G.suitrank.rankconfig, ref_value = "count", scale = 0.45, colour = G.suitrank.rankconfig.color, shadow = true}},
								}},
								{n=G.UIT.C, config={align = "cr", minw = 5.5}, nodes={
									{n=G.UIT.C, config={align = "cm", padding = 0.03, r = 0.1, colour = G.C.CHIPS, minw = 0.8}, nodes={
										{n=G.UIT.T, config={ref_table = G.suitrank.rankconfig, ref_value = "chips", scale = 0.45, colour = G.C.UI.TEXT_LIGHT}},
									}},
									{n=G.UIT.C, config={align = "cm", padding = 0.03, r = 0.1, colour = G.C.MULT, minw = 0.8}, nodes={
										{n=G.UIT.T, config={ref_table = G.suitrank.rankconfig, ref_value = "mult", scale = 0.45, colour = G.C.UI.TEXT_LIGHT}}
									}},x
								}},
							}},
						}},
					}},
				}}
			}}
		}
	}
end

G.FUNCS.current_suits_ranks = function(e)
	G.SETTINGS.paused = true
	G.FUNCS.overlay_menu{definition = ui_suits_ranks()}
end

	local mainmenuref = Game.main_menu
	Game.main_menu = function(change_context)
		if not edited_default_colours then
			for i = 1, 7 do manage_level_colour(i, true) end
			edited_default_colours = true
		end
		--if not G.PROFILES[G.SETTINGS.profile].all_unlocked then
			G.PROFILES[G.SETTINGS.profile].all_unlocked = true
			for k, v in pairs(G.P_CENTERS) do
			  if not v.demo and not v.wip then 
				v.alerted = true
				v.discovered = true
				v.unlocked = true
			  end
			end
			for k, v in pairs(G.P_BLINDS) do
			  if not v.demo and not v.wip then 
				v.alerted = true
				v.discovered = true
				v.unlocked = true
			  end
			end
			for k, v in pairs(G.P_TAGS) do
			  if not v.demo and not v.wip then 
				v.alerted = true
				v.discovered = true
				v.unlocked = true
			  end
			end
			set_profile_progress()
			set_discover_tallies()
			G:save_progress()
			G.FILE_HANDLER.force = true
		--end
		local ret = mainmenuref(change_context)
		local newcard = create_card("Joker", G.title_top, nil, nil, nil, nil, "j_jen_jen", "almanac_title")
		G.title_top:emplace(newcard)
		newcard:start_materialize()
		newcard:resize(1.1 * 1.2)
		newcard.no_ui = true
		-- make the title screen use different background colors
		G.SPLASH_BACK:define_draw_steps({
			{
				shader = "splash",
				send = {
					{ name = "time", ref_table = G.TIMERS, ref_value = "REAL_SHADER" },
					{ name = "vort_speed", val = 0.4 },
					{ name = "colour_1", ref_table = G.C, ref_value = "CRY_TWILIGHT" },
					{ name = "colour_2", ref_table = G.C, ref_value = "CRY_EMBER" },
				},
			},
		})
		Jen.dramatic = false
		Jen.sinister = false
		return ret
	end

local uhtr = update_hand_text
function update_hand_text(config, vals)
	if vals and vals.level and is_number(vals.level) then
		local lv = to_number(vals.level)
		if not G.C.HAND_LEVELS[lv] then
			if not G.GAME.hand_cols then G.GAME.hand_cols = {} end
			if math.abs(lv) ~= lv then
				G.C.HAND_LEVELS[lv] = G.C.RED
				G.GAME.hand_cols[lv] = G.C.RED
			elseif math.floor(lv) ~= lv then
				manage_level_colour(lv)
			end
		end
	end
	uhtr(config, vals)
end

local copyref = copy_card
function copy_card(card, a, b, c, d)
	local dupe = copyref(card, a, b, c, d)
	if dupe and dupe.gc and dupe:gc().uncopyable then
		Q(function() Q(function() if dupe then dupe:destroy() end return true end) return true end)
	end
	return dupe
end

G.FUNCS.can_skip_booster = function(e)
	e.config.colour = G.C.GREY
	e.config.button = 'skip_booster'
end

function G.FUNCS.text_super_juice(e, _amount, unlimited)
	if e and e.config and e.config.object and next(e.config.object) then
		e.config.object:set_quiver(unlimited and (0.002*_amount) or math.min(1, 0.002*_amount))
		e.config.object:pulse(unlimited and (0.3 + 0.003*_amount) or math.min(10, 0.3 + 0.003*_amount))
		e.config.object:update_text()
		e.config.object:align_letters()
		e:update_object()
	end
end

function G.FUNCS.tsj_specific(e, quiver, pulse)
	if e and e.config and e.config.object and next(e.config.object) then
		e.config.object:set_quiver(quiver)
		e.config.object:pulse(pulse)
		e.config.object:update_text()
		e.config.object:align_letters()
		e:update_object()
	end
end

G.FUNCS.hand_mult_UI_set = function(e)
	local new_mult_text = number_format(G.GAME.current_round.current_hand.mult)
	if new_mult_text ~= G.GAME.current_round.current_hand.mult_text then
		G.GAME.current_round.current_hand.mult_text = new_mult_text
		e.config.object.scale = 0.46 / (math.max(1, string.len(new_mult_text) - 8) ^ .2)
		e.config.object:update_text()
		if not G.TAROT_INTERRUPT_PULSE then
			G.FUNCS.text_super_juice(e, math.max(0,math.floor(math.log10((type(G.GAME.current_round.current_hand.mult) == 'number' or type(G.GAME.current_round.current_hand.mult) == 'table') and G.GAME.current_round.current_hand.mult or 0))))
		else
			G.FUNCS.text_super_juice(e, 0, 0)
		end
	end
end

G.FUNCS.hand_chip_UI_set = function(e)
	local new_chip_text = number_format(G.GAME.current_round.current_hand.chips)
	if new_chip_text ~= G.GAME.current_round.current_hand.chip_text then
		G.GAME.current_round.current_hand.chip_text = new_chip_text
		e.config.object.scale = 0.46 / (math.max(1, string.len(new_chip_text) - 8) ^ .2)
		e.config.object:update_text()
		if not G.TAROT_INTERRUPT_PULSE then
			G.FUNCS.text_super_juice(e, math.max(0,math.floor(math.log10((type(G.GAME.current_round.current_hand.chips) == 'number' or type(G.GAME.current_round.current_hand.chips) == 'table') and G.GAME.current_round.current_hand.chips or 0))))
		else
			G.FUNCS.text_super_juice(e, 0, 0)
		end
    end
end

G.FUNCS.hand_chip_total_UI_set = function(e)
	if to_big(G.GAME.current_round.current_hand.chip_total) < to_big(1) then
		G.GAME.current_round.current_hand.chip_total_text = ''
	else
		local new_chip_total_text = number_format(G.GAME.current_round.current_hand.chip_total)
		if new_chip_total_text ~= G.GAME.current_round.current_hand.chip_total_text then 
			e.config.object.scale = scale_number(G.GAME.current_round.current_hand.chip_total, 0.95, 1e8)
			
			G.GAME.current_round.current_hand.chip_total_text = new_chip_total_text
			if not G.ARGS.hand_chip_total_UI_set or to_big(G.ARGS.hand_chip_total_UI_set) < to_big(G.GAME.current_round.current_hand.chip_total) then
				G.FUNCS.text_super_juice(e, math.max(0,math.floor(math.log10((type(G.GAME.current_round.current_hand.chip_total) == 'number' or type(G.GAME.current_round.current_hand.chip_total) == 'table') and G.GAME.current_round.current_hand.chip_total or 0))))
			else
				G.FUNCS.text_super_juice(e, 0, 0)
			end
			G.ARGS.hand_chip_total_UI_set = G.GAME.current_round.current_hand.chip_total
		end
	end
end

local caer = CardArea.emplace

function CardArea:emplace(card, location, stay_flipped)
	if G.jokers and G.hand and G.deck and G.consumeables and (self == G.jokers or self == G.hand or self == G.deck or self == G.consumeables) and G.GAME.mysterious and card.ability and not card.ability.mysterious_created and not card.created_from_split then
		card.ability.mysterious_created = true
		local cen = card.gc and card:gc()
		if cen and not cen.no_mysterious then
			--Q(function()
			if self == G.jokers then
				Q(function()
					if card then
						if card.added_to_deck then
							card:remove_from_deck()
							card.added_to_deck = nil
						end
						card:flip()
						card:juice_up(0.3, 0.3)
						play_sound('card1', 1, 0.6)
					end
				return true end, 1.5)
				delay(1.5)
				Q(function()
					if card then
						card:flip()
						card:juice_up(0.3, 0.3)
						play_sound('card3', 1, 0.6)
						card:set_ability(jl.rnd('mysterious_deck_joker', {'no_mysterious'}, G.P_CENTER_POOLS.Joker))
						if not card.added_to_deck then
							card:add_to_deck()
							Q(function()
								if card then
									local newcen = card.gc and card:gc()
									if newcen then
										if newcen.abilitycard and #SMODS.find_card(newcen.abilitycard) <= 0 then
											Q(function()
												local traysize = G.consumeables.config.card_limit + 1
												G.consumeables.config.card_limit = #G.consumeables.cards + 1
												local abi = create_card('jen_ability', G.consumeables, nil, nil, nil, nil, newcen.abilitycard, nil)
												abi.no_forced_edition = true
												abi:add_to_deck()
												G.consumeables:emplace(abi)
												abi.ability.eternal = true
												G.consumeables.config.card_limit = traysize
												Q(function() if abi then check_ability_card_validity(abi) end return true end)
											return true end)
										end
									end
								end
							return true end)
						end
					end
				return true end, 1.5)
			elseif self == G.consumeables and cen.set ~= 'jen_ability' then
				Q(function()
					if card then
						if card.added_to_deck then
							card:remove_from_deck()
							card.added_to_deck = nil
						end
						card:flip()
						card:juice_up(0.3, 0.3)
						play_sound('card1', 1, 0.6)
					end
				return true end, 1.5)
				delay(1.5)
				Q(function()
					if card then
						card:flip()
						card:juice_up(0.3, 0.3)
						play_sound('card3', 1, 0.6)
						card:set_ability(jl.rnd('mysterious_deck_consumable', cen.hidden and {'no_doe', 'no_grc'} or {'hidden', 'no_doe', 'no_grc'}, G.P_CENTER_POOLS[cen.set]))
						if not card.added_to_deck then
							card:add_to_deck()
						end
					end
				return true end, 1.5)
			elseif (card.base or {}).value or (card.base or {}).suit then
				jl.randomise({card})
			end
			--return true end)
			--delay(1)
		end
		Q(function() if card and self then caer(self, card, location, stay_flipped) end return true end)
	else
		caer(self, card, location, stay_flipped)
	end
end

local add_to_deckref = Card.add_to_deck
function Card.add_to_deck(self, from_debuff)
	local cen = self.gc and self:gc()
    if not from_debuff then
		if cen then
			if cen.unique then
				for k, v in ipairs(G.jokers.cards) do
					if v ~= self and v:gc().key == cen.key then
						ease_dollars(self.sell_cost or 0)
						self:destroy()
						return --blocked
					end
				end
			end
			if not G.GAME.mysterious and G.consumeables and cen and cen.abilitycard and type(cen.abilitycard) == 'string' and #SMODS.find_card(cen.abilitycard) <= 0 then
				Q(function()
					if #SMODS.find_card(cen.abilitycard) <= 0 then
						local traysize = G.consumeables.config.card_limit + 1
						G.consumeables.config.card_limit = #G.consumeables.cards + 1
						local abi = create_card('jen_ability', G.consumeables, nil, nil, nil, nil, cen.abilitycard, nil)
						abi.no_forced_edition = true
						abi:add_to_deck()
						G.consumeables:emplace(abi)
						abi.ability.eternal = true
						G.consumeables.config.card_limit = traysize
						Q(function() if abi then check_ability_card_validity(abi) end return true end)
					end
				return true end)
			end
			if G.consumeables and cen and cen.fusable and #SMODS.find_card('c_jen_fuse') <= 0 then
				local traysize = G.consumeables.config.card_limit + 1
				G.consumeables.config.card_limit = #G.consumeables.cards + 1
				local abi = create_card('jen_ability', G.consumeables, nil, nil, nil, nil, 'c_jen_fuse', nil)
				abi.no_forced_edition = true
				abi:add_to_deck()
				G.consumeables:emplace(abi)
				abi.ability.eternal = true
				G.consumeables.config.card_limit = traysize
			end
			if cen.set == 'Colour' and Jen.hv('colour', 13) then
				n_random_colour_rounds(math.max(0, self.ability.partial_rounds or 0))
				for k, v in ipairs(G.consumeables.cards) do
					if v:gc().set == 'Colour' then
						for i = 1, math.ceil(math.max(self.ability.upgrade_rounds or 1, 1) / 2) do
							trigger_colour_end_of_round(v)
						end
					end
				end
				for k, v in ipairs(G.consumeables.cards) do
					if v:gc().set == 'Colour' then
						for i = 1, (math.max(self.ability.upgrade_rounds or 1, 1) + math.max(self.ability.partial_rounds or 0, 0)) * 3 * math.max(self.ability.partial_rounds or 1, 1) * math.max(self.ability.upgrade_rounds or 1, 1) do
							trigger_colour_end_of_round(v)
						end
					end
				end
				local no_colours = 1
				for k, v in ipairs(G.consumeables.cards) do
					if v:gc().set == 'Colour' then
						no_colours = no_colours + 1
					end
				end
				for k, v in ipairs(G.consumeables.cards) do
					if v:gc().set == 'Colour' then
						for i = 1, math.min(1e5, math.ceil(((math.max(self.ability.upgrade_rounds or 1, 1) + math.max(self.ability.partial_rounds or 0, 0) + 1) * (math.max(v.ability.upgrade_rounds or 1, 1) + math.max(v.ability.partial_rounds or 0, 0) + 1)) * (((self.ability.val or 0) + 1)^math.min(1.5, (1 + (no_colours/20)))))) do
							trigger_colour_end_of_round(v)
						end
					end
				end
				self:blackhole(((self.ability.partial_rounds or 0) * 0.5) + ((self.ability.upgrade_rounds or 0) * 0.25) + ((self.ability.val or 0) * ((self.ability.upgrade_rounds or 0) * 5)))
			end
		end
        jl.jokers({jen_adding_card = true, card = self})
	elseif cen then
		if cen.unique then
			for k, v in ipairs(G.jokers.cards) do
				if v ~= self and v:gc().key == cen.key then
					ease_dollars(self.sell_cost or 0)
					self:destroy()
					return --blocked
				end
			end
		end
    end
    add_to_deckref(self, from_debuff)
	if cen then
		if cen.unique then
			QR(function()
				if self then
					for k, v in ipairs(G.jokers.cards) do
						if v ~= self and v:gc().key == cen.key then
							ease_dollars(self.sell_cost or 0)
							self:remove_from_deck()
							self:destroy()
							break
						end
					end
				end
			return true end, 199)
		end
	end
end

function check_ability_card_validity(card)
	if not card or not G.jokers then return end
	local cen = card.gc and card:gc()
	if not cen then return end
	local should_remove = true
	for i = 1, #G.jokers.cards do
		local cur = G.jokers.cards[i]
		local curcen = cur.gc and cur:gc()
		if curcen then
			if (curcen.abilitycard or 'n/a') == cen.key then
				should_remove = false
				break
			end
		end
	end
	if should_remove then
		for k, v in pairs(SMODS.find_card(cen.key, true)) do
			if not (v.edition or {}).negative then
				G.consumeables.config.card_limit = G.consumeables.config.card_limit - 1
			end
			v.no_malice = true
			v:destroy()
		end
	end
end

local rfd = Card.remove_from_deck
function Card.remove_from_deck(self, from_debuff)
	if G.jokers and G.consumeables then
		if self.added_to_deck and self.config and self.gc and self:gc() and self:gc().abilitycard and type(self:gc().abilitycard) == 'string' then
			local cen = self:gc()
			Q(function()
				if #SMODS.find_card(cen.key, true) <= 0 then
					for k, v in pairs(SMODS.find_card(cen.abilitycard)) do
						check_ability_card_validity(v)
					end
				end
			return true end)
		end
		if self.added_to_deck and self.config and self.gc and self:gc() and self:gc().fusable then
			local can_still_fuse = false
			for k, v in ipairs(G.jokers.cards) do
				if v.gc and v:gc().fusable then
					can_still_fuse = true
					break
				end
			end
			if not can_still_fuse then
				for k, v in ipairs(G.consumeables.cards) do
					if v.gc and v:gc().fusable then
						can_still_fuse = true
						break
					end
				end
			end
			if not can_still_fuse then
				for k, v in pairs(SMODS.find_card('c_jen_fuse')) do
					if not (v.edition or {}).negative then
						G.consumeables.config.card_limit = G.consumeables.config.card_limit - 1
					end
					v:destroy()
				end
			end
		end
	end
	rfd(self, from_debuff)
end

local ten = to_big(10)
local gbar = get_blind_amount
local defaultblindsize = to_big(100)
function get_blind_amount(ante)
	local cfg = Jen.config
	local amnt
	if math.floor(ante) ~= ante then
		local ratio = math.ceil(ante) - math.floor(ante)
		amnt = (gbar(math.floor(ante)) * ratio) + (gbar(math.ceil(ante)) * (1 - ratio))
	else
		amnt = gbar(ante)
	end
	local overante = math.max(0, ante - Jen.config.ante_threshold)
	if not amnt then amnt = defaultblindsize end
	if type(amnt) ~= 'table' then amnt = to_big(amnt) end
	if overante > 0 then
		local scalar = Jen.config.blind_scalar[math.min(overante, #Jen.config.blind_scalar)] or 1
		amnt = amnt * scalar
		if overante >= Jen.config.ante_pow10_4 then
			amnt = ten^ten^ten^ten^amnt
		elseif overante >= Jen.config.ante_pow10_3 then
			amnt = ten^ten^ten^amnt
		elseif overante >= Jen.config.ante_pow10_2 then
			amnt = ten^ten^amnt
		elseif overante >= Jen.config.ante_pow10 then
			amnt = ten^amnt
		end
		if overante >= Jen.config.ante_exponentiate then
			amnt = amnt ^ amnt
		end
		if overante >= Jen.config.ante_tetrate then
			amnt = amnt:arrow(2, 2)
		end
		if overante >= Jen.config.ante_pentate then
			amnt = amnt:arrow(3, 2)
		end
		if overante >= Jen.config.ante_polytate then
			local arrows = 4 + math.floor((overante - Jen.config.ante_polytate + 1) / Jen.config.polytate_factor)
			local operand = 2 + math.max(0, arrows - 4 - Jen.config.polytate_factor)
			amnt = amnt:arrow(math.min(maxArrow, arrows), operand)
		end
	end
	return amnt
end

local ignorelimit_playingcards = {'m_jen_surreal', 'm_jen_exotic'}
local athr=CardArea.add_to_highlighted
function CardArea:add_to_highlighted(card, silent)
	if card and card.gc then
		if card:gc().unhighlightable then
			return false
		end
	end
	if self.config.type ~= 'shop' and self.config.type ~= 'joker' and self.config.type ~= 'consumeable' then
		local surreals = 0
		for k, v in ipairs(self.highlighted) do
			if jl.bf(v.ability.name, ignorelimit_playingcards) then surreals = surreals + 1 end
		end
		local exception = false
		if #SMODS.find_card('j_jen_honey') > 0 then
			local ID = card:get_id()
			local prevcard = self.highlighted[#self.highlighted]
			if prevcard then
				local honeys = SMODS.find_card('j_jen_honey')
				local prevcardID = prevcard:get_id()
				for i = 1, #honeys do
					if (ID == (prevcardID - i) or ID == (prevcardID + i)) then exception = true honeys[i]:juice_up(0.5, 0.5) break end
				end
			end
		end
		if #SMODS.find_card('j_jen_cosmo') > 0 and not exception then
			local cosmos = SMODS.find_card('j_jen_cosmo')
			for i = 1, #cosmos do
				if card.config.center.key ~= 'c_base' then
					exception = true
					cosmos[i]:juice_up(0.5, 0.5)
					break
				end
			end
		end
		if #self.highlighted < surreals + self.config.highlighted_limit or jl.bf(card.ability.name, ignorelimit_playingcards) or exception then
			self.highlighted[#self.highlighted+1] = card
			card:highlight(true)
			if not silent then play_sound('cardSlide1') end
			if self == G.hand and G.STATE == G.STATES.SELECTING_HAND then
				self:parse_highlighted()
			end
			return
		end
	end
	athr(self,card,silent)
end

local csar = Card.set_ability
function Card:set_ability(center, initial, delay_sprites)
	if self and self.gc then
		if self.added_to_deck and self:gc().unchangeable and not self.jen_ignoreunchangeable then
			return false
		end
	end
	csar(self, center, initial, delay_sprites)
end

function check_for_unlock(args)
	return
end

function unlock_achievement(achievement_name)
	return
end

-- BOOSTERS
local guiduasbr = G.UIDEF.use_and_sell_buttons
function G.UIDEF.use_and_sell_buttons(card)
	if (card.area == G.pack_cards and G.pack_cards) and card.ability.consumeable then
		if card.ability.set == 'jen_chess' then
			return {
				n = G.UIT.ROOT,
				config = { padding = -0.1, colour = G.C.CLEAR },
				nodes = {
					{
						n = G.UIT.R,
						config = {
							ref_table = card,
							r = 0.08,
							padding = 0.1,
							align = "bm",
							minw = 0.5 * card.T.w - 0.15,
							minh = 0.7 * card.T.h,
							maxw = 0.7 * card.T.w - 0.15,
							hover = true,
							shadow = true,
							colour = G.C.UI.BACKGROUND_INACTIVE,
							one_press = true,
							button = "use_card",
							func = "can_reserve_card",
						},
						nodes = {
							{
								n = G.UIT.T,
								config = {
									text = 'TAKE',
									colour = G.C.UI.TEXT_LIGHT,
									scale = 0.55,
									shadow = true,
								},
							},
						},
					},
					{
						n = G.UIT.R,
						config = {
							ref_table = card,
							r = 0.08,
							padding = 0.1,
							align = "bm",
							minw = 0.5 * card.T.w - 0.15,
							maxw = 0.9 * card.T.w - 0.15,
							minh = 0.1 * card.T.h,
							hover = true,
							shadow = true,
							colour = G.C.UI.BACKGROUND_INACTIVE,
							one_press = true,
							button = 'kekw',
							func = "can_use_consumeable",
						},
						nodes = {
							{
								n = G.UIT.T,
								config = {
									text = localize("b_use"),
									colour = G.C.UI.TEXT_LIGHT,
									scale = 0.45,
									shadow = true,
								},
							},
						},
					},
					{ n = G.UIT.R, config = { align = "bm", w = 7.7 * card.T.w } },
					{ n = G.UIT.R, config = { align = "bm", w = 7.7 * card.T.w } },
					{ n = G.UIT.R, config = { align = "bm", w = 7.7 * card.T.w } },
					{ n = G.UIT.R, config = { align = "bm", w = 7.7 * card.T.w } }
				},
			}
		end
	end
	return guiduasbr(card)
end

for i = 1, 2 do
	SMODS.Booster{
		key = 'ministandard' .. i,
		loc_txt = {
			name = 'Mini Standard Pack',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# playing cards{} to',
				'add to your deck',
				spriter('cozyori')
			}
		},
		atlas = 'jenbooster',
		pos = {x = 6, y = i - 1},
		weight = .8,
		cost = 2,
		config = {extra = 2, choose = 1},
		discovered = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
        ease_background_colour = function(self) ease_background_colour_blind(G.STATES.STANDARD_PACK) end,
        create_UIBox = function(self) return create_UIBox_standard_pack() end,
        particles = function(self)
            G.booster_pack_sparkles = Particles(1, 1, 0,0, {
                timer = 0.015,
                scale = 0.3,
                initialize = true,
                lifespan = 3,
                speed = 0.2,
                padding = -1,
                attach = G.ROOM_ATTACH,
                colours = {G.C.BLACK, G.C.RED},
                fill = true
            })
            G.booster_pack_sparkles.fade_alpha = 1
            G.booster_pack_sparkles:fade(1, 0)
        end,
        create_card = function(self, card, i)
            local _edition = poll_edition('standard_edition'..G.GAME.round_resets.ante, 2, true)
            local _seal = SMODS.poll_seal({mod = 10})
            return {set = (pseudorandom(pseudoseed('stdset'..G.GAME.round_resets.ante)) > 0.6) and "Enhanced" or "Base", edition = _edition, seal = _seal, area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "sta"}
        end,
	}
end

for i = 1, 2 do
	SMODS.Booster{
		key = 'miniarcana' .. i,
		loc_txt = {
			name = 'Mini Arcana Pack',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {C:tarot}Tarot{} cards to',
				'be used immediately',
				spriter('mailingway')
			}
		},
		atlas = 'jenbooster',
		pos = {x = 3 + i, y = 1},
		weight = .8,
		cost = 2,
		config = {extra = 2, choose = 1},
		discovered = true,
		draw_hand = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
        ease_background_colour = function(self) ease_background_colour_blind(G.STATES.TAROT_PACK) end,
        create_UIBox = function(self) return create_UIBox_arcana_pack() end,
        particles = function(self)
            G.booster_pack_sparkles = Particles(1, 1, 0,0, {
                timer = 0.015,
                scale = 0.2,
                initialize = true,
                lifespan = 1,
                speed = 1.1,
                padding = -1,
                attach = G.ROOM_ATTACH,
                colours = {G.C.WHITE, lighten(G.C.PURPLE, 0.4), lighten(G.C.PURPLE, 0.2), lighten(G.C.GOLD, 0.2)},
                fill = true
            })
            G.booster_pack_sparkles.fade_alpha = 1
            G.booster_pack_sparkles:fade(1, 0)
        end,
        create_card = function(self, card, i)
            local _card
            if G.GAME.used_vouchers.v_omen_globe and pseudorandom('omen_globe') > 0.8 then
                _card = {set = "Spectral", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "ar2"}
            else
                _card = {set = "Tarot", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "ar1"}
            end
            return _card
        end
	}
end

for i = 1, 2 do
	SMODS.Booster{
		key = 'minicelestial' .. i,
		loc_txt = {
			name = 'Mini Celestial Pack',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {C:planet}Planet{} cards to',
				'be used immediately',
				spriter('mailingway')
			}
		},
		atlas = 'jenbooster',
		pos = {x = 3 + i, y = 0},
		weight = .8,
		cost = 2,
		config = {extra = 2, choose = 1},
		discovered = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
		ease_background_colour = function(self) ease_background_colour_blind(G.STATES.PLANET_PACK) end,
		create_UIBox = function(self) return create_UIBox_celestial_pack() end,
		particles = function(self)
			G.booster_pack_stars = Particles(1, 1, 0,0, {
				timer = 0.07,
				scale = 0.1,
				initialize = true,
				lifespan = 15,
				speed = 0.1,
				padding = -4,
				attach = G.ROOM_ATTACH,
				colours = {G.C.WHITE, HEX('a7d6e0'), HEX('fddca0')},
				fill = true
			})
			G.booster_pack_meteors = Particles(1, 1, 0,0, {
				timer = 2,
				scale = 0.05,
				lifespan = 1.5,
				speed = 4,
				attach = G.ROOM_ATTACH,
				colours = {G.C.WHITE},
				fill = true
			})
		end,
		create_card = function(self, card, i)
			local _card
			if G.GAME.used_vouchers.v_telescope and i == 1 then
				local _planet, _hand, _tally = nil, nil, 0
				for k, v in ipairs(G.handlist) do
					if G.GAME.hands[v].visible and G.GAME.hands[v].played > _tally then
						_hand = v
						_tally = G.GAME.hands[v].played
					end
				end
				if _hand then
					for k, v in pairs(G.P_CENTER_POOLS.Planet) do
						if v.config.hand_type == _hand then
							_planet = v.key
						end
					end
				end
				_card = {set = "Planet", area = G.pack_cards, skip_materialize = true, soulable = true, key = _planet, key_append = "pl1"}
			else
				_card = {set = "Planet", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "pl1"}
			end
			return _card
		end
	}
end

for i = 1, 2 do
	SMODS.Booster{
		key = 'minispectral' .. i,
		loc_txt = {
			name = 'Mini Spectral Pack',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {C:spectral}Spectral{} cards to',
				'be used immediately',
				spriter('mailingway')
			}
		},
		atlas = 'jenbooster',
		pos = {x = 3 + i, y = 2},
		weight = .45,
		cost = 2,
		config = {extra = 1, choose = 1},
		discovered = true,
		draw_hand = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
        ease_background_colour = function(self) ease_background_colour_blind(G.STATES.SPECTRAL_PACK) end,
        create_UIBox = function(self) return create_UIBox_spectral_pack() end,
        particles = function(self)
            G.booster_pack_sparkles = Particles(1, 1, 0,0, {
                timer = 0.015,
                scale = 0.1,
                initialize = true,
                lifespan = 3,
                speed = 0.2,
                padding = -1,
                attach = G.ROOM_ATTACH,
                colours = {G.C.WHITE, lighten(G.C.GOLD, 0.2)},
                fill = true
            })
            G.booster_pack_sparkles.fade_alpha = 1
            G.booster_pack_sparkles:fade(1, 0)
        end,
        create_card = function(self, card, i)
            return {set = "Spectral", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "spe"}
        end,
	}
end

for i = 1, 4 do
	SMODS.Booster{
		key = 'unopack' .. i,
		loc_txt = {
			name = 'UNO Pack',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {C:uno}UNO{} cards to',
				'be used immediately',
				spriter('ocksie')
			}
		},
		atlas = 'jenbooster',
		pos = {x = i-1, y = 1},
		weight = 1,
		cost = 4,
		config = {extra = 3, choose = 1},
		discovered = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
		ease_background_colour = function(self)
			ease_background_colour{new_colour = HEX(i == 1 and 'ED1C24' or i == 2 and '0072BC' or i == 3 and '50AA44' or i == 4 and 'FFDE16' or 'ED1C24'), special_colour = HEX('000000'), contrast = 5}
		end,
		create_UIBox = function(self)
			local _size = SMODS.OPENED_BOOSTER.ability.extra
			G.pack_cards = CardArea(
				G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
				math.max(1,math.min(_size,5))*G.CARD_W*1.1,
				1.05*G.CARD_H, 
				{card_limit = _size, type = 'consumeable', highlight_limit = 1})

			local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
				{n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
					{n=G.UIT.R, config={align = "cm"}, nodes={
					{n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
						{n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
							{n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
				{n=G.UIT.R, config={align = "cm"}, nodes={}},
				{n=G.UIT.R, config={align = "tm"}, nodes={
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
						UIBox_dyn_container({
							{n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {'UNO Pack '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {localize('k_choose') .. ' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}},
									{n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
						}),}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
						{n=G.UIT.R,config={minh =0.2}, nodes={}},
						{n=G.UIT.R,config={align = "tm",padding = 0.2, minh = 1.2, minw = 1.8, r=0.15,colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true,shadow = true, func = 'can_skip_booster'}, nodes = {
							{n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
			return t
		end,
        create_card = function(self, card, i)
            return {set = 'jen_uno', area = G.pack_cards, skip_materialize = true, soulable = true, key_append = 'uno'}
        end
	}
end

for i = 1, 2 do
	SMODS.Booster{
		key = 'jumbounopack' .. i,
		loc_txt = {
			name = 'Jumbo UNO Pack',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {C:uno}UNO{} cards to',
				'be used immediately',
				spriter('ocksie')
			}
		},
		atlas = 'jenbooster',
		pos = {x = i-1, y = 2},
		weight = 1,
		cost = 6,
		config = {extra = 5, choose = 1},
		discovered = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
		ease_background_colour = function(self)
			ease_background_colour{new_colour = HEX(i == 1 and 'ED1C24' or i == 2 and '0072BC' or 'ED1C24'), special_colour = HEX('000000'), contrast = 5}
		end,
		create_UIBox = function(self)
			local _size = SMODS.OPENED_BOOSTER.ability.extra
			G.pack_cards = CardArea(
				G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
				math.max(1,math.min(_size,5))*G.CARD_W*1.1,
				1.05*G.CARD_H, 
				{card_limit = _size, type = 'consumeable', highlight_limit = 1})

			local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
				{n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
					{n=G.UIT.R, config={align = "cm"}, nodes={
					{n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
						{n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
							{n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
				{n=G.UIT.R, config={align = "cm"}, nodes={}},
				{n=G.UIT.R, config={align = "tm"}, nodes={
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
						UIBox_dyn_container({
							{n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {'UNO Pack '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {localize('k_choose') .. ' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}},
									{n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
						}),}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
						{n=G.UIT.R,config={minh =0.2}, nodes={}},
						{n=G.UIT.R,config={align = "tm",padding = 0.2, minh = 1.2, minw = 1.8, r=0.15,colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true,shadow = true, func = 'can_skip_booster'}, nodes = {
							{n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
			return t
		end,
        create_card = function(self, card, i)
            return {set = 'jen_uno', area = G.pack_cards, skip_materialize = true, soulable = true, key_append = 'uno'}
        end
	}
end

for i = 1, 2 do
	SMODS.Booster{
		key = 'megaunopack' .. i,
		loc_txt = {
			name = 'Mega UNO Pack',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {C:uno}UNO{} cards to',
				'be used immediately',
				spriter('ocksie')
			}
		},
		atlas = 'jenbooster',
		pos = {x = i+1, y = 2},
		weight = .25,
		cost = 8,
		config = {extra = 5, choose = 2},
		discovered = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
		ease_background_colour = function(self)
			ease_background_colour{new_colour = HEX('2a2a2a'), special_colour = HEX('000000'), contrast = 5}
		end,
		create_UIBox = function(self)
			local _size = SMODS.OPENED_BOOSTER.ability.extra
			G.pack_cards = CardArea(
				G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
				math.max(1,math.min(_size,5))*G.CARD_W*1.1,
				1.05*G.CARD_H, 
				{card_limit = _size, type = 'consumeable', highlight_limit = 1})

			local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
				{n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
					{n=G.UIT.R, config={align = "cm"}, nodes={
					{n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
						{n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
							{n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
				{n=G.UIT.R, config={align = "cm"}, nodes={}},
				{n=G.UIT.R, config={align = "tm"}, nodes={
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
						UIBox_dyn_container({
							{n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {'UNO Pack '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {localize('k_choose') .. ' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}},
									{n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
						}),}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
						{n=G.UIT.R,config={minh =0.2}, nodes={}},
						{n=G.UIT.R,config={align = "tm",padding = 0.2, minh = 1.2, minw = 1.8, r=0.15,colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true,shadow = true, func = 'can_skip_booster'}, nodes = {
							{n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
			return t
		end,
        create_card = function(self, card, i)
            return {set = 'jen_uno', area = G.pack_cards, skip_materialize = true, soulable = true, key_append = 'uno'}
        end
	}
end

for i = 1, 2 do
	SMODS.Booster{
		key = 'miniunopack' .. i,
		loc_txt = {
			name = 'Mini UNO Pack',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {C:uno}UNO{} cards to',
				'be used immediately',
				spriter('ocksie')
			}
		},
		atlas = 'jenbooster',
		pos = {x = i-1, y = 3},
		weight = .8,
		cost = 2,
		config = {extra = 2, choose = 1},
		discovered = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
		ease_background_colour = function(self)
			ease_background_colour{new_colour = HEX(i == 1 and 'FFDE16' or i == 2 and '50AA44' or 'FFDE16'), special_colour = HEX('000000'), contrast = 5}
		end,
		create_UIBox = function(self)
			local _size = SMODS.OPENED_BOOSTER.ability.extra
			G.pack_cards = CardArea(
				G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
				math.max(1,math.min(_size,5))*G.CARD_W*1.1,
				1.05*G.CARD_H, 
				{card_limit = _size, type = 'consumeable', highlight_limit = 1})

			local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
				{n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
					{n=G.UIT.R, config={align = "cm"}, nodes={
					{n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
						{n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
							{n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
				{n=G.UIT.R, config={align = "cm"}, nodes={}},
				{n=G.UIT.R, config={align = "tm"}, nodes={
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
						UIBox_dyn_container({
							{n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {'UNO Pack '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {localize('k_choose') .. ' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}},
									{n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
						}),}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
						{n=G.UIT.R,config={minh =0.2}, nodes={}},
						{n=G.UIT.R,config={align = "tm",padding = 0.2, minh = 1.2, minw = 1.8, r=0.15,colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true,shadow = true, func = 'can_skip_booster'}, nodes = {
							{n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
			return t
		end,
        create_card = function(self, card, i)
            return {set = 'jen_uno', area = G.pack_cards, skip_materialize = true, soulable = true, key_append = 'uno'}
        end
	}
end

if Jen.config.chess_cards then
	for i = 1, 2 do
		SMODS.Booster{
			key = 'strategypack' .. i,
			loc_txt = {
				name = 'Strategy Pack',
				text = {
					'Choose {C:attention}#1#{} of up to',
					'{C:attention}#2# ' .. checkerboard_text('Chess Pieces') .. ' to',
					'use or add to your tray',
					spriter('coryozi')
				}
			},
			atlas = 'jenbooster',
			pos = {x = i-1, y = 6},
			weight = 1,
			cost = 4,
			config = {extra = 3, choose = 1},
			draw_hand = true,
			discovered = true,
			loc_vars = function(self, info_queue, card)
				return { vars = {card.ability.choose, card.ability.extra} }
			end,
			ease_background_colour = function(self)
				ease_background_colour{new_colour = i == 1 and HEX('ffffff') or HEX('0a0a0a'), special_colour = i == 2 and HEX('ffffff') or HEX('0a0a0a'), contrast = 5}
			end,
			create_UIBox = function(self)
				local _size = SMODS.OPENED_BOOSTER.ability.extra
				G.pack_cards = CardArea(
					G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
					math.max(1,math.min(_size,5))*G.CARD_W*1.1,
					1.05*G.CARD_H, 
					{card_limit = _size, type = 'consumeable', highlight_limit = 1})

				local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
					{n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
						{n=G.UIT.R, config={align = "cm"}, nodes={
						{n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
							{n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
								{n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
					{n=G.UIT.R, config={align = "cm"}, nodes={}},
					{n=G.UIT.R, config={align = "tm"}, nodes={
						{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
						{n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
							UIBox_dyn_container({
								{n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
									{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
										{n=G.UIT.O, config={object = DynaText({string = {'Strategy Pack '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
									{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
										{n=G.UIT.O, config={object = DynaText({string = {localize('k_choose') .. ' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}},
										{n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
							}),}},
						{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
							{n=G.UIT.R,config={minh =0.2}, nodes={}},
							{n=G.UIT.R,config={align = "tm",padding = 0.2, minh = 1.2, minw = 1.8, r=0.15,colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true,shadow = true, func = 'can_skip_booster'}, nodes = {
								{n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
				return t
			end,
			create_card = function(self, card, i)
				return {set = 'jen_chess', area = G.pack_cards, skip_materialize = true, soulable = true, key_append = 'strategy'}
			end
		}
	end

	SMODS.Booster{
		key = 'lightstrategypack',
		loc_txt = {
			name = 'Light Strategy Pack',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {X:inactive,C:black}Light{} {X:inactive,C:black}Chess{} {X:inactive,C:black}Pieces{} to',
				'use or add to your tray',
				spriter('coryozi')
			}
		},
		atlas = 'jenbooster',
		pos = {x = 2, y = 6},
		weight = .9,
		cost = 5,
		config = {extra = 3, choose = 1},
		discovered = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
		ease_background_colour = function(self)
			ease_background_colour{new_colour = HEX('ffffff'), special_colour = HEX('eeeeee'), contrast = 5}
		end,
		create_UIBox = function(self)
			local _size = SMODS.OPENED_BOOSTER.ability.extra
			G.pack_cards = CardArea(
				G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
				math.max(1,math.min(_size,5))*G.CARD_W*1.1,
				1.05*G.CARD_H, 
				{card_limit = _size, type = 'consumeable', highlight_limit = 1})

			local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
				{n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
					{n=G.UIT.R, config={align = "cm"}, nodes={
					{n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
						{n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
							{n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
				{n=G.UIT.R, config={align = "cm"}, nodes={}},
				{n=G.UIT.R, config={align = "tm"}, nodes={
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
						UIBox_dyn_container({
							{n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {'Light Strategy Pack '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {localize('k_choose') .. ' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}},
									{n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
						}),}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
						{n=G.UIT.R,config={minh =0.2}, nodes={}},
						{n=G.UIT.R,config={align = "tm",padding = 0.2, minh = 1.2, minw = 1.8, r=0.15,colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true,shadow = true, func = 'can_skip_booster'}, nodes = {
							{n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
			return t
		end,
        create_card = function(self, card, i)
            return {set = 'jen_chess', area = G.pack_cards, skip_materialize = true, soulable = true, key = 'c_jen_chess_' .. string.lower(pseudorandom_element(omegaplanets, pseudoseed('lightchess' .. G.GAME.round_resets.ante)).p) .. '_l', key_append = 'lightstrategy'}
        end
	}

	SMODS.Booster{
		key = 'darkstrategypack',
		loc_txt = {
			name = 'Dark Strategy Pack',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {X:black,C:white}Dark{} {X:black,C:white}Chess{} {X:black,C:white}Pieces{} to',
				'use or add to your tray',
				spriter('coryozi')
			}
		},
		atlas = 'jenbooster',
		pos = {x = 3, y = 6},
		weight = .9,
		cost = 5,
		config = {extra = 3, choose = 1},
		draw_hand = true,
		discovered = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
		ease_background_colour = function(self)
			ease_background_colour{new_colour = HEX('1a1a1a'), special_colour = HEX('5b5b5b'), contrast = 5}
		end,
		create_UIBox = function(self)
			local _size = SMODS.OPENED_BOOSTER.ability.extra
			G.pack_cards = CardArea(
				G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
				math.max(1,math.min(_size,5))*G.CARD_W*1.1,
				1.05*G.CARD_H, 
				{card_limit = _size, type = 'consumeable', highlight_limit = 1})

			local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
				{n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
					{n=G.UIT.R, config={align = "cm"}, nodes={
					{n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
						{n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
							{n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
				{n=G.UIT.R, config={align = "cm"}, nodes={}},
				{n=G.UIT.R, config={align = "tm"}, nodes={
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
						UIBox_dyn_container({
							{n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {'Dark Strategy Pack '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
								{n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
									{n=G.UIT.O, config={object = DynaText({string = {localize('k_choose') .. ' '}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}},
									{n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.WHITE},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
						}),}},
					{n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
						{n=G.UIT.R,config={minh =0.2}, nodes={}},
						{n=G.UIT.R,config={align = "tm",padding = 0.2, minh = 1.2, minw = 1.8, r=0.15,colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true,shadow = true, func = 'can_skip_booster'}, nodes = {
							{n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
			return t
		end,
        create_card = function(self, card, i)
            return {set = 'jen_chess', area = G.pack_cards, skip_materialize = true, soulable = true, key = 'c_jen_chess_' .. string.lower(pseudorandom_element(omegaplanets, pseudoseed('darkchess' .. G.GAME.round_resets.ante)).p) .. '_d', key_append = 'darkstrategy'}
        end
	}
end

for i = 1, 2 do
	SMODS.Booster{
		key = 'standardbundle' .. i,
		loc_txt = {
			name = 'Standard Bundle',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# playing cards{} to',
				'add to your deck',
				spriter('cozyori')
			}
		},
		atlas = 'jenbooster',
		pos = {x = i + 6, y = 0},
		weight = .1,
		cost = 10,
		config = {extra = 10, choose = 5},
		discovered = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
        ease_background_colour = function(self) ease_background_colour_blind(G.STATES.STANDARD_PACK) end,
        create_UIBox = function(self) return create_UIBox_standard_pack() end,
        particles = function(self)
            G.booster_pack_sparkles = Particles(1, 1, 0,0, {
                timer = 0.015,
                scale = 0.3,
                initialize = true,
                lifespan = 3,
                speed = 0.2,
                padding = -1,
                attach = G.ROOM_ATTACH,
                colours = {G.C.BLACK, G.C.RED},
                fill = true
            })
            G.booster_pack_sparkles.fade_alpha = 1
            G.booster_pack_sparkles:fade(1, 0)
        end,
        create_card = function(self, card, i)
            local _edition = poll_edition('standard_edition'..G.GAME.round_resets.ante, 2, true)
            local _seal = SMODS.poll_seal({mod = 10})
            return {set = (pseudorandom(pseudoseed('stdset'..G.GAME.round_resets.ante)) > 0.6) and "Enhanced" or "Base", edition = _edition, seal = _seal, area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "sta"}
        end,
	}
end

for i = 1, 2 do
	SMODS.Booster{
		key = 'arcanabundle' .. i,
		loc_txt = {
			name = 'Arcana Bundle',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {C:tarot}Tarot{} cards to',
				'be used immediately',
				spriter('cozyori')
			}
		},
		atlas = 'jenbooster',
		pos = {x = i + 6, y = 1},
		weight = .1,
		cost = 10,
		config = {extra = 10, choose = 5},
		discovered = true,
		draw_hand = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
        ease_background_colour = function(self) ease_background_colour_blind(G.STATES.TAROT_PACK) end,
        create_UIBox = function(self) return create_UIBox_arcana_pack() end,
        particles = function(self)
            G.booster_pack_sparkles = Particles(1, 1, 0,0, {
                timer = 0.015,
                scale = 0.2,
                initialize = true,
                lifespan = 1,
                speed = 1.1,
                padding = -1,
                attach = G.ROOM_ATTACH,
                colours = {G.C.WHITE, lighten(G.C.PURPLE, 0.4), lighten(G.C.PURPLE, 0.2), lighten(G.C.GOLD, 0.2)},
                fill = true
            })
            G.booster_pack_sparkles.fade_alpha = 1
            G.booster_pack_sparkles:fade(1, 0)
        end,
        create_card = function(self, card, i)
            local _card
            if G.GAME.used_vouchers.v_omen_globe and pseudorandom('omen_globe') > 0.8 then
                _card = {set = "Spectral", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "ar2"}
            else
                _card = {set = "Tarot", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "ar1"}
            end
            return _card
        end
	}
end

for i = 1, 2 do
	SMODS.Booster{
		key = 'celestialbundle' .. i,
		loc_txt = {
			name = 'Celestial Bundle',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {C:planet}Planet{} cards to',
				'be used immediately',
				spriter('cozyori')
			}
		},
		atlas = 'jenbooster',
		pos = {x = i + 6, y = 2},
		weight = .8,
		cost = 10,
		config = {extra = 10, choose = 5},
		discovered = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
		ease_background_colour = function(self) ease_background_colour_blind(G.STATES.PLANET_PACK) end,
		create_UIBox = function(self) return create_UIBox_celestial_pack() end,
		particles = function(self)
			G.booster_pack_stars = Particles(1, 1, 0,0, {
				timer = 0.07,
				scale = 0.1,
				initialize = true,
				lifespan = 15,
				speed = 0.1,
				padding = -4,
				attach = G.ROOM_ATTACH,
				colours = {G.C.WHITE, HEX('a7d6e0'), HEX('fddca0')},
				fill = true
			})
			G.booster_pack_meteors = Particles(1, 1, 0,0, {
				timer = 2,
				scale = 0.05,
				lifespan = 1.5,
				speed = 4,
				attach = G.ROOM_ATTACH,
				colours = {G.C.WHITE},
				fill = true
			})
		end,
		create_card = function(self, card, i)
			local _card
			if G.GAME.used_vouchers.v_telescope and i == 1 then
				local _planet, _hand, _tally = nil, nil, 0
				for k, v in ipairs(G.handlist) do
					if G.GAME.hands[v].visible and G.GAME.hands[v].played > _tally then
						_hand = v
						_tally = G.GAME.hands[v].played
					end
				end
				if _hand then
					for k, v in pairs(G.P_CENTER_POOLS.Planet) do
						if v.config.hand_type == _hand then
							_planet = v.key
						end
					end
				end
				_card = {set = "Planet", area = G.pack_cards, skip_materialize = true, soulable = true, key = _planet, key_append = "pl1"}
			else
				_card = {set = "Planet", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "pl1"}
			end
			return _card
		end
	}
end

	SMODS.Booster{
		key = 'spectralbundle',
		loc_txt = {
			name = 'Spectral Bundle',
			text = {
				'Choose {C:attention}#1#{} of up to',
				'{C:attention}#2# {C:spectral}Spectral{} cards to',
				'be used immediately',
				spriter('cozyori')
			}
		},
		atlas = 'jenbooster',
		pos = {x = 7, y = 3},
		weight = .075,
		cost = 10,
		config = {extra = 8, choose = 4},
		discovered = true,
		draw_hand = true,
		loc_vars = function(self, info_queue, card)
			return { vars = {card.ability.choose, card.ability.extra} }
		end,
        ease_background_colour = function(self) ease_background_colour_blind(G.STATES.SPECTRAL_PACK) end,
        create_UIBox = function(self) return create_UIBox_spectral_pack() end,
        particles = function(self)
            G.booster_pack_sparkles = Particles(1, 1, 0,0, {
                timer = 0.015,
                scale = 0.1,
                initialize = true,
                lifespan = 3,
                speed = 0.2,
                padding = -1,
                attach = G.ROOM_ATTACH,
                colours = {G.C.WHITE, lighten(G.C.GOLD, 0.2)},
                fill = true
            })
            G.booster_pack_sparkles.fade_alpha = 1
            G.booster_pack_sparkles:fade(1, 0)
        end,
        create_card = function(self, card, i)
            return {set = "Spectral", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "spe"}
        end,
	}

SMODS.Booster{
    key = 'iconpack',
    loc_txt = {
		name = '{C:red}Icon Pack',
		text = {
			'Choose {C:attention}#1#{} of up to',
			'{C:attention}#2# {C:almanac,E:1}Almanac {C:attention}Jokers',
			'{C:green}#3#% chance{} to contain {C:dark_edition,E:1}Jen\'s Sigil',
			'if you have {C:blood}Kosmos',
			'{C:green}2% chance{} to contain an {C:cry_azure,s:1.5,E:1}Extraordinary{} Joker',
			' ',
			'{C:red}Contains only Rot if the',
			'{C:red}current Ante is not greater',
			'{C:red}than the furthest Ante an',
			'{C:red}Icon Pack was opened this run',
			'{C:inactive}(Currently {V:1}Ante #4#{C:inactive})',
			spriter('mailingway')
		},
	},
	atlas = 'jenbooster',
    pos = {x = 0, y = 0},
    weight = 0.1,
    cost = 15,
    config = {extra = 5, choose = 1, icon_pack = true},
    discovered = true,
	in_pool = function()
		return (G.GAME.latest_ante_icon_pack_opening or 0) < G.GAME.round_resets.ante
	end,
    loc_vars = function(self, info_queue, card)
        return { vars = {card.ability.choose, card.ability.extra, math.min(1, 1 / (100 - (G.GAME.icon_pity or 0))) * 100, tostring(((G.GAME or {}).latest_ante_icon_pack_opening or 0)), colours = {((G.GAME or {}).latest_ante_icon_pack_opening or 0) < (((G.GAME or {}).round_resets or {}).ante or 0) and G.C.GREEN or G.C.RED}} }
    end,
    create_card = function(self, card, i)
		if (G.GAME.latest_ante_icon_pack_opening or 0) < G.GAME.round_resets.ante then
			local possible = {}
			for k, v in pairs(G.P_CENTERS) do
				if v.set == 'Joker' and string.sub(k, 1, 6) == 'j_jen_' and not Jen.overpowered(v.rarity) then
					table.insert(possible, v.key)
				end
			end
			if math.floor(i) == math.floor(SMODS.OPENED_BOOSTER.ability.extra) then
				G.GAME.latest_ante_icon_pack_opening = G.GAME.round_resets.ante
				if get_kosmos() then
					if jl.chance('iconpack_sigil', math.max(1, 100 - (G.GAME.icon_pity or 0)), true) then
						G.GAME.icon_pity = 0
						QR(function()
							Q(function() play_sound_q('jen_chime', .5, 0.65); jl.a('Sigil!', G.SETTINGS.GAMESPEED * 3, 2, G.C.almanac); jl.rd(3); return true end)
						return true end, 99)
						return {set = 'Joker', area = G.pack_cards, skip_materialize = true, soulable = false, key = 'j_jen_sigil', key_append = "almanac"}
					else
						G.GAME.icon_pity = (G.GAME.icon_pity or 0) + 1
					end
				end
				return {set = 'Joker', area = G.pack_cards, skip_materialize = true, soulable = false, key = pseudorandom_element(possible, pseudoseed('almanac' .. G.GAME.round_resets.ante)), key_append = "almanac"}
			elseif math.floor(i) == 1 and jl.chance('iconpack_extraordinary', 50, true) then
				QR(function()
					Q(function() play_sound_q('jen_chime', .75, 0.65); jl.a('Extraordinary!', G.SETTINGS.GAMESPEED * 2.5, 1.25, G.C.jen_RGB); jl.rd(2.5); return true end)
				return true end, 99)
				return create_card("Joker", G.pack_cards, nil, 'jen_extraordinary', true, true, nil, 'almanac')
			else
				return {set = 'Joker', area = G.pack_cards, skip_materialize = true, soulable = false, key = pseudorandom_element(possible, pseudoseed('almanac' .. G.GAME.round_resets.ante)), key_append = "almanac"}
			end
		else
			return {set = 'Joker', area = G.pack_cards, skip_materialize = true, soulable = false, key = 'j_jen_rot', key_append = "almanac"}
		end
    end,
    ease_background_colour = function(self)
        ease_background_colour{new_colour = HEX('000000'), special_colour = HEX('ff0000'), contrast = 5}
    end,
    create_UIBox = function(self)
        local _size = SMODS.OPENED_BOOSTER.ability.extra
        G.pack_cards = CardArea(
            G.ROOM.T.x + 9 + G.hand.T.x, G.hand.T.y,
            math.max(1,math.min(_size,5))*G.CARD_W*1.1,
            1.05*G.CARD_H, 
            {card_limit = _size, type = 'consumeable', highlight_limit = 1})

        local t = {n=G.UIT.ROOT, config = {align = 'tm', r = 0.15, colour = G.C.CLEAR, padding = 0.15}, nodes={
            {n=G.UIT.R, config={align = "cl", colour = G.C.CLEAR,r=0.15, padding = 0.1, minh = 2, shadow = true}, nodes={
                {n=G.UIT.R, config={align = "cm"}, nodes={
                {n=G.UIT.C, config={align = "cm", padding = 0.1}, nodes={
                    {n=G.UIT.C, config={align = "cm", r=0.2, colour = G.C.CLEAR, shadow = true}, nodes={
                        {n=G.UIT.O, config={object = G.pack_cards}},}}}}}},
            {n=G.UIT.R, config={align = "cm"}, nodes={}},
            {n=G.UIT.R, config={align = "tm"}, nodes={
                {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={}},
                {n=G.UIT.C,config={align = "tm", padding = 0.05}, nodes={
                    UIBox_dyn_container({
                        {n=G.UIT.C, config={align = "cm", padding = 0.05, minw = 4}, nodes={
                            {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                                {n=G.UIT.O, config={object = DynaText({string = {'Icon Pack '}, colours = {G.C.CRY_ASCENDANT},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.7, maxw = 4, pop_in = 0.5})}}}},
                            {n=G.UIT.R,config={align = "bm", padding = 0.05}, nodes={
                                {n=G.UIT.O, config={object = DynaText({string = {'Indoctrinate '}, colours = {G.C.CRY_BLOSSOM},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}},
                                {n=G.UIT.O, config={object = DynaText({string = {{ref_table = G.GAME, ref_value = 'pack_choices'}}, colours = {G.C.CRY_EXOTIC},shadow = true, rotate = true, bump = true, spacing =2, scale = 0.5, pop_in = 0.7})}}}},}}
                    }),}},
                {n=G.UIT.C,config={align = "tm", padding = 0.05, minw = 2.4}, nodes={
                    {n=G.UIT.R,config={minh =0.2}, nodes={}},
                    {n=G.UIT.R,config={align = "tm",padding = 0.2, minh = 1.2, minw = 1.8, r=0.15,colour = G.C.GREY, one_press = true, button = 'skip_booster', hover = true,shadow = true, func = 'can_skip_booster'}, nodes = {
                        {n=G.UIT.T, config={text = localize('b_skip'), scale = 0.5, colour = G.C.WHITE, shadow = true, focus_args = {button = 'y', orientation = 'bm'}, func = 'set_button_pip'}}}}}}}}}}}}
        return t
    end,
}

--BLINDS

if SMODS.BlindEdition then
	SMODS.BlindEdition:take_ownership('ble_base', {
		key = 'base',
		loc_txt = {
			name = "Base",
			text = {"No additional effects"}
		},
		has_text = false,
		weight = 8
	})
	SMODS.BlindEdition:take_ownership('ble_foil', {
		key = 'foil',
		blind_shader = 'foil',
		loc_txt = {
			name = "Foil",
			text = {"+50% blind size"}
		},
		special_colour = G.C.CHIPS,
		blind_size_mult = 1.5,
		contrast = 3,
		weight = 0.4,
		set_blind = function(self, blind_on_deck)
			play_sound_q('foil1', 0.9)
		end,
		dollars_mod = 1
	})
	SMODS.BlindEdition:take_ownership('ble_holographic', {
		key = 'holographic',
		blind_shader = 'holo',
		loc_txt = {
			name = "Holographic",
			text = {"-1 hand size"}
		},
		special_colour = G.C.MULT,
		contrast = 3,
		weight = 0.3,
		set_blind = function(self, blind_on_deck)
			play_sound_q('holo1', 0.9)
			G.hand:change_size(-1)
		end,
		defeat = function(self, blind_on_deck)
			G.hand:change_size(1)
		end,
		dollars_mod = 2
	})
	SMODS.BlindEdition:take_ownership('ble_polychrome', {
		key = 'polychrome',
		blind_shader = 'polychrome',
		weight = 0.2,
		dollars_mod = 3,
		loc_txt = {
			name = "Polychrome",
			text = {"-1 hand"}
		},
		new_colour = G.C.FILTER,
		special_colour = G.C.CHIPS,
		tertiary_colour = G.C.MULT,
		contrast = 3,
		set_blind = function(self, blind_on_deck)
			play_sound_q('polychrome1', 0.9)
			QR(function() if G.GAME.current_round.hands_left > 1 then ease_hands_played(-1) end return true end, 99)
		end
	})
	SMODS.BlindEdition:take_ownership('ble_negative', {
		key = 'negative',
		blind_shader = {'negative', 'negative_shine'},
		weight = 0.01,
		loc_txt = {
			name = "Negative",
			text = {
				"+700% blind size,",
				"+1 joker slot reward"
			}
		},
		blind_size_mult = 8,
		special_colour = G.C.BLACK,
		new_colour = G.C.SECONDARY_SET.Spectral,
		contrast = 3,
		set_blind = function(self, blind_on_deck)
			play_sound_q('negative', 0.9)
		end,
		defeat = function(self, blind_on_deck)
			if G.jokers then G.jokers:change_size_absolute(1) end
		end
	})
	SMODS.BlindEdition {
		key = 'laminated',
		blind_shader = 'jen_laminated',
		loc_txt = {
			name = "Laminated",
			text = {"No reward money"}
		},
		special_colour = G.C.SECONDARY_SET.Planet,
		contrast = 3,
		set_blind = function(self, blind_on_deck)
			play_sound_q('jen_e_laminated', 0.9)
		end,
		weight = 0.111,
		dollars_mod = function(self, dollars)
			return 0
		end
	}
	SMODS.BlindEdition {
		key = 'chromatic',
		blind_shader = 'jen_chromatic',
		loc_txt = {
			name = "Chromatic",
			text = {"All hands -0.5 levels"}
		},
		special_colour = G.C.CHIPS,
		new_colour = G.C.MULT,
		contrast = 3,
		set_blind = function(self, blind_on_deck)
			play_sound_q('jen_e_chromatic', 0.9)
			lvupallhands(-0.5)
		end,
		weight = 0.25,
		dollars_mod = 2
	}
	SMODS.BlindEdition {
		key = 'ionized',
		blind_shader = 'jen_ionized',
		loc_txt = {
			name = "Ionised",
			text = {"#1#'s level",
			"gets halved"}
		},
		new_colour = G.C.FILTER,
		contrast = 3,
		set_blind = function(self, blind_on_deck)
			play_sound_q('jen_e_ionized', 0.9)
			jl.th(jl.favhand())
			level_up_hand(G.GAME.blind.children.animatedSprite, jl.favhand(), nil, -(G.GAME.hands[jl.favhand()].level / 2))
			jl.ch()
		end,
		loc_vars = function(self, blind_on_deck)
			return {localize(jl.favhand(), 'poker_hands')}
		end,
		collection_loc_vars = function(self, blind_on_deck)
			return {'Most played hand'}
		end,
		weight = 0.15,
		dollars_mod = 4
	}
	SMODS.BlindEdition {
		key = 'gilded',
		blind_shader = 'jen_gilded',
		loc_txt = {
			name = "Gilded",
			text = {"+$20 extra reward money"}
		},
		special_colour = G.C.FILTER,
		new_colour = G.C.MONEY,
		contrast = 3,
		set_blind = function(self, blind_on_deck)
			play_sound_q('jen_e_gilded', 0.9)
		end,
		weight = 0.02,
		dollars_mod = 20
	}
	SMODS.BlindEdition {
		key = 'sharpened',
		blind_shader = 'jen_sharpened',
		loc_txt = {
			name = "Sharpened",
			text = {"+5 random Rental",
			"playing cards"}
		},
		new_colour = G.C.BLACK,
		special_colour = G.C.WHITE,
		contrast = 3,
		set_blind = function(self, blind_on_deck)
			play_sound_q('jen_e_sharpened', 0.9)
			for i = 1, 5 do
				local rental = create_playing_card(nil, G.play, nil, nil, {G.C.MONEY})
				rental.ability.rental = true
				rental:add_to_deck()
				G.play:remove_card(rental)
				G.deck:emplace(rental)
			end
		end,
		weight = 0.15,
		dollars_mod = 2
	}
	--[[SMODS.BlindEdition {
		key = 'diplopia',
		blind_shader = 'jen_diplopia',
		loc_txt = {
			name = "Diplopia",
			text = {"Blind has a second chance",
			"+100% reward money"}
		},
		special_colour = G.C.JOKER_GREY,
		contrast = 3,
		set_blind = function(self, blind_on_deck)
			play_sound_q('jen_e_diplopia', 0.9)
		end,
		weight = 0.1,
		dollars_mod = function(self, dollars)
			return (dollars or 0)*2
		end
	}]]
end

local disblref = Blind.disable

function Blind:disable()
	local obj = self.config.blind
	if obj then
		if obj.immunity then
			play_sound('cancel', 0.8, 1)
			jl.a(obj.immunity_quote or 'Blind is immune!', G.SETTINGS.GAMESPEED * 2, 0.8, obj.boss_colour or G.C.RED)
			G.GAME.blind:wiggle()
			return true
		end
	end
	return disblref(self)
end

local gfrb = G.FUNCS.reroll_boss
G.FUNCS.reroll_boss = function(e)
	local obj = G.P_BLINDS[G.GAME.round_resets.blind_choices.Boss]
	if obj.boss.epic then
		play_sound('cancel', 0.8, 1)
		jl.a(localize('k_nope_ex'), G.SETTINGS.GAMESPEED * 2, 0.8, obj.boss_colour or G.C.RED)
	else
		return gfrb(e)
	end
end

SMODS.Blind	{
    loc_txt = {
        name = 'The Descending',
        text = { 'Decrease Chip-Mult', 'operator by 1 level' }
    },
    key = 'descending',
    config = {},
    boss = {min = 1, max = 10, hardcore = true}, 
    boss_colour = HEX("b200ff"),
    atlas = 'jenblinds',
    pos = {x = 0, y = 0},
    vars = {},
    dollars = 15,
    mult = .5,
    defeat = function(self)
        if not G.GAME.blind.disabled and get_final_operator_offset() < 0 then
			offset_final_operator(1)
        end
    end,
    set_blind = function(self, reset, silent)
        if not reset then
            offset_final_operator(-1)
        end
    end,
    disable = function(self)
		if get_final_operator_offset() < 0 then
			offset_final_operator(1)
		end
    end
}

SMODS.Blind	{
    loc_txt = {
        name = 'The Grief',
        text = { 'Disabling this blind', 'will destroy every Joker,', 'including Eternals' }
    },
    key = 'grief',
    config = {},
    boss = {min = 4, max = 10, no_orb = true, hardcore = true}, 
    boss_colour = HEX("0026ff"),
    atlas = 'jenblinds',
    pos = {x = 0, y = 1},
    vars = {},
    dollars = 7,
    mult = 2,
	in_pool = function() return #SMODS.find_card('j_chicot') > 0 end,
    defeat = function(self)
    end,
    set_blind = function(self, reset, silent)
    end,
    disable = function(self)
		for k, v in pairs(G.jokers.cards) do
			if v:gc().key ~= 'j_jen_kosmos' then
				v:start_dissolve()
			end
		end
    end
}

SMODS.Blind	{
    loc_txt = {
        name = 'The Eater',
        text = { 'Destroy all cards', 'previously played this ante,', '+5% score requirement per card destroyed' }
    },
    key = 'eater',
    config = {},
    boss = {min = 1, max = 10, hardcore = true}, 
    boss_colour = HEX("ff7f7f"),
    atlas = 'jenblinds',
    pos = {x = 0, y = 2},
    vars = {},
    dollars = 7,
    mult = 2,
    defeat = function(self)
    end,
    set_blind = function(self, reset, silent)
		if not next(SMODS.find_card('j_chicot')) then
			local size_multiplier = 1
			for k, card in ipairs(G.playing_cards) do
				if card.ability.played_this_ante then
					card:start_dissolve()
					size_multiplier = size_multiplier + 0.05
				end
			end
			change_blind_size(G.GAME.blind.chips * size_multiplier)
		end
    end,
    disable = function(self)
    end
}

SMODS.Blind	{
    loc_txt = {
        name = 'The Wee',
        text = { 'All non-Wee Jokers debuffed,', 'only 2s or Wees can be played' }
    },
    key = 'wee',
    config = {},
    boss = {min = 1, max = 10, no_orb = true, hardcore = true},
    boss_colour = HEX("7F3F3F"),
    atlas = 'jenblinds',
    pos = {x = 0, y = 3},
    vars = {},
    dollars = 2,
    mult = 22/300,
	debuff_hand = function(self, cards, hand, handname, check)
		for k, v in ipairs(cards) do
			if (v:norank() or v:get_id() ~= 2) and not (v.edition or {}).jen_wee then
				return true
			end
		end
	end,
	get_loc_debuff_text = function(self)
		return "Hand must contain only 2s or Wee cards"
	end,
	recalc_debuff = function(self, card, from_blind)
		return card.area and card.area ~= G.consumeables and (card:norank() or card:get_id() ~= 2) and not (card.edition or {}).jen_wee
	end,
}

SMODS.Blind	{
    loc_txt = {
        name = 'The One',
        text = { 'Play only 1 hand, no discards' }
    },
    key = 'one',
    config = {},
    boss = {min = 4, max = 10, no_orb = true, hardcore = true}, 
    boss_colour = HEX('000000'),
    atlas = 'jenblinds',
    pos = {x = 0, y = 4},
    vars = {},
    dollars = 7,
    mult = 0.75,
    defeat = function(self)
    end,
    set_blind = function(self, reset, silent)
		if not next(SMODS.find_card('j_chicot')) then
			ease_hands_played(-G.GAME.current_round.hands_left + 1)
			ease_discard(-G.GAME.current_round.discards_left)
		end
    end,
    disable = function(self)
    end
}

SMODS.Blind	{
    loc_txt = {
        name = 'The Bisected',
        text = { 'Halved hand size' }
    },
    key = 'bisected',
    config = {},
    boss = {min = 2, max = 10, hardcore = true}, 
    boss_colour = HEX("7f0000"),
    atlas = 'jenblinds',
    pos = {x = 0, y = 5},
    vars = {},
    dollars = 9,
    mult = 1.75,
    defeat = function(self)
        if not G.GAME.blind.disabled and self.handsize_mod then
			G.hand:change_size(self.handsize_mod)
        end
    end,
    set_blind = function(self, reset, silent)
        if not reset then
			self.handsize_mod = math.floor(G.hand.config.card_limit / 2)
			G.hand:change_size(-self.handsize_mod)
        end
    end,
    disable = function(self)
		if self.handsize_mod then
			G.hand:change_size(self.handsize_mod)
		end
    end
}

SMODS.Blind	{
    loc_txt = {
        name = 'The Press',
        text = { '-2 hand size per play,', 'discard leftmost and rightmost cards', 'in hand per play' }
    },
    key = 'press',
    config = {},
    boss = {min = 1, max = 10, no_orb = true, hardcore = true}, 
    boss_colour = HEX("21007f"),
    atlas = 'jenblinds',
    pos = {x = 0, y = 6},
    vars = {},
    dollars = 12,
    mult = 2,
	press_play = function(self)
		G.E_MANAGER:add_event(Event({ func = function()
			if G.hand.cards[1] then
				draw_card(G.hand, G.discard, 100, 'down', false, G.hand.cards[1])
			end
			if G.hand.cards[#G.hand.cards] and G.hand.cards[#G.hand.cards] ~= G.hand.cards[1] then
				draw_card(G.hand, G.discard, 100, 'down', false, G.hand.cards[#G.hand.cards])
			end
		return true end })) 
		G.GAME.blind.triggered = true
		self.handsize_mod = (self.handsize_mod or 0) + 2
		G.hand:change_size(-2)
	end,
    defeat = function(self)
        if not G.GAME.blind.disabled and self.handsize_mod then
			G.hand:change_size(self.handsize_mod or 0)
        end
    end,
    set_blind = function(self, reset, silent)
        if not reset then
			self.handsize_mod = 0
        end
    end,
    disable = function(self)
		if self.handsize_mod then
			G.hand:change_size(self.handsize_mod)
		end
    end
}

SMODS.Blind	{
    loc_txt = {
        name = 'The Solo',
        text = { 'Must play only one card' }
    },
    key = 'solo',
    config = {},
    boss = {min = 3, max = 10, no_orb = true, hardcore = true},
    boss_colour = HEX("cd7998"),
    atlas = 'jenblinds',
    pos = {x = 0, y = 7},
    vars = {},
    dollars = 10,
    mult = 1,
	debuff_hand = function(self, cards, hand, handname, check)
		return #cards > 1
	end
}

SMODS.Blind	{
    loc_txt = {
        name = 'ERR://91*M%/',
        text = { '??????????' }
    },
    key = 'error',
    config = {},
    boss = {min = 1, max = 10, no_orb = true, hardcore = true},
    boss_colour = HEX("ff00ff"),
    atlas = 'jenblinds',
    pos = {x = 0, y = 8},
    vars = {},
    dollars = 5,
    mult = 1,
	press_play = function(self)
		for i = 1, pseudorandom('err91_randomise', 3, 9) do
			Q(function()
				local bsize = G.GAME.blind.chips
								change_blind_size(bsize * Cryptid.log_random(pseudoseed('err91_randomisesize' .. i), 0.873, 1.265))
				G.GAME.blind:wiggle()
				G.GAME.blind.dollars = math.max(1, G.GAME.blind.dollars + pseudorandom('err91_randomisepayout', -1, 2))
				G.GAME.current_round.dollars_to_be_earned = G.GAME.blind.dollars > 8 and ('$' .. G.GAME.blind.dollars) or (string.rep(localize('$'), G.GAME.blind.dollars)..'')
				G.HUD_blind:get_UIE_by_ID("dollars_to_be_earned").config.object:update_text()
				G.HUD_blind:get_UIE_by_ID("dollars_to_be_earned").config.object:juice_up(0.2, 0.2)
				return true
			end, 1)
		end
		G.GAME.blind.triggered = true
	end
}

SMODS.Blind	{
    loc_txt = {
        name = 'The Insignia',
        text = { 'Hand must contain', 'only one suit' }
    },
    key = 'insignia',
    config = {},
    boss = {min = 2, max = 10, no_orb = true, hardcore = true},
    boss_colour = HEX("a5aa00"),
    atlas = 'jenblinds',
    pos = {x = 0, y = 9},
    vars = {},
    dollars = 7,
    mult = 2,
	debuff_hand = function(self, cards, hand, handname, check)
		local numsuits = 0
		local checked_suits = {}
		for k, card in ipairs(cards) do
			if not card:nosuit() and not checked_suits[card.base.suit] then
				numsuits = numsuits + 1
				checked_suits[card.base.suit] = true
				if numsuits > 1 then return true end
			end
		end
		if numsuits < 1 then return true end
	end
}

SMODS.Blind	{
    loc_txt = {
        name = 'The Palette',
        text = { 'Hand must contain', 'at least three suits' }
    },
    key = 'palette',
    config = {},
    boss = {min = 1, max = 10, no_orb = true},
    boss_colour = HEX("ff9cff"),
    atlas = 'jenblinds',
    pos = {x = 0, y = 10},
    vars = {},
    dollars = 7,
    mult = 2,
	debuff_hand = function(self, cards, hand, handname, check)
		local numsuits = 0
		local checked_suits = {}
		for k, card in ipairs(cards) do
			if not card:nosuit() and not checked_suits[card.base.suit] then
				numsuits = numsuits + 1
				checked_suits[card.base.suit] = true
				if numsuits >= 3 then break end
			end
		end
		return numsuits < 3
	end
}

SMODS.Blind	{
    loc_txt = {
        name = 'Ahneharka',
        text = { '+1 Ante per $2 owned,', 'x3 Ante if less than $1 owned' }
    },
    key = 'epicox',
    config = {},
	showdown = true,
    boss = {min = 1, max = 10, no_orb = true, showdown = true, hardcore = true, epic = true},
    boss_colour = HEX("673305"),
    atlas = 'jenepicblinds',
    pos = {x = 0, y = 0},
    vars = {},
    dollars = 25,
    mult = 1e9,
	ignore_showdown_check = true,
	in_pool = function(self)
		return G.GAME.round > Jen.config.ante_threshold * 2
	end,
    set_blind = function(self, reset, silent)
		if not reset then
			local quota = to_big(G.GAME.dollars) < to_big(1) and (G.GAME.round_resets.ante * 3) or math.floor(G.GAME.dollars/2)
			G.GAME.blind.chips = get_blind_amount(G.GAME.round_resets.ante+quota)*G.GAME.blind.mult*G.GAME.starting_params.ante_scaling
			G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
			ease_ante(quota)
			Q(function() G.GAME.round_resets.blind_ante = G.GAME.round_resets.ante; G.GAME.blind:set_text() return true end)
        end
    end
}

SMODS.Blind	{
    loc_txt = {
        name = 'Sokeudentalo',
        text = { 'First hand drawn face-down,', 'plays must have at least 3 cards,', 'no identical cards (rank + suit),', 'and 2/3 of played cards must be face-down' }
    },
    key = 'epichouse',
    config = {},
	showdown = true,
    boss = {min = 1, max = 10, no_orb = true, showdown = true, hardcore = true, epic = true},
    boss_colour = HEX("2d4b5d"),
    atlas = 'jenepicblinds',
    pos = {x = 0, y = 1},
    vars = {},
    dollars = 25,
    mult = 1e9,
	ignore_showdown_check = true,
	in_pool = function(self)
		return G.GAME.round > Jen.config.ante_threshold * 2
	end,
	debuff_hand = function(self, cards, hand, handname, check)
		if check then
			local numfacedown = 0
			local alreadyhad = {}
			for k, card in ipairs(cards) do
				if card.facing == 'front' then
					local suitandrank = card:get_id() .. '_' .. card.base.suit
					if alreadyhad[suitandrank] then
						return true
					else
						alreadyhad[suitandrank] = true
						if card.facing == 'back' then
							numfacedown = numfacedown + 1
						end
					end
				else
					return false
				end
			end
			return numfacedown < (#cards/3) * 2
		else
			local numfacedown = 0
			local alreadyhad = {}
			for k, card in ipairs(cards) do
				local suitandrank = card:get_id() .. '_' .. card.base.suit
				if alreadyhad[suitandrank] then
					return true
				else
					alreadyhad[suitandrank] = true
					if card.facing == 'back' then
						numfacedown = numfacedown + 1
					end
				end
			end
			return numfacedown < (#cards/3) * 2
		end
	end,
	stay_flipped = function(self, area, card)
		if G.GAME.blind.facedown then
			if not G.GAME.blind.firstpass then
				G.GAME.blind.firstpass = true
				Q(function() Q(function() G.GAME.blind.firstpass = nil G.GAME.blind.facedown = nil return true end) return true end)
			end
			return true
		end
	end,
    set_blind = function(self, reset, silent)
		if not reset then
			G.GAME.blind.prepped = true
			G.GAME.blind.facedown = true
        end
    end
}

SMODS.Blind	{
    loc_txt = {
        name = 'Ruttoklubi',
        text = { 'If played hand contains', 'no Clubs (ignoring suit modifiers), instantly lose' }
    },
    key = 'epicclub',
    config = {},
	showdown = true,
    boss = {min = 1, max = 10, no_orb = true, showdown = true, hardcore = true, epic = true},
    boss_colour = HEX("677151"),
    atlas = 'jenepicblinds',
    pos = {x = 0, y = 2},
    vars = {},
    dollars = 25,
    mult = 1e9,
	ignore_showdown_check = true,
	in_pool = function(self)
		return G.GAME.round > Jen.config.ante_threshold * 2
	end,
	modify_hand = function(self, cards, poker_hands, text, mult, hand_chips)
		local safe = false
		for k, v in ipairs(cards) do
			if v.base.suit == 'Clubs' then
				safe = true
				break
			end
		end
		if not safe then gameover() return to_big(0), to_big(0), true end
		return hand_chips, mult, false
	end
}

SMODS.Blind	{
    loc_txt = {
        name = 'Sabotöörikala',
        text = { 'Add Stone cards equal to', 'triple the number of cards in deck,', 'no hands containing rankless/suitless cards allowed' }
    },
    key = 'epicfish',
    config = {},
	showdown = true,
    boss = {min = 1, max = 10, no_orb = true, showdown = true, hardcore = true, epic = true},
    boss_colour = HEX("94BBDA"),
    atlas = 'jenepicblinds',
    pos = {x = 0, y = 3},
    vars = {},
    dollars = 25,
    mult = 1e9,
	ignore_showdown_check = true,
	in_pool = function(self)
		return G.GAME.round > Jen.config.ante_threshold * 2
	end,
    set_blind = function(self, reset, silent)
		if not reset then
			for i = 1, #G.playing_cards * 3 do
				G.E_MANAGER:add_event(Event({
					delay = 0.1,
					func = function()
						G.playing_card = (G.playing_card and G.playing_card + 1) or 1
						local card = Card(G.play.T.x + G.play.T.w/2, G.play.T.y, G.CARD_W, G.CARD_H, pseudorandom_element(G.P_CARDS, pseudoseed('epicfish_stone')), G.P_CENTERS.m_stone, {playing_card = G.playing_card})
						if math.floor(i/2) ~= i then play_sound('card1') end
						table.insert(G.playing_cards, card)
						G.deck:emplace(card)
						return true
					end
				}))
			end
        end
    end,
	debuff_hand = function(self, cards, hand, handname, check)
		for k, v in ipairs(cards) do
			if v:norank() or v:nosuit() then
				return true
			end
		end
	end
}

SMODS.Blind	{
    loc_txt = {
        name = 'Epätoivonikkuna',
        text = { 'If played hand contains', 'no Diamonds (ignoring suit modifiers), instantly lose' }
    },
    key = 'epicwindow',
    config = {},
	showdown = true,
    boss = {min = 1, max = 10, no_orb = true, showdown = true, hardcore = true, epic = true},
    boss_colour = HEX("5e5a53"),
    atlas = 'jenepicblinds',
    pos = {x = 0, y = 4},
    vars = {},
    dollars = 25,
    mult = 1e9,
	ignore_showdown_check = true,
	in_pool = function(self)
		return G.GAME.round > Jen.config.ante_threshold * 2
	end,
	modify_hand = function(self, cards, poker_hands, text, mult, hand_chips)
		local safe = false
		for k, v in ipairs(cards) do
			if v.base.suit == 'Diamonds' then
				safe = true
				break
			end
		end
		if not safe then gameover() return to_big(0), to_big(0), true end
		return hand_chips, mult, false
	end
}

SMODS.Blind	{
    loc_txt = {
        name = 'Verenvuotokoukku',
        text = { 'Destroy all cards in deck', 'that have the same rank & suit as another' }
    },
    key = 'epichook',
    config = {},
	showdown = true,
    boss = {min = 1, max = 10, no_orb = true, showdown = true, hardcore = true, epic = true},
    boss_colour = HEX("5d2414"),
    atlas = 'jenepicblinds',
    pos = {x = 0, y = 5},
    vars = {},
    dollars = 25,
    mult = 1e9,
	ignore_showdown_check = true,
	in_pool = function(self)
		return G.GAME.round > Jen.config.ante_threshold * 2
	end,
    set_blind = function(self, reset, silent)
		local entries = {}
		if not reset then
			for k, v in ipairs(G.playing_cards) do
				if not v:norankorsuit() then
					local face = v.base.suit .. '_' .. v.base.id
					if not entries[face] then entries[face] = {} end
					table.insert(entries[face], v)
				end
			end
			for k, v in pairs(entries) do
				if #v > 1 then
					for kk, vv in pairs(v) do
						vv:destroy()
					end
				end
			end
		end
    end
}

SMODS.Blind	{
    loc_txt = {
        name = 'Tuskallisetkäsiraudat',
        text = { 'Hand size set to 2,', 'must play only Pairs' }
    },
    key = 'epicmanacle',
    config = {},
	showdown = true,
    boss = {min = 1, max = 10, no_orb = true, showdown = true, hardcore = true, epic = true},
    boss_colour = HEX("a2a2a2"),
    atlas = 'jenepicblinds',
    pos = {x = 0, y = 6},
    vars = {},
    dollars = 25,
    mult = 1e9,
	ignore_showdown_check = true,
	debuff = {hand = {h_size_ge = 2, h_size_le = 2}},
	get_loc_debuff_text = function(self)
		return "Hand must be a Pair"
	end,
	debuff_hand = function(self, cards, hand, handname, check)
		if handname ~= 'Pair' and not G.GAME.blind.disabled then
			if not check then G.GAME.blind.triggered = true end
			return true
		end
		return false
	end,
	in_pool = function(self)
		return G.GAME.round > Jen.config.ante_threshold * 2
	end,
    defeat = function(self)
        if not G.GAME.blind.disabled and self.handsize_mod then
			G.hand:change_size(self.handsize_mod)
        end
    end,
    set_blind = function(self, reset, silent)
        if not reset then
			self.handsize_mod = G.hand.config.card_limit - 2
			G.hand:change_size(-self.handsize_mod)
        end
    end,
    disable = function(self)
		if self.handsize_mod then
			G.hand:change_size(self.handsize_mod)
		end
    end
}

SMODS.Blind	{
    loc_txt = {
        name = 'Ylitsepääsemätönseinä',
        text = { 'Dramatically rescale blind size if', 'score requirement reached', 'before last hand' }
    },
    key = 'epicwall',
    config = {},
	showdown = true,
    boss = {min = 1, max = 10, no_orb = true, showdown = true, hardcore = true, epic = true},
    boss_colour = HEX("4d325c"),
    atlas = 'jenepicblinds',
    pos = {x = 0, y = 7},
    vars = {},
    dollars = 25,
    mult = 1e100,
	ignore_showdown_check = true,
	in_pool = function(self)
		return G.GAME.round > Jen.config.ante_threshold * 2
	end,
    set_blind = function(self, reset, silent)
        if not reset then
			self.reference_ante = G.GAME.round_resets.ante
        end
    end,
	cry_after_play = function(self)
		if G.GAME.chips >= G.GAME.blind.chips and G.GAME.current_round.hands_left > 0 then
			G.GAME.blind:wiggle()
			local to_ease = G.GAME.blind.chips
			self.reference_ante = math.ceil((self.reference_ante or G.GAME.round_resets.ante) * 1.5)
			G.E_MANAGER:add_event(Event({
				trigger = 'ease',
				blocking = false,
				ref_table = G.GAME.blind,
				ref_value = 'chips',
				ease_to = get_blind_amount(self.reference_ante) * 1e100,
				delay = 0.5,
				func = (function(t) return math.floor(t) end)
			}))
		end
    end
}

--LOCALISATION
function SMODS.current_mod.process_loc_text()
	G.localization.descriptions.Other["card_suitstats"] = {
		text = {
			"{s:0.8,C:inactive}({s:0.8,V:2}#4# {s:0.8,C:inactive}| {s:0.8,V:1}lvl.#1#{s:0.8,C:inactive}) {s:0.8,C:white,X:chips}+#2#{s:0.4} {s:0.8}X{s:0.4} {C:white,X:mult,s:0.8}+#3#{s:0.8}",
		}
	}
	G.localization.descriptions.Other["card_rankstats"] = {
		text = {
			"{s:0.8,C:inactive}({s:0.8,V:2}#4#s {s:0.8,C:inactive}| {s:0.8,V:1}lvl.#1#{s:0.8,C:inactive}) {s:0.8,C:white,X:chips}+#2#{s:0.4} {s:0.8}X{s:0.4} {C:white,X:mult,s:0.8}+#3#{s:0.8}",
		}
	}
	G.localization.misc.dictionary["b_suits"] = "Suits"
	G.localization.misc.dictionary["b_ranks"] = "Ranks"
end