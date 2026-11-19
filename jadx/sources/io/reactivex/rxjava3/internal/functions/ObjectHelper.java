package io.reactivex.rxjava3.internal.functions;

import defpackage.cj;
import defpackage.md;
import io.reactivex.rxjava3.functions.BiPredicate;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ObjectHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final BiPredicate f70067a = new BiObjectPredicate();

    public static final class BiObjectPredicate implements BiPredicate<Object, Object> {
        @Override // io.reactivex.rxjava3.functions.BiPredicate
        public final boolean test(Object obj, Object obj2) {
            return Objects.equals(obj, obj2);
        }
    }

    public static void a(int i2, String str) {
        if (i2 > 0) {
            return;
        }
        md.n(cj.e(i2, str, " > 0 required but it was "));
    }

    public static void b(long j2, String str) {
        if (j2 > 0) {
            return;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + j2);
    }
}
