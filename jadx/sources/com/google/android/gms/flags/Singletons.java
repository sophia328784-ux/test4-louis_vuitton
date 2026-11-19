package com.google.android.gms.flags;

/* JADX INFO: loaded from: classes2.dex */
public final class Singletons {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Singletons f29549b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FlagRegistry f29550a = new FlagRegistry();

    static {
        Singletons singletons = new Singletons();
        synchronized (Singletons.class) {
            f29549b = singletons;
        }
    }

    public Singletons() {
        new zzb();
    }
}
