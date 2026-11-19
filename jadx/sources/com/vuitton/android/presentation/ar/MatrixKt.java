package com.vuitton.android.presentation.ar;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.opengl.Matrix;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class MatrixKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final V3 f50552a = k(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final float[] f50553b = {0.282095f, -0.325735f, 0.325735f, -0.325735f, 0.273137f, -0.273137f, 0.078848f, -0.273137f, 0.136569f};

    public static final float a(V3 v3, V3 v4) {
        float[] fArr = v3.f50557a;
        float f2 = fArr[0];
        float[] fArr2 = v4.f50557a;
        return (fArr[2] * fArr2[2]) + (fArr[1] * fArr2[1]) + (f2 * fArr2[0]);
    }

    public static final boolean b(V3 v3, V3 v4) {
        v4.getClass();
        float[] fArr = v3.f50557a;
        float f2 = fArr[0];
        float[] fArr2 = v4.f50557a;
        return f2 == fArr2[0] && fArr[1] == fArr2[1] && fArr[2] == fArr2[2];
    }

    public static final M4 c() {
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        return new M4(fArr);
    }

    public static final V3 d(V3 v3) {
        float fSqrt = 1.0f / ((float) Math.sqrt(a(v3, v3)));
        float[] fArr = v3.f50557a;
        return k(fArr[0] * fSqrt, fArr[1] * fSqrt, fArr[2] * fSqrt);
    }

    public static final ByteBuffer e(Context context, String str) throws IOException {
        context.getClass();
        AssetFileDescriptor assetFileDescriptorOpenFd = context.getAssets().openFd(str);
        try {
            FileInputStream fileInputStreamCreateInputStream = assetFileDescriptorOpenFd.createInputStream();
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate((int) assetFileDescriptorOpenFd.getLength());
            ReadableByteChannel readableByteChannelNewChannel = Channels.newChannel(fileInputStreamCreateInputStream);
            readableByteChannelNewChannel.read(byteBufferAllocate);
            readableByteChannelNewChannel.close();
            byteBufferAllocate.rewind();
            assetFileDescriptorOpenFd.close();
            return byteBufferAllocate;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.a(assetFileDescriptorOpenFd, th);
                throw th2;
            }
        }
    }

    public static final M4 f(M4 m4, float f2, float f3, float f4) {
        float[] fArr = new float[16];
        Matrix.rotateM(fArr, 0, m4.f50551a, 0, f2, Call.Parameters.DEFAULT_CAMERA_ZOOM, f3, f4);
        return new M4(fArr);
    }

    public static final void g(V2A v2a, int i2, float f2, float f3) {
        float[] fArr = v2a.f50556a;
        int i3 = i2 * 2;
        fArr[i3] = f2;
        fArr[i3 + 1] = f3;
    }

    public static final V3 h(V3 v3, V3 v4) {
        v3.getClass();
        v4.getClass();
        float[] fArr = v3.f50557a;
        float f2 = fArr[0];
        float[] fArr2 = v4.f50557a;
        return k(f2 - fArr2[0], fArr[1] - fArr2[1], fArr[2] - fArr2[2]);
    }

    public static final FloatBuffer i(float[] fArr) {
        fArr.getClass();
        FloatBuffer floatBufferAsFloatBuffer = ByteBuffer.allocateDirect(fArr.length * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        floatBufferAsFloatBuffer.put(fArr);
        floatBufferAsFloatBuffer.rewind();
        return floatBufferAsFloatBuffer;
    }

    public static final M4 j(M4 m4, float f2, float f3, float f4) {
        float[] fArr = new float[16];
        Matrix.translateM(fArr, 0, m4.f50551a, 0, f2, f3, f4);
        return new M4(fArr);
    }

    public static final V3 k(float f2, float f3, float f4) {
        V3 v3 = new V3(new float[3]);
        float[] fArr = v3.f50557a;
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[2] = f4;
        return v3;
    }
}
