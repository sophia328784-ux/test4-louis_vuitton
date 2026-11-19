package com.google.android.exoplayer2.video.spherical;

import com.google.android.exoplayer2.util.Assertions;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
final class Projection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Mesh f28476a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Mesh f28477b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28478c;
    public final boolean d;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface DrawMode {
    }

    public static final class Mesh {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SubMesh[] f28479a;

        public Mesh(SubMesh... subMeshArr) {
            this.f28479a = subMeshArr;
        }
    }

    public static final class SubMesh {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f28480a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f28481b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final float[] f28482c;
        public final float[] d;

        public SubMesh(int i2, float[] fArr, float[] fArr2, int i3) {
            this.f28480a = i2;
            Assertions.a(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.f28482c = fArr;
            this.d = fArr2;
            this.f28481b = i3;
        }
    }

    public Projection(Mesh mesh, Mesh mesh2, int i2) {
        this.f28476a = mesh;
        this.f28477b = mesh2;
        this.f28478c = i2;
        this.d = mesh == mesh2;
    }

    public Projection(Mesh mesh, int i2) {
        this(mesh, mesh, i2);
    }
}
