-- todo: gold flares
return Def.ActorFrame{
	Def.Model{
		Materials=THEME:GetPathG("_grade","models/star.txt"),
		Meshes=THEME:GetPathG("_grade","models/star.txt"),
		Bones=THEME:GetPathG("_grade","models/star.txt"),
		InitCommand=cmd(x,-25;y,-22;zoom,0.5;wag;effectmagnitude,0,4,10);
	};
	Def.Model{
		Materials=THEME:GetPathG("_grade","models/star.txt"),
		Meshes=THEME:GetPathG("_grade","models/star.txt"),
		Bones=THEME:GetPathG("_grade","models/star.txt"),
		InitCommand=cmd(x,25;y,-22;zoom,0.5;wag;effectmagnitude,0,4,10);
	};
	Def.Model{
		Materials=THEME:GetPathG("_grade","models/star.txt"),
		Meshes=THEME:GetPathG("_grade","models/star.txt"),
		Bones=THEME:GetPathG("_grade","models/star.txt"),
		InitCommand=cmd(x,-25;y,22;zoom,0.5;wag;effectmagnitude,0,4,10);
	};
	Def.Model{
		Materials=THEME:GetPathG("_grade","models/star.txt"),
		Meshes=THEME:GetPathG("_grade","models/star.txt"),
		Bones=THEME:GetPathG("_grade","models/star.txt"),
		InitCommand=cmd(x,25;y,22;zoom,0.5;wag;effectmagnitude,0,4,10);
	};
};