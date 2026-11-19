package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import defpackage.tr;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class PreReleaseInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f74131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f74132b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        new PreReleaseInfo(false, null, 2, null);
    }

    public PreReleaseInfo(boolean z, List<String> list) {
        list.getClass();
        this.f74131a = z;
        this.f74132b = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PreReleaseInfo)) {
            return false;
        }
        PreReleaseInfo preReleaseInfo = (PreReleaseInfo) obj;
        return this.f74131a == preReleaseInfo.f74131a && Intrinsics.c(this.f74132b, preReleaseInfo.f74132b);
    }

    public final int hashCode() {
        return this.f74132b.hashCode() + (Boolean.hashCode(this.f74131a) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PreReleaseInfo(isInvisible=");
        sb.append(this.f74131a);
        sb.append(", poisoningFeatures=");
        return tr.m(sb, this.f74132b, ')');
    }

    public PreReleaseInfo(boolean z, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(z, (i2 & 2) != 0 ? EmptyList.f71768b : list);
    }
}
