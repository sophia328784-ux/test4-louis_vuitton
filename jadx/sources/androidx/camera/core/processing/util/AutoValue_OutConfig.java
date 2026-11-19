package androidx.camera.core.processing.util;

import android.graphics.Rect;
import android.util.Size;
import defpackage.a;
import defpackage.r81;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_OutConfig extends OutConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f2609a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2610b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2611c;
    public final Rect d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Size f2612e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f2613f;
    public final boolean g;

    public AutoValue_OutConfig(UUID uuid, int i2, int i3, Rect rect, Size size, int i4, boolean z) {
        if (uuid == null) {
            r81.d("Null getUuid");
            throw null;
        }
        this.f2609a = uuid;
        this.f2610b = i2;
        this.f2611c = i3;
        if (rect == null) {
            r81.d("Null getCropRect");
            throw null;
        }
        this.d = rect;
        if (size == null) {
            r81.d("Null getSize");
            throw null;
        }
        this.f2612e = size;
        this.f2613f = i4;
        this.g = z;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public final Rect a() {
        return this.d;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public final int b() {
        return this.f2611c;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public final int c() {
        return this.f2613f;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public final Size d() {
        return this.f2612e;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public final int e() {
        return this.f2610b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OutConfig)) {
            return false;
        }
        OutConfig outConfig = (OutConfig) obj;
        return this.f2609a.equals(outConfig.f()) && this.f2610b == outConfig.e() && this.f2611c == outConfig.b() && this.d.equals(outConfig.a()) && this.f2612e.equals(outConfig.d()) && this.f2613f == outConfig.c() && this.g == outConfig.g() && !outConfig.i();
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public final UUID f() {
        return this.f2609a;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public final boolean g() {
        return this.g;
    }

    public final int hashCode() {
        return (((this.g ? 1231 : 1237) ^ ((((((((((((this.f2609a.hashCode() ^ 1000003) * 1000003) ^ this.f2610b) * 1000003) ^ this.f2611c) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.f2612e.hashCode()) * 1000003) ^ this.f2613f) * 1000003)) * 1000003) ^ 1237;
    }

    @Override // androidx.camera.core.processing.util.OutConfig
    public final boolean i() {
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("OutConfig{getUuid=");
        sb.append(this.f2609a);
        sb.append(", getTargets=");
        sb.append(this.f2610b);
        sb.append(", getFormat=");
        sb.append(this.f2611c);
        sb.append(", getCropRect=");
        sb.append(this.d);
        sb.append(", getSize=");
        sb.append(this.f2612e);
        sb.append(", getRotationDegrees=");
        sb.append(this.f2613f);
        sb.append(", isMirroring=");
        return a.p(sb, this.g, ", shouldRespectInputCropRect=false}");
    }
}
