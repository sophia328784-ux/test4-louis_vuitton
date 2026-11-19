package com.otaliastudios.cameraview.controls;

/* JADX INFO: loaded from: classes3.dex */
public enum Preview implements Control {
    SURFACE(0),
    TEXTURE(1),
    GL_SURFACE(2);

    private int value;
    static final Preview DEFAULT = GL_SURFACE;

    Preview(int i2) {
        this.value = i2;
    }

    public static Preview a(int i2) {
        for (Preview preview : values()) {
            if (preview.value == i2) {
                return preview;
            }
        }
        return DEFAULT;
    }

    public final int b() {
        return this.value;
    }
}
