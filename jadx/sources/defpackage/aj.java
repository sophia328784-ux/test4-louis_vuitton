package defpackage;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.processing.DefaultSurfaceProcessor;
import androidx.camera.core.processing.OpenGlRenderer;
import androidx.camera.core.processing.concurrent.DualOpenGlRenderer;
import androidx.camera.core.processing.concurrent.DualSurfaceProcessor;
import androidx.camera.core.processing.util.GLUtils;
import androidx.core.util.Consumer;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class aj implements Consumer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f525a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f526b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f527c;

    public /* synthetic */ aj(Object obj, Object obj2, int i2) {
        this.f525a = i2;
        this.f526b = obj;
        this.f527c = obj2;
    }

    @Override // androidx.core.util.Consumer
    public final void accept(Object obj) throws IOException {
        int i2 = this.f525a;
        Object obj2 = this.f527c;
        Object obj3 = this.f526b;
        switch (i2) {
            case 0:
                ((Surface) obj3).release();
                ((SurfaceTexture) obj2).release();
                break;
            case 1:
                DefaultSurfaceProcessor defaultSurfaceProcessor = (DefaultSurfaceProcessor) obj3;
                SurfaceOutput surfaceOutput = (SurfaceOutput) obj2;
                surfaceOutput.close();
                Surface surface = (Surface) defaultSurfaceProcessor.f2536i.remove(surfaceOutput);
                if (surface != null) {
                    OpenGlRenderer openGlRenderer = defaultSurfaceProcessor.f2531b;
                    GLUtils.d(openGlRenderer.f2541a, true);
                    GLUtils.c(openGlRenderer.f2543c);
                    openGlRenderer.i(surface, true);
                }
                break;
            default:
                DualSurfaceProcessor dualSurfaceProcessor = (DualSurfaceProcessor) obj3;
                SurfaceOutput surfaceOutput2 = (SurfaceOutput) obj2;
                surfaceOutput2.close();
                Surface surface2 = (Surface) dualSurfaceProcessor.f2588i.remove(surfaceOutput2);
                if (surface2 != null) {
                    DualOpenGlRenderer dualOpenGlRenderer = dualSurfaceProcessor.f2583b;
                    GLUtils.d(dualOpenGlRenderer.f2541a, true);
                    GLUtils.c(dualOpenGlRenderer.f2543c);
                    dualOpenGlRenderer.i(surface2, true);
                }
                break;
        }
    }
}
