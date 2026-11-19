package com.sightcall.universal.internal.ui;

/* JADX INFO: loaded from: classes3.dex */
public enum ScreenshareProducerMode {
    INVALID,
    IMAGE_GALLERY,
    IMAGE_CAMERA,
    IMAGE_SNAPSHOT,
    WEB,
    SCREEN;

    public static boolean isImage(ScreenshareProducerMode screenshareProducerMode) {
        return screenshareProducerMode == IMAGE_GALLERY || screenshareProducerMode == IMAGE_CAMERA || screenshareProducerMode == IMAGE_SNAPSHOT;
    }

    public static boolean isScreen(ScreenshareProducerMode screenshareProducerMode) {
        return screenshareProducerMode == SCREEN;
    }

    public static boolean isWeb(ScreenshareProducerMode screenshareProducerMode) {
        return screenshareProducerMode == WEB;
    }
}
