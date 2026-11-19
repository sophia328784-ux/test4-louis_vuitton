package com.google.android.filament;

import defpackage.md;

/* JADX INFO: loaded from: classes2.dex */
public class Fence {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f28543a;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class Mode {
        private static final /* synthetic */ Mode[] $VALUES;
        public static final Mode DONT_FLUSH;
        public static final Mode FLUSH;

        static {
            Mode mode = new Mode("FLUSH", 0);
            FLUSH = mode;
            Mode mode2 = new Mode("DONT_FLUSH", 1);
            DONT_FLUSH = mode2;
            $VALUES = new Mode[]{mode, mode2};
        }

        public static Mode valueOf(String str) {
            return (Mode) Enum.valueOf(Mode.class, str);
        }

        public static Mode[] values() {
            return (Mode[]) $VALUES.clone();
        }
    }

    private static native int nWait(long j2, int i2, long j3);

    public final void a(Mode mode) {
        long j2 = this.f28543a;
        if (j2 != 0) {
            nWait(j2, mode.ordinal(), -1L);
        } else {
            md.k("Calling method on destroyed Fence");
        }
    }
}
