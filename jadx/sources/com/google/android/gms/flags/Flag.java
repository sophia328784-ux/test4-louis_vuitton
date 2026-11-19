package com.google.android.gms.flags;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class Flag<T> {

    @Deprecated
    public static class BooleanFlag extends Flag<Boolean> {
        public BooleanFlag(int i2, String str, Boolean bool) {
            Singletons singletons;
            Singletons singletons2 = Singletons.f29549b;
            synchronized (Singletons.class) {
                singletons = Singletons.f29549b;
            }
            singletons.f29550a.f29548a.add(this);
        }
    }
}
