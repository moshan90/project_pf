// Copyright Epic Games, Inc. All Rights Reserved.

#include "project_pfGameMode.h"
#include "project_pfCharacter.h"
#include "UObject/ConstructorHelpers.h"

Aproject_pfGameMode::Aproject_pfGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
