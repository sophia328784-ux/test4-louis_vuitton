package com.perfectcorp.common.opengl;

import android.opengl.GLES20;
import com.perfectcorp.common.debug.opengl.a;
import com.perfectcorp.common.utility.Log;
import defpackage.md;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes3.dex */
public abstract class GLMoreUtils {
    public static void a(String str) {
        if (c(str)) {
            return;
        }
        md.k("There were unchecked GL errors.");
    }

    public static int b(int i2) {
        int[] iArr = new int[1];
        int i3 = a.f39183a;
        GLES20.glGetIntegerv(i2, iArr, 0);
        a.a("glGetIntegerv");
        return iArr[0];
    }

    public static boolean c(String str) {
        String str2;
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return true;
        }
        do {
            StringBuilder sb = new StringBuilder("Unchecked OpenGL error: 0x");
            sb.append(Integer.toHexString(iGlGetError));
            sb.append(": ");
            String str3 = null;
            if (iGlGetError != 0) {
                switch (iGlGetError) {
                    case Sink.Video.MAX_DIMENSION_HIGH /* 1280 */:
                        str2 = "GL_INVALID_ENUM";
                        break;
                    case 1281:
                        str2 = "GL_INVALID_VALUE";
                        break;
                    case 1282:
                        str2 = "GL_INVALID_OPERATION";
                        break;
                    case 1283:
                        str2 = "GL_STACK_OVERFLOW";
                        break;
                    case 1284:
                        str2 = "GL_STACK_UNDERFLOW";
                        break;
                    case 1285:
                        str2 = "GL_OUT_OF_MEMORY";
                        break;
                    case 1286:
                        str2 = "GL_INVALID_FRAMEBUFFER_OPERATION";
                        break;
                    default:
                        str2 = null;
                        break;
                }
            } else {
                str2 = "GL_NO_ERROR";
            }
            sb.append(str2);
            Log.d(str, sb.toString());
            if (iGlGetError == 1286) {
                int i2 = a.f39183a;
                int iGlCheckFramebufferStatus = GLES20.glCheckFramebufferStatus(36160);
                a.a("glCheckFramebufferStatus");
                if (iGlCheckFramebufferStatus != 36053) {
                    if (iGlCheckFramebufferStatus == 36057) {
                        str3 = "GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS";
                    } else if (iGlCheckFramebufferStatus != 36061) {
                        switch (iGlCheckFramebufferStatus) {
                            case 36053:
                                str3 = "GL_FRAMEBUFFER_COMPLETE";
                                break;
                            case 36054:
                                str3 = "GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT";
                                break;
                            case 36055:
                                str3 = "GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT";
                                break;
                        }
                    } else {
                        str3 = "GL_FRAMEBUFFER_UNSUPPORTED";
                    }
                    Log.d(str, "Invalid framebuffer status: 0x" + Integer.toHexString(iGlCheckFramebufferStatus) + ": " + str3);
                }
            }
            iGlGetError = GLES20.glGetError();
        } while (iGlGetError != 0);
        return false;
    }
}
