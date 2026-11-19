package androidx.media3.common.util;

import android.opengl.EGL14;
import android.opengl.EGLDisplay;
import android.opengl.GLES20;
import android.opengl.GLU;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class GlUtil {
    public static void a(int i2, int i3) throws GlException {
        GLES20.glBindTexture(i2, i3);
        b();
        GLES20.glTexParameteri(i2, 10240, 9729);
        b();
        GLES20.glTexParameteri(i2, 10241, 9729);
        b();
        GLES20.glTexParameteri(i2, 10242, 33071);
        b();
        GLES20.glTexParameteri(i2, 10243, 33071);
        b();
    }

    public static void b() throws GlException {
        StringBuilder sb = new StringBuilder();
        ImmutableList.Builder builder = new ImmutableList.Builder();
        boolean z = false;
        while (true) {
            int iGlGetError = GLES20.glGetError();
            if (iGlGetError == 0) {
                break;
            }
            if (z) {
                sb.append('\n');
            }
            String strGluErrorString = GLU.gluErrorString(iGlGetError);
            if (strGluErrorString == null) {
                strGluErrorString = "error code: 0x" + Integer.toHexString(iGlGetError);
            }
            sb.append("glError: ");
            sb.append(strGluErrorString);
            builder.e(Integer.valueOf(iGlGetError));
            z = true;
        }
        if (z) {
            throw new GlException(sb.toString(), builder.j());
        }
    }

    public static void c(String str, boolean z) throws GlException {
        if (!z) {
            throw new GlException(str);
        }
    }

    public static FloatBuffer d(float[] fArr) {
        return (FloatBuffer) ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().put(fArr).flip();
    }

    public static boolean e(String str) throws GlException {
        EGLDisplay eGLDisplayEglGetDisplay = EGL14.eglGetDisplay(0);
        c("No EGL display.", !eGLDisplayEglGetDisplay.equals(EGL14.EGL_NO_DISPLAY));
        c("Error in eglInitialize.", EGL14.eglInitialize(eGLDisplayEglGetDisplay, new int[1], 0, new int[1], 0));
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError == 12288) {
            String strEglQueryString = EGL14.eglQueryString(eGLDisplayEglGetDisplay, 12373);
            return strEglQueryString != null && strEglQueryString.contains(str);
        }
        throw new GlException("Error in getDefaultEglDisplay, error code: 0x" + Integer.toHexString(iEglGetError), ImmutableList.A(Integer.valueOf(iEglGetError)));
    }

    public static final class GlException extends Exception {
        public GlException(String str) {
            this(str, ImmutableList.x());
        }

        public GlException(String str, List<Integer> list) {
            super(str);
            ImmutableList.t(list);
        }
    }
}
