" Vim syntax file
" Language: C++, but for .pop files
" Notes: .pop files are used in the game `Team Fortress 2`,
"   in `Mann vs Machine` mode to define bot behavior
" Maintainer: Smaqabird
" Latest revision: Jan 14 2015

if exists("b:current_syntax")
  finish
endif

" Read the C syntax to start with
if version < 600
  so <sfile>:p:h/c.vim
else
  runtime! syntax/c.vim
  unlet b:current_syntax
endif

" ignore case for keyword declarations in this file
syntax case ignore
" also ignore case for document type declarations
:let dtd_ignore_case=1

" Keywords
" syn keyword syntaxElementKeyword keyword1 keyword2 nextgroup=syntaxElement2
" Matches
" syn match syntaxElementMatch 'regexp' contains=syntaxElement1 nextgroup=syntaxElement2 skipwhite
" Regions
" syn region syntaxElementRegion start='x' end='y'

" Block definitions {{{
syn keyword blockLevel1 WaveSchedule
syn keyword blockLevel2 Mission Wave
syn keyword blockLevel3 TFBot StartWaveOutput DoneOutput WaveSpawn Squad FirstSpawnOutput Tank OnKilledOutput OnBombDroppedOutput CharacterAttributes RandomPlacement PeriodicSpawn When Mob LastSpawnOutput ExamplePopulation Templates
syn region blockBoundary start="{" end="}" fold contains=blockLevel2,blockLevel3,attributeName,attributeValue,cComment,cCommentL
"}}}

" Comments {{{
" rules provided by system's C syntax file
"}}}

" Attributes & values {{{
syn match attributeValue '\w+'
syn keyword attributeValue contained=blockBoundary
syn keyword attributeName Objective InitialCooldown Where BeginAtWave RunForThisManyWaves CooldownTime DesiredCount Class Skill MaxVisionRange Item Name ClassIcon TotalCount MaxActive SpawnCount WaitBetweenSpawns TotalCurrency WaitBeforeStarting Template Checkpoint Action Target RandomChoice WaitForAllSpawned StartingPathTrackNode Health Speed WeaponRestrictions Attributes Support StartingCurrency RespawnWaveTime CanBotsAttackWhileInSpawnRoom Advanced Scale BehaviorModifiers Tag Count MinimumSeparation NavAreaFilter SentryGun MinInterval MaxInterval Description Sound WaitWhenDone RandomSpawn StartWaveWarningSound FirstSpawnWarningSound LastSpawnWarningSound DoneWarningSound Skin AddSentryBusterWhenDamageDealtExceeds AddSentryBusterWhenKillCountExceeds WaveDoneWhen Eventpopfile
syn keyword attributeName nextgroup=attributeValue skipwhite
syn keyword attributeName contained=blockBoundary
"}}}

" Include files {{{
" syn keyword include #
" syn match includedFiles '*\.pop$'

syn match	include	display "^#base" contains=includedFiles
" syn match	includedFiles	display contained "<[^>]*>"
" syn region includedFiles display contained start=+"+ skip=+\\\\\|\\"+ end=+"+
"}}}

" Miscellaneous {{{
syn keyword templateWord T_TFBot T_WaveSpawn
"}}}

" Default highlighting
let b:current_syntax = "pop"

hi def link blockLevel1       Special
hi def link blockLevel2       Identifier
hi def link blockLevel3       Statement
hi def link attributeName     Type
hi def link attributeValue    Normal
hi def link include           Include
