package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.KotlinVersion;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class JavaNullabilityAnnotationsStatus {
    public static final Companion d = new Companion(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final JavaNullabilityAnnotationsStatus f72853e = new JavaNullabilityAnnotationsStatus(ReportLevel.STRICT, null, null, 6, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ReportLevel f72854a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final KotlinVersion f72855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ReportLevel f72856c;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public /* synthetic */ JavaNullabilityAnnotationsStatus(ReportLevel reportLevel, KotlinVersion kotlinVersion, ReportLevel reportLevel2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(reportLevel, (i2 & 2) != 0 ? new KotlinVersion(1, 0) : kotlinVersion, (i2 & 4) != 0 ? reportLevel : reportLevel2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof JavaNullabilityAnnotationsStatus)) {
            return false;
        }
        JavaNullabilityAnnotationsStatus javaNullabilityAnnotationsStatus = (JavaNullabilityAnnotationsStatus) obj;
        return this.f72854a == javaNullabilityAnnotationsStatus.f72854a && Intrinsics.c(this.f72855b, javaNullabilityAnnotationsStatus.f72855b) && this.f72856c == javaNullabilityAnnotationsStatus.f72856c;
    }

    public final int hashCode() {
        int iHashCode = this.f72854a.hashCode() * 31;
        KotlinVersion kotlinVersion = this.f72855b;
        return this.f72856c.hashCode() + ((iHashCode + (kotlinVersion == null ? 0 : kotlinVersion.f71703e)) * 31);
    }

    public final String toString() {
        return "JavaNullabilityAnnotationsStatus(reportLevelBefore=" + this.f72854a + ", sinceVersion=" + this.f72855b + ", reportLevelAfter=" + this.f72856c + ')';
    }

    public JavaNullabilityAnnotationsStatus(ReportLevel reportLevel, KotlinVersion kotlinVersion, ReportLevel reportLevel2) {
        reportLevel.getClass();
        reportLevel2.getClass();
        this.f72854a = reportLevel;
        this.f72855b = kotlinVersion;
        this.f72856c = reportLevel2;
    }
}
