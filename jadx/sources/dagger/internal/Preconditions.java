package dagger.internal;

import defpackage.no0;
import defpackage.r81;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Preconditions {
    public static void a(Class cls, Object obj) {
        if (obj != null) {
            return;
        }
        no0.l(cls.getCanonicalName(), " must be set");
    }

    public static void b(Object obj) {
        if (obj != null) {
            return;
        }
        r81.d("Cannot return null from a non-@Nullable component method");
    }

    public static void c(Object obj) {
        if (obj != null) {
            return;
        }
        r81.d("Cannot return null from a non-@Nullable @Provides method");
    }
}
