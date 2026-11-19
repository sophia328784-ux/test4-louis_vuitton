package com.iceteck.silicompressorr.videocompression;

import android.opengl.GLES20;
import android.opengl.Matrix;
import defpackage.cj;
import defpackage.fc;
import defpackage.v7;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
public class TextureRenderer {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final float[] f35777k = {-1.0f, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FloatBuffer f35778a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float[] f35780c;
    public int d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f35782f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f35783h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f35784i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f35785j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f35779b = new float[16];

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f35781e = -12345;

    public TextureRenderer(int i2) {
        float[] fArr = new float[16];
        this.f35780c = fArr;
        this.f35785j = i2;
        FloatBuffer floatBufferV = fc.v(ByteBuffer.allocateDirect(80));
        this.f35778a = floatBufferV;
        floatBufferV.put(f35777k).position(0);
        Matrix.setIdentityM(fArr, 0);
    }

    public static void a(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return;
        }
        v7.h(cj.e(iGlGetError, str, ": glError "));
    }

    public static int b(int i2, String str) {
        int iGlCreateShader = GLES20.glCreateShader(i2);
        a("glCreateShader type=" + i2);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        GLES20.glDeleteShader(iGlCreateShader);
        return 0;
    }
}
