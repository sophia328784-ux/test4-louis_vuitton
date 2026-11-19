package com.google.android.filament;

/* JADX INFO: loaded from: classes2.dex */
abstract class Platform {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static Platform f28564a;

    public static class UnknownPlatform extends Platform {
        @Override // com.google.android.filament.Platform
        public final long b(Object obj) {
            return 0L;
        }

        @Override // com.google.android.filament.Platform
        public final boolean c(Object obj) {
            return false;
        }

        @Override // com.google.android.filament.Platform
        public final boolean d(Object obj) {
            return false;
        }
    }

    public static Platform a() {
        if (f28564a == null) {
            try {
                if ("The Android Project".equalsIgnoreCase(System.getProperty("java.vendor"))) {
                    int i2 = AndroidPlatform.f28524b;
                    f28564a = (Platform) AndroidPlatform.class.newInstance();
                } else {
                    f28564a = (Platform) Class.forName("com.google.android.filament.DesktopPlatform").newInstance();
                }
            } catch (Exception unused) {
            }
            if (f28564a == null) {
                f28564a = new UnknownPlatform();
            }
        }
        return f28564a;
    }

    public abstract long b(Object obj);

    public abstract boolean c(Object obj);

    public abstract boolean d(Object obj);
}
