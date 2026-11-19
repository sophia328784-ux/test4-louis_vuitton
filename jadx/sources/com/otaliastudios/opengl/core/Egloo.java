package com.otaliastudios.opengl.core;

import android.opengl.EGL14;
import android.opengl.GLES20;
import android.opengl.GLU;
import android.opengl.Matrix;
import com.otaliastudios.opengl.internal.EglKt;
import com.otaliastudios.opengl.internal.GlKt;
import defpackage.pq0;
import kotlin.Metadata;
import kotlin.UInt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/otaliastudios/opengl/core/Egloo;", "", "library_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class Egloo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final float[] f39103a;

    static {
        float[] fArr = new float[16];
        Matrix.setIdentityM(fArr, 0);
        f39103a = fArr;
    }

    public static final void a(String str) {
        int iEglGetError = EGL14.eglGetError();
        if (iEglGetError == EglKt.d) {
            return;
        }
        StringBuilder sbR = pq0.r("Error during ", str, ": EGL error 0x");
        String hexString = Integer.toHexString(iEglGetError);
        hexString.getClass();
        sbR.append(hexString);
        throw new RuntimeException(sbR.toString());
    }

    public static final void b(String str) {
        int iGlGetError = GLES20.glGetError();
        UInt.Companion companion = UInt.INSTANCE;
        int i2 = GlKt.f39120a;
        if (iGlGetError == 0) {
            return;
        }
        StringBuilder sbR = pq0.r("Error during ", str, ": glError 0x");
        String hexString = Integer.toHexString(iGlGetError);
        hexString.getClass();
        sbR.append(hexString);
        sbR.append(": ");
        String strGluErrorString = GLU.gluErrorString(iGlGetError);
        strGluErrorString.getClass();
        sbR.append(strGluErrorString);
        throw new RuntimeException(sbR.toString());
    }
}
