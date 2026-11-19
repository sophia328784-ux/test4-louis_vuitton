package androidx.camera.core.impl;

import androidx.camera.core.DynamicRange;
import defpackage.md;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_SessionConfig_OutputConfig extends SessionConfig.OutputConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DeferrableSurface f2196a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f2197b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2198c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final DynamicRange f2199e;

    public static final class Builder extends SessionConfig.OutputConfig.Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public DeferrableSurface f2200a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public List f2201b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f2202c;
        public Integer d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public DynamicRange f2203e;

        @Override // androidx.camera.core.impl.SessionConfig.OutputConfig.Builder
        public final SessionConfig.OutputConfig a() {
            String strConcat = this.f2200a == null ? " surface" : "";
            if (this.f2201b == null) {
                strConcat = strConcat.concat(" sharedSurfaces");
            }
            if (this.f2202c == null) {
                strConcat = strConcat.concat(" mirrorMode");
            }
            if (this.d == null) {
                strConcat = strConcat.concat(" surfaceGroupId");
            }
            if (this.f2203e == null) {
                strConcat = strConcat.concat(" dynamicRange");
            }
            if (strConcat.isEmpty()) {
                return new AutoValue_SessionConfig_OutputConfig(this.f2200a, this.f2201b, this.f2202c.intValue(), this.d.intValue(), this.f2203e);
            }
            md.k("Missing required properties:".concat(strConcat));
            return null;
        }
    }

    public AutoValue_SessionConfig_OutputConfig(DeferrableSurface deferrableSurface, List list, int i2, int i3, DynamicRange dynamicRange) {
        this.f2196a = deferrableSurface;
        this.f2197b = list;
        this.f2198c = i2;
        this.d = i3;
        this.f2199e = dynamicRange;
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public final DynamicRange b() {
        return this.f2199e;
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public final int c() {
        return this.f2198c;
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public final String d() {
        return null;
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public final List e() {
        return this.f2197b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SessionConfig.OutputConfig)) {
            return false;
        }
        SessionConfig.OutputConfig outputConfig = (SessionConfig.OutputConfig) obj;
        return this.f2196a.equals(outputConfig.f()) && this.f2197b.equals(outputConfig.e()) && outputConfig.d() == null && this.f2198c == outputConfig.c() && this.d == outputConfig.g() && this.f2199e.equals(outputConfig.b());
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public final DeferrableSurface f() {
        return this.f2196a;
    }

    @Override // androidx.camera.core.impl.SessionConfig.OutputConfig
    public final int g() {
        return this.d;
    }

    public final int hashCode() {
        return this.f2199e.hashCode() ^ ((((((((this.f2196a.hashCode() ^ 1000003) * 1000003) ^ this.f2197b.hashCode()) * (-721379959)) ^ this.f2198c) * 1000003) ^ this.d) * 1000003);
    }

    public final String toString() {
        return "OutputConfig{surface=" + this.f2196a + ", sharedSurfaces=" + this.f2197b + ", physicalCameraId=null, mirrorMode=" + this.f2198c + ", surfaceGroupId=" + this.d + ", dynamicRange=" + this.f2199e + "}";
    }
}
