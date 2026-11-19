package com.google.android.exoplayer2.video.spherical;

import android.opengl.GLES20;
import com.google.android.exoplayer2.util.GlProgram;
import com.google.android.exoplayer2.util.GlUtil;
import java.nio.FloatBuffer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
final class ProjectionRenderer {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final float[] f28483i = {1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final float[] f28484j = {1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final float[] f28485k = {0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f28486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MeshData f28487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public GlProgram f28488c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f28489e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f28490f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f28491h;

    public static class MeshData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f28492a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FloatBuffer f28493b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final FloatBuffer f28494c;
        public final int d;

        public MeshData(Projection.SubMesh subMesh) {
            float[] fArr = subMesh.f28482c;
            this.f28492a = fArr.length / 3;
            this.f28493b = GlUtil.d(fArr);
            this.f28494c = GlUtil.d(subMesh.d);
            int i2 = subMesh.f28481b;
            if (i2 == 1) {
                this.d = 5;
            } else if (i2 != 2) {
                this.d = 4;
            } else {
                this.d = 6;
            }
        }
    }

    public final void a() {
        try {
            GlProgram glProgram = new GlProgram("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
            this.f28488c = glProgram;
            this.d = GLES20.glGetUniformLocation(glProgram.f28438a, "uMvpMatrix");
            this.f28489e = GLES20.glGetUniformLocation(this.f28488c.f28438a, "uTexMatrix");
            this.f28490f = this.f28488c.b("aPosition");
            this.g = this.f28488c.b("aTexCoords");
            this.f28491h = GLES20.glGetUniformLocation(this.f28488c.f28438a, "uTexture");
        } catch (GlUtil.GlException unused) {
        }
    }
}
