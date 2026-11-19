package com.google.android.exoplayer2.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer;
import com.google.android.exoplayer2.util.GlProgram;
import com.google.android.exoplayer2.util.GlUtil;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements VideoDecoderOutputBufferRenderer {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f28454c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Renderer f28455b;

    public static final class Renderer implements GLSurfaceView.Renderer {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final float[] f28456k = {1.164f, 1.164f, 1.164f, Call.Parameters.DEFAULT_CAMERA_ZOOM, -0.213f, 2.112f, 1.793f, -0.533f, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        public static final String[] l = {"y_tex", "u_tex", "v_tex"};
        public static final FloatBuffer m = GlUtil.d(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final GLSurfaceView f28457b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f28458c = new int[3];
        public final int[] d = new int[3];

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int[] f28459e = new int[3];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int[] f28460f = new int[3];
        public final AtomicReference g = new AtomicReference();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public GlProgram f28461h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f28462i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public VideoDecoderOutputBuffer f28463j;

        public Renderer(GLSurfaceView gLSurfaceView) {
            this.f28457b = gLSurfaceView;
            for (int i2 = 0; i2 < 3; i2++) {
                int[] iArr = this.f28459e;
                this.f28460f[i2] = -1;
                iArr[i2] = -1;
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onDrawFrame(GL10 gl10) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) this.g.getAndSet(null);
            if (videoDecoderOutputBuffer == null && this.f28463j == null) {
                return;
            }
            if (videoDecoderOutputBuffer != null) {
                VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = this.f28463j;
                if (videoDecoderOutputBuffer2 != null) {
                    videoDecoderOutputBuffer2.f28204a.a();
                }
                this.f28463j = videoDecoderOutputBuffer;
            }
            this.f28463j.getClass();
            GLES20.glUniformMatrix3fv(this.f28462i, 1, false, f28456k, 0);
            throw null;
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceChanged(GL10 gl10, int i2, int i3) {
            GLES20.glViewport(0, 0, i2, i3);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            int[] iArr = this.d;
            try {
                GlProgram glProgram = new GlProgram("varying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nattribute vec4 in_pos;\nattribute vec2 in_tc_y;\nattribute vec2 in_tc_u;\nattribute vec2 in_tc_v;\nvoid main() {\n  gl_Position = in_pos;\n  interp_tc_y = in_tc_y;\n  interp_tc_u = in_tc_u;\n  interp_tc_v = in_tc_v;\n}\n", "precision mediump float;\nvarying vec2 interp_tc_y;\nvarying vec2 interp_tc_u;\nvarying vec2 interp_tc_v;\nuniform sampler2D y_tex;\nuniform sampler2D u_tex;\nuniform sampler2D v_tex;\nuniform mat3 mColorConversion;\nvoid main() {\n  vec3 yuv;\n  yuv.x = texture2D(y_tex, interp_tc_y).r - 0.0625;\n  yuv.y = texture2D(u_tex, interp_tc_u).r - 0.5;\n  yuv.z = texture2D(v_tex, interp_tc_v).r - 0.5;\n  gl_FragColor = vec4(mColorConversion * yuv, 1.0);\n}\n");
                this.f28461h = glProgram;
                GLES20.glVertexAttribPointer(glProgram.b("in_pos"), 2, 5126, false, 0, (Buffer) m);
                iArr[0] = this.f28461h.b("in_tc_y");
                iArr[1] = this.f28461h.b("in_tc_u");
                iArr[2] = this.f28461h.b("in_tc_v");
                this.f28462i = GLES20.glGetUniformLocation(this.f28461h.f28438a, "mColorConversion");
                GlUtil.b();
                int[] iArr2 = this.f28458c;
                try {
                    GLES20.glGenTextures(3, iArr2, 0);
                    for (int i2 = 0; i2 < 3; i2++) {
                        GlProgram glProgram2 = this.f28461h;
                        GLES20.glUniform1i(GLES20.glGetUniformLocation(glProgram2.f28438a, l[i2]), i2);
                        GLES20.glActiveTexture(33984 + i2);
                        GlUtil.a(3553, iArr2[i2]);
                    }
                    GlUtil.b();
                } catch (GlUtil.GlException unused) {
                }
                GlUtil.b();
            } catch (GlUtil.GlException unused2) {
            }
        }
    }

    public VideoDecoderGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Renderer renderer = new Renderer(this);
        this.f28455b = renderer;
        setPreserveEGLContextOnPause(true);
        setEGLContextClientVersion(2);
        setRenderer(renderer);
        setRenderMode(0);
    }

    @Deprecated
    public VideoDecoderOutputBufferRenderer getVideoDecoderOutputBufferRenderer() {
        return this;
    }

    public void setOutputBuffer(VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        Renderer renderer = this.f28455b;
        VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = (VideoDecoderOutputBuffer) renderer.g.getAndSet(videoDecoderOutputBuffer);
        if (videoDecoderOutputBuffer2 != null) {
            videoDecoderOutputBuffer2.f28204a.a();
        }
        renderer.f28457b.requestRender();
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }
}
