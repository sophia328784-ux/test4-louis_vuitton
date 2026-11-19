package androidx.media3.exoplayer.video.spherical;

import android.opengl.GLES20;
import androidx.media3.common.util.GlProgram;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import java.nio.FloatBuffer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes.dex */
final class ProjectionRenderer {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final float[] f16013i = {1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final float[] f16014j = {1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final float[] f16015k = {0.5f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, -1.0f, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f, 1.0f};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16016a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MeshData f16017b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public GlProgram f16018c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16019e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16020f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f16021h;

    public static class MeshData {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16022a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final FloatBuffer f16023b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final FloatBuffer f16024c;
        public final int d;

        public MeshData(Projection.SubMesh subMesh) {
            float[] fArr = subMesh.f16012c;
            this.f16022a = fArr.length / 3;
            this.f16023b = GlUtil.d(fArr);
            this.f16024c = GlUtil.d(subMesh.d);
            int i2 = subMesh.f16011b;
            if (i2 == 1) {
                this.d = 5;
            } else if (i2 != 2) {
                this.d = 4;
            } else {
                this.d = 6;
            }
        }
    }

    public static boolean b(Projection projection) {
        Projection.Mesh mesh = projection.f16006a;
        Projection.Mesh mesh2 = projection.f16007b;
        Projection.SubMesh[] subMeshArr = mesh.f16009a;
        if (subMeshArr.length == 1 && subMeshArr[0].f16010a == 0) {
            Projection.SubMesh[] subMeshArr2 = mesh2.f16009a;
            if (subMeshArr2.length == 1 && subMeshArr2[0].f16010a == 0) {
                return true;
            }
        }
        return false;
    }

    public final void a() {
        try {
            GlProgram glProgram = new GlProgram("uniform mat4 uMvpMatrix;\nuniform mat3 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTexCoords;\nvarying vec2 vTexCoords;\n// Standard transformation.\nvoid main() {\n  gl_Position = uMvpMatrix * aPosition;\n  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;\n}\n", "// This is required since the texture data is GL_TEXTURE_EXTERNAL_OES.\n#extension GL_OES_EGL_image_external : require\nprecision mediump float;\n// Standard texture rendering shader.\nuniform samplerExternalOES uTexture;\nvarying vec2 vTexCoords;\nvoid main() {\n  gl_FragColor = texture2D(uTexture, vTexCoords);\n}\n");
            this.f16018c = glProgram;
            this.d = GLES20.glGetUniformLocation(glProgram.f14155a, "uMvpMatrix");
            this.f16019e = GLES20.glGetUniformLocation(this.f16018c.f14155a, "uTexMatrix");
            this.f16020f = this.f16018c.b("aPosition");
            this.g = this.f16018c.b("aTexCoords");
            this.f16021h = GLES20.glGetUniformLocation(this.f16018c.f14155a, "uTexture");
        } catch (GlUtil.GlException e2) {
            Log.e("Failed to initialize the program", e2);
        }
    }
}
