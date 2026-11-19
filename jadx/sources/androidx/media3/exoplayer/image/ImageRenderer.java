package androidx.media3.exoplayer.image;

import android.graphics.Bitmap;
import android.os.Trace;
import androidx.media3.common.Format;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.RendererCapabilities;
import com.google.common.base.Preconditions;
import defpackage.r81;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;

/* JADX INFO: loaded from: classes.dex */
public class ImageRenderer extends BaseRenderer {
    public long A;
    public int B;
    public int C;
    public Format D;
    public ImageDecoder E;
    public DecoderInputBuffer F;
    public ImageOutput G;
    public ImageMetadataListener H;
    public Bitmap I;
    public boolean J;
    public TileInfo K;
    public TileInfo L;
    public int M;
    public boolean N;
    public final ImageDecoder.Factory t;
    public final DecoderInputBuffer u;
    public final ArrayDeque v;
    public boolean w;
    public boolean x;
    public OutputStreamInfo y;
    public long z;

    public static final class OutputStreamInfo {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final OutputStreamInfo f15319c = new OutputStreamInfo(-9223372036854775807L, -9223372036854775807L);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15320a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15321b;

        public OutputStreamInfo(long j2, long j3) {
            this.f15320a = j2;
            this.f15321b = j3;
        }
    }

    public static class TileInfo {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f15322a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15323b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Bitmap f15324c;

        public TileInfo(int i2, long j2) {
            this.f15322a = i2;
            this.f15323b = j2;
        }
    }

    public ImageRenderer(ImageDecoder.Factory factory, ImageOutput imageOutput) {
        super(4);
        this.t = factory;
        this.G = imageOutput == null ? ImageOutput.f15317a : imageOutput;
        this.u = new DecoderInputBuffer(0);
        this.y = OutputStreamInfo.f15319c;
        this.v = new ArrayDeque();
        this.A = -9223372036854775807L;
        this.z = -9223372036854775807L;
        this.B = 0;
        this.C = 1;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void K() {
        this.D = null;
        this.y = OutputStreamInfo.f15319c;
        this.v.clear();
        X();
        this.G.a();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void L(boolean z, boolean z2) {
        this.C = z2 ? 1 : 0;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void M(boolean z, boolean z2, long j2) {
        this.C = Math.min(this.C, 1);
        this.x = false;
        this.w = false;
        this.I = null;
        this.K = null;
        this.L = null;
        this.J = false;
        this.F = null;
        ImageDecoder imageDecoder = this.E;
        if (imageDecoder != null) {
            imageDecoder.flush();
        }
        this.v.clear();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void N() {
        X();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public final void O() {
        X();
        this.C = Math.min(this.C, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0023, code lost:
    
        if (r2 >= r6) goto L15;
     */
    @Override // androidx.media3.exoplayer.BaseRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void R(androidx.media3.common.Format[] r5, long r6, long r8, androidx.media3.exoplayer.source.MediaSource.MediaPeriodId r10) {
        /*
            r4 = this;
            androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo r5 = r4.y
            long r5 = r5.f15321b
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r5 > r0 ? 1 : (r5 == r0 ? 0 : -1))
            if (r5 == 0) goto L31
            java.util.ArrayDeque r5 = r4.v
            boolean r6 = r5.isEmpty()
            if (r6 == 0) goto L26
            long r6 = r4.A
            int r10 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            if (r10 == 0) goto L31
            long r2 = r4.z
            int r10 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r10 == 0) goto L26
            int r6 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r6 < 0) goto L26
            goto L31
        L26:
            androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo r6 = new androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo
            long r0 = r4.A
            r6.<init>(r0, r8)
            r5.add(r6)
            return
        L31:
            androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo r5 = new androidx.media3.exoplayer.image.ImageRenderer$OutputStreamInfo
            r5.<init>(r0, r8)
            r4.y = r5
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.image.ImageRenderer.R(androidx.media3.common.Format[], long, long, androidx.media3.exoplayer.source.MediaSource$MediaPeriodId):void");
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0086 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x0088  */
    /* JADX WARN: Code duplicated, block: B:47:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:52:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:55:0x00da A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:56:0x00dc A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:57:0x00de  */
    /* JADX WARN: Code duplicated, block: B:58:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:75:0x0130  */
    /* JADX WARN: Code duplicated, block: B:77:0x0149  */
    public final boolean U(long j2) throws ExoPlaybackException {
        boolean z;
        TileInfo tileInfo;
        boolean z2;
        int i2;
        ImageMetadataListener imageMetadataListener;
        int i3;
        int i4;
        Format format;
        Bitmap bitmapCreateBitmap;
        Bitmap bitmap = this.I;
        if ((bitmap == null || this.K != null) && (this.C != 0 || this.f14567i == 2)) {
            ArrayDeque arrayDeque = this.v;
            if (bitmap == null) {
                this.E.getClass();
                ImageOutputBuffer imageOutputBufferA = this.E.a();
                if (imageOutputBufferA != null) {
                    if (!imageOutputBufferA.f(4)) {
                        Preconditions.m(imageOutputBufferA.f15318e, "Non-EOS buffer came back from the decoder without bitmap.");
                        this.I = imageOutputBufferA.f15318e;
                        imageOutputBufferA.h();
                        if (this.J && this.I != null && this.K != null) {
                            this.D.getClass();
                            Format format2 = this.D;
                            int i5 = format2.N;
                            int i6 = format2.O;
                            z = ((i5 != 1 && i6 == 1) || i5 == -1 || i6 == -1) ? false : true;
                            tileInfo = this.K;
                            if (tileInfo.f15324c == null) {
                                if (z) {
                                    int i7 = tileInfo.f15322a;
                                    this.I.getClass();
                                    int width = this.I.getWidth();
                                    Format format3 = this.D;
                                    format3.getClass();
                                    int i8 = width / format3.N;
                                    int height = this.I.getHeight();
                                    Format format4 = this.D;
                                    format4.getClass();
                                    int i9 = height / format4.O;
                                    int i10 = this.D.N;
                                    bitmapCreateBitmap = Bitmap.createBitmap(this.I, (i7 % i10) * i8, (i7 / i10) * i9, i8, i9);
                                } else {
                                    bitmapCreateBitmap = this.I;
                                    bitmapCreateBitmap.getClass();
                                }
                                tileInfo.f15324c = bitmapCreateBitmap;
                            }
                            Bitmap bitmap2 = this.K.f15324c;
                            bitmap2.getClass();
                            long j3 = this.K.f15323b;
                            long j4 = j3 - j2;
                            if (this.f14567i == 2) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            i2 = this.C;
                            if (i2 != 0) {
                                if (i2 != 1) {
                                    z2 = true;
                                } else {
                                    if (i2 == 3) {
                                        r81.b();
                                        return false;
                                    }
                                    z2 = false;
                                }
                            }
                            if (!z2 || j4 < 30000) {
                                imageMetadataListener = this.H;
                                if (imageMetadataListener != null) {
                                    long j5 = this.y.f15321b;
                                    this.D.getClass();
                                    imageMetadataListener.a();
                                }
                                this.G.onImageAvailable(j3 - this.y.f15321b, bitmap2);
                                TileInfo tileInfo2 = this.K;
                                tileInfo2.getClass();
                                long j6 = tileInfo2.f15323b;
                                this.z = j6;
                                while (!arrayDeque.isEmpty() && j6 >= ((OutputStreamInfo) arrayDeque.peek()).f15320a) {
                                    this.y = (OutputStreamInfo) arrayDeque.removeFirst();
                                }
                                this.C = 3;
                                if (z) {
                                    TileInfo tileInfo3 = this.K;
                                    tileInfo3.getClass();
                                    i3 = tileInfo3.f15322a;
                                    Format format5 = this.D;
                                    format5.getClass();
                                    i4 = format5.O;
                                    format = this.D;
                                    format.getClass();
                                    if (i3 == (i4 * format.N) - 1) {
                                        this.I = null;
                                    }
                                } else {
                                    this.I = null;
                                }
                                this.K = this.L;
                                this.L = null;
                                return true;
                            }
                        }
                    } else {
                        if (this.B == 3) {
                            X();
                            this.D.getClass();
                            W();
                            return false;
                        }
                        imageOutputBufferA.h();
                        if (arrayDeque.isEmpty()) {
                            this.x = true;
                            return false;
                        }
                    }
                }
            } else if (this.J) {
                this.D.getClass();
                Format format6 = this.D;
                int i11 = format6.N;
                int i12 = format6.O;
                if (i11 != 1) {
                }
                tileInfo = this.K;
                if (tileInfo.f15324c == null) {
                    if (z) {
                        int i13 = tileInfo.f15322a;
                        this.I.getClass();
                        int width2 = this.I.getWidth();
                        Format format7 = this.D;
                        format7.getClass();
                        int i14 = width2 / format7.N;
                        int height2 = this.I.getHeight();
                        Format format8 = this.D;
                        format8.getClass();
                        int i15 = height2 / format8.O;
                        int i16 = this.D.N;
                        bitmapCreateBitmap = Bitmap.createBitmap(this.I, (i13 % i16) * i14, (i13 / i16) * i15, i14, i15);
                    } else {
                        bitmapCreateBitmap = this.I;
                        bitmapCreateBitmap.getClass();
                    }
                    tileInfo.f15324c = bitmapCreateBitmap;
                }
                Bitmap bitmap3 = this.K.f15324c;
                bitmap3.getClass();
                long j7 = this.K.f15323b;
                long j8 = j7 - j2;
                if (this.f14567i == 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                i2 = this.C;
                if (i2 != 0) {
                    if (i2 != 1) {
                        z2 = true;
                    } else {
                        if (i2 == 3) {
                            r81.b();
                            return false;
                        }
                        z2 = false;
                    }
                }
                if (!z2) {
                }
                imageMetadataListener = this.H;
                if (imageMetadataListener != null) {
                    long j9 = this.y.f15321b;
                    this.D.getClass();
                    imageMetadataListener.a();
                }
                this.G.onImageAvailable(j7 - this.y.f15321b, bitmap3);
                TileInfo tileInfo4 = this.K;
                tileInfo4.getClass();
                long j10 = tileInfo4.f15323b;
                this.z = j10;
                while (!arrayDeque.isEmpty()) {
                    this.y = (OutputStreamInfo) arrayDeque.removeFirst();
                }
                this.C = 3;
                if (z) {
                    TileInfo tileInfo5 = this.K;
                    tileInfo5.getClass();
                    i3 = tileInfo5.f15322a;
                    Format format9 = this.D;
                    format9.getClass();
                    i4 = format9.O;
                    format = this.D;
                    format.getClass();
                    if (i3 == (i4 * format.N) - 1) {
                        this.I = null;
                    }
                } else {
                    this.I = null;
                }
                this.K = this.L;
                this.L = null;
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002f  */
    /* JADX WARN: Code duplicated, block: B:21:0x0038  */
    /* JADX WARN: Code duplicated, block: B:23:0x004e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0056  */
    /* JADX WARN: Code duplicated, block: B:27:0x0059  */
    /* JADX WARN: Code duplicated, block: B:30:0x005e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0062  */
    /* JADX WARN: Code duplicated, block: B:36:0x0073  */
    /* JADX WARN: Code duplicated, block: B:38:0x007e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0080  */
    /* JADX WARN: Code duplicated, block: B:41:0x0083  */
    /* JADX WARN: Code duplicated, block: B:44:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:45:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:47:0x00be  */
    /* JADX WARN: Code duplicated, block: B:52:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:60:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:75:0x0106  */
    /* JADX WARN: Code duplicated, block: B:80:0x010e  */
    /* JADX WARN: Code duplicated, block: B:83:0x011f  */
    /* JADX WARN: Code duplicated, block: B:85:0x0124  */
    /* JADX WARN: Code duplicated, block: B:87:0x0135  */
    /* JADX WARN: Code duplicated, block: B:88:0x0138  */
    /* JADX WARN: Code duplicated, block: B:91:0x0144  */
    public final boolean V(long j2) {
        int i2;
        DecoderInputBuffer decoderInputBuffer;
        int iT;
        ByteBuffer byteBuffer;
        DecoderInputBuffer decoderInputBuffer2;
        boolean z;
        DecoderInputBuffer decoderInputBuffer3;
        TileInfo tileInfo;
        long j3;
        boolean z2;
        TileInfo tileInfo2;
        boolean z3;
        Format format;
        boolean z4;
        boolean z5;
        Format format2;
        int i3;
        DecoderInputBuffer decoderInputBuffer4;
        if (!this.J || this.K == null) {
            FormatHolder formatHolder = this.d;
            formatHolder.a();
            ImageDecoder imageDecoder = this.E;
            if (imageDecoder != null && this.B != 3 && !this.w) {
                if (this.F == null) {
                    DecoderInputBuffer decoderInputBuffer5 = (DecoderInputBuffer) imageDecoder.e();
                    this.F = decoderInputBuffer5;
                    if (decoderInputBuffer5 != null) {
                        i2 = this.B;
                        decoderInputBuffer = this.F;
                        if (i2 == 2) {
                            decoderInputBuffer.getClass();
                            this.F.f14531b = 4;
                            ImageDecoder imageDecoder2 = this.E;
                            imageDecoder2.getClass();
                            imageDecoder2.f(this.F);
                            this.F = null;
                            this.B = 3;
                            return false;
                        }
                        iT = T(formatHolder, decoderInputBuffer, 0);
                        if (iT != -5) {
                            Format format3 = formatHolder.f14697b;
                            format3.getClass();
                            this.D = format3;
                            this.N = true;
                            this.B = 2;
                            return true;
                        }
                        if (iT != -4) {
                            this.F.j();
                            byteBuffer = this.F.f14543e;
                            if (byteBuffer != null || byteBuffer.remaining() <= 0) {
                                decoderInputBuffer2 = this.F;
                                decoderInputBuffer2.getClass();
                                if (decoderInputBuffer2.f(4)) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                            } else {
                                z = true;
                            }
                            if (z) {
                                DecoderInputBuffer decoderInputBuffer6 = this.F;
                                decoderInputBuffer6.getClass();
                                decoderInputBuffer6.f14542c = this.D;
                                ImageDecoder imageDecoder3 = this.E;
                                imageDecoder3.getClass();
                                DecoderInputBuffer decoderInputBuffer7 = this.F;
                                decoderInputBuffer7.getClass();
                                imageDecoder3.f(decoderInputBuffer7);
                                this.M = 0;
                            }
                            decoderInputBuffer3 = this.F;
                            decoderInputBuffer3.getClass();
                            if (decoderInputBuffer3.f(4)) {
                                this.J = true;
                            } else {
                                tileInfo = new TileInfo(this.M, decoderInputBuffer3.g);
                                this.L = tileInfo;
                                this.M++;
                                if (this.J) {
                                    this.K = this.L;
                                    this.L = null;
                                } else {
                                    j3 = tileInfo.f15323b;
                                    if (j3 - 30000 <= j2 || j2 > 30000 + j3) {
                                        z2 = false;
                                    } else {
                                        z2 = true;
                                    }
                                    tileInfo2 = this.K;
                                    if (tileInfo2 != null || tileInfo2.f15323b > j2 || j2 >= j3) {
                                        z3 = false;
                                    } else {
                                        z3 = true;
                                    }
                                    format = this.D;
                                    format.getClass();
                                    if (format.N != -1 || (i3 = (format2 = this.D).O) == -1) {
                                        z4 = true;
                                    } else if (tileInfo.f15322a == (i3 * format2.N) - 1) {
                                        z4 = true;
                                    } else {
                                        z4 = false;
                                    }
                                    if (!z2 || z3 || z4) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    this.J = z5;
                                    if (z3 || z2) {
                                        this.K = this.L;
                                        this.L = null;
                                    }
                                }
                            }
                            decoderInputBuffer4 = this.F;
                            decoderInputBuffer4.getClass();
                            if (decoderInputBuffer4.f(4)) {
                                this.w = true;
                                this.F = null;
                                return false;
                            }
                            long j4 = this.A;
                            DecoderInputBuffer decoderInputBuffer8 = this.F;
                            decoderInputBuffer8.getClass();
                            this.A = Math.max(j4, decoderInputBuffer8.g);
                            if (z) {
                                this.F = null;
                            } else {
                                DecoderInputBuffer decoderInputBuffer9 = this.F;
                                decoderInputBuffer9.getClass();
                                decoderInputBuffer9.g();
                            }
                            return !this.J;
                        }
                        if (iT != -3) {
                            r81.b();
                            return false;
                        }
                    }
                } else {
                    i2 = this.B;
                    decoderInputBuffer = this.F;
                    if (i2 == 2) {
                        decoderInputBuffer.getClass();
                        this.F.f14531b = 4;
                        ImageDecoder imageDecoder4 = this.E;
                        imageDecoder4.getClass();
                        imageDecoder4.f(this.F);
                        this.F = null;
                        this.B = 3;
                        return false;
                    }
                    iT = T(formatHolder, decoderInputBuffer, 0);
                    if (iT != -5) {
                        Format format4 = formatHolder.f14697b;
                        format4.getClass();
                        this.D = format4;
                        this.N = true;
                        this.B = 2;
                        return true;
                    }
                    if (iT != -4) {
                        this.F.j();
                        byteBuffer = this.F.f14543e;
                        if (byteBuffer != null) {
                            decoderInputBuffer2 = this.F;
                            decoderInputBuffer2.getClass();
                            if (decoderInputBuffer2.f(4)) {
                                z = true;
                            } else {
                                z = false;
                            }
                        } else {
                            decoderInputBuffer2 = this.F;
                            decoderInputBuffer2.getClass();
                            if (decoderInputBuffer2.f(4)) {
                                z = true;
                            } else {
                                z = false;
                            }
                        }
                        if (z) {
                            DecoderInputBuffer decoderInputBuffer10 = this.F;
                            decoderInputBuffer10.getClass();
                            decoderInputBuffer10.f14542c = this.D;
                            ImageDecoder imageDecoder5 = this.E;
                            imageDecoder5.getClass();
                            DecoderInputBuffer decoderInputBuffer11 = this.F;
                            decoderInputBuffer11.getClass();
                            imageDecoder5.f(decoderInputBuffer11);
                            this.M = 0;
                        }
                        decoderInputBuffer3 = this.F;
                        decoderInputBuffer3.getClass();
                        if (decoderInputBuffer3.f(4)) {
                            this.J = true;
                        } else {
                            tileInfo = new TileInfo(this.M, decoderInputBuffer3.g);
                            this.L = tileInfo;
                            this.M++;
                            if (this.J) {
                                j3 = tileInfo.f15323b;
                                if (j3 - 30000 <= j2) {
                                    z2 = false;
                                } else {
                                    z2 = false;
                                }
                                tileInfo2 = this.K;
                                if (tileInfo2 != null) {
                                    z3 = false;
                                } else {
                                    z3 = false;
                                }
                                format = this.D;
                                format.getClass();
                                if (format.N != -1) {
                                    z4 = true;
                                } else {
                                    z4 = true;
                                }
                                if (z2) {
                                    z5 = true;
                                } else {
                                    z5 = true;
                                }
                                this.J = z5;
                                if (z3) {
                                    this.K = this.L;
                                    this.L = null;
                                } else {
                                    this.K = this.L;
                                    this.L = null;
                                }
                            } else {
                                this.K = this.L;
                                this.L = null;
                            }
                        }
                        decoderInputBuffer4 = this.F;
                        decoderInputBuffer4.getClass();
                        if (decoderInputBuffer4.f(4)) {
                            this.w = true;
                            this.F = null;
                            return false;
                        }
                        long j5 = this.A;
                        DecoderInputBuffer decoderInputBuffer12 = this.F;
                        decoderInputBuffer12.getClass();
                        this.A = Math.max(j5, decoderInputBuffer12.g);
                        if (z) {
                            this.F = null;
                        } else {
                            DecoderInputBuffer decoderInputBuffer13 = this.F;
                            decoderInputBuffer13.getClass();
                            decoderInputBuffer13.g();
                        }
                        return !this.J;
                    }
                    if (iT != -3) {
                        r81.b();
                        return false;
                    }
                }
            }
        }
        return false;
    }

    public final void W() throws ExoPlaybackException {
        if (this.N) {
            Format format = this.D;
            format.getClass();
            ImageDecoder.Factory factory = this.t;
            int iB = factory.b(format);
            if (iB != RendererCapabilities.o(4, 0, 0, 0) && iB != RendererCapabilities.o(3, 0, 0, 0)) {
                throw J(new ImageDecoderException("Provided decoder factory can't create decoder for format."), this.D, false, 4005);
            }
            ImageDecoder imageDecoder = this.E;
            if (imageDecoder != null) {
                imageDecoder.release();
            }
            this.E = factory.a();
            this.N = false;
        }
    }

    public final void X() {
        this.F = null;
        this.B = 0;
        this.A = -9223372036854775807L;
        ImageDecoder imageDecoder = this.E;
        if (imageDecoder != null) {
            imageDecoder.release();
            this.E = null;
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int b(Format format) {
        return this.t.b(format);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public final boolean e() {
        return this.x;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final void g(long j2, long j3) throws ExoPlaybackException {
        if (this.x) {
            return;
        }
        if (this.D == null) {
            FormatHolder formatHolder = this.d;
            formatHolder.a();
            DecoderInputBuffer decoderInputBuffer = this.u;
            decoderInputBuffer.g();
            int iT = T(formatHolder, decoderInputBuffer, 2);
            if (iT != -5) {
                if (iT == -4) {
                    Preconditions.q(decoderInputBuffer.f(4));
                    this.w = true;
                    this.x = true;
                    return;
                }
                return;
            }
            Format format = formatHolder.f14697b;
            format.getClass();
            this.D = format;
            this.N = true;
        }
        if (this.E == null) {
            W();
        }
        try {
            Trace.beginSection("drainAndFeedDecoder");
            while (U(j2)) {
            }
            while (V(j2)) {
            }
            Trace.endSection();
        } catch (ImageDecoderException e2) {
            throw J(e2, null, false, 4003);
        }
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public final String getName() {
        return "ImageRenderer";
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final boolean isReady() {
        int i2 = this.C;
        if (i2 != 3) {
            return i2 == 0 && this.J;
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public final void q(int i2, Object obj) {
        if (i2 != 15) {
            if (i2 != 23) {
                return;
            }
            this.H = (ImageMetadataListener) obj;
        } else {
            ImageOutput imageOutput = obj instanceof ImageOutput ? (ImageOutput) obj : null;
            if (imageOutput == null) {
                imageOutput = ImageOutput.f15317a;
            }
            this.G = imageOutput;
        }
    }
}
