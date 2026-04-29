package main

import "core:fmt"
import rl "vendor:raylib"

@export
external_entry :: proc "c" () {
    screenWidth  : i32 = 640
    screenHeight : i32 = 480

    rl.InitWindow(screenWidth, screenHeight, "Odin UWP Raylib Demo")

    defer rl.CloseWindow()

    rl.SetTargetFPS(60)

    for !rl.WindowShouldClose() {
        rl.BeginDrawing()
        rl.ClearBackground(rl.DARKBLUE)

        rl.DrawText("Odin UWP Raylib Demo", 190, 200, 20, rl.RAYWHITE)

        rl.EndDrawing()
    }
}
