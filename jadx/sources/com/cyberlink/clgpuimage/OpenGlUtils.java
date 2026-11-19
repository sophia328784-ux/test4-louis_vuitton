package com.cyberlink.clgpuimage;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import android.opengl.GLUtils;
import defpackage.md;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public abstract class OpenGlUtils {
    public static void a() {
        if (g()) {
            return;
        }
        md.k("There were unchecked GL errors.");
    }

    public static int b(ByteBuffer byteBuffer, int i2, int i3, int i4) {
        int[] iArr = new int[1];
        if (i4 == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glTexImage2D(3553, 0, 6410, i2 / 2, i3 / 2, 0, 6410, 5121, byteBuffer);
        } else {
            GLES20.glBindTexture(3553, i4);
            GLES20.glTexSubImage2D(3553, 0, 0, 0, i2 / 2, i3 / 2, 6410, 5121, byteBuffer);
            iArr[0] = i4;
        }
        return iArr[0];
    }

    public static int c(ByteBuffer byteBuffer, int i2, int i3, int i4) {
        int[] iArr = new int[1];
        if (i4 == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLES20.glTexImage2D(3553, 0, 6409, i2, i3, 0, 6409, 5121, byteBuffer);
        } else {
            GLES20.glBindTexture(3553, i4);
            GLES20.glTexSubImage2D(3553, 0, 0, 0, i2, i3, 6409, 5121, byteBuffer);
            iArr[0] = i4;
        }
        return iArr[0];
    }

    public static int d(String str, String str2) {
        int iE;
        int[] iArr = new int[1];
        int iE2 = e(35633, str);
        if (iE2 == 0 || (iE = e(35632, str2)) == 0) {
            return 0;
        }
        int iGlCreateProgram = GLES20.glCreateProgram();
        GLES20.glAttachShader(iGlCreateProgram, iE2);
        GLES20.glAttachShader(iGlCreateProgram, iE);
        GLES20.glLinkProgram(iGlCreateProgram);
        GLES20.glGetProgramiv(iGlCreateProgram, 35714, iArr, 0);
        if (iArr[0] <= 0) {
            return 0;
        }
        GLES20.glDeleteShader(iE2);
        GLES20.glDeleteShader(iE);
        return iGlCreateProgram;
    }

    public static int e(int i2, String str) {
        int[] iArr = new int[1];
        int iGlCreateShader = GLES20.glCreateShader(i2);
        GLES20.glShaderSource(iGlCreateShader, str);
        GLES20.glCompileShader(iGlCreateShader);
        GLES20.glGetShaderiv(iGlCreateShader, 35713, iArr, 0);
        if (iArr[0] != 0) {
            return iGlCreateShader;
        }
        GLES20.glGetShaderInfoLog(iGlCreateShader);
        return 0;
    }

    public static int f(Bitmap bitmap, int i2) {
        int[] iArr = new int[1];
        if (i2 == -1) {
            GLES20.glGenTextures(1, iArr, 0);
            GLES20.glBindTexture(3553, iArr[0]);
            GLES20.glTexParameterf(3553, 10240, 9729.0f);
            GLES20.glTexParameterf(3553, 10241, 9729.0f);
            GLES20.glTexParameterf(3553, 10242, 33071.0f);
            GLES20.glTexParameterf(3553, 10243, 33071.0f);
            GLUtils.texImage2D(3553, 0, bitmap, 0);
        } else {
            GLES20.glBindTexture(3553, i2);
            GLUtils.texSubImage2D(3553, 0, 0, 0, bitmap);
            iArr[0] = i2;
        }
        return iArr[0];
    }

    public static boolean g() {
        int iGlCheckFramebufferStatus;
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return true;
        }
        do {
            Integer.toHexString(iGlGetError);
            if (iGlGetError == 1286 && (iGlCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160)) != 36053) {
                Integer.toHexString(iGlCheckFramebufferStatus);
            }
            iGlGetError = GLES20.glGetError();
        } while (iGlGetError != 0);
        return false;
    }
}
