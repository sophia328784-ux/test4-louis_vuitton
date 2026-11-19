package androidx.camera.core.impl;

import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
final class AutoValue_OutputSurfaceConfiguration extends OutputSurfaceConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final OutputSurface f2193a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OutputSurface f2194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OutputSurface f2195c;
    public final OutputSurface d;

    public AutoValue_OutputSurfaceConfiguration(OutputSurface outputSurface, OutputSurface outputSurface2, OutputSurface outputSurface3, OutputSurface outputSurface4) {
        if (outputSurface == null) {
            r81.d("Null previewOutputSurface");
            throw null;
        }
        this.f2193a = outputSurface;
        if (outputSurface2 == null) {
            r81.d("Null imageCaptureOutputSurface");
            throw null;
        }
        this.f2194b = outputSurface2;
        this.f2195c = outputSurface3;
        this.d = outputSurface4;
    }

    @Override // androidx.camera.core.impl.OutputSurfaceConfiguration
    public final OutputSurface b() {
        return this.f2195c;
    }

    @Override // androidx.camera.core.impl.OutputSurfaceConfiguration
    public final OutputSurface c() {
        return this.f2194b;
    }

    @Override // androidx.camera.core.impl.OutputSurfaceConfiguration
    public final OutputSurface d() {
        return this.d;
    }

    @Override // androidx.camera.core.impl.OutputSurfaceConfiguration
    public final OutputSurface e() {
        return this.f2193a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof OutputSurfaceConfiguration)) {
            return false;
        }
        OutputSurfaceConfiguration outputSurfaceConfiguration = (OutputSurfaceConfiguration) obj;
        if (!this.f2193a.equals(outputSurfaceConfiguration.e()) || !this.f2194b.equals(outputSurfaceConfiguration.c())) {
            return false;
        }
        OutputSurface outputSurface = this.f2195c;
        if (outputSurface == null) {
            if (outputSurfaceConfiguration.b() != null) {
                return false;
            }
        } else if (!outputSurface.equals(outputSurfaceConfiguration.b())) {
            return false;
        }
        OutputSurface outputSurface2 = this.d;
        if (outputSurface2 == null) {
            return outputSurfaceConfiguration.d() == null;
        }
        return outputSurface2.equals(outputSurfaceConfiguration.d());
    }

    public final int hashCode() {
        int iHashCode = (((this.f2193a.hashCode() ^ 1000003) * 1000003) ^ this.f2194b.hashCode()) * 1000003;
        OutputSurface outputSurface = this.f2195c;
        int iHashCode2 = (iHashCode ^ (outputSurface == null ? 0 : outputSurface.hashCode())) * 1000003;
        OutputSurface outputSurface2 = this.d;
        return iHashCode2 ^ (outputSurface2 != null ? outputSurface2.hashCode() : 0);
    }

    public final String toString() {
        return "OutputSurfaceConfiguration{previewOutputSurface=" + this.f2193a + ", imageCaptureOutputSurface=" + this.f2194b + ", imageAnalysisOutputSurface=" + this.f2195c + ", postviewOutputSurface=" + this.d + "}";
    }
}
