local Unlocker, awful, awful_dk = ...
if not awful_dk.dk.ready then return end

local dk = awful_dk.dk
local unholy = dk.unholy

local Spell = awful.NewSpell
local spells = {
    --**RACIALS**
  BloodFury = Spell({ 20572, 33697, 33702 }, { beneficial = true }),
  Berserking = Spell(26297, { beneficial = true }),
  WillOfTheForsaken = Spell(7744, { beneficial = true }),
  ArcaneTorrent = Spell({ 28730, 50613, 25046 }, { beneficial = true }),
  WarStomp = Spell(20549, { beneficial = true }),
  EveryManForHimself = Spell(59752, { beneficial = true }),
  GiftOfTheNaaru = Spell(28880, { heal = true }),
  Stoneform = Spell(20594, { beneficial = true }),
  EscapeArtist = Spell(20589, { beneficial = true }),
  Shadowmeld = Spell(58984, { beneficial = true }),
    
    AutoAttack = Spell(6603, { targeted = true, damage = "physical" }),
    DeathCoil = Spell(47541, { targeted = true, damage = "magic" }),
    FesteringStrike = Spell(85948),
    ScourgeStrike = Spell(55090{ targeted = true, damage = "physical" }),
    Outbreak = Spell(77575),
    Apocalypse = Spell(275699),
    DarkTransformation = Spell(63560),
    UnholyAssault = Spell(207289),
    SummonGargoyle = Spell(49206),
    VirulentPlague = Spell(191587),
    ArmyoftheDead = Spell(42650),
    DeathAndDecay = Spell(43265, { targeted = false, effect = "magic", radius = 10 })
    DeathStrike = Spell(49998),
    SoulReaper = Spell(343294),
    Epidemic = Spell(207317),
    DeathGrip = Spell(49576, { targeted = true }),
    ChainsOfIce = Spell(45524, { targeted = true, slow = true, effect = "magic" }),
    Anti-MagicShell = Spell(48707),
    IceboundFortitude = Spell(48792),
    DeathsAdvance = Spell(48265),
    MindFreeze = Spell(47528, { targeted = true, interrupt = true }),
    RaiseDead = Spell(46584),
    ControlUndead = Spell(111673),
    UnholyPact = Spell(325554),
    AbominationLimb = Spell(383269),
    RaiseAbomination = Spell(288853),
    EmpowerRuneWeapon = Spell(47568, { beneficial = true }),
    DeathPact = Spell(48743, { beneficial = true })
}

awful.Populate(spells, unholy, getfenv(1))

local hookCallbacks = awful.hookSpellCallbacks

local gcdRemains, gcd = awful.gcdRemains, awful.gcd
hookCallbacks(function() 
    gcdRemains, gcd = awful.gcdRemains, awful.gcd
end)
