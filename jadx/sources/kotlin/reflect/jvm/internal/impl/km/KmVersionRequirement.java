package kotlin.reflect.jvm.internal.impl.km;

import com.batch.android.s.b;
import defpackage.fc;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class KmVersionRequirement {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public KmVersionRequirementVersionKind f72758a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public KmVersionRequirementLevel f72759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Integer f72760c;
    public String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public KmVersion f72761e;

    public final String toString() {
        StringBuilder sb = new StringBuilder("KmVersionRequirement(kind=");
        KmVersionRequirementVersionKind kmVersionRequirementVersionKind = this.f72758a;
        if (kmVersionRequirementVersionKind == null) {
            Intrinsics.h(b.a.d);
            throw null;
        }
        sb.append(kmVersionRequirementVersionKind);
        sb.append(", level=");
        KmVersionRequirementLevel kmVersionRequirementLevel = this.f72759b;
        if (kmVersionRequirementLevel == null) {
            Intrinsics.h("level");
            throw null;
        }
        sb.append(kmVersionRequirementLevel);
        sb.append(", version=");
        KmVersion kmVersion = this.f72761e;
        if (kmVersion == null) {
            Intrinsics.h("version");
            throw null;
        }
        sb.append(kmVersion);
        sb.append(", errorCode=");
        sb.append(this.f72760c);
        sb.append(", message=");
        return fc.l(sb, this.d, ')');
    }
}
