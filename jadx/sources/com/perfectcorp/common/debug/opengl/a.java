package com.perfectcorp.common.debug.opengl;

import android.opengl.GLES20;
import android.opengl.GLException;
import com.perfectcorp.common.utility.Log;

/* JADX INFO: loaded from: classes2.dex */
public abstract class a extends GLES20 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f39183a = 0;

    public static void a(String str) {
        int iGlGetError = GLES20.glGetError();
        if (iGlGetError == 0) {
            return;
        }
        Log.d("GLES20DebugWrapper", str + ": glError " + iGlGetError);
        throw new GLException(iGlGetError);
    }
}
