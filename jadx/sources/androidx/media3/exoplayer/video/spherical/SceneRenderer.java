package androidx.media3.exoplayer.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import androidx.media3.common.Format;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
final class SceneRenderer implements VideoFrameMetadataListener, CameraMotionListener {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f16031j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public SurfaceTexture f16032k;
    public byte[] n;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f16025b = new AtomicBoolean();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AtomicBoolean f16026c = new AtomicBoolean(true);
    public final ProjectionRenderer d = new ProjectionRenderer();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final FrameRotationQueue f16027e = new FrameRotationQueue();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TimedValueQueue f16028f = new TimedValueQueue();
    public final TimedValueQueue g = new TimedValueQueue();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f16029h = new float[16];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float[] f16030i = new float[16];
    public volatile int l = 0;
    public int m = -1;

    @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
    public final void a(long j2, float[] fArr) {
        this.f16027e.f16000c.a(j2, fArr);
    }

    @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
    public final void b() {
        this.f16028f.b();
        FrameRotationQueue frameRotationQueue = this.f16027e;
        frameRotationQueue.f16000c.b();
        frameRotationQueue.d = false;
        this.f16026c.set(true);
    }

    public final SurfaceTexture c() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            GlUtil.b();
            this.d.a();
            GlUtil.b();
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            GlUtil.b();
            int i2 = iArr[0];
            GlUtil.a(36197, i2);
            this.f16031j = i2;
        } catch (GlUtil.GlException e2) {
            Log.e("Failed to initialize the renderer", e2);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f16031j);
        this.f16032k = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: androidx.media3.exoplayer.video.spherical.a
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f16053b.f16025b.set(true);
            }
        });
        return this.f16032k;
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
    public final void d(long j2, long j3, Format format, MediaFormat mediaFormat) {
        int i2;
        ArrayList arrayListA;
        this.f16028f.a(j3, Long.valueOf(j2));
        byte[] bArr = format.C;
        int i3 = format.D;
        byte[] bArr2 = this.n;
        int i4 = this.m;
        this.n = bArr;
        if (i3 == -1) {
            i3 = this.l;
        }
        this.m = i3;
        if (i4 == i3 && Arrays.equals(bArr2, this.n)) {
            return;
        }
        byte[] bArr3 = this.n;
        Projection projection = null;
        if (bArr3 != null) {
            int i5 = this.m;
            ParsableByteArray parsableByteArray = new ParsableByteArray(bArr3);
            try {
                parsableByteArray.O(4);
                int iM = parsableByteArray.m();
                parsableByteArray.N(0);
                if (iM == 1886547818) {
                    parsableByteArray.O(8);
                    int i6 = parsableByteArray.f14195b;
                    int i7 = parsableByteArray.f14196c;
                    while (true) {
                        if (i6 < i7) {
                            int iM2 = parsableByteArray.m() + i6;
                            if (iM2 > i6 && iM2 <= i7) {
                                int iM3 = parsableByteArray.m();
                                if (iM3 != 2037673328 && iM3 != 1836279920) {
                                    parsableByteArray.N(iM2);
                                    i6 = iM2;
                                }
                                parsableByteArray.M(iM2);
                                arrayListA = ProjectionDecoder.a(parsableByteArray);
                            }
                        }
                        arrayListA = null;
                    }
                } else {
                    arrayListA = ProjectionDecoder.a(parsableByteArray);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            if (arrayListA != null) {
                int size = arrayListA.size();
                if (size == 1) {
                    projection = new Projection((Projection.Mesh) arrayListA.get(0), i5);
                } else if (size == 2) {
                    projection = new Projection((Projection.Mesh) arrayListA.get(0), (Projection.Mesh) arrayListA.get(1), i5);
                }
            }
        }
        if (projection == null || !ProjectionRenderer.b(projection)) {
            int i8 = this.m;
            float radians = (float) Math.toRadians(180.0d);
            float radians2 = (float) Math.toRadians(360.0d);
            float f2 = radians / 36.0f;
            float f3 = radians2 / 72.0f;
            float[] fArr = new float[15984];
            float[] fArr2 = new float[10656];
            int i9 = 0;
            int i10 = 0;
            for (int i11 = 0; i11 < 36; i11 = i2) {
                float f4 = radians / 2.0f;
                float f5 = (i11 * f2) - f4;
                i2 = i11 + 1;
                float f6 = (i2 * f2) - f4;
                int i12 = 0;
                while (i12 < 73) {
                    int i13 = i2;
                    int i14 = 0;
                    int i15 = 2;
                    while (i14 < i15) {
                        float f7 = radians;
                        float f8 = i12 * f3;
                        float f9 = radians2;
                        double d = (f8 + 3.1415927f) - (radians2 / 2.0f);
                        double d2 = i14 == 0 ? f5 : f6;
                        fArr[i9] = -((float) (Math.cos(d2) * Math.sin(d) * 50.0d));
                        fArr[i9 + 1] = (float) (Math.sin(d2) * 50.0d);
                        int i16 = i9 + 3;
                        float f10 = f2;
                        fArr[i9 + 2] = (float) (Math.cos(d2) * Math.cos(d) * 50.0d);
                        fArr2[i10] = f8 / f9;
                        int i17 = i10 + 2;
                        fArr2[i10 + 1] = ((i11 + i14) * f10) / f7;
                        if ((i12 == 0 && i14 == 0) || (i12 == 72 && i14 == 1)) {
                            System.arraycopy(fArr, i9, fArr, i16, 3);
                            i9 += 6;
                            i15 = 2;
                            System.arraycopy(fArr2, i10, fArr2, i17, 2);
                            i10 += 4;
                        } else {
                            i15 = 2;
                            i9 = i16;
                            i10 = i17;
                        }
                        i14++;
                        radians = f7;
                        f2 = f10;
                        radians2 = f9;
                    }
                    i12++;
                    i2 = i13;
                }
            }
            projection = new Projection(new Projection.Mesh(new Projection.SubMesh(0, fArr, fArr2, 1)), i8);
        }
        this.g.a(j3, projection);
    }
}
