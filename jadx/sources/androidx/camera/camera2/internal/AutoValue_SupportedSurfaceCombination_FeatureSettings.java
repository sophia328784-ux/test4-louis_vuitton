package androidx.camera.camera2.internal;

import android.util.Range;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_SupportedSurfaceCombination_FeatureSettings extends SupportedSurfaceCombination.FeatureSettings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f1406a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f1407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f1408c;
    public final boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f1409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f1410f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f1411h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Range f1412i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f1413j;

    public AutoValue_SupportedSurfaceCombination_FeatureSettings(int i2, boolean z, int i3, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, Range range, boolean z7) {
        this.f1406a = i2;
        this.f1407b = z;
        this.f1408c = i3;
        this.d = z2;
        this.f1409e = z3;
        this.f1410f = z4;
        this.g = z5;
        this.f1411h = z6;
        if (range == null) {
            r81.d("Null getTargetFpsRange");
            throw null;
        }
        this.f1412i = range;
        this.f1413j = z7;
    }

    @Override // androidx.camera.camera2.internal.SupportedSurfaceCombination.FeatureSettings
    public final int a() {
        return this.f1406a;
    }

    @Override // androidx.camera.camera2.internal.SupportedSurfaceCombination.FeatureSettings
    public final int b() {
        return this.f1408c;
    }

    @Override // androidx.camera.camera2.internal.SupportedSurfaceCombination.FeatureSettings
    public final Range c() {
        return this.f1412i;
    }

    @Override // androidx.camera.camera2.internal.SupportedSurfaceCombination.FeatureSettings
    public final boolean d() {
        return this.f1407b;
    }

    @Override // androidx.camera.camera2.internal.SupportedSurfaceCombination.FeatureSettings
    public final boolean e() {
        return this.g;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SupportedSurfaceCombination.FeatureSettings)) {
            return false;
        }
        SupportedSurfaceCombination.FeatureSettings featureSettings = (SupportedSurfaceCombination.FeatureSettings) obj;
        return this.f1406a == featureSettings.a() && this.f1407b == featureSettings.d() && this.f1408c == featureSettings.b() && this.d == featureSettings.g() && this.f1409e == featureSettings.i() && this.f1410f == featureSettings.f() && this.g == featureSettings.e() && this.f1411h == featureSettings.j() && this.f1412i.equals(featureSettings.c()) && this.f1413j == featureSettings.h();
    }

    @Override // androidx.camera.camera2.internal.SupportedSurfaceCombination.FeatureSettings
    public final boolean f() {
        return this.f1410f;
    }

    @Override // androidx.camera.camera2.internal.SupportedSurfaceCombination.FeatureSettings
    public final boolean g() {
        return this.d;
    }

    @Override // androidx.camera.camera2.internal.SupportedSurfaceCombination.FeatureSettings
    public final boolean h() {
        return this.f1413j;
    }

    public final int hashCode() {
        return ((((((((((((((((((this.f1406a ^ 1000003) * 1000003) ^ (this.f1407b ? 1231 : 1237)) * 1000003) ^ this.f1408c) * 1000003) ^ (this.d ? 1231 : 1237)) * 1000003) ^ (this.f1409e ? 1231 : 1237)) * 1000003) ^ (this.f1410f ? 1231 : 1237)) * 1000003) ^ (this.g ? 1231 : 1237)) * 1000003) ^ (this.f1411h ? 1231 : 1237)) * 1000003) ^ this.f1412i.hashCode()) * 1000003) ^ (this.f1413j ? 1231 : 1237);
    }

    @Override // androidx.camera.camera2.internal.SupportedSurfaceCombination.FeatureSettings
    public final boolean i() {
        return this.f1409e;
    }

    @Override // androidx.camera.camera2.internal.SupportedSurfaceCombination.FeatureSettings
    public final boolean j() {
        return this.f1411h;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FeatureSettings{getCameraMode=");
        sb.append(this.f1406a);
        sb.append(", hasVideoCapture=");
        sb.append(this.f1407b);
        sb.append(", getRequiredMaxBitDepth=");
        sb.append(this.f1408c);
        sb.append(", isPreviewStabilizationOn=");
        sb.append(this.d);
        sb.append(", isUltraHdrOn=");
        sb.append(this.f1409e);
        sb.append(", isHighSpeedOn=");
        sb.append(this.f1410f);
        sb.append(", isFeatureComboInvocation=");
        sb.append(this.g);
        sb.append(", requiresFeatureComboQuery=");
        sb.append(this.f1411h);
        sb.append(", getTargetFpsRange=");
        sb.append(this.f1412i);
        sb.append(", isStrictFpsRequired=");
        return defpackage.a.p(sb, this.f1413j, "}");
    }
}
