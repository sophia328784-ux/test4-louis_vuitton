package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum Grid implements Control {
    OFF(0),
    DRAW_3X3(1),
    DRAW_4X4(2),
    DRAW_PHI(3);

    private int value;
    static final Grid DEFAULT = OFF;

    Grid(int i2) {
        this.value = i2;
    }

    public static Grid a(int i2) {
        for (Grid grid : values()) {
            if (grid.value == i2) {
                return grid;
            }
        }
        return DEFAULT;
    }

    public final int b() {
        return this.value;
    }
}
