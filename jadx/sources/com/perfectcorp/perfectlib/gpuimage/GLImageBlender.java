package com.perfectcorp.perfectlib.gpuimage;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.opengl.GLES20;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import com.cyberlink.clgpuimage.CLShare3DRelatedClasses;
import com.cyberlink.clgpuimage.GPUImageRenderer;
import com.cyberlink.clgpuimage.Rotation;
import com.cyberlink.clgpuimage.util.TextureRotationUtil;
import com.perfectcorp.common.opengl.GLMoreUtils;
import com.perfectcorp.common.utility.Bitmaps;
import defpackage.fc;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes3.dex */
public class GLImageBlender {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final a f40170a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FloatBuffer f40171b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FloatBuffer f40172c;

    public static final class DeveloperModeLabel extends GLImageBlender {
        public Bitmap d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f40173e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f40174f;

        public DeveloperModeLabel() {
            super(new float[8], new float[]{Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f, 1.0f});
        }

        @Override // com.perfectcorp.perfectlib.gpuimage.GLImageBlender
        public final void a() {
            this.d = null;
            a aVar = this.f40170a;
            aVar.f40177c.set(new b(aVar, null));
            super.a();
        }

        @Override // com.perfectcorp.perfectlib.gpuimage.GLImageBlender
        public final void c() {
            super.c();
            if (this.d == null) {
                Bitmap.Config config = Bitmap.Config.ARGB_8888;
                this.d = Bitmaps.a(280, 40);
            }
            this.d.eraseColor(0);
            Canvas canvas = new Canvas(this.d);
            TextPaint textPaint = new TextPaint();
            textPaint.setAntiAlias(true);
            textPaint.setStrokeJoin(Paint.Join.BEVEL);
            textPaint.setTextSize(30.0f);
            textPaint.setColor(-40093);
            textPaint.setShadowLayer(4.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1);
            textPaint.setTypeface(Typeface.SANS_SERIF);
            new StaticLayout("DEVELOPER MODE", textPaint, 280, Layout.Alignment.ALIGN_CENTER, 1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, false).draw(canvas);
            Bitmap bitmap = this.d;
            a aVar = this.f40170a;
            aVar.f40177c.set(new b(aVar, bitmap));
        }
    }

    public interface Renderer {
        void c(int i2, FloatBuffer floatBuffer, FloatBuffer floatBuffer2);
    }

    public GLImageBlender(float[] fArr, float[] fArr2) {
        this.f40170a = new a();
        FloatBuffer floatBufferV = fc.v(ByteBuffer.allocateDirect((fArr.length << 5) / 8));
        this.f40171b = floatBufferV;
        floatBufferV.put(fArr).position(0);
        FloatBuffer floatBufferV2 = fc.v(ByteBuffer.allocateDirect((fArr2.length << 5) / 8));
        this.f40172c = floatBufferV2;
        floatBufferV2.put(fArr2).position(0);
    }

    public void a() {
        a aVar = this.f40170a;
        int i2 = aVar.f40176b;
        if (i2 != -1) {
            int i3 = com.perfectcorp.common.debug.opengl.a.f39183a;
            GLES20.glDeleteTextures(1, new int[]{i2}, 0);
            com.perfectcorp.common.debug.opengl.a.a("glDeleteTextures");
        }
        aVar.f40176b = -1;
    }

    public final void b(Renderer renderer) {
        GLMoreUtils.c("GLImageBlender");
        a aVar = this.f40170a;
        aVar.a();
        int i2 = aVar.f40176b;
        if (i2 != -1) {
            int i3 = com.perfectcorp.common.debug.opengl.a.f39183a;
            boolean zGlIsEnabled = GLES20.glIsEnabled(3042);
            com.perfectcorp.common.debug.opengl.a.a("glIsEnabled");
            int iB = GLMoreUtils.b(32969);
            int iB2 = GLMoreUtils.b(32968);
            int iB3 = GLMoreUtils.b(32971);
            int iB4 = GLMoreUtils.b(32970);
            CLShare3DRelatedClasses.d(true, 1, 771, 1, 771);
            renderer.c(i2, this.f40171b, this.f40172c);
            GLMoreUtils.c("GLImageBlender");
            CLShare3DRelatedClasses.d(zGlIsEnabled, iB, iB2, iB3, iB4);
        }
    }

    public void c() {
        GLMoreUtils.c("GLImageBlender");
        a aVar = this.f40170a;
        aVar.f40176b = -1;
        aVar.a();
    }

    public GLImageBlender(float[] fArr) {
        this(fArr, TextureRotationUtil.b(Rotation.NORMAL, false, true));
    }

    public GLImageBlender() {
        this(GPUImageRenderer.M);
    }
}
