package androidx.media3.exoplayer.video;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import androidx.media3.common.util.GlProgram;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.decoder.VideoDecoderOutputBuffer;
import java.nio.Buffer;
import java.nio.FloatBuffer;
import java.util.concurrent.atomic.AtomicReference;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
public final class VideoDecoderGLSurfaceView extends GLSurfaceView implements VideoDecoderOutputBufferRenderer {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f15942c = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Renderer f15943b;

    public static final class Renderer implements GLSurfaceView.Renderer {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final float[] f15944k = {1.164f, 1.164f, 1.164f, Call.Parameters.DEFAULT_CAMERA_ZOOM, -0.213f, 2.112f, 1.793f, -0.533f, Call.Parameters.DEFAULT_CAMERA_ZOOM};
        public static final String[] l = {"y_tex", "u_tex", "v_tex"};
        public static final FloatBuffer m = GlUtil.d(new float[]{-1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f, -1.0f});

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final GLSurfaceView f15945b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f15946c = new int[3];
        public final int[] d = new int[3];

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int[] f15947e = new int[3];

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int[] f15948f = new int[3];
        public final AtomicReference g = new AtomicReference();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public GlProgram f15949h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f15950i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public VideoDecoderOutputBuffer f15951j;

        public Renderer(GLSurfaceView gLSurfaceView) {
            this.f15945b = gLSurfaceView;
            for (int i2 = 0; i2 < 3; i2++) {
                int[] iArr = this.f15947e;
                this.f15948f[i2] = -1;
                iArr[i2] = -1;
            }
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public final void onDrawFrame(GL10 gl10) {
            VideoDecoderOutputBuffer videoDecoderOutputBuffer = (VideoDecoderOutputBuffer) this.g.getAndSet(null);
            if (videoDecoderOutputBuffer == null && this.f15951j == null) {
                return;
            }
            if (videoDecoderOutputBuffer != null) {
                VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = this.f15951j;
                if (videoDecoderOutputBuffer2 != null) {
                    videoDecoderOutputBuffer2.h();
                }
                this.f15951j = videoDecoderOutputBuffer;
            }
            this.f15951j.getClass();
            GLES20.glUniformMatrix3fv(this.f15950i, 1, false, f15944k, 0);
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
                this.f15949h = glProgram;
                GLES20.glVertexAttribPointer(glProgram.b("in_pos"), 2, 5126, false, 0, (Buffer) m);
                iArr[0] = this.f15949h.b("in_tc_y");
                iArr[1] = this.f15949h.b("in_tc_u");
                iArr[2] = this.f15949h.b("in_tc_v");
                this.f15950i = GLES20.glGetUniformLocation(this.f15949h.f14155a, "mColorConversion");
                GlUtil.b();
                int[] iArr2 = this.f15946c;
                try {
                    GLES20.glGenTextures(3, iArr2, 0);
                    for (int i2 = 0; i2 < 3; i2++) {
                        GlProgram glProgram2 = this.f15949h;
                        GLES20.glUniform1i(GLES20.glGetUniformLocation(glProgram2.f14155a, l[i2]), i2);
                        GLES20.glActiveTexture(33984 + i2);
                        GlUtil.a(3553, iArr2[i2]);
                    }
                    GlUtil.b();
                } catch (GlUtil.GlException e2) {
                    Log.e("Failed to set up the textures", e2);
                }
                GlUtil.b();
            } catch (GlUtil.GlException e3) {
                Log.e("Failed to set up the textures and program", e3);
            }
        }
    }

    public VideoDecoderGLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Renderer renderer = new Renderer(this);
        this.f15943b = renderer;
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
        Renderer renderer = this.f15943b;
        VideoDecoderOutputBuffer videoDecoderOutputBuffer2 = (VideoDecoderOutputBuffer) renderer.g.getAndSet(videoDecoderOutputBuffer);
        if (videoDecoderOutputBuffer2 != null) {
            videoDecoderOutputBuffer2.h();
        }
        renderer.f15945b.requestRender();
    }

    public VideoDecoderGLSurfaceView(Context context) {
        this(context, null);
    }
}
