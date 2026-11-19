package androidx.camera.core.impl;

/* JADX INFO: loaded from: classes.dex */
public abstract class OutputSurfaceConfiguration {
    public static OutputSurfaceConfiguration a(OutputSurface outputSurface, OutputSurface outputSurface2, OutputSurface outputSurface3, OutputSurface outputSurface4) {
        return new AutoValue_OutputSurfaceConfiguration(outputSurface, outputSurface2, outputSurface3, outputSurface4);
    }

    public abstract OutputSurface b();

    public abstract OutputSurface c();

    public abstract OutputSurface d();

    public abstract OutputSurface e();
}
