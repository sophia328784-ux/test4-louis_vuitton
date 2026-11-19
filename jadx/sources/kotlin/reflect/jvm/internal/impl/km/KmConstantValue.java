package kotlin.reflect.jvm.internal.impl.km;

import defpackage.o60;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class KmConstantValue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f72703a;

    public KmConstantValue(Object obj) {
        this.f72703a = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof KmConstantValue) && Intrinsics.c(this.f72703a, ((KmConstantValue) obj).f72703a);
    }

    public final int hashCode() {
        Object obj = this.f72703a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public final String toString() {
        return o60.r(new StringBuilder("KmConstantValue(value="), this.f72703a, ')');
    }
}
