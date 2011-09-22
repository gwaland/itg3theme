local t = Def.ActorFrame{
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","underlay/_sides"))..{
		InitCommand=cmd(ztest,true);
	};
	LoadActor(THEME:GetPathB("ScreenWithMenuElements","underlay/_base"));

	Def.ActorFrame{
		Name="SelButtonMenu";
		InitCommand=cmd(y,SCREEN_BOTTOM-54);
		LoadFont("_v 26px bold white")..{
			Text="&START; Change Sort";
			InitCommand=cmd(CenterX;zoomx,.3;zoomy,.6;diffusealpha,0;shadowlength,2;visible,ModeMenuAvailable());
			OffCommand=cmd(linear,.3;diffusealpha,0);
			EnableSelectHelpMessageCommand=cmd(stoptweening;bounceend,0.2;diffusealpha,1;zoomx,0.6);
			SelectMenuOffMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.3);
		};
		Def.ActorFrame{
			Name="Easier";
			InitCommand=function(self)
				if ModeMenuAvailable() then
					self:x(SCREEN_CENTER_X-100)
				else
					self:x(SCREEN_CENTER_X-65)
				end
				self:x(SCREEN_CENTER_X-65)
			end;
			LoadFont("_v 26px bold black")..{
				Text="&MENULEFT;";
				OnCommand=cmd(addy,36;x,-5;horizalign,right;zoomx,.5;zoomy,.7;diffusealpha,0;shadowlength,0);
				OffCommand=cmd(linear,.3;diffusealpha,0);
				EnableSelectHelpMessageCommand=cmd(stoptweening;bounceend,0.2;diffusealpha,1;zoomx,0.7);
				SelectMenuOffMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.5);
			};
			LoadFont("_v 26px bold black")..{
				Text="Easier";
				OnCommand=cmd(addy,36;x,0;horizalign,left;zoomx,.5;zoomy,.7;diffusealpha,0;diffuseramp;effectperiod,1;effectoffset,0.20;effectclock,'beat';effectcolor1,color("#FFFFFF");effectcolor2,color("#20D020");shadowlength,0);
				OffCommand=cmd(linear,.3;diffusealpha,0);
				EnableSelectHelpMessageCommand=cmd(stoptweening;bounceend,0.2;diffusealpha,1;zoomx,0.7);
				SelectMenuOffMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.5);
			};
		};
		Def.ActorFrame{
			Name="Harder";
			InitCommand=function(self)
				if ModeMenuAvailable() then
					self:x(SCREEN_CENTER_X+100)
				else
					self:x(SCREEN_CENTER_X+65)
				end
				self:x(SCREEN_CENTER_X-65)
			end;
			LoadFont("_v 26px bold black")..{
				Text="Harder";
				OnCommand=cmd(addy,36;x,0;horizalign,right;zoomx,.5;zoomy,.7;diffusealpha,0;diffuseramp;effectperiod,1;effectoffset,0.20;effectclock,'beat';effectcolor1,color("#FFFFFF");effectcolor2,color("#E06060");shadowlength,0);
				OffCommand=cmd(linear,.3;diffusealpha,0);
				EnableSelectHelpMessageCommand=cmd(stoptweening;bounceend,0.2;diffusealpha,1;zoomx,0.7);
				SelectMenuOffMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.5);
			};
			LoadFont("_v 26px bold black")..{
				Text="&MENURIGHT;";
				OnCommand=cmd(addy,36;x,15;horizalign,center;zoomx,.5;zoomy,.7;diffusealpha,0;shadowlength,0);
				OffCommand=cmd(linear,.3;diffusealpha,0);
				EnableSelectHelpMessageCommand=cmd(stoptweening;bounceend,0.2;diffusealpha,1;zoomx,0.7);
				SelectMenuOffMessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.5);
			};
		};
	};

	Def.ActorFrame{
		Name="OptionsListPaneP1";
		LoadActor(THEME:GetPathG("_pane","elements/_lbase"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X+26;y,SCREEN_BOTTOM;draworder,-5;horizalign,right;vertalign,bottom;diffusealpha,0);
			OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.75;addx,SCREEN_WIDTH);
			OffCommand=cmd(sleep,.35;accelerate,0.75;addx,-SCREEN_WIDTH);
			OptionsListOpenedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,1);
			OptionsListClosedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0);
		};
		LoadActor(THEME:GetPathG("_pane","elements/_basewidth"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X-174;y,SCREEN_BOTTOM;draworder,-5;horizalign,right;vertalign,bottom;zoomtowidth,SCREEN_WIDTH/2;diffusealpha,0);
			OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.75;addx,SCREEN_WIDTH);
			OffCommand=cmd(sleep,.35;accelerate,0.75;addx,-SCREEN_WIDTH);
			OptionsListOpenedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,1);
			OptionsListClosedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0);
		};
	};
	Def.ActorFrame{
		Name="OptionsListPaneP2";
		LoadActor(THEME:GetPathG("_pane","elements/_lbase"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X-26;y,SCREEN_BOTTOM;draworder,-5;horizalign,left;vertalign,bottom;diffusealpha,0);
			OnCommand=cmd(addx,SCREEN_WIDTH;decelerate,0.75;addx,-SCREEN_WIDTH);
			OffCommand=cmd(sleep,.35;accelerate,0.75;addx,SCREEN_WIDTH);
			OptionsListOpenedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,1);
			OptionsListClosedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0);
		};
		LoadActor(THEME:GetPathG("_pane","elements/_basewidth"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X+174;y,SCREEN_BOTTOM;draworder,-5;horizalign,left;vertalign,bottom;zoomtowidth,SCREEN_WIDTH/2;diffusealpha,0);
			OnCommand=cmd(addx,SCREEN_WIDTH;decelerate,0.75;addx,-SCREEN_WIDTH);
			OffCommand=cmd(sleep,.35;accelerate,0.75;addx,SCREEN_WIDTH);
			OptionsListOpenedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,1);
			OptionsListClosedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0);
		};
	};

	Def.ActorFrame{
		Name="OptionsListBaseP1";
		InitCommand=cmd(x,SCREEN_CENTER_X-220;y,SCREEN_CENTER_Y+22;);
		LoadActor(THEME:GetPathG("options","pane"))..{
			InitCommand=cmd(diffusealpha,0;zoomx,0.6);
			OptionsListOpenedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,1;zoomx,1);
			OptionsListClosedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.6);
		};
		LoadActor(THEME:GetPathG("options","pane"))..{
			InitCommand=cmd(blend,Blend.Add;diffusealpha,0);
			OptionsListOpenedP1MessageCommand=cmd(stoptweening;diffusealpha,0);
			OptionsListClosedP1MessageCommand=cmd(stoptweening;diffusealpha,0);
			OptionsListResetP1MessageCommand=cmd(stoptweening;diffusealpha,1;linear,0.2;diffusealpha,0);
		};
	};
	Def.ActorFrame{
		Name="OptionsListBaseP2";
		InitCommand=cmd(x,SCREEN_CENTER_X+220;y,SCREEN_CENTER_Y+22;);
		LoadActor(THEME:GetPathG("options","pane"))..{
			InitCommand=cmd(zoomx,-1;diffusealpha,0;zoomx,0.6);
			OptionsListOpenedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,1;zoomx,1);
			OptionsListClosedP1MessageCommand=cmd(stoptweening;linear,0.2;diffusealpha,0;zoomx,0.6);
		};
		LoadActor(THEME:GetPathG("options","pane"))..{
			InitCommand=cmd(zoomx,-1;blend,Blend.Add;diffusealpha,0);
			OptionsListOpenedP1MessageCommand=cmd(stoptweening;diffusealpha,0);
			OptionsListClosedP1MessageCommand=cmd(stoptweening;diffusealpha,0);
			OptionsListResetP1MessageCommand=cmd(stoptweening;diffusealpha,1;linear,0.2;diffusealpha,0);
		};
	};

	-- stepartist crap
	Def.ActorFrame{
		Name="StepArtistP1";
		InitCommand=cmd(x,SCREEN_LEFT;y,SCREEN_BOTTOM-109;addx,-SCREEN_WIDTH;player,PLAYER_1);
		OnCommand=cmd(decelerate,0.75;addx,SCREEN_WIDTH;);
		OffCommand=cmd(accelerate,0.75;addx,-SCREEN_WIDTH);
		SelectMenuOffMessageCommand=cmd(stoptweening;decelerate,.3;y,SCREEN_BOTTOM-109);

		LoadActor(THEME:GetPathG("_pane","elements/_artist"))..{
			InitCommand=cmd(horizalign,left;zoom,.5;);
		};
		LoadFont("_v 26px bold diffuse")..{
			InitCommand=cmd(maxwidth,350;horizalign,left;x,20;y,2;shadowlength,0.5;zoom,.5);
			CurrentStepsP1ChangedMessageCommand=cmd(playcommand,"Update");
			CurrentSongChangedMessageCommand=cmd(playcommand,"Update");
			UpdateCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local course = GAMESTATE:GetCurrentCourse();
				local artist = ""
				local steps = GAMESTATE:GetCurrentSteps(PLAYER_1)
				if steps ~= nil then
					artist = steps:GetAuthorCredit()
				else
					artist = ""
				end
				local result = ""
				if song then
					if artist == "" then
						result = "Stepartist: Unknown"
					else
						result = "Stepartist: " .. artist
					end
				else
					self:playcommand("SelectMenuOffMessageCommand")
				end
				if course then result = "" end
				-- todo: chris foy
				self:settext(result)
			end;
		};
	};
	Def.ActorFrame{
		Name="StepArtistP2";
		InitCommand=cmd(x,SCREEN_RIGHT;y,SCREEN_BOTTOM-109;addx,SCREEN_WIDTH;player,PLAYER_2);
		OnCommand=cmd(decelerate,0.75;addx,-SCREEN_WIDTH;);
		OffCommand=cmd(accelerate,0.75;addx,SCREEN_WIDTH);
		SelectMenuOffMessageCommand=cmd(stoptweening;decelerate,.3;y,SCREEN_BOTTOM-109);

		LoadActor(THEME:GetPathG("_pane","elements/_artist"))..{
			InitCommand=cmd(horizalign,left;zoomx,-.5;zoomy,.5;);
		};
		LoadFont("_v 26px bold diffuse")..{
			InitCommand=cmd(maxwidth,350;horizalign,right;x,-20;y,2;shadowlength,0.5;zoom,.5);
			CurrentStepsP2ChangedMessageCommand=cmd(playcommand,"Update");
			CurrentSongChangedMessageCommand=cmd(playcommand,"Update");
			UpdateCommand=function(self)
				local song = GAMESTATE:GetCurrentSong();
				local course = GAMESTATE:GetCurrentCourse();
				local artist = ""
				local steps = GAMESTATE:GetCurrentSteps(PLAYER_2)
				if steps ~= nil then
					artist = steps:GetAuthorCredit()
				else
					artist = ""
				end
				local result = ""
				if song then
					if artist == "" then
						result = "Stepartist: Unknown"
					else
						result = "Stepartist: " .. artist
					end
				else
					self:playcommand("SelectMenuOffMessageCommand")
				end
				if course then result = "" end
				-- todo: chris foy
				self:settext(result)
			end;
		};
	};

	-- stuff behind panedisplay, idk
	Def.ActorFrame{
		Name="Pane";
		InitCommand=cmd(draworder,-1);

		LoadActor(THEME:GetPathG("_pane","elements/_ldifficulty"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X+12;y,SCREEN_BOTTOM-8;horizalign,right;vertalign,bottom;player,PLAYER_1);
			OnCommand=cmd(addx,-SCREEN_WIDTH;sleep,.5;decelerate,0.75;addx,SCREEN_WIDTH);
			OffCommand=cmd(accelerate,0.75;addx,-SCREEN_WIDTH);
		};
		LoadActor(THEME:GetPathG("_pane","elements/_ldifficulty"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X-12;y,SCREEN_BOTTOM-8;zoomx,-1;horizalign,right;vertalign,bottom;player,PLAYER_2);
			OnCommand=cmd(addx,SCREEN_WIDTH;sleep,.5;decelerate,0.75;addx,-SCREEN_WIDTH);
			OffCommand=cmd(accelerate,0.75;addx,SCREEN_WIDTH);
		};

		LoadActor(THEME:GetPathG("_pane","elements/_lbase"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X+26;y,SCREEN_BOTTOM;horizalign,right;vertalign,bottom);
			OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.75;addx,SCREEN_WIDTH);
			OffCommand=cmd(sleep,.5;accelerate,0.75;addx,-SCREEN_WIDTH);
		};
		LoadActor(THEME:GetPathG("_pane","elements/_basewidth"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X-174;y,SCREEN_BOTTOM;horizalign,right;vertalign,bottom;zoomtowidth,SCREEN_WIDTH/2);
			OnCommand=cmd(addx,-SCREEN_WIDTH;decelerate,0.75;addx,SCREEN_WIDTH);
			OffCommand=cmd(sleep,.5;accelerate,0.75;addx,-SCREEN_WIDTH);
		};
		LoadActor(THEME:GetPathG("_pane","elements/_rbase"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X-26;y,SCREEN_BOTTOM;horizalign,left;vertalign,bottom);
			OnCommand=cmd(addx,SCREEN_WIDTH;decelerate,0.75;addx,-SCREEN_WIDTH);
			OffCommand=cmd(sleep,.5;accelerate,0.75;addx,SCREEN_WIDTH);
		};
		LoadActor(THEME:GetPathG("_pane","elements/_basewidth"))..{
			InitCommand=cmd(x,SCREEN_CENTER_X+174;y,SCREEN_BOTTOM;horizalign,left;vertalign,bottom;zoomtowidth,SCREEN_WIDTH/2);
			OnCommand=cmd(addx,SCREEN_WIDTH;decelerate,0.75;addx,-SCREEN_WIDTH);
			OffCommand=cmd(sleep,.5;accelerate,0.75;addx,SCREEN_WIDTH);
		};
	};

	-- panedisplay stuff
	LoadActor(THEME:GetPathG("_pane","icons"))..{
		InitCommand=cmd(x,SCREEN_LEFT+SCREEN_WIDTH/5.415;y,SCREEN_BOTTOM-184;player,PLAYER_1);
	};
	LoadActor(THEME:GetPathG("_pane","icons"))..{
		InitCommand=cmd(x,SCREEN_RIGHT-SCREEN_WIDTH/5.415;y,SCREEN_BOTTOM-184;player,PLAYER_2);
	};

	LoadActor(THEME:GetPathB("","_coins"));
};

return t;