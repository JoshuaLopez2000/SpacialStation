# Spacial Station VR - Training Simulation

**Spacial Station VR** is an immersive simulation prototype developed in Unity, designed as a training tool to study and mitigate the effects of spatial disorientation in astronauts. The project immerses the user in a space station environment, where they must complete a series of tasks while experiencing sensory alterations that challenge their perception and orientation.

[![Gameplay Video](https://img.youtube.com/vi/zLwRVIe4Skg/maxresdefault.jpg)](https://youtu.be/zLwRVIe4Skg)

## Concept

Spatial disorientation is a critical cognitive and physiological challenge during space missions. This simulation aims to recreate controlled scenarios that induce this state, allowing users to train their responsiveness and decision-making under adverse conditions. Through interaction in a Virtual Reality (VR) environment, the goal is to maximize immersion and training effectiveness.

## Main Features

- **Space Station Environment:** A detailed 3D environment composed of interconnected corridors and modules that make up the station.
- **Immersive VR Experience:** Designed from the ground up for Virtual Reality, using Unity's XR system for total immersion.
- **3D Interaction:** Users can interact directly with objects in the environment, such as buttons and panels, thanks to click and touch detection scripts (`ClickHandler`, `TouchableButton3D`).
- **Visor/Helmet System:** A "visor activation" mechanic (`ActivateVisor.cs`) that could simulate an astronaut's helmet, altering the player's visual perception.
- **Holographic Interfaces:** Use of holographic user interfaces to display information and menus, powered by custom shaders and materials (`Hologram.shadergraph`).
- **Advanced Visual Effects:**
    - **Object Dissolve:** "Disolve" effect for the appearance/disappearance of elements.
    - **Outline Highlighting:** `Outline` shader to highlight interactive objects.
    - **Dynamic Lighting:** Pulsating lights and environmental effects to increase immersion and disorientation.
- **Scene-Based Progression:** The game flow is managed through a scene change system, from a main menu (`MainScene`) to the simulation levels (`Level 1`).
- **Resource Management:** Basic player "energy" system, visible through the `EnergyDisplay`.

## Technical Details

- **Engine:** Unity `6000.0.41f1`
- **Platform:** VR (using Unity's XR Plugin Management)
- **Render Pipeline:** Universal Render Pipeline (URP)
- **Input System:** Unity's New Input System (`InputSystem_Actions`)
- **Main Scripts:** C#
- **Shaders:** Created with Shader Graph and HLSL code.

## Installation and Usage

1.  Clone or download this repository.
2.  Make sure you have **Unity 6000.0.41f1** or a higher version installed.
3.  Open the project from Unity Hub.
4.  Open the main scene located at `Assets/Scenes/MainScene.unity`.
5.  Set up a compatible VR device through the `XR Plugin Management` menu.
6.  Press the **Play** button in the Unity editor to start the simulation.

## Assets Used

This project uses 3D models and resources from various sources. Thanks to the following creators for their work:

- **Astronaut Helmet:** "Astronaut Helmet" by Medhatelo. (2019, June 24).
- **Button:** "Button - from portal 2 (original)" by LIE2EYE. (2022, December 5).
- **Space Station Models:**
    - "Space ship Diorama" by SoftNote. (2024, August 16).
    - "Space Ship Hallway" by yeeyeeman. (2019, October 2).
    - "Space Station 3" by re1monsen. (2023, January 1).
- **Sound:**
    - "critical alarm - Sound Effect [FREE NO COPYRIGHT]" by YouTube Sound Library Plus.

*Additional searches and models were obtained from Sketchfab.*
