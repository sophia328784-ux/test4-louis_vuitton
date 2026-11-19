package androidx.media3.exoplayer.video.spherical;

import com.google.common.base.Preconditions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes.dex */
final class Projection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Mesh f16006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Mesh f16007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16008c;
    public final boolean d;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface DrawMode {
    }

    public static final class Mesh {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SubMesh[] f16009a;

        public Mesh(SubMesh... subMeshArr) {
            this.f16009a = subMeshArr;
        }
    }

    public static final class SubMesh {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f16010a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f16011b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float[] f16012c;
        public final float[] d;

        public SubMesh(int i2, float[] fArr, float[] fArr2, int i3) {
            this.f16010a = i2;
            Preconditions.g(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f16012c = fArr;
            this.d = fArr2;
            this.f16011b = i3;
        }
    }

    public Projection(Mesh mesh, Mesh mesh2, int i2) {
        this.f16006a = mesh;
        this.f16007b = mesh2;
        this.f16008c = i2;
        this.d = mesh == mesh2;
    }

    public Projection(Mesh mesh, int i2) {
        this(mesh, mesh, i2);
    }
}
