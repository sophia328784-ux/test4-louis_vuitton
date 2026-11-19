package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaCryptoException;
import android.media.MediaFormat;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import androidx.media3.common.Format;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.common.util.Util;
import androidx.media3.container.OpusUtil;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.decoder.CryptoInfo;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.OggOpusAudioPacketizer;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.FrameworkCryptoConfig;
import androidx.media3.exoplayer.source.SampleStream;
import com.batch.android.x0.h;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.UnsignedBytes;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.aa0;
import defpackage.r81;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaCodecRenderer extends BaseRenderer {
    public static final byte[] I1 = {0, 0, 1, 103, 66, h.a.f24176e, 11, h.a.E, 37, h.a.f24175c, 0, 0, 1, 104, h.a.s, 15, 19, 32, 0, 0, 1, 101, -120, -124, 13, h.a.s, 113, 24, h.a.d, 0, 47, -65, 28, 49, h.a.f24178h, 39, 93, 120};
    public final DecoderInputBuffer A;
    public long A1;
    public final BatchBuffer B;
    public boolean B1;
    public final MediaCodec.BufferInfo C;
    public boolean C1;
    public final ArrayDeque D;
    public boolean D1;
    public final OggOpusAudioPacketizer E;
    public long E1;
    public final AtomicInteger F;
    public CodecParameters F1;
    public Format G;
    public CodecParameters G1;
    public Format H;
    public ImmutableSet H1;
    public DrmSession I;
    public DrmSession J;
    public Renderer.WakeupListener K;
    public MediaCrypto L;
    public final long M;
    public float N;
    public float O;
    public MediaCodecAdapter P;
    public Format Q;
    public MediaFormat R;
    public boolean S;
    public float T;
    public ArrayDeque V;
    public DecoderInitializationException W;
    public MediaCodecInfo X;
    public boolean Y;
    public boolean Z;
    public long b1;
    public boolean c1;
    public long d1;
    public int e1;
    public int f1;
    public ByteBuffer g1;
    public boolean h0;
    public boolean h1;
    public boolean i1;
    public boolean j1;
    public boolean k1;
    public boolean l1;
    public int m1;
    public int n1;
    public int o1;
    public boolean p1;
    public boolean q1;
    public boolean r1;
    public long s1;
    public final Context t;
    public boolean t0;
    public boolean t1;
    public final MediaCodecAdapter.Factory u;
    public boolean u1;
    public final MediaCodecSelector v;
    public boolean v1;
    public final boolean w;
    public boolean w1;
    public final float x;
    public ExoPlaybackException x1;
    public final DecoderInputBuffer y;
    public DecoderCounters y1;
    public final DecoderInputBuffer z;
    public OutputStreamInfo z1;

    public static final class Api31 {
        public static void a(MediaCodecAdapter.Configuration configuration, PlayerId playerId) {
            LogSessionId logSessionIdA = playerId.a();
            if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                return;
            }
            configuration.f15368b.setString("log-session-id", logSessionIdA.getStringId());
        }
    }

    public final class MediaCodecRendererCodecAdapterListener implements MediaCodecAdapter.OnBufferAvailableListener {
        public MediaCodecRendererCodecAdapterListener() {
        }
    }

    public static final class OutputStreamInfo {
        public static final OutputStreamInfo g = new OutputStreamInfo(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final long f15388a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f15389b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final long f15390c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f15391e;
        public final TimedValueQueue d = new TimedValueQueue();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f15392f = -9223372036854775807L;

        public OutputStreamInfo(long j2, long j3, long j4) {
            this.f15388a = j2;
            this.f15389b = j3;
            this.f15390c = j4;
        }
    }

    public MediaCodecRenderer(Context context, int i2, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, boolean z, float f2) {
        super(i2);
        this.t = context.getApplicationContext();
        this.u = factory;
        mediaCodecSelector.getClass();
        this.v = mediaCodecSelector;
        this.w = z;
        this.x = f2;
        this.F = new AtomicInteger();
        this.y = new DecoderInputBuffer(0);
        this.z = new DecoderInputBuffer(0);
        this.A = new DecoderInputBuffer(2);
        BatchBuffer batchBuffer = new BatchBuffer();
        this.B = batchBuffer;
        this.C = new MediaCodec.BufferInfo();
        this.N = 1.0f;
        this.O = 1.0f;
        this.M = -9223372036854775807L;
        this.D = new ArrayDeque();
        this.z1 = OutputStreamInfo.g;
        batchBuffer.i(0);
        batchBuffer.f14543e.order(ByteOrder.nativeOrder());
        this.E = new OggOpusAudioPacketizer();
        this.T = -1.0f;
        this.m1 = 0;
        this.e1 = -1;
        this.f1 = -1;
        this.d1 = -9223372036854775807L;
        this.s1 = -9223372036854775807L;
        this.A1 = -9223372036854775807L;
        this.b1 = -9223372036854775807L;
        this.n1 = 0;
        this.o1 = 0;
        this.y1 = new DecoderCounters();
        this.D1 = false;
        this.E1 = 0L;
        this.H1 = ImmutableSet.v();
        CodecParameters codecParameters = CodecParameters.f14570b;
        this.F1 = codecParameters;
        this.G1 = codecParameters;
    }

    public void A0() {
    }

    public void B0(DecoderInputBuffer decoderInputBuffer) {
    }

    public final void C0() throws ExoPlaybackException {
        int i2 = this.o1;
        if (i2 == 1) {
            a0();
            return;
        }
        if (i2 == 2) {
            a0();
            T0();
        } else if (i2 != 3) {
            this.u1 = true;
            G0();
        } else {
            F0();
            p0();
        }
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void D(float f2, float f3) {
        this.N = f2;
        this.O = f3;
        S0(this.Q);
    }

    public abstract boolean D0(long j2, long j3, MediaCodecAdapter mediaCodecAdapter, ByteBuffer byteBuffer, int i2, int i3, int i4, long j4, boolean z, boolean z2, Format format);

    public final boolean E0(int i2) throws ExoPlaybackException {
        FormatHolder formatHolder = this.d;
        formatHolder.a();
        DecoderInputBuffer decoderInputBuffer = this.y;
        decoderInputBuffer.g();
        int iT = T(formatHolder, decoderInputBuffer, i2 | 4);
        if (iT == -5) {
            w0(formatHolder);
            return true;
        }
        if (iT != -4 || !decoderInputBuffer.f(4)) {
            return false;
        }
        this.t1 = true;
        C0();
        return false;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.RendererCapabilities
    public final int F() {
        return 8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void F0() {
        try {
            MediaCodecAdapter mediaCodecAdapter = this.P;
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.release();
                this.y1.f14574b++;
                MediaCodecInfo mediaCodecInfo = this.X;
                mediaCodecInfo.getClass();
                v0(mediaCodecInfo.f15374a);
            }
            this.P = null;
            try {
                MediaCrypto mediaCrypto = this.L;
                if (mediaCrypto != null) {
                    mediaCrypto.release();
                }
            } finally {
                this.L = null;
                K0(null);
                J0();
            }
        } catch (Throwable th) {
            this.P = null;
            try {
                MediaCrypto mediaCrypto2 = this.L;
                if (mediaCrypto2 != null) {
                    mediaCrypto2.release();
                }
                throw th;
            } finally {
                this.L = null;
                K0(null);
                J0();
            }
        }
    }

    public void G0() {
    }

    public final void H0() {
        this.s1 = -9223372036854775807L;
        h0().f15392f = -9223372036854775807L;
        this.A1 = -9223372036854775807L;
        this.k1 = false;
        this.B.g();
        this.A.g();
        this.j1 = false;
        OggOpusAudioPacketizer oggOpusAudioPacketizer = this.E;
        oggOpusAudioPacketizer.getClass();
        oggOpusAudioPacketizer.f15022a = AudioProcessor.f14051a;
        oggOpusAudioPacketizer.f15024c = 0;
        oggOpusAudioPacketizer.f15023b = 2;
    }

    public void I0() {
        this.e1 = -1;
        this.z.f14543e = null;
        this.f1 = -1;
        this.g1 = null;
        this.s1 = -9223372036854775807L;
        h0().f15392f = -9223372036854775807L;
        this.A1 = -9223372036854775807L;
        this.d1 = -9223372036854775807L;
        this.q1 = false;
        this.b1 = -9223372036854775807L;
        this.p1 = false;
        this.Z = false;
        this.h0 = false;
        this.h1 = false;
        this.n1 = 0;
        this.o1 = 0;
        this.m1 = this.l1 ? 1 : 0;
        this.D1 = false;
        this.E1 = 0L;
    }

    public final void J0() {
        I0();
        this.x1 = null;
        this.V = null;
        this.X = null;
        this.Q = null;
        this.R = null;
        this.S = false;
        this.r1 = false;
        this.T = -1.0f;
        this.Y = false;
        this.t0 = false;
        this.c1 = false;
        this.l1 = false;
        this.m1 = 0;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void K() {
        this.G = null;
        L0(OutputStreamInfo.g);
        this.D.clear();
        if (this.i1) {
            this.i1 = false;
            H0();
        } else {
            if (this.P == null) {
                return;
            }
            if (P0()) {
                F0();
            } else if (N0()) {
                a0();
            } else {
                this.D1 = true;
            }
        }
    }

    public final void K0(DrmSession drmSession) {
        DrmSession drmSession2 = this.I;
        if (drmSession2 != drmSession) {
            if (drmSession != null) {
                drmSession.e(null);
            }
            if (drmSession2 != null) {
                drmSession2.f(null);
            }
        }
        this.I = drmSession;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void L(boolean z, boolean z2) {
        this.y1 = new DecoderCounters();
    }

    public final void L0(OutputStreamInfo outputStreamInfo) {
        this.z1 = outputStreamInfo;
        long j2 = outputStreamInfo.f15390c;
        if (j2 != -9223372036854775807L) {
            this.B1 = true;
            y0(j2);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void M(boolean z, boolean z2, long j2) {
        ArrayDeque arrayDeque = this.D;
        if (!arrayDeque.isEmpty()) {
            this.z1 = (OutputStreamInfo) arrayDeque.getLast();
        }
        arrayDeque.clear();
        if (z2) {
            this.t1 = false;
            this.u1 = false;
            this.w1 = false;
            if (this.i1) {
                H0();
            } else if (this.P != null) {
                if (P0()) {
                    F0();
                    p0();
                } else if (N0()) {
                    a0();
                } else {
                    this.D1 = true;
                }
            }
            if (this.z1.d.h() > 0) {
                this.v1 = true;
            }
            this.z1.d.b();
            this.z1.f15391e = false;
        }
    }

    public boolean M0(DecoderInputBuffer decoderInputBuffer) {
        return false;
    }

    public boolean N0() {
        return true;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // androidx.media3.exoplayer.BaseRenderer
    public void O() {
        try {
            this.i1 = false;
            H0();
            F0();
            if (this.J != null && r0 != null) {
            }
        } finally {
            DrmSession drmSession = this.J;
            if (drmSession != null && drmSession != null) {
                drmSession.f(null);
            }
            this.J = null;
        }
    }

    public boolean O0(MediaCodecInfo mediaCodecInfo) {
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void P() {
    }

    public boolean P0() {
        int i2 = this.o1;
        if (i2 == 3 || (this.Y && !this.r1)) {
            return true;
        }
        if (i2 != 2) {
            return false;
        }
        try {
            T0();
            return false;
        } catch (ExoPlaybackException e2) {
            Log.h("Failed to update the DRM session, releasing the codec instead.", e2);
            return true;
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    public void Q() {
    }

    public boolean Q0(Format format) {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        if (r4 >= r0) goto L16;
     */
    @Override // androidx.media3.exoplayer.BaseRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void R(androidx.media3.common.Format[] r12, long r13, long r15, androidx.media3.exoplayer.source.MediaSource.MediaPeriodId r17) {
        /*
            r11 = this;
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r12 = r11.z1
            long r0 = r12.f15390c
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r12 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r12 != 0) goto L24
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r4 = new androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.L0(r4)
            boolean r12 = r11.C1
            if (r12 == 0) goto L56
            r11.A0()
            return
        L24:
            java.util.ArrayDeque r12 = r11.D
            boolean r0 = r12.isEmpty()
            if (r0 == 0) goto L57
            long r0 = r11.s1
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L3c
            long r4 = r11.A1
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 == 0) goto L57
            int r0 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r0 < 0) goto L57
        L3c:
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r4 = new androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7 = r13
            r9 = r15
            r4.<init>(r5, r7, r9)
            r11.L0(r4)
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r12 = r11.z1
            long r12 = r12.f15390c
            int r12 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r12 == 0) goto L56
            r11.A0()
        L56:
            return
        L57:
            androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo r0 = new androidx.media3.exoplayer.mediacodec.MediaCodecRenderer$OutputStreamInfo
            long r1 = r11.s1
            r3 = r13
            r5 = r15
            r0.<init>(r1, r3, r5)
            r12.add(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.mediacodec.MediaCodecRenderer.R(androidx.media3.common.Format[], long, long, androidx.media3.exoplayer.source.MediaSource$MediaPeriodId):void");
    }

    public abstract int R0(MediaCodecSelector mediaCodecSelector, Format format);

    public final boolean S0(Format format) {
        if (this.P != null && this.o1 != 3 && this.f14567i != 0) {
            float f2 = this.O;
            format.getClass();
            Format[] formatArr = this.f14569k;
            formatArr.getClass();
            float fD0 = d0(f2, format, formatArr);
            float f3 = this.T;
            if (f3 != fD0) {
                if (fD0 == -1.0f) {
                    if (this.p1) {
                        this.n1 = 1;
                        this.o1 = 3;
                        return false;
                    }
                    F0();
                    p0();
                    return false;
                }
                if (f3 != -1.0f || fD0 > this.x) {
                    Bundle bundle = new Bundle();
                    bundle.putFloat("operating-rate", fD0);
                    MediaCodecAdapter mediaCodecAdapter = this.P;
                    mediaCodecAdapter.getClass();
                    mediaCodecAdapter.b(bundle);
                    this.T = fD0;
                }
            }
        }
        return true;
    }

    public final void T0() throws ExoPlaybackException {
        DrmSession drmSession = this.J;
        drmSession.getClass();
        CryptoConfig cryptoConfigD = drmSession.d();
        if (cryptoConfigD instanceof FrameworkCryptoConfig) {
            try {
                MediaCrypto mediaCrypto = this.L;
                mediaCrypto.getClass();
                mediaCrypto.setMediaDrmSession(((FrameworkCryptoConfig) cryptoConfigD).f15092b);
            } catch (MediaCryptoException e2) {
                throw J(e2, this.G, false, 6006);
            }
        }
        K0(this.J);
        this.n1 = 0;
        this.o1 = 0;
    }

    public final void U(MediaFormat mediaFormat) {
        for (Map.Entry entry : this.F1.f14571a.entrySet()) {
            String str = (String) entry.getKey();
            Object value = entry.getValue();
            if (value == null) {
                mediaFormat.setString(str, null);
            } else if (value instanceof Integer) {
                mediaFormat.setInteger(str, ((Integer) value).intValue());
            } else if (value instanceof Long) {
                mediaFormat.setLong(str, ((Long) value).longValue());
            } else if (value instanceof Float) {
                mediaFormat.setFloat(str, ((Float) value).floatValue());
            } else if (value instanceof String) {
                mediaFormat.setString(str, (String) value);
            } else if (value instanceof ByteBuffer) {
                mediaFormat.setByteBuffer(str, (ByteBuffer) value);
            }
        }
    }

    public final void U0(long j2) {
        Format format = (Format) this.z1.d.f(j2);
        if (format == null && this.B1 && this.R != null) {
            format = (Format) this.z1.d.e();
        }
        if (format != null) {
            this.H = format;
        } else if (!this.S || this.H == null) {
            return;
        }
        Format format2 = this.H;
        format2.getClass();
        x0(format2, this.R);
        this.S = false;
        this.B1 = false;
    }

    /* JADX WARN: Code duplicated, block: B:114:0x0309  */
    /* JADX WARN: Code duplicated, block: B:117:0x0311 A[LOOP:0: B:25:0x0090->B:117:0x0311, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:136:0x030f A[SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r24v0, types: [androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.mediacodec.MediaCodecRenderer] */
    /* JADX WARN: Type inference failed for: r28v0 */
    /* JADX WARN: Type inference failed for: r28v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r4v22, types: [int] */
    /* JADX WARN: Type inference failed for: r4v40 */
    /* JADX WARN: Type inference failed for: r4v41 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r5v16, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v32, types: [java.util.List] */
    public final boolean V(long j2, long j3) {
        BatchBuffer batchBuffer;
        ?? r4;
        ?? r28;
        Preconditions.q(!this.u1);
        BatchBuffer batchBuffer2 = this.B;
        if (batchBuffer2.l()) {
            ByteBuffer byteBuffer = batchBuffer2.f14543e;
            int i2 = this.f1;
            int i3 = batchBuffer2.l;
            long j4 = batchBuffer2.g;
            boolean zN0 = n0(this.m, batchBuffer2.f15359k);
            boolean zF = batchBuffer2.f(4);
            Format format = this.H;
            format.getClass();
            batchBuffer = batchBuffer2;
            if (D0(j2, j3, null, byteBuffer, i2, 0, i3, j4, zN0, zF, format)) {
                z0(batchBuffer.f15359k);
                batchBuffer.g();
            }
        }
        batchBuffer = batchBuffer2;
        if (this.t1) {
            this.u1 = true;
            return false;
        }
        ?? r2 = 0;
        boolean z = this.j1;
        DecoderInputBuffer decoderInputBuffer = this.A;
        if (z) {
            Preconditions.q(batchBuffer.k(decoderInputBuffer));
            this.j1 = false;
        }
        if (this.k1) {
            if (batchBuffer.l()) {
                return true;
            }
            this.i1 = false;
            H0();
            this.k1 = false;
            p0();
            if (!this.i1) {
                return false;
            }
        }
        Preconditions.q(!this.t1);
        FormatHolder formatHolder = this.d;
        formatHolder.a();
        decoderInputBuffer.g();
        while (true) {
            decoderInputBuffer.g();
            int iT = T(formatHolder, decoderInputBuffer, r2);
            if (iT == -5) {
                w0(formatHolder);
            } else if (iT != -4) {
                if (iT != -3) {
                    r81.b();
                    return r2;
                }
                if (j()) {
                    h0().f15392f = this.s1;
                }
            } else if (decoderInputBuffer.f(4)) {
                this.t1 = true;
                h0().f15392f = this.s1;
            } else {
                this.s1 = Math.max(this.s1, decoderInputBuffer.g);
                if (j() || this.z.f(PKIFailureInfo.duplicateCertReq)) {
                    h0().f15392f = this.s1;
                }
                byte[] bArr = null;
                if (this.v1) {
                    Format format2 = this.G;
                    format2.getClass();
                    this.H = format2;
                    if (Objects.equals(format2.o, "audio/opus") && !this.H.r.isEmpty()) {
                        byte[] bArr2 = (byte[]) this.H.r.get(r2);
                        int i4 = (bArr2[10] & 255) | ((bArr2[11] & 255) << 8);
                        Format.Builder builderA = this.H.a();
                        builderA.I = i4;
                        this.H = new Format(builderA);
                    }
                    x0(this.H, null);
                    this.v1 = r2;
                }
                decoderInputBuffer.j();
                Format format3 = this.H;
                if (format3 != null && Objects.equals(format3.o, "audio/opus")) {
                    if (decoderInputBuffer.f(268435456)) {
                        decoderInputBuffer.f14542c = this.H;
                        l0(decoderInputBuffer);
                    }
                    if (this.m - decoderInputBuffer.g <= 80000) {
                        ?? r5 = this.H.r;
                        OggOpusAudioPacketizer oggOpusAudioPacketizer = this.E;
                        oggOpusAudioPacketizer.getClass();
                        decoderInputBuffer.f14543e.getClass();
                        if (decoderInputBuffer.f14543e.limit() - decoderInputBuffer.f14543e.position() != 0) {
                            if (oggOpusAudioPacketizer.f15023b == 2 && (r5.size() == 1 || r5.size() == 3)) {
                                bArr = (byte[]) r5.get(r2);
                            }
                            ByteBuffer byteBuffer2 = decoderInputBuffer.f14543e;
                            int iPosition = byteBuffer2.position();
                            int iLimit = byteBuffer2.limit();
                            int i5 = iLimit - iPosition;
                            int i6 = (i5 + 255) / 255;
                            int i7 = i6 + 27 + i5;
                            if (oggOpusAudioPacketizer.f15023b == 2) {
                                int length = bArr != null ? bArr.length + 28 : 47;
                                i7 = (length == true ? 1 : 0) + 44 + i7;
                                r4 = length;
                            } else {
                                r4 = r2;
                            }
                            if (oggOpusAudioPacketizer.f15022a.capacity() < i7) {
                                oggOpusAudioPacketizer.f15022a = ByteBuffer.allocate(i7).order(ByteOrder.LITTLE_ENDIAN);
                            } else {
                                oggOpusAudioPacketizer.f15022a.clear();
                            }
                            ByteBuffer byteBuffer3 = oggOpusAudioPacketizer.f15022a;
                            if (oggOpusAudioPacketizer.f15023b == 2) {
                                if (bArr != null) {
                                    OggOpusAudioPacketizer.a(byteBuffer3, 0L, 0, 1, true);
                                    byteBuffer3.put(UnsignedBytes.a(bArr.length));
                                    byteBuffer3.put(bArr);
                                    byteBuffer3.putInt(22, Util.q(byteBuffer3.arrayOffset(), bArr.length + 28, byteBuffer3.array(), 0));
                                    byteBuffer3.position(bArr.length + 28);
                                } else {
                                    byteBuffer3.put(OggOpusAudioPacketizer.d);
                                }
                                byteBuffer3.put(OggOpusAudioPacketizer.f15021e);
                                r28 = r4;
                            } else {
                                r28 = r4 == true ? 1 : 0;
                                iLimit = iLimit;
                            }
                            int iB = oggOpusAudioPacketizer.f15024c + ((int) ((OpusUtil.b(byteBuffer2.get(0), byteBuffer2.limit() > 1 ? byteBuffer2.get(1) : (byte) 0) * 48000) / 1000000));
                            oggOpusAudioPacketizer.f15024c = iB;
                            OggOpusAudioPacketizer.a(byteBuffer3, iB, oggOpusAudioPacketizer.f15023b, i6, false);
                            for (int i8 = 0; i8 < i6; i8++) {
                                if (i5 >= 255) {
                                    byteBuffer3.put((byte) -1);
                                    i5 -= 255;
                                } else {
                                    byteBuffer3.put((byte) i5);
                                    i5 = 0;
                                }
                            }
                            int i9 = iLimit;
                            while (iPosition < i9) {
                                byteBuffer3.put(byteBuffer2.get(iPosition));
                                iPosition++;
                            }
                            byteBuffer2.position(byteBuffer2.limit());
                            byteBuffer3.flip();
                            if (oggOpusAudioPacketizer.f15023b == 2) {
                                byteBuffer3.putInt(r28 + 66, Util.q(byteBuffer3.arrayOffset() + r28 + 44, byteBuffer3.limit() - byteBuffer3.position(), byteBuffer3.array(), 0));
                            } else {
                                byteBuffer3.putInt(22, Util.q(byteBuffer3.arrayOffset(), byteBuffer3.limit() - byteBuffer3.position(), byteBuffer3.array(), 0));
                            }
                            oggOpusAudioPacketizer.f15023b++;
                            oggOpusAudioPacketizer.f15022a = byteBuffer3;
                            decoderInputBuffer.g();
                            decoderInputBuffer.i(oggOpusAudioPacketizer.f15022a.remaining());
                            decoderInputBuffer.f14543e.put(oggOpusAudioPacketizer.f15022a);
                            decoderInputBuffer.j();
                        }
                    }
                }
                if (batchBuffer.l()) {
                    long j5 = this.m;
                    if (n0(j5, batchBuffer.f15359k) == n0(j5, decoderInputBuffer.g)) {
                        if (!batchBuffer.k(decoderInputBuffer)) {
                            r2 = 0;
                        }
                    }
                } else if (!batchBuffer.k(decoderInputBuffer)) {
                    r2 = 0;
                }
                this.j1 = true;
            }
            if (batchBuffer.l()) {
                batchBuffer.j();
            }
            return batchBuffer.l() || this.t1 || this.k1;
        }
    }

    public DecoderReuseEvaluation W(MediaCodecInfo mediaCodecInfo, Format format, Format format2, boolean z) {
        return new DecoderReuseEvaluation(mediaCodecInfo.f15374a, format, format2, 0, 1);
    }

    public MediaCodecDecoderException X(IllegalStateException illegalStateException, MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecDecoderException(illegalStateException, mediaCodecInfo);
    }

    public final boolean Y(long j2, long j3) throws ExoPlaybackException {
        HashMap map;
        MediaCodecAdapter mediaCodecAdapter = this.P;
        mediaCodecAdapter.getClass();
        int i2 = this.f1;
        MediaCodec.BufferInfo bufferInfo = this.C;
        if (i2 < 0) {
            int iO = mediaCodecAdapter.o(bufferInfo);
            if (iO < 0) {
                if (iO != -2) {
                    if (this.t0 && (this.t1 || this.n1 == 2)) {
                        C0();
                    }
                    long j4 = this.b1;
                    if (j4 != -9223372036854775807L) {
                        long j5 = j4 + 100;
                        Clock clock = this.f14566h;
                        clock.getClass();
                        if (j5 < clock.a()) {
                            C0();
                            return false;
                        }
                    }
                    return false;
                }
                this.r1 = true;
                MediaCodecAdapter mediaCodecAdapter2 = this.P;
                mediaCodecAdapter2.getClass();
                MediaFormat mediaFormatF = mediaCodecAdapter2.f();
                if (!this.H1.isEmpty()) {
                    ImmutableSet immutableSet = this.H1;
                    CodecParameters codecParameters = CodecParameters.f14570b;
                    CodecParameters.Builder builder = new CodecParameters.Builder();
                    Iterator<E> it = immutableSet.iterator();
                    while (true) {
                        boolean zHasNext = it.hasNext();
                        map = builder.f14572a;
                        if (!zHasNext) {
                            break;
                        }
                        String str = (String) it.next();
                        if (mediaFormatF.containsKey(str)) {
                            int valueTypeForKey = mediaFormatF.getValueTypeForKey(str);
                            if (valueTypeForKey == 1) {
                                map.put(str, Integer.valueOf(mediaFormatF.getInteger(str)));
                            } else if (valueTypeForKey == 2) {
                                map.put(str, Long.valueOf(mediaFormatF.getLong(str)));
                            } else if (valueTypeForKey == 3) {
                                map.put(str, Float.valueOf(mediaFormatF.getFloat(str)));
                            } else if (valueTypeForKey == 4) {
                                map.put(str, mediaFormatF.getString(str));
                            } else if (valueTypeForKey == 5) {
                                ByteBuffer byteBuffer = mediaFormatF.getByteBuffer(str);
                                if (byteBuffer == null) {
                                    map.put(str, null);
                                } else {
                                    ByteBuffer byteBufferAllocate = ByteBuffer.allocate(byteBuffer.remaining());
                                    byteBufferAllocate.put(byteBuffer.duplicate());
                                    byteBufferAllocate.flip();
                                    map.put(str, byteBufferAllocate);
                                }
                            }
                        }
                    }
                    CodecParameters codecParameters2 = new CodecParameters(map);
                    if (!codecParameters2.equals(this.G1)) {
                        this.G1 = codecParameters2;
                        u0(codecParameters2);
                    }
                }
                this.R = mediaFormatF;
                this.S = true;
                return true;
            }
            bufferInfo.presentationTimeUs -= this.E1;
            if (this.h0) {
                this.h0 = false;
                mediaCodecAdapter.l(iO);
                return true;
            }
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                C0();
                return false;
            }
            this.f1 = iO;
            ByteBuffer byteBufferP = mediaCodecAdapter.p(iO);
            this.g1 = byteBufferP;
            if (byteBufferP != null) {
                byteBufferP.position(bufferInfo.offset);
                this.g1.limit(bufferInfo.offset + bufferInfo.size);
            }
            U0(bufferInfo.presentationTimeUs);
        }
        boolean z = this.D1 || bufferInfo.presentationTimeUs < this.m;
        long j6 = this.z1.f15392f;
        boolean z2 = j6 != -9223372036854775807L && j6 <= bufferInfo.presentationTimeUs;
        this.h1 = z2;
        ByteBuffer byteBuffer2 = this.g1;
        int i3 = this.f1;
        int i4 = bufferInfo.flags;
        long j7 = bufferInfo.presentationTimeUs;
        Format format = this.H;
        format.getClass();
        if (!D0(j2, j3, mediaCodecAdapter, byteBuffer2, i3, i4, 1, j7, z, z2, format)) {
            return false;
        }
        z0(bufferInfo.presentationTimeUs);
        boolean z3 = (bufferInfo.flags & 4) != 0;
        if (!z3 && this.q1 && this.h1) {
            Clock clock2 = this.f14566h;
            clock2.getClass();
            this.b1 = clock2.a();
        }
        this.f1 = -1;
        this.g1 = null;
        if (!z3) {
            return true;
        }
        C0();
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:103:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:112:0x0091 A[EDGE_INSN: B:112:0x0091->B:33:0x0091 BREAK  A[LOOP:0: B:30:0x006f->B:32:0x007c], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    /* JADX WARN: Code duplicated, block: B:23:0x0049  */
    /* JADX WARN: Code duplicated, block: B:25:0x004d  */
    /* JADX WARN: Code duplicated, block: B:27:0x006a  */
    /* JADX WARN: Code duplicated, block: B:29:0x006e  */
    /* JADX WARN: Code duplicated, block: B:32:0x007c A[LOOP:0: B:30:0x006f->B:32:0x007c, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:38:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:42:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:51:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:53:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:56:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:61:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:63:0x010a  */
    /* JADX WARN: Code duplicated, block: B:71:0x011e  */
    /* JADX WARN: Code duplicated, block: B:74:0x0127  */
    /* JADX WARN: Code duplicated, block: B:76:0x012f  */
    /* JADX WARN: Code duplicated, block: B:78:0x0133  */
    /* JADX WARN: Code duplicated, block: B:79:0x0137  */
    /* JADX WARN: Code duplicated, block: B:81:0x013b  */
    /* JADX WARN: Code duplicated, block: B:85:0x014e  */
    /* JADX WARN: Code duplicated, block: B:88:0x016e  */
    /* JADX WARN: Code duplicated, block: B:90:0x0176  */
    /* JADX WARN: Code duplicated, block: B:93:0x0189  */
    /* JADX WARN: Code duplicated, block: B:96:0x0190  */
    /* JADX WARN: Code duplicated, block: B:98:0x0196  */
    public final boolean Z() throws Throwable {
        int iPosition;
        FormatHolder formatHolder;
        int i2;
        long j2;
        boolean zF;
        int iC0;
        long j3;
        int i3;
        long j4;
        CryptoInfo cryptoInfo;
        int i4;
        Format format;
        MediaCodecAdapter mediaCodecAdapter = this.P;
        if (mediaCodecAdapter != null && this.n1 != 2 && !this.t1) {
            int i5 = this.e1;
            DecoderInputBuffer decoderInputBuffer = this.z;
            if (i5 < 0) {
                int iN = mediaCodecAdapter.n();
                this.e1 = iN;
                if (iN >= 0) {
                    decoderInputBuffer.f14543e = mediaCodecAdapter.i(iN);
                    decoderInputBuffer.g();
                    if (this.n1 == 1) {
                        if (!this.t0) {
                            this.q1 = true;
                            mediaCodecAdapter.c(this.e1, 0, 4, 0L);
                            this.e1 = -1;
                            decoderInputBuffer.f14543e = null;
                        }
                        this.n1 = 2;
                        return false;
                    }
                    if (this.Z) {
                        this.Z = false;
                        ByteBuffer byteBuffer = decoderInputBuffer.f14543e;
                        byteBuffer.getClass();
                        byteBuffer.put(I1);
                        mediaCodecAdapter.c(this.e1, 38, 0, 0L);
                        this.e1 = -1;
                        decoderInputBuffer.f14543e = null;
                        this.p1 = true;
                        return true;
                    }
                    if (this.m1 == 1) {
                        i4 = 0;
                        while (true) {
                            format = this.Q;
                            format.getClass();
                            if (i4 < format.r.size()) {
                                break;
                            }
                            byte[] bArr = (byte[]) this.Q.r.get(i4);
                            ByteBuffer byteBuffer2 = decoderInputBuffer.f14543e;
                            byteBuffer2.getClass();
                            byteBuffer2.put(bArr);
                            i4++;
                        }
                        this.m1 = 2;
                    }
                    ByteBuffer byteBuffer3 = decoderInputBuffer.f14543e;
                    byteBuffer3.getClass();
                    iPosition = byteBuffer3.position();
                    formatHolder = this.d;
                    formatHolder.a();
                    try {
                        mediaCodecAdapter.k(new aa0(this, formatHolder, 5));
                        i2 = this.F.get();
                        if (i2 == -3) {
                            if (j()) {
                                h0().f15392f = this.s1;
                                return false;
                            }
                        } else {
                            if (i2 == -5) {
                                if (this.m1 == 2) {
                                    decoderInputBuffer.g();
                                    this.m1 = 1;
                                }
                                w0(formatHolder);
                                return true;
                            }
                            if (decoderInputBuffer.f(4)) {
                                if (!this.p1 || decoderInputBuffer.f(1)) {
                                    j2 = decoderInputBuffer.g;
                                    if (!M0(decoderInputBuffer)) {
                                        zF = decoderInputBuffer.f(1073741824);
                                        if (zF) {
                                            cryptoInfo = decoderInputBuffer.d;
                                            if (iPosition == 0) {
                                                cryptoInfo.getClass();
                                            } else {
                                                if (cryptoInfo.d == null) {
                                                    int[] iArr = new int[1];
                                                    cryptoInfo.d = iArr;
                                                    cryptoInfo.f14538i.numBytesOfClearData = iArr;
                                                }
                                                int[] iArr2 = cryptoInfo.d;
                                                iArr2[0] = iArr2[0] + iPosition;
                                            }
                                        }
                                        if (this.v1) {
                                            OutputStreamInfo outputStreamInfoH0 = h0();
                                            TimedValueQueue timedValueQueue = outputStreamInfoH0.d;
                                            Format format2 = this.G;
                                            format2.getClass();
                                            timedValueQueue.a(j2, format2);
                                            outputStreamInfoH0.f15391e = true;
                                            this.v1 = false;
                                        }
                                        this.s1 = Math.max(this.s1, j2);
                                        if (j() || decoderInputBuffer.f(PKIFailureInfo.duplicateCertReq)) {
                                            h0().f15392f = this.s1;
                                        }
                                        decoderInputBuffer.j();
                                        if (decoderInputBuffer.f(268435456)) {
                                            l0(decoderInputBuffer);
                                        }
                                        if (this.D1) {
                                            j4 = this.s1;
                                            if (j2 <= j4) {
                                                this.E1 = (j4 - j2) + 1 + this.E1;
                                            }
                                            this.s1 = j2;
                                            this.D1 = false;
                                        }
                                        B0(decoderInputBuffer);
                                        iC0 = c0(decoderInputBuffer);
                                        j3 = j2 + this.E1;
                                        i3 = this.e1;
                                        if (zF) {
                                            mediaCodecAdapter.a(i3, decoderInputBuffer.d, j3, iC0);
                                        } else {
                                            ByteBuffer byteBuffer4 = decoderInputBuffer.f14543e;
                                            byteBuffer4.getClass();
                                            mediaCodecAdapter.c(i3, byteBuffer4.limit(), iC0, j3);
                                        }
                                        this.e1 = -1;
                                        decoderInputBuffer.f14543e = null;
                                        this.p1 = true;
                                        this.m1 = 0;
                                        this.y1.f14575c++;
                                        return true;
                                    }
                                } else {
                                    decoderInputBuffer.g();
                                    if (this.m1 == 2) {
                                        this.m1 = 1;
                                        return true;
                                    }
                                }
                                return true;
                            }
                            h0().f15392f = this.s1;
                            if (this.m1 == 2) {
                                decoderInputBuffer.g();
                                this.m1 = 1;
                            }
                            this.t1 = true;
                            if (!this.p1) {
                                C0();
                                return false;
                            }
                            if (!this.t0) {
                                this.q1 = true;
                                mediaCodecAdapter.c(this.e1, 0, 4, 0L);
                                this.e1 = -1;
                                decoderInputBuffer.f14543e = null;
                                return false;
                            }
                        }
                    } catch (DecoderInputBuffer.InsufficientCapacityException e2) {
                        s0(e2);
                        E0(0);
                        a0();
                        return true;
                    }
                }
            } else {
                if (this.n1 == 1) {
                    if (!this.t0) {
                        this.q1 = true;
                        mediaCodecAdapter.c(this.e1, 0, 4, 0L);
                        this.e1 = -1;
                        decoderInputBuffer.f14543e = null;
                    }
                    this.n1 = 2;
                    return false;
                }
                if (this.Z) {
                    this.Z = false;
                    ByteBuffer byteBuffer5 = decoderInputBuffer.f14543e;
                    byteBuffer5.getClass();
                    byteBuffer5.put(I1);
                    mediaCodecAdapter.c(this.e1, 38, 0, 0L);
                    this.e1 = -1;
                    decoderInputBuffer.f14543e = null;
                    this.p1 = true;
                    return true;
                }
                if (this.m1 == 1) {
                    i4 = 0;
                    while (true) {
                        format = this.Q;
                        format.getClass();
                        if (i4 < format.r.size()) {
                            break;
                            break;
                        }
                        byte[] bArr2 = (byte[]) this.Q.r.get(i4);
                        ByteBuffer byteBuffer6 = decoderInputBuffer.f14543e;
                        byteBuffer6.getClass();
                        byteBuffer6.put(bArr2);
                        i4++;
                    }
                    this.m1 = 2;
                }
                ByteBuffer byteBuffer7 = decoderInputBuffer.f14543e;
                byteBuffer7.getClass();
                iPosition = byteBuffer7.position();
                formatHolder = this.d;
                formatHolder.a();
                mediaCodecAdapter.k(new aa0(this, formatHolder, 5));
                i2 = this.F.get();
                if (i2 == -3) {
                    if (j()) {
                        h0().f15392f = this.s1;
                        return false;
                    }
                } else {
                    if (i2 == -5) {
                        if (this.m1 == 2) {
                            decoderInputBuffer.g();
                            this.m1 = 1;
                        }
                        w0(formatHolder);
                        return true;
                    }
                    if (decoderInputBuffer.f(4)) {
                        if (this.p1) {
                            j2 = decoderInputBuffer.g;
                            if (!M0(decoderInputBuffer)) {
                                zF = decoderInputBuffer.f(1073741824);
                                if (zF) {
                                    cryptoInfo = decoderInputBuffer.d;
                                    if (iPosition == 0) {
                                        cryptoInfo.getClass();
                                    } else {
                                        if (cryptoInfo.d == null) {
                                            int[] iArr3 = new int[1];
                                            cryptoInfo.d = iArr3;
                                            cryptoInfo.f14538i.numBytesOfClearData = iArr3;
                                        }
                                        int[] iArr4 = cryptoInfo.d;
                                        iArr4[0] = iArr4[0] + iPosition;
                                    }
                                }
                                if (this.v1) {
                                    OutputStreamInfo outputStreamInfoH1 = h0();
                                    TimedValueQueue timedValueQueue2 = outputStreamInfoH1.d;
                                    Format format3 = this.G;
                                    format3.getClass();
                                    timedValueQueue2.a(j2, format3);
                                    outputStreamInfoH1.f15391e = true;
                                    this.v1 = false;
                                }
                                this.s1 = Math.max(this.s1, j2);
                                if (j()) {
                                    h0().f15392f = this.s1;
                                } else {
                                    h0().f15392f = this.s1;
                                }
                                decoderInputBuffer.j();
                                if (decoderInputBuffer.f(268435456)) {
                                    l0(decoderInputBuffer);
                                }
                                if (this.D1) {
                                    j4 = this.s1;
                                    if (j2 <= j4) {
                                        this.E1 = (j4 - j2) + 1 + this.E1;
                                    }
                                    this.s1 = j2;
                                    this.D1 = false;
                                }
                                B0(decoderInputBuffer);
                                iC0 = c0(decoderInputBuffer);
                                j3 = j2 + this.E1;
                                i3 = this.e1;
                                if (zF) {
                                    mediaCodecAdapter.a(i3, decoderInputBuffer.d, j3, iC0);
                                } else {
                                    ByteBuffer byteBuffer8 = decoderInputBuffer.f14543e;
                                    byteBuffer8.getClass();
                                    mediaCodecAdapter.c(i3, byteBuffer8.limit(), iC0, j3);
                                }
                                this.e1 = -1;
                                decoderInputBuffer.f14543e = null;
                                this.p1 = true;
                                this.m1 = 0;
                                this.y1.f14575c++;
                                return true;
                            }
                        } else {
                            j2 = decoderInputBuffer.g;
                            if (!M0(decoderInputBuffer)) {
                                zF = decoderInputBuffer.f(1073741824);
                                if (zF) {
                                    cryptoInfo = decoderInputBuffer.d;
                                    if (iPosition == 0) {
                                        cryptoInfo.getClass();
                                    } else {
                                        if (cryptoInfo.d == null) {
                                            int[] iArr5 = new int[1];
                                            cryptoInfo.d = iArr5;
                                            cryptoInfo.f14538i.numBytesOfClearData = iArr5;
                                        }
                                        int[] iArr6 = cryptoInfo.d;
                                        iArr6[0] = iArr6[0] + iPosition;
                                    }
                                }
                                if (this.v1) {
                                    OutputStreamInfo outputStreamInfoH2 = h0();
                                    TimedValueQueue timedValueQueue3 = outputStreamInfoH2.d;
                                    Format format4 = this.G;
                                    format4.getClass();
                                    timedValueQueue3.a(j2, format4);
                                    outputStreamInfoH2.f15391e = true;
                                    this.v1 = false;
                                }
                                this.s1 = Math.max(this.s1, j2);
                                if (j()) {
                                    h0().f15392f = this.s1;
                                } else {
                                    h0().f15392f = this.s1;
                                }
                                decoderInputBuffer.j();
                                if (decoderInputBuffer.f(268435456)) {
                                    l0(decoderInputBuffer);
                                }
                                if (this.D1) {
                                    j4 = this.s1;
                                    if (j2 <= j4) {
                                        this.E1 = (j4 - j2) + 1 + this.E1;
                                    }
                                    this.s1 = j2;
                                    this.D1 = false;
                                }
                                B0(decoderInputBuffer);
                                iC0 = c0(decoderInputBuffer);
                                j3 = j2 + this.E1;
                                i3 = this.e1;
                                if (zF) {
                                    mediaCodecAdapter.a(i3, decoderInputBuffer.d, j3, iC0);
                                } else {
                                    ByteBuffer byteBuffer9 = decoderInputBuffer.f14543e;
                                    byteBuffer9.getClass();
                                    mediaCodecAdapter.c(i3, byteBuffer9.limit(), iC0, j3);
                                }
                                this.e1 = -1;
                                decoderInputBuffer.f14543e = null;
                                this.p1 = true;
                                this.m1 = 0;
                                this.y1.f14575c++;
                                return true;
                            }
                        }
                        return true;
                    }
                    h0().f15392f = this.s1;
                    if (this.m1 == 2) {
                        decoderInputBuffer.g();
                        this.m1 = 1;
                    }
                    this.t1 = true;
                    if (!this.p1) {
                        C0();
                        return false;
                    }
                    if (!this.t0) {
                        this.q1 = true;
                        mediaCodecAdapter.c(this.e1, 0, 4, 0L);
                        this.e1 = -1;
                        decoderInputBuffer.f14543e = null;
                        return false;
                    }
                }
            }
        }
        return false;
    }

    public final void a0() {
        try {
            MediaCodecAdapter mediaCodecAdapter = this.P;
            mediaCodecAdapter.getClass();
            mediaCodecAdapter.flush();
        } finally {
            I0();
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public final int b(Format format) throws ExoPlaybackException {
        try {
            return R0(this.v, format);
        } catch (MediaCodecUtil.DecoderQueryException e2) {
            throw J(e2, format, false, 4002);
        }
    }

    public final List b0(boolean z) {
        Format format = this.G;
        format.getClass();
        MediaCodecSelector mediaCodecSelector = this.v;
        ArrayList arrayListE0 = e0(mediaCodecSelector, format, z);
        if (!arrayListE0.isEmpty() || !z) {
            return arrayListE0;
        }
        ArrayList arrayListE1 = e0(mediaCodecSelector, format, false);
        if (!arrayListE1.isEmpty()) {
            Log.g("Drm session requires secure decoder for " + format.o + ", but no secure decoder available. Trying to proceed with " + arrayListE1 + FileUtils.HIDDEN_PREFIX);
        }
        return arrayListE1;
    }

    public int c0(DecoderInputBuffer decoderInputBuffer) {
        return 0;
    }

    public float d0(float f2, Format format, Format[] formatArr) {
        return -1.0f;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public boolean e() {
        return this.u1;
    }

    public abstract ArrayList e0(MediaCodecSelector mediaCodecSelector, Format format, boolean z);

    public long f0(long j2, long j3, boolean z) {
        return super.x(j2, j3);
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void g(long j2, long j3) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        if (this.w1) {
            this.w1 = false;
            C0();
        }
        ExoPlaybackException exoPlaybackException = this.x1;
        if (exoPlaybackException != null) {
            this.x1 = null;
            throw exoPlaybackException;
        }
        try {
            if (this.u1) {
                G0();
                return;
            }
            if (this.G != null || E0(2)) {
                p0();
                if (this.i1) {
                    Trace.beginSection("bypassRender");
                    while (V(j2, j3)) {
                    }
                    Trace.endSection();
                } else if (this.P != null) {
                    Clock clock = this.f14566h;
                    clock.getClass();
                    long jB = clock.b();
                    Trace.beginSection("drainAndFeed");
                    while (Y(j2, j3)) {
                        long j4 = this.M;
                        if (j4 != -9223372036854775807L) {
                            Clock clock2 = this.f14566h;
                            clock2.getClass();
                            z2 = clock2.b() - jB < j4;
                        }
                        if (!z2) {
                            break;
                        }
                    }
                    while (Z()) {
                        long j5 = this.M;
                        if (j5 != -9223372036854775807L) {
                            Clock clock3 = this.f14566h;
                            clock3.getClass();
                            z = clock3.b() - jB < j5;
                        }
                        if (!z) {
                            break;
                        }
                    }
                    Trace.endSection();
                } else {
                    DecoderCounters decoderCounters = this.y1;
                    int i2 = decoderCounters.d;
                    SampleStream sampleStream = this.f14568j;
                    sampleStream.getClass();
                    decoderCounters.d = i2 + sampleStream.b(j2 - this.l);
                    E0(1);
                }
                synchronized (this.y1) {
                }
            }
        } catch (MediaCodec.CryptoException e2) {
            throw J(e2, this.G, false, Util.y(e2.getErrorCode()));
        } catch (IllegalStateException e3) {
            boolean z4 = e3 instanceof MediaCodec.CodecException;
            if (!z4) {
                StackTraceElement[] stackTrace = e3.getStackTrace();
                if (stackTrace.length <= 0 || !stackTrace[0].getClassName().equals("android.media.MediaCodec")) {
                    throw e3;
                }
            }
            s0(e3);
            if (z4 && ((MediaCodec.CodecException) e3).isRecoverable()) {
                z3 = true;
            }
            if (z3) {
                F0();
            }
            MediaCodecDecoderException mediaCodecDecoderExceptionX = X(e3, this.X);
            throw J(mediaCodecDecoderExceptionX, this.G, z3, mediaCodecDecoderExceptionX.f15373b == 1101 ? 4006 : 4003);
        }
    }

    public final long g0() {
        return this.z1.f15392f;
    }

    public final OutputStreamInfo h0() {
        ArrayDeque arrayDeque = this.D;
        return !arrayDeque.isEmpty() ? (OutputStreamInfo) arrayDeque.getLast() : this.z1;
    }

    public abstract MediaCodecAdapter.Configuration i0(MediaCodecInfo mediaCodecInfo, Format format, MediaCrypto mediaCrypto, float f2);

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return o0();
    }

    public final long j0() {
        return this.z1.f15390c;
    }

    public final long k0() {
        return this.z1.f15389b;
    }

    public void l0(DecoderInputBuffer decoderInputBuffer) {
    }

    public final void m0(MediaCodecInfo mediaCodecInfo, MediaCrypto mediaCrypto) {
        this.X = mediaCodecInfo;
        Format format = this.G;
        format.getClass();
        String str = mediaCodecInfo.f15374a;
        float f2 = this.O;
        Format[] formatArr = this.f14569k;
        formatArr.getClass();
        float fD0 = d0(f2, format, formatArr);
        if (fD0 <= this.x) {
            fD0 = -1.0f;
        }
        Clock clock = this.f14566h;
        clock.getClass();
        long jB = clock.b();
        MediaCodecAdapter.Configuration configurationI0 = i0(mediaCodecInfo, format, mediaCrypto, fD0);
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            PlayerId playerId = this.g;
            playerId.getClass();
            Api31.a(configurationI0, playerId);
        }
        try {
            Trace.beginSection("createCodec:" + str);
            MediaCodecAdapter mediaCodecAdapterA = this.u.a(configurationI0);
            this.P = mediaCodecAdapterA;
            this.c1 = mediaCodecAdapterA.d(new MediaCodecRendererCodecAdapterListener());
            Trace.endSection();
            Clock clock2 = this.f14566h;
            clock2.getClass();
            long jB2 = clock2.b();
            if (!mediaCodecInfo.e(this.t, format)) {
                String strC = Format.c(format);
                Locale locale = Locale.US;
                Log.g("Format exceeds selected codec's capabilities [" + strC + ", " + str + "]");
            }
            this.T = fD0;
            this.Q = format;
            boolean z = false;
            this.Y = i2 == 29 && "c2.android.aac.decoder".equals(str);
            String str2 = mediaCodecInfo.f15374a;
            if ((i2 <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str2) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str2) || "OMX.bcm.vdec.avc.tunnel".equals(str2) || "OMX.bcm.vdec.avc.tunnel.secure".equals(str2) || "OMX.bcm.vdec.hevc.tunnel".equals(str2) || "OMX.bcm.vdec.hevc.tunnel.secure".equals(str2))) || ("Amazon".equals(Build.MANUFACTURER) && "AFTS".equals(Build.MODEL) && mediaCodecInfo.f15378f)) {
                z = true;
            }
            this.t0 = z;
            this.P.getClass();
            if (this.f14567i == 2) {
                Clock clock3 = this.f14566h;
                clock3.getClass();
                this.d1 = clock3.b() + 1000;
            }
            this.y1.f14573a++;
            long j2 = jB2 - jB;
            if (i2 >= 31 && !this.H1.isEmpty()) {
                MediaCodecAdapter mediaCodecAdapter = this.P;
                mediaCodecAdapter.getClass();
                mediaCodecAdapter.q(new ArrayList(this.H1));
            }
            t0(jB2, j2, str);
        } catch (Throwable th) {
            Trace.endSection();
            throw th;
        }
    }

    public final boolean n0(long j2, long j3) {
        if (j3 >= j2) {
            return false;
        }
        Format format = this.H;
        return format == null || !Objects.equals(format.o, "audio/opus") || j2 - j3 > 80000;
    }

    public final boolean o0() {
        boolean zIsReady;
        if (this.G == null) {
            return false;
        }
        if (j()) {
            zIsReady = this.o;
        } else {
            SampleStream sampleStream = this.f14568j;
            sampleStream.getClass();
            zIsReady = sampleStream.isReady();
        }
        if (zIsReady || this.f1 >= 0) {
            return true;
        }
        if (this.d1 == -9223372036854775807L) {
            return false;
        }
        Clock clock = this.f14566h;
        clock.getClass();
        return clock.b() < this.d1;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0086 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:40:0x0088  */
    /* JADX WARN: Code duplicated, block: B:43:0x008f  */
    /* JADX WARN: Code duplicated, block: B:45:0x0093  */
    /* JADX WARN: Code duplicated, block: B:53:0x00af A[Catch: DecoderInitializationException -> 0x00bf, TryCatch #0 {DecoderInitializationException -> 0x00bf, blocks: (B:51:0x00ab, B:53:0x00af, B:55:0x00b6, B:60:0x00c1, B:64:0x00ce), top: B:74:0x00ab }] */
    /* JADX WARN: Code duplicated, block: B:63:0x00cd  */
    public final void p0() {
        Format format;
        DrmSession drmSession;
        if (this.P != null || this.i1 || (format = this.G) == null) {
            return;
        }
        String str = format.o;
        boolean z = true;
        if (this.J == null && Q0(format)) {
            this.i1 = false;
            H0();
            boolean zEquals = "audio/mp4a-latm".equals(str);
            BatchBuffer batchBuffer = this.B;
            if (zEquals || "audio/mpeg".equals(str) || "audio/opus".equals(str)) {
                batchBuffer.getClass();
                batchBuffer.m = 32;
            } else {
                batchBuffer.getClass();
                batchBuffer.m = 1;
            }
            this.i1 = true;
            return;
        }
        K0(this.J);
        if (this.I == null) {
            try {
                drmSession = this.I;
                if (drmSession == null && (drmSession.getState() == 3 || this.I.getState() == 4)) {
                    DrmSession drmSession2 = this.I;
                    str.getClass();
                    if (!drmSession2.g(str)) {
                        z = false;
                    }
                } else {
                    z = false;
                }
                q0(this.L, z);
            } catch (DecoderInitializationException e2) {
                throw J(e2, format, false, 4001);
            }
        } else {
            Preconditions.q(this.L == null);
            DrmSession drmSession3 = this.I;
            CryptoConfig cryptoConfigD = drmSession3.d();
            if (FrameworkCryptoConfig.f15090c && (cryptoConfigD instanceof FrameworkCryptoConfig)) {
                int state = drmSession3.getState();
                if (state == 1) {
                    DrmSession.DrmSessionException drmSessionExceptionA = drmSession3.a();
                    drmSessionExceptionA.getClass();
                    throw J(drmSessionExceptionA, this.G, false, drmSessionExceptionA.f15078b);
                }
                if (state == 4) {
                    if (cryptoConfigD == null) {
                        if (drmSession3.a() != null) {
                        }
                    } else if (cryptoConfigD instanceof FrameworkCryptoConfig) {
                        FrameworkCryptoConfig frameworkCryptoConfig = (FrameworkCryptoConfig) cryptoConfigD;
                        this.L = new MediaCrypto(frameworkCryptoConfig.f15091a, frameworkCryptoConfig.f15092b);
                    }
                    drmSession = this.I;
                    if (drmSession == null) {
                        z = false;
                    } else {
                        z = false;
                    }
                    q0(this.L, z);
                }
            } else {
                if (cryptoConfigD == null) {
                    if (drmSession3.a() != null) {
                    }
                } else if (cryptoConfigD instanceof FrameworkCryptoConfig) {
                    FrameworkCryptoConfig frameworkCryptoConfig2 = (FrameworkCryptoConfig) cryptoConfigD;
                    try {
                        this.L = new MediaCrypto(frameworkCryptoConfig2.f15091a, frameworkCryptoConfig2.f15092b);
                    } catch (MediaCryptoException e3) {
                        throw J(e3, this.G, false, 6006);
                    }
                }
                drmSession = this.I;
                if (drmSession == null) {
                    z = false;
                } else {
                    z = false;
                }
                q0(this.L, z);
            }
        }
        MediaCrypto mediaCrypto = this.L;
        if (mediaCrypto == null || this.P != null) {
            return;
        }
        mediaCrypto.release();
        this.L = null;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void q(int i2, Object obj) {
        if (i2 == 11) {
            Renderer.WakeupListener wakeupListener = (Renderer.WakeupListener) obj;
            wakeupListener.getClass();
            this.K = wakeupListener;
            return;
        }
        if (i2 != 21) {
            if (i2 != 22) {
                return;
            }
            obj.getClass();
            ImmutableSet immutableSet = (ImmutableSet) obj;
            if (this.H1.equals(immutableSet)) {
                return;
            }
            if (Build.VERSION.SDK_INT >= 31) {
                HashSet hashSet = new HashSet(immutableSet);
                HashSet hashSet2 = new HashSet();
                UnmodifiableIterator it = this.H1.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (!hashSet.remove(str)) {
                        hashSet2.add(str);
                    }
                }
                MediaCodecAdapter mediaCodecAdapter = this.P;
                if (mediaCodecAdapter != null) {
                    if (!hashSet2.isEmpty()) {
                        mediaCodecAdapter.r(new ArrayList(hashSet2));
                    }
                    if (!hashSet.isEmpty()) {
                        mediaCodecAdapter.q(new ArrayList(hashSet));
                    }
                }
            }
            this.H1 = immutableSet;
            return;
        }
        obj.getClass();
        CodecParameters codecParameters = (CodecParameters) obj;
        this.F1 = codecParameters;
        MediaCodecAdapter mediaCodecAdapter2 = this.P;
        if (mediaCodecAdapter2 != null) {
            Bundle bundle = new Bundle();
            for (Map.Entry entry : codecParameters.f14571a.entrySet()) {
                String str2 = (String) entry.getKey();
                Object value = entry.getValue();
                if (value != null) {
                    if (value instanceof Integer) {
                        bundle.putInt(str2, ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        bundle.putLong(str2, ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        bundle.putFloat(str2, ((Float) value).floatValue());
                    } else if (value instanceof String) {
                        bundle.putString(str2, (String) value);
                    } else if (value instanceof ByteBuffer) {
                        ByteBuffer byteBuffer = (ByteBuffer) value;
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.duplicate().get(bArr);
                        bundle.putByteArray(str2, bArr);
                    }
                }
            }
            mediaCodecAdapter2.b(bundle);
        }
    }

    public final void q0(MediaCrypto mediaCrypto, boolean z) throws DecoderInitializationException {
        Format format = this.G;
        format.getClass();
        if (this.V == null) {
            try {
                List listB0 = b0(z);
                ArrayDeque arrayDeque = new ArrayDeque();
                this.V = arrayDeque;
                if (this.w) {
                    arrayDeque.addAll(listB0);
                } else {
                    ArrayList arrayList = (ArrayList) listB0;
                    if (!arrayList.isEmpty()) {
                        this.V.add((MediaCodecInfo) arrayList.get(0));
                    }
                }
                this.W = null;
            } catch (MediaCodecUtil.DecoderQueryException e2) {
                throw new DecoderInitializationException(format, e2, z, -49998);
            }
        }
        if (this.V.isEmpty()) {
            throw new DecoderInitializationException(format, (Throwable) null, z, -49999);
        }
        ArrayDeque arrayDeque2 = this.V;
        arrayDeque2.getClass();
        while (this.P == null) {
            MediaCodecInfo mediaCodecInfo = (MediaCodecInfo) arrayDeque2.peekFirst();
            mediaCodecInfo.getClass();
            if (!r0(format) || !O0(mediaCodecInfo)) {
                return;
            }
            try {
                m0(mediaCodecInfo, mediaCrypto);
            } catch (Exception e3) {
                Log.h("Failed to initialize decoder: " + mediaCodecInfo, e3);
                arrayDeque2.removeFirst();
                DecoderInitializationException decoderInitializationException = new DecoderInitializationException(format, e3, z, mediaCodecInfo);
                s0(decoderInitializationException);
                if (this.W == null) {
                    this.W = decoderInitializationException;
                } else {
                    DecoderInitializationException decoderInitializationException2 = this.W;
                    this.W = new DecoderInitializationException(decoderInitializationException2.getMessage(), decoderInitializationException2.getCause(), decoderInitializationException2.f15384b, decoderInitializationException2.f15385c, decoderInitializationException2.d, decoderInitializationException2.f15386e);
                }
                if (arrayDeque2.isEmpty()) {
                    throw this.W;
                }
            }
        }
        this.V = null;
    }

    public boolean r0(Format format) {
        return true;
    }

    public void s0(Exception exc) {
    }

    public void t0(long j2, long j3, String str) {
    }

    public abstract void u0(CodecParameters codecParameters);

    public void v0(String str) {
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0030  */
    /* JADX WARN: Code duplicated, block: B:32:0x0061  */
    /* JADX WARN: Code duplicated, block: B:34:0x0069  */
    /* JADX WARN: Code duplicated, block: B:98:0x0149  */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0122, code lost:
    
        if (r4.g(r2) != false) goto L139;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public androidx.media3.exoplayer.DecoderReuseEvaluation w0(androidx.media3.exoplayer.FormatHolder r15) {
        /*
            Method dump skipped, instruction units count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.mediacodec.MediaCodecRenderer.w0(androidx.media3.exoplayer.FormatHolder):androidx.media3.exoplayer.DecoderReuseEvaluation");
    }

    @Override // androidx.media3.exoplayer.Renderer
    public final long x(long j2, long j3) {
        return f0(j2, j3, this.c1);
    }

    public void x0(Format format, MediaFormat mediaFormat) {
    }

    public void y0(long j2) {
    }

    public void z0(long j2) {
        this.A1 = j2;
        while (true) {
            ArrayDeque arrayDeque = this.D;
            if (arrayDeque.isEmpty() || j2 < ((OutputStreamInfo) arrayDeque.peek()).f15388a) {
                return;
            }
            OutputStreamInfo outputStreamInfo = (OutputStreamInfo) arrayDeque.poll();
            outputStreamInfo.getClass();
            L0(outputStreamInfo);
            A0();
        }
    }

    public static class DecoderInitializationException extends Exception {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f15384b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final boolean f15385c;
        public final MediaCodecInfo d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final String f15386e;

        public DecoderInitializationException(Format format, Throwable th, boolean z, int i2) {
            this("Decoder init failed: [" + i2 + "], " + format, th, format.o, z, null, "androidx.media3.exoplayer.mediacodec.MediaCodecRenderer_" + (i2 < 0 ? "neg_" : "") + Math.abs(i2));
        }

        public DecoderInitializationException(Format format, Throwable th, boolean z, MediaCodecInfo mediaCodecInfo) {
            this("Decoder init failed: " + mediaCodecInfo.f15374a + ", " + format, th, format.o, z, mediaCodecInfo, th instanceof MediaCodec.CodecException ? ((MediaCodec.CodecException) th).getDiagnosticInfo() : null);
        }

        public DecoderInitializationException(String str, Throwable th, String str2, boolean z, MediaCodecInfo mediaCodecInfo, String str3) {
            super(str, th);
            this.f15384b = str2;
            this.f15385c = z;
            this.d = mediaCodecInfo;
            this.f15386e = str3;
        }
    }
}
