package com.otaliastudios.cameraview.overlay;

import android.graphics.Canvas;

/* JADX INFO: loaded from: classes3.dex */
public interface Overlay {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Target {
        private static final /* synthetic */ Target[] $VALUES;
        public static final Target PICTURE_SNAPSHOT;
        public static final Target PREVIEW;
        public static final Target VIDEO_SNAPSHOT;

        static {
            Target target = new Target("PREVIEW", 0);
            PREVIEW = target;
            Target target2 = new Target("PICTURE_SNAPSHOT", 1);
            PICTURE_SNAPSHOT = target2;
            Target target3 = new Target("VIDEO_SNAPSHOT", 2);
            VIDEO_SNAPSHOT = target3;
            $VALUES = new Target[]{target, target2, target3};
        }

        public static Target valueOf(String str) {
            return (Target) Enum.valueOf(Target.class, str);
        }

        public static Target[] values() {
            return (Target[]) $VALUES.clone();
        }
    }

    boolean a(Target target);

    void b(Target target, Canvas canvas);

    boolean getHardwareCanvasEnabled();
}
