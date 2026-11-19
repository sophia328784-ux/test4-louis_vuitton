package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.fc;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class IncompatibleVersionErrorData<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f74015a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f74016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f74017c;
    public final Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f74018e;

    public IncompatibleVersionErrorData(T t, T t2, T t3, T t4, String str) {
        str.getClass();
        this.f74015a = t;
        this.f74016b = t2;
        this.f74017c = t3;
        this.d = t4;
        this.f74018e = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IncompatibleVersionErrorData)) {
            return false;
        }
        IncompatibleVersionErrorData incompatibleVersionErrorData = (IncompatibleVersionErrorData) obj;
        return Intrinsics.c(this.f74015a, incompatibleVersionErrorData.f74015a) && Intrinsics.c(this.f74016b, incompatibleVersionErrorData.f74016b) && Intrinsics.c(this.f74017c, incompatibleVersionErrorData.f74017c) && Intrinsics.c(this.d, incompatibleVersionErrorData.d) && Intrinsics.c(this.f74018e, incompatibleVersionErrorData.f74018e);
    }

    public final int hashCode() {
        Object obj = this.f74015a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f74016b;
        int iHashCode2 = (iHashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.f74017c;
        int iHashCode3 = (iHashCode2 + (obj3 == null ? 0 : obj3.hashCode())) * 31;
        Object obj4 = this.d;
        return this.f74018e.hashCode() + ((iHashCode3 + (obj4 != null ? obj4.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("IncompatibleVersionErrorData(actualVersion=");
        sb.append(this.f74015a);
        sb.append(", compilerVersion=");
        sb.append(this.f74016b);
        sb.append(", languageVersion=");
        sb.append(this.f74017c);
        sb.append(", expectedVersion=");
        sb.append(this.d);
        sb.append(", filePath=");
        return fc.l(sb, this.f74018e, ')');
    }
}
