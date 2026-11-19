package androidx.camera.core.processing.concurrent;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLExt;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.CompositionSettings;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.processing.OpenGlRenderer;
import androidx.camera.core.processing.util.GLUtils;
import androidx.camera.core.processing.util.GraphicDeviceInfo;
import androidx.camera.core.processing.util.OutputSurface;
import androidx.core.util.Pair;
import androidx.core.util.Preconditions;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class DualOpenGlRenderer extends OpenGlRenderer {
    public int n = -1;
    public int o = -1;
    public final CompositionSettings p;
    public final CompositionSettings q;

    public DualOpenGlRenderer(CompositionSettings compositionSettings, CompositionSettings compositionSettings2) {
        this.p = compositionSettings;
        this.q = compositionSettings2;
    }

    @Override // androidx.camera.core.processing.OpenGlRenderer
    public final GraphicDeviceInfo e(DynamicRange dynamicRange) {
        Map map = Collections.EMPTY_MAP;
        GraphicDeviceInfo graphicDeviceInfoE = super.e(dynamicRange);
        this.n = GLUtils.g();
        this.o = GLUtils.g();
        return graphicDeviceInfoE;
    }

    public final void l(long j2, Surface surface, SurfaceOutput surfaceOutput, SurfaceTexture surfaceTexture, SurfaceTexture surfaceTexture2) {
        GLUtils.d(this.f2541a, true);
        GLUtils.c(this.f2543c);
        HashMap map = this.f2542b;
        Preconditions.f("The surface is not registered.", map.containsKey(surface));
        OutputSurface outputSurfaceB = (OutputSurface) map.get(surface);
        Objects.requireNonNull(outputSurfaceB);
        if (outputSurfaceB == GLUtils.f2624j) {
            outputSurfaceB = b(surface);
            if (outputSurfaceB == null) {
                return;
            } else {
                map.put(surface, outputSurfaceB);
            }
        }
        OutputSurface outputSurface = outputSurfaceB;
        if (surface != this.f2547i) {
            f(outputSurface.a());
            this.f2547i = surface;
        }
        GLES20.glClearColor(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f);
        GLES20.glClear(16384);
        m(outputSurface, surfaceOutput, surfaceTexture, this.p, this.n, true);
        m(outputSurface, surfaceOutput, surfaceTexture2, this.q, this.o, false);
        EGLExt.eglPresentationTimeANDROID(this.d, outputSurface.a(), j2);
        if (EGL14.eglSwapBuffers(this.d, outputSurface.a())) {
            return;
        }
        Integer.toHexString(EGL14.eglGetError());
        Logger.c(5, "DualOpenGlRenderer");
        i(surface, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void m(OutputSurface outputSurface, SurfaceOutput surfaceOutput, SurfaceTexture surfaceTexture, CompositionSettings compositionSettings, int i2, boolean z) {
        k(i2);
        GLES20.glViewport(0, 0, outputSurface.c(), outputSurface.b());
        GLES20.glScissor(0, 0, outputSurface.c(), outputSurface.b());
        float[] fArr = new float[16];
        surfaceTexture.getTransformMatrix(fArr);
        float[] fArr2 = new float[16];
        surfaceOutput.v(fArr2, fArr, z);
        GLUtils.Program2D program2D = this.f2549k;
        program2D.getClass();
        if (program2D instanceof GLUtils.SamplerShaderProgram) {
            GLES20.glUniformMatrix4fv(((GLUtils.SamplerShaderProgram) program2D).f2629f, 1, false, fArr2, 0);
            GLUtils.b("glUniformMatrix4fv");
        }
        float fC = outputSurface.c();
        Pair pair = compositionSettings.f1911b;
        Size size = new Size((int) (((Float) pair.f12138a).floatValue() * fC), (int) (((Float) pair.f12139b).floatValue() * outputSurface.b()));
        Size size2 = new Size(outputSurface.c(), outputSurface.b());
        float[] fArr3 = new float[16];
        Matrix.setIdentityM(fArr3, 0);
        float[] fArr4 = new float[16];
        Matrix.setIdentityM(fArr4, 0);
        float[] fArr5 = new float[16];
        Matrix.setIdentityM(fArr5, 0);
        Matrix.scaleM(fArr3, 0, size.getWidth() / size2.getWidth(), size.getHeight() / size2.getHeight(), 1.0f);
        Pair pair2 = compositionSettings.f1910a;
        if (((Float) pair.f12138a).floatValue() != Call.Parameters.DEFAULT_CAMERA_ZOOM || ((Float) pair.f12139b).floatValue() != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            Matrix.translateM(fArr4, 0, ((Float) pair2.f12138a).floatValue() / ((Float) pair.f12138a).floatValue(), ((Float) pair2.f12139b).floatValue() / ((Float) pair.f12139b).floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM);
        }
        Matrix.multiplyMM(fArr5, 0, fArr3, 0, fArr4, 0);
        GLES20.glUniformMatrix4fv(program2D.f2626b, 1, false, fArr5, 0);
        GLUtils.b("glUniformMatrix4fv");
        GLES20.glUniform1f(program2D.f2627c, 1.0f);
        GLUtils.b("glUniform1f");
        GLES20.glEnable(3042);
        GLES20.glBlendFuncSeparate(770, 771, 1, 771);
        GLES20.glDrawArrays(5, 0, 4);
        GLUtils.b("glDrawArrays");
        GLES20.glDisable(3042);
    }
}
