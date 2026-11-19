package com.otaliastudios.cameraview.internal;

import android.opengl.GLES20;
import com.otaliastudios.cameraview.CameraLogger;
import com.otaliastudios.cameraview.filter.Filter;
import com.otaliastudios.cameraview.filter.NoFilter;
import com.otaliastudios.opengl.core.Egloo;
import com.otaliastudios.opengl.internal.GlKt;
import com.otaliastudios.opengl.program.GlProgram;
import com.otaliastudios.opengl.program.GlShader;
import com.otaliastudios.opengl.texture.GlTexture;
import kotlin.UInt;

/* JADX INFO: loaded from: classes3.dex */
public class GlTextureDrawer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GlTexture f39001a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final float[] f39002b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Filter f39003c;
    public Filter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f39004e;

    static {
        CameraLogger.a("GlTextureDrawer");
    }

    public GlTextureDrawer(GlTexture glTexture) {
        this.f39002b = (float[]) Egloo.f39103a.clone();
        this.f39003c = new NoFilter();
        this.d = null;
        this.f39004e = -1;
        this.f39001a = glTexture;
    }

    public final void a(long j2) {
        if (this.d != null) {
            b();
            this.f39003c = this.d;
            this.d = null;
        }
        if (this.f39004e == -1) {
            String strB = this.f39003c.b();
            String strD = this.f39003c.d();
            GlProgram.f39129e.getClass();
            int iA = GlProgram.Companion.a(new GlShader(GlKt.p, strB), new GlShader(GlKt.q, strD));
            this.f39004e = iA;
            this.f39003c.g(iA);
            Egloo.b("program creation");
        }
        GLES20.glUseProgram(this.f39004e);
        Egloo.b("glUseProgram(handle)");
        GlTexture glTexture = this.f39001a;
        int i2 = glTexture.f39147a;
        int i3 = glTexture.f39148b;
        UInt.Companion companion = UInt.INSTANCE;
        GLES20.glActiveTexture(i2);
        GLES20.glBindTexture(i3, glTexture.g);
        Egloo.b("bind");
        this.f39003c.f(this.f39002b);
        GLES20.glBindTexture(i3, 0);
        GLES20.glActiveTexture(GlKt.f39123e);
        Egloo.b("unbind");
        GLES20.glUseProgram(0);
        Egloo.b("glUseProgram(0)");
    }

    public final void b() {
        if (this.f39004e == -1) {
            return;
        }
        this.f39003c.onDestroy();
        GLES20.glDeleteProgram(this.f39004e);
        this.f39004e = -1;
    }

    public GlTextureDrawer(int i2) {
        this(new GlTexture(33984, 36197, Integer.valueOf(i2)));
    }

    public GlTextureDrawer() {
        this(new GlTexture(33984, 36197));
    }
}
