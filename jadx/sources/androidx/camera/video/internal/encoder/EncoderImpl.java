package androidx.camera.video.internal.encoder;

import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.LruCache;
import android.util.Range;
import android.util.Rational;
import android.view.Surface;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.video.internal.BufferProvider;
import androidx.camera.video.internal.DebugUtils;
import androidx.camera.video.internal.compat.quirk.AudioEncoderIgnoresInputTimestampQuirk;
import androidx.camera.video.internal.compat.quirk.CameraUseInconsistentTimebaseQuirk;
import androidx.camera.video.internal.compat.quirk.CodecStuckOnFlushQuirk;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.EncoderNotUsePersistentInputSurfaceQuirk;
import androidx.camera.video.internal.compat.quirk.PrematureEndOfStreamVideoQuirk;
import androidx.camera.video.internal.compat.quirk.PreviewFreezeAfterHighSpeedRecordingQuirk;
import androidx.camera.video.internal.compat.quirk.SignalEosOutputBufferNotComeQuirk;
import androidx.camera.video.internal.compat.quirk.VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk;
import androidx.camera.video.internal.utils.CodecUtil;
import androidx.camera.video.internal.workaround.VideoTimebaseConverter;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.ct0;
import defpackage.fw;
import defpackage.gw;
import defpackage.hw;
import defpackage.iw;
import defpackage.jr;
import defpackage.md;
import defpackage.rh;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public class EncoderImpl implements Encoder {
    public static final Range H = Range.create(Long.MAX_VALUE, Long.MAX_VALUE);
    public ScheduledFuture G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f3033a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f3035c;
    public final EncoderConfig d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final MediaFormat f3036e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final MediaCodec f3037f;
    public final Encoder.EncoderInput g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final EncoderInfoImpl f3038h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Executor f3039i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ListenableFuture f3040j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final CallbackToFutureAdapter.Completer f3041k;
    public final Timebase q;
    public final TimeProvider r;
    public final Rational s;
    public final boolean t;
    public InternalState w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f3034b = new Object();
    public final ArrayDeque l = new ArrayDeque();
    public final ArrayDeque m = new ArrayDeque();
    public final HashSet n = new HashSet();
    public final HashSet o = new HashSet();
    public final ArrayDeque p = new ArrayDeque();
    public EncoderCallback u = EncoderCallback.f3032a;
    public Executor v = CameraXExecutors.a();
    public Range x = H;
    public long y = 0;
    public boolean z = false;
    public Long A = null;
    public ScheduledFuture B = null;
    public MediaCodecCallback C = null;
    public boolean D = false;
    public boolean E = false;
    public boolean F = false;

    /* JADX INFO: renamed from: androidx.camera.video.internal.encoder.EncoderImpl$3, reason: invalid class name */
    class AnonymousClass3 implements TimeProvider {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ fw f3045a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ SystemTimeProvider f3046b;

        public AnonymousClass3(fw fwVar, SystemTimeProvider systemTimeProvider) {
            this.f3045a = fwVar;
            this.f3046b = systemTimeProvider;
        }

        @Override // androidx.camera.video.internal.encoder.TimeProvider
        public final long a() {
            return ((Long) this.f3045a.mo0apply((Object) Long.valueOf(this.f3046b.a()))).longValue();
        }

        @Override // androidx.camera.video.internal.encoder.TimeProvider
        public final long b() {
            return ((Long) this.f3045a.mo0apply((Object) Long.valueOf(this.f3046b.b()))).longValue();
        }
    }

    public class ByteBufferInput implements Encoder.ByteBufferInput {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final LinkedHashMap f3047a = new LinkedHashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public BufferProvider.State f3048b = BufferProvider.State.INACTIVE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ArrayList f3049c = new ArrayList();

        public ByteBufferInput() {
        }

        @Override // androidx.camera.core.impl.Observable
        public final ListenableFuture a() {
            return CallbackToFutureAdapter.a(new f(this, 0));
        }

        @Override // androidx.camera.core.impl.Observable
        public final void b(Executor executor, Observable.Observer observer) {
            EncoderImpl.this.f3039i.execute(new d(this, observer, executor, 1));
        }

        @Override // androidx.camera.core.impl.Observable
        public final void d(Observable.Observer observer) {
            EncoderImpl.this.f3039i.execute(new a(this, observer, 2));
        }

        @Override // androidx.camera.video.internal.BufferProvider
        public final ListenableFuture e() {
            return CallbackToFutureAdapter.a(new f(this, 1));
        }

        public final void f(boolean z) {
            BufferProvider.State state = z ? BufferProvider.State.ACTIVE : BufferProvider.State.INACTIVE;
            if (this.f3048b == state) {
                return;
            }
            this.f3048b = state;
            if (state == BufferProvider.State.INACTIVE) {
                ArrayList arrayList = this.f3049c;
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((ListenableFuture) it.next()).cancel(true);
                }
                arrayList.clear();
            }
            for (Map.Entry entry : this.f3047a.entrySet()) {
                try {
                    ((Executor) entry.getValue()).execute(new jr(entry, state, 13));
                } catch (RejectedExecutionException unused) {
                    Logger.b(EncoderImpl.this.f3033a);
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class InternalState {
        private static final /* synthetic */ InternalState[] $VALUES;
        public static final InternalState CONFIGURED;
        public static final InternalState ERROR;
        public static final InternalState PAUSED;
        public static final InternalState PENDING_RELEASE;
        public static final InternalState PENDING_START;
        public static final InternalState PENDING_START_PAUSED;
        public static final InternalState RELEASED;
        public static final InternalState STARTED;
        public static final InternalState STOPPING;

        static {
            InternalState internalState = new InternalState("CONFIGURED", 0);
            CONFIGURED = internalState;
            InternalState internalState2 = new InternalState("STARTED", 1);
            STARTED = internalState2;
            InternalState internalState3 = new InternalState("PAUSED", 2);
            PAUSED = internalState3;
            InternalState internalState4 = new InternalState("STOPPING", 3);
            STOPPING = internalState4;
            InternalState internalState5 = new InternalState("PENDING_START", 4);
            PENDING_START = internalState5;
            InternalState internalState6 = new InternalState("PENDING_START_PAUSED", 5);
            PENDING_START_PAUSED = internalState6;
            InternalState internalState7 = new InternalState("PENDING_RELEASE", 6);
            PENDING_RELEASE = internalState7;
            InternalState internalState8 = new InternalState("ERROR", 7);
            ERROR = internalState8;
            InternalState internalState9 = new InternalState("RELEASED", 8);
            RELEASED = internalState9;
            $VALUES = new InternalState[]{internalState, internalState2, internalState3, internalState4, internalState5, internalState6, internalState7, internalState8, internalState9};
        }

        public static InternalState valueOf(String str) {
            return (InternalState) Enum.valueOf(InternalState.class, str);
        }

        public static InternalState[] values() {
            return (InternalState[]) $VALUES.clone();
        }
    }

    public class MediaCodecCallback extends MediaCodec.Callback {
        public static final /* synthetic */ int m = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final VideoTimebaseConverter f3050a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f3051b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f3052c = false;
        public boolean d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f3053e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public long f3054f = 0;
        public long g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f3055h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f3056i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public boolean f3057j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f3058k;

        public MediaCodecCallback() {
            this.f3051b = true;
            boolean z = EncoderImpl.this.f3035c;
            this.f3058k = z;
            if (z) {
                this.f3050a = new VideoTimebaseConverter(EncoderImpl.this.r, EncoderImpl.this.q, (CameraUseInconsistentTimebaseQuirk) DeviceQuirks.f2947a.b(CameraUseInconsistentTimebaseQuirk.class));
            } else {
                this.f3050a = null;
            }
            if (((CodecStuckOnFlushQuirk) DeviceQuirks.f2947a.b(CodecStuckOnFlushQuirk.class)) == null || !"video/mp4v-es".equals(EncoderImpl.this.f3036e.getString("mime"))) {
                return;
            }
            this.f3051b = false;
        }

        public final void a() {
            EncoderImpl encoderImpl;
            EncoderCallback encoderCallback;
            Executor executor;
            Logger.c(3, EncoderImpl.this.f3033a);
            if (this.f3053e) {
                return;
            }
            this.f3053e = true;
            ScheduledFuture scheduledFuture = EncoderImpl.this.G;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                EncoderImpl.this.G = null;
            }
            synchronized (EncoderImpl.this.f3034b) {
                encoderImpl = EncoderImpl.this;
                encoderCallback = encoderImpl.u;
                executor = encoderImpl.v;
            }
            encoderImpl.q(new d(this, executor, encoderCallback, 2));
        }

        public final void b(final EncodedDataImpl encodedDataImpl, EncoderCallback encoderCallback, Executor executor) {
            EncoderImpl encoderImpl = EncoderImpl.this;
            encoderImpl.o.add(encodedDataImpl);
            Futures.a(Futures.h(encodedDataImpl.f3030f), new FutureCallback<Void>() { // from class: androidx.camera.video.internal.encoder.EncoderImpl.MediaCodecCallback.1
                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public final void onFailure(Throwable th) {
                    EncoderImpl encoderImpl2 = EncoderImpl.this;
                    encoderImpl2.o.remove(encodedDataImpl);
                    if (!(th instanceof MediaCodec.CodecException)) {
                        encoderImpl2.h(0, th.getMessage(), th);
                    } else {
                        MediaCodec.CodecException codecException = (MediaCodec.CodecException) th;
                        encoderImpl2.h(1, codecException.getMessage(), codecException);
                    }
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public final void onSuccess(Object obj) {
                    EncoderImpl.this.o.remove(encodedDataImpl);
                }
            }, encoderImpl.f3039i);
            try {
                executor.execute(new a(encoderCallback, encodedDataImpl, 6));
            } catch (RejectedExecutionException unused) {
                Logger.b(encoderImpl.f3033a);
                encodedDataImpl.close();
            }
        }

        @Override // android.media.MediaCodec.Callback
        public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
            EncoderImpl.this.f3039i.execute(new a(this, codecException, 3));
        }

        @Override // android.media.MediaCodec.Callback
        public final void onInputBufferAvailable(MediaCodec mediaCodec, final int i2) {
            EncoderImpl.this.f3039i.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.i
                @Override // java.lang.Runnable
                public final void run() {
                    EncoderImpl.MediaCodecCallback mediaCodecCallback = this.f3097b;
                    boolean z = mediaCodecCallback.f3057j;
                    EncoderImpl encoderImpl = EncoderImpl.this;
                    if (z) {
                        Logger.c(5, encoderImpl.f3033a);
                    }
                    switch (encoderImpl.w.ordinal()) {
                        case 0:
                        case 7:
                        case 8:
                            break;
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            encoderImpl.l.offer(Integer.valueOf(i2));
                            encoderImpl.j();
                            break;
                        default:
                            ct0.o(encoderImpl.w, "Unknown state: ");
                            break;
                    }
                }
            });
        }

        @Override // android.media.MediaCodec.Callback
        public final void onOutputBufferAvailable(final MediaCodec mediaCodec, final int i2, final MediaCodec.BufferInfo bufferInfo) {
            EncoderImpl.this.f3039i.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.j
                /* JADX WARN: Code duplicated, block: B:101:0x0218  */
                /* JADX WARN: Code duplicated, block: B:107:0x0226  */
                /* JADX WARN: Code duplicated, block: B:108:0x022c  */
                /* JADX WARN: Code duplicated, block: B:110:0x0237  */
                /* JADX WARN: Code duplicated, block: B:113:0x023e  */
                /* JADX WARN: Code duplicated, block: B:118:0x0251  */
                /* JADX WARN: Code duplicated, block: B:127:0x0263  */
                /* JADX WARN: Code duplicated, block: B:129:0x0268  */
                /* JADX WARN: Code duplicated, block: B:130:0x026b  */
                /* JADX WARN: Code duplicated, block: B:136:0x028b  */
                /* JADX WARN: Code duplicated, block: B:139:0x02a7  */
                /* JADX WARN: Code duplicated, block: B:142:0x02b0  */
                /* JADX WARN: Code duplicated, block: B:143:0x02b2  */
                /* JADX WARN: Code duplicated, block: B:145:0x02b8  */
                /* JADX WARN: Code duplicated, block: B:146:0x02ba  */
                /* JADX WARN: Code duplicated, block: B:152:0x02df  */
                /* JADX WARN: Code duplicated, block: B:154:0x02e7  */
                /* JADX WARN: Code duplicated, block: B:158:0x02f5  */
                /* JADX WARN: Code duplicated, block: B:160:0x02f9  */
                /* JADX WARN: Code duplicated, block: B:162:0x02ff  */
                /* JADX WARN: Code duplicated, block: B:164:0x0311  */
                /* JADX WARN: Code duplicated, block: B:167:0x0318  */
                /* JADX WARN: Code duplicated, block: B:186:0x016f A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:187:0x015f A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:188:0x016f A[SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:189:? A[LOOP:1: B:57:0x0149->B:189:?, LOOP_END, SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:191:? A[RETURN, SYNTHETIC] */
                /* JADX WARN: Code duplicated, block: B:59:0x014f  */
                /* JADX WARN: Code duplicated, block: B:62:0x0161  */
                /* JADX WARN: Code duplicated, block: B:97:0x0205 A[DONT_INVERT] */
                /* JADX WARN: Code duplicated, block: B:98:0x0207 A[ADDED_TO_REGION] */
                @Override // java.lang.Runnable
                public final void run() {
                    EncoderImpl encoderImpl;
                    EncoderCallback encoderCallback;
                    Executor executor;
                    long j2;
                    Iterator it;
                    boolean z;
                    boolean z2;
                    boolean z3;
                    EncoderImpl encoderImpl2;
                    long j3;
                    long j4;
                    boolean z4;
                    long j5;
                    long j6;
                    long j7;
                    boolean z5;
                    MediaCodec.BufferInfo bufferInfo2;
                    Executor executor2;
                    EncoderCallback encoderCallback2;
                    Range range;
                    EncoderImpl encoderImpl3;
                    EncoderImpl.MediaCodecCallback mediaCodecCallback = this.f3099b;
                    MediaCodec.BufferInfo bufferInfo3 = bufferInfo;
                    MediaCodec mediaCodec2 = mediaCodec;
                    int i3 = i2;
                    boolean z6 = mediaCodecCallback.f3057j;
                    EncoderImpl encoderImpl4 = EncoderImpl.this;
                    if (z6) {
                        Logger.c(5, encoderImpl4.f3033a);
                        return;
                    }
                    switch (encoderImpl4.w.ordinal()) {
                        case 0:
                        case 7:
                        case 8:
                            return;
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                            synchronized (EncoderImpl.this.f3034b) {
                                encoderImpl = EncoderImpl.this;
                                encoderCallback = encoderImpl.u;
                                executor = encoderImpl.v;
                                break;
                            }
                            if (encoderImpl.f3035c && encoderImpl.i()) {
                                bufferInfo3.presentationTimeUs = EncoderImpl.this.r(bufferInfo3.presentationTimeUs);
                            }
                            if (!mediaCodecCallback.f3052c) {
                                mediaCodecCallback.f3052c = true;
                                try {
                                    Objects.requireNonNull(encoderCallback);
                                    executor.execute(new iw(encoderCallback, 0));
                                } catch (RejectedExecutionException unused) {
                                    Logger.b(EncoderImpl.this.f3033a);
                                }
                            }
                            try {
                                if (!mediaCodecCallback.f3053e && bufferInfo3.size > 0 && (bufferInfo3.flags & 2) == 0) {
                                    VideoTimebaseConverter videoTimebaseConverter = mediaCodecCallback.f3050a;
                                    if (videoTimebaseConverter != null) {
                                        bufferInfo3.presentationTimeUs = videoTimebaseConverter.a(bufferInfo3.presentationTimeUs);
                                    }
                                    long j8 = bufferInfo3.presentationTimeUs;
                                    if (j8 <= mediaCodecCallback.f3054f) {
                                        Logger.c(3, EncoderImpl.this.f3033a);
                                    } else {
                                        mediaCodecCallback.f3054f = j8;
                                        boolean zContains = EncoderImpl.this.x.contains(Long.valueOf(j8));
                                        EncoderImpl encoderImpl5 = EncoderImpl.this;
                                        if (zContains) {
                                            long j9 = bufferInfo3.presentationTimeUs;
                                            ArrayDeque arrayDeque = encoderImpl5.p;
                                            while (!arrayDeque.isEmpty()) {
                                                Range range2 = (Range) arrayDeque.getFirst();
                                                if (j9 > ((Long) range2.getUpper()).longValue()) {
                                                    arrayDeque.removeFirst();
                                                    long jLongValue = (((Long) range2.getUpper()).longValue() - ((Long) range2.getLower()).longValue()) + encoderImpl5.y;
                                                    encoderImpl5.y = jLongValue;
                                                    String str = encoderImpl5.f3033a;
                                                    DebugUtils.b(jLongValue);
                                                    Logger.c(3, str);
                                                } else {
                                                    EncoderImpl encoderImpl6 = EncoderImpl.this;
                                                    j2 = bufferInfo3.presentationTimeUs;
                                                    it = encoderImpl6.p.iterator();
                                                    while (true) {
                                                        if (it.hasNext()) {
                                                            range = (Range) it.next();
                                                            if (range.contains(Long.valueOf(j2))) {
                                                                z = true;
                                                            } else if (j2 < ((Long) range.getLower()).longValue()) {
                                                            }
                                                        }
                                                        z = false;
                                                    }
                                                    z2 = mediaCodecCallback.f3055h;
                                                    if (z2 && z) {
                                                        Logger.c(3, EncoderImpl.this.f3033a);
                                                        mediaCodecCallback.f3055h = true;
                                                        synchronized (EncoderImpl.this.f3034b) {
                                                            EncoderImpl encoderImpl7 = EncoderImpl.this;
                                                            executor2 = encoderImpl7.v;
                                                            encoderCallback2 = encoderImpl7.u;
                                                            break;
                                                        }
                                                        Objects.requireNonNull(encoderCallback2);
                                                        executor2.execute(new iw(encoderCallback2, 0));
                                                        EncoderImpl encoderImpl8 = EncoderImpl.this;
                                                        if (encoderImpl8.w == EncoderImpl.InternalState.PAUSED && ((encoderImpl8.f3035c || DeviceQuirks.f2947a.b(AudioEncoderIgnoresInputTimestampQuirk.class) == null) && (!EncoderImpl.this.f3035c || DeviceQuirks.f2947a.b(VideoEncoderSuspendDoesNotIncludeSuspendTimeQuirk.class) == null))) {
                                                            Encoder.EncoderInput encoderInput = EncoderImpl.this.g;
                                                            if (encoderInput instanceof EncoderImpl.ByteBufferInput) {
                                                                ((EncoderImpl.ByteBufferInput) encoderInput).f(false);
                                                            }
                                                            EncoderImpl encoderImpl9 = EncoderImpl.this;
                                                            Bundle bundle = new Bundle();
                                                            bundle.putInt("drop-input-frames", 1);
                                                            Logger.c(3, encoderImpl9.f3033a);
                                                            encoderImpl9.f3037f.setParameters(bundle);
                                                        }
                                                        EncoderImpl.this.A = Long.valueOf(bufferInfo3.presentationTimeUs);
                                                        EncoderImpl encoderImpl10 = EncoderImpl.this;
                                                        if (encoderImpl10.z) {
                                                            ScheduledFuture scheduledFuture = encoderImpl10.B;
                                                            if (scheduledFuture != null) {
                                                                scheduledFuture.cancel(true);
                                                            }
                                                            EncoderImpl.this.p();
                                                            EncoderImpl.this.z = false;
                                                        }
                                                    } else if (z2 && !z) {
                                                        Logger.c(3, EncoderImpl.this.f3033a);
                                                        mediaCodecCallback.f3055h = false;
                                                        if (EncoderImpl.this.f3035c && (bufferInfo3.flags & 1) == 0) {
                                                            mediaCodecCallback.f3056i = true;
                                                        }
                                                    }
                                                    z3 = mediaCodecCallback.f3055h;
                                                    encoderImpl2 = EncoderImpl.this;
                                                    if (z3) {
                                                        Logger.c(3, encoderImpl2.f3033a);
                                                    } else {
                                                        j3 = encoderImpl2.y;
                                                        j4 = bufferInfo3.presentationTimeUs;
                                                        if (j3 > 0) {
                                                            j4 -= j3;
                                                        }
                                                        if (j4 <= mediaCodecCallback.g) {
                                                            z4 = mediaCodecCallback.d;
                                                            if (!z4 && !mediaCodecCallback.f3056i && encoderImpl2.f3035c) {
                                                                mediaCodecCallback.f3056i = true;
                                                            }
                                                            if (mediaCodecCallback.f3056i) {
                                                                if ((bufferInfo3.flags & 1) != 0) {
                                                                    mediaCodecCallback.f3056i = false;
                                                                } else {
                                                                    Logger.c(3, encoderImpl2.f3033a);
                                                                    EncoderImpl.this.m();
                                                                }
                                                            }
                                                            if (!z4) {
                                                                mediaCodecCallback.d = true;
                                                                String str2 = encoderImpl2.f3033a;
                                                                Objects.toString(encoderImpl2.q);
                                                                SystemClock.uptimeMillis();
                                                                SystemClock.elapsedRealtime();
                                                                Logger.c(3, str2);
                                                            }
                                                            j5 = EncoderImpl.this.y;
                                                            j6 = bufferInfo3.presentationTimeUs;
                                                            if (j5 > 0) {
                                                                j6 -= j5;
                                                            }
                                                            j7 = j6;
                                                            if (bufferInfo3.presentationTimeUs == j7) {
                                                                bufferInfo2 = bufferInfo3;
                                                            } else {
                                                                if (j7 > mediaCodecCallback.g) {
                                                                    z5 = true;
                                                                } else {
                                                                    z5 = false;
                                                                }
                                                                Preconditions.f(null, z5);
                                                                bufferInfo2 = new MediaCodec.BufferInfo();
                                                                bufferInfo2.set(bufferInfo3.offset, bufferInfo3.size, j7, bufferInfo3.flags);
                                                            }
                                                            mediaCodecCallback.g = bufferInfo2.presentationTimeUs;
                                                            try {
                                                                mediaCodecCallback.b(new EncodedDataImpl(mediaCodec2, i3, bufferInfo2), encoderCallback, executor);
                                                                if (!mediaCodecCallback.f3053e) {
                                                                    Range range3 = EncoderImpl.H;
                                                                    if ((bufferInfo3.flags & 4) == 0 && (!mediaCodecCallback.f3058k || DeviceQuirks.f2947a.b(PrematureEndOfStreamVideoQuirk.class) == null)) {
                                                                        mediaCodecCallback.a();
                                                                    } else if (mediaCodecCallback.f3051b) {
                                                                        encoderImpl3 = EncoderImpl.this;
                                                                        if (encoderImpl3.F && bufferInfo3.presentationTimeUs > ((Long) encoderImpl3.x.getUpper()).longValue()) {
                                                                            mediaCodecCallback.a();
                                                                        }
                                                                    }
                                                                }
                                                                if (mediaCodecCallback.f3058k) {
                                                                    mediaCodecCallback.f3058k = false;
                                                                    return;
                                                                }
                                                                return;
                                                            } catch (MediaCodec.CodecException e2) {
                                                                EncoderImpl.this.h(1, e2.getMessage(), e2);
                                                                return;
                                                            }
                                                        }
                                                        Logger.c(3, encoderImpl2.f3033a);
                                                        if (EncoderImpl.this.f3035c && (bufferInfo3.flags & 1) != 0) {
                                                            mediaCodecCallback.f3056i = true;
                                                        }
                                                    }
                                                }
                                            }
                                            EncoderImpl encoderImpl11 = EncoderImpl.this;
                                            j2 = bufferInfo3.presentationTimeUs;
                                            it = encoderImpl11.p.iterator();
                                            while (true) {
                                                if (it.hasNext()) {
                                                    range = (Range) it.next();
                                                    if (range.contains(Long.valueOf(j2))) {
                                                        z = true;
                                                    } else if (j2 < ((Long) range.getLower()).longValue()) {
                                                    }
                                                }
                                                z = false;
                                            }
                                            z2 = mediaCodecCallback.f3055h;
                                            if (z2) {
                                                if (z2) {
                                                    Logger.c(3, EncoderImpl.this.f3033a);
                                                    mediaCodecCallback.f3055h = false;
                                                    if (EncoderImpl.this.f3035c) {
                                                        mediaCodecCallback.f3056i = true;
                                                    }
                                                }
                                            } else if (z2) {
                                                Logger.c(3, EncoderImpl.this.f3033a);
                                                mediaCodecCallback.f3055h = false;
                                                if (EncoderImpl.this.f3035c) {
                                                    mediaCodecCallback.f3056i = true;
                                                }
                                            }
                                            z3 = mediaCodecCallback.f3055h;
                                            encoderImpl2 = EncoderImpl.this;
                                            if (z3) {
                                                Logger.c(3, encoderImpl2.f3033a);
                                            } else {
                                                j3 = encoderImpl2.y;
                                                j4 = bufferInfo3.presentationTimeUs;
                                                if (j3 > 0) {
                                                    j4 -= j3;
                                                }
                                                if (j4 <= mediaCodecCallback.g) {
                                                    z4 = mediaCodecCallback.d;
                                                    if (!z4) {
                                                        mediaCodecCallback.f3056i = true;
                                                    }
                                                    if (mediaCodecCallback.f3056i) {
                                                        if ((bufferInfo3.flags & 1) != 0) {
                                                            mediaCodecCallback.f3056i = false;
                                                        } else {
                                                            Logger.c(3, encoderImpl2.f3033a);
                                                            EncoderImpl.this.m();
                                                        }
                                                    }
                                                    if (!z4) {
                                                        mediaCodecCallback.d = true;
                                                        String str3 = encoderImpl2.f3033a;
                                                        Objects.toString(encoderImpl2.q);
                                                        SystemClock.uptimeMillis();
                                                        SystemClock.elapsedRealtime();
                                                        Logger.c(3, str3);
                                                    }
                                                    j5 = EncoderImpl.this.y;
                                                    j6 = bufferInfo3.presentationTimeUs;
                                                    if (j5 > 0) {
                                                        j6 -= j5;
                                                    }
                                                    j7 = j6;
                                                    if (bufferInfo3.presentationTimeUs == j7) {
                                                        bufferInfo2 = bufferInfo3;
                                                    } else {
                                                        if (j7 > mediaCodecCallback.g) {
                                                            z5 = true;
                                                        } else {
                                                            z5 = false;
                                                        }
                                                        Preconditions.f(null, z5);
                                                        bufferInfo2 = new MediaCodec.BufferInfo();
                                                        bufferInfo2.set(bufferInfo3.offset, bufferInfo3.size, j7, bufferInfo3.flags);
                                                    }
                                                    mediaCodecCallback.g = bufferInfo2.presentationTimeUs;
                                                    mediaCodecCallback.b(new EncodedDataImpl(mediaCodec2, i3, bufferInfo2), encoderCallback, executor);
                                                    if (!mediaCodecCallback.f3053e) {
                                                        Range range4 = EncoderImpl.H;
                                                        if ((bufferInfo3.flags & 4) == 0) {
                                                            if (mediaCodecCallback.f3051b) {
                                                                encoderImpl3 = EncoderImpl.this;
                                                                if (encoderImpl3.F) {
                                                                    mediaCodecCallback.a();
                                                                }
                                                            }
                                                        } else if (mediaCodecCallback.f3051b) {
                                                            encoderImpl3 = EncoderImpl.this;
                                                            if (encoderImpl3.F) {
                                                                mediaCodecCallback.a();
                                                            }
                                                        }
                                                    }
                                                    if (mediaCodecCallback.f3058k) {
                                                        mediaCodecCallback.f3058k = false;
                                                        return;
                                                    }
                                                    return;
                                                }
                                                Logger.c(3, encoderImpl2.f3033a);
                                                if (EncoderImpl.this.f3035c) {
                                                    mediaCodecCallback.f3056i = true;
                                                }
                                            }
                                        } else {
                                            Logger.c(3, encoderImpl5.f3033a);
                                            EncoderImpl encoderImpl12 = EncoderImpl.this;
                                            if (encoderImpl12.z && bufferInfo3.presentationTimeUs >= ((Long) encoderImpl12.x.getUpper()).longValue()) {
                                                ScheduledFuture scheduledFuture2 = EncoderImpl.this.B;
                                                if (scheduledFuture2 != null) {
                                                    scheduledFuture2.cancel(true);
                                                }
                                                EncoderImpl.this.A = Long.valueOf(bufferInfo3.presentationTimeUs);
                                                EncoderImpl.this.p();
                                                EncoderImpl.this.z = false;
                                            }
                                        }
                                    }
                                } else {
                                    Logger.c(3, EncoderImpl.this.f3033a);
                                }
                                EncoderImpl.this.f3037f.releaseOutputBuffer(i3, false);
                                if (!mediaCodecCallback.f3053e) {
                                    Range range5 = EncoderImpl.H;
                                    if ((bufferInfo3.flags & 4) == 0) {
                                        if (mediaCodecCallback.f3051b) {
                                            encoderImpl3 = EncoderImpl.this;
                                            if (encoderImpl3.F) {
                                                mediaCodecCallback.a();
                                            }
                                        }
                                    } else if (mediaCodecCallback.f3051b) {
                                        encoderImpl3 = EncoderImpl.this;
                                        if (encoderImpl3.F) {
                                            mediaCodecCallback.a();
                                        }
                                    }
                                }
                                if (mediaCodecCallback.f3058k) {
                                    mediaCodecCallback.f3058k = false;
                                    return;
                                }
                                return;
                            } catch (MediaCodec.CodecException e3) {
                                EncoderImpl.this.h(1, e3.getMessage(), e3);
                                return;
                            }
                        default:
                            ct0.o(EncoderImpl.this.w, "Unknown state: ");
                            return;
                    }
                }
            });
        }

        @Override // android.media.MediaCodec.Callback
        public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
            EncoderImpl encoderImpl = EncoderImpl.this;
            String str = encoderImpl.f3033a;
            Objects.toString(mediaFormat);
            DebugUtils.a(mediaFormat.getByteBuffer("csd-0"));
            if (mediaFormat.containsKey("csd-1")) {
                DebugUtils.a(mediaFormat.getByteBuffer("csd-1"));
            }
            if (mediaFormat.containsKey("csd-2")) {
                DebugUtils.a(mediaFormat.getByteBuffer("csd-2"));
            }
            Logger.c(3, str);
            encoderImpl.f3039i.execute(new a(this, mediaFormat, 4));
        }
    }

    public class SurfaceInput implements Encoder.SurfaceInput {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Surface f3062b;
        public androidx.camera.video.j d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public Executor f3064e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f3061a = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final HashSet f3063c = new HashSet();

        public SurfaceInput() {
        }

        @Override // androidx.camera.video.internal.encoder.Encoder.SurfaceInput
        public final void c(Executor executor, androidx.camera.video.j jVar) {
            Surface surface;
            synchronized (this.f3061a) {
                this.d = jVar;
                executor.getClass();
                this.f3064e = executor;
                surface = this.f3062b;
            }
            if (surface != null) {
                try {
                    executor.execute(new jr(jVar, surface, 15));
                } catch (RejectedExecutionException unused) {
                    Logger.b(EncoderImpl.this.f3033a);
                }
            }
        }
    }

    public EncoderImpl(Executor executor, EncoderConfig encoderConfig, int i2) throws InvalidConfigException {
        boolean z = false;
        z = false;
        z = false;
        executor.getClass();
        encoderConfig.getClass();
        this.d = encoderConfig;
        LruCache lruCache = CodecUtil.f3102a;
        try {
            MediaCodec mediaCodecCreateEncoderByType = MediaCodec.createEncoderByType(encoderConfig.b());
            this.f3037f = mediaCodecCreateEncoderByType;
            MediaCodecInfo codecInfo = mediaCodecCreateEncoderByType.getCodecInfo();
            this.f3039i = CameraXExecutors.e(executor);
            MediaFormat mediaFormatA = encoderConfig.a();
            this.f3036e = mediaFormatA;
            Timebase timebaseC = encoderConfig.c();
            this.q = timebaseC;
            this.r = new AnonymousClass3(new fw(this, z ? 1 : 0), new SystemTimeProvider());
            if (encoderConfig instanceof AudioEncoderConfig) {
                this.f3033a = "AudioEncoder";
                this.f3035c = false;
                this.g = new ByteBufferInput();
                AudioEncoderInfoImpl audioEncoderInfoImpl = new AudioEncoderInfoImpl(codecInfo, ((AutoValue_AudioEncoderConfig) encoderConfig).f2996a);
                Objects.requireNonNull(audioEncoderInfoImpl.f3066a.getAudioCapabilities());
                this.f3038h = audioEncoderInfoImpl;
                AutoValue_AudioEncoderConfig autoValue_AudioEncoderConfig = (AutoValue_AudioEncoderConfig) ((AudioEncoderConfig) encoderConfig);
                this.s = new Rational(autoValue_AudioEncoderConfig.f2999e, autoValue_AudioEncoderConfig.f3000f);
            } else {
                if (!(encoderConfig instanceof VideoEncoderConfig)) {
                    throw new InvalidConfigException("Unknown encoder config type");
                }
                VideoEncoderConfig videoEncoderConfig = (VideoEncoderConfig) encoderConfig;
                this.f3033a = "VideoEncoder";
                this.f3035c = true;
                this.g = new SurfaceInput();
                VideoEncoderInfoImpl videoEncoderInfoImpl = new VideoEncoderInfoImpl(codecInfo, ((AutoValue_VideoEncoderConfig) encoderConfig).f3006a);
                if (mediaFormatA.containsKey("bitrate")) {
                    int integer = mediaFormatA.getInteger("bitrate");
                    int iIntValue = ((Integer) videoEncoderInfoImpl.f3079b.getBitrateRange().clamp(Integer.valueOf(integer))).intValue();
                    if (integer != iIntValue) {
                        mediaFormatA.setInteger("bitrate", iIntValue);
                        Logger.c(3, "VideoEncoder");
                    }
                }
                this.f3038h = videoEncoderInfoImpl;
                AutoValue_VideoEncoderConfig autoValue_VideoEncoderConfig = (AutoValue_VideoEncoderConfig) videoEncoderConfig;
                this.s = new Rational(autoValue_VideoEncoderConfig.g, autoValue_VideoEncoderConfig.f3011h);
            }
            String str = this.f3033a;
            Objects.toString(timebaseC);
            Logger.c(3, str);
            String str2 = this.f3033a;
            Objects.toString(mediaFormatA);
            Logger.c(3, str2);
            String str3 = this.f3033a;
            Objects.toString(this.s);
            Logger.c(3, str3);
            try {
                n();
                AtomicReference atomicReference = new AtomicReference();
                this.f3040j = Futures.h(CallbackToFutureAdapter.a(new rh(atomicReference, 4)));
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) atomicReference.get();
                completer.getClass();
                this.f3041k = completer;
                if (this.f3035c && i2 == 1 && DeviceQuirks.f2947a.b(PreviewFreezeAfterHighSpeedRecordingQuirk.class) != null) {
                    z = true;
                }
                this.t = z;
                o(InternalState.CONFIGURED);
            } catch (MediaCodec.CodecException e2) {
                throw new InvalidConfigException(e2);
            }
        } catch (IOException | IllegalArgumentException e3) {
            throw new InvalidConfigException(e3);
        }
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public final void a(EncoderCallback encoderCallback, Executor executor) {
        synchronized (this.f3034b) {
            this.u = encoderCallback;
            this.v = executor;
        }
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public final void b(final long j2) {
        final long jB = ((AnonymousClass3) this.r).b();
        this.f3039i.execute(new Runnable() { // from class: androidx.camera.video.internal.encoder.e
            @Override // java.lang.Runnable
            public final void run() {
                EncoderImpl encoderImpl = this.f3089b;
                String str = encoderImpl.f3033a;
                switch (encoderImpl.w.ordinal()) {
                    case 0:
                    case 3:
                    case 7:
                        break;
                    case 1:
                    case 2:
                        EncoderImpl.InternalState internalState = encoderImpl.w;
                        encoderImpl.o(EncoderImpl.InternalState.STOPPING);
                        Long l = (Long) encoderImpl.x.getLower();
                        long jLongValue = l.longValue();
                        if (jLongValue == Long.MAX_VALUE) {
                            md.h("There should be a \"start\" before \"stop\"");
                        } else {
                            long j3 = j2;
                            if (j3 == -1) {
                                j3 = jB;
                            } else if (j3 < jLongValue) {
                                Logger.c(5, str);
                                j3 = jB;
                            }
                            if (j3 < jLongValue) {
                                md.h("The start time should be before the stop time.");
                            } else {
                                encoderImpl.x = Range.create(l, Long.valueOf(j3));
                                DebugUtils.b(j3);
                                Logger.c(3, str);
                                if (internalState == EncoderImpl.InternalState.PAUSED && encoderImpl.A != null) {
                                    encoderImpl.p();
                                } else {
                                    encoderImpl.z = true;
                                    encoderImpl.B = CameraXExecutors.c().schedule(new gw(encoderImpl, 0), 1000L, TimeUnit.MILLISECONDS);
                                }
                            }
                        }
                        break;
                    case 4:
                    case 5:
                        encoderImpl.o(EncoderImpl.InternalState.CONFIGURED);
                        break;
                    case 6:
                    case 8:
                        md.k("Encoder is released");
                        break;
                    default:
                        ct0.o(encoderImpl.w, "Unknown state: ");
                        break;
                }
            }
        });
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public final EncoderInfoImpl c() {
        return this.f3038h;
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public final ListenableFuture d() {
        return this.f3040j;
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public final void e() {
        this.f3039i.execute(new gw(this, 2));
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public final int f() {
        MediaFormat mediaFormat = this.f3036e;
        if (mediaFormat.containsKey("bitrate")) {
            return mediaFormat.getInteger("bitrate");
        }
        return 0;
    }

    public final ListenableFuture g() {
        switch (this.w.ordinal()) {
            case 0:
                return Futures.e(new IllegalStateException("Encoder is not started yet."));
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                AtomicReference atomicReference = new AtomicReference();
                ListenableFuture listenableFutureA = CallbackToFutureAdapter.a(new rh(atomicReference, 3));
                CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) atomicReference.get();
                completer.getClass();
                this.m.offer(completer);
                completer.a(new jr(this, completer, 12), this.f3039i);
                j();
                return listenableFutureA;
            case 7:
                return Futures.e(new IllegalStateException("Encoder is in error state."));
            case 8:
                return Futures.e(new IllegalStateException("Encoder is released."));
            default:
                ct0.o(this.w, "Unknown state: ");
                return null;
        }
    }

    public final void h(int i2, String str, Throwable th) {
        switch (this.w.ordinal()) {
            case 0:
                k(i2, str, th);
                n();
                break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                o(InternalState.ERROR);
                q(new hw(this, i2, str, th, 0));
                break;
            case 7:
                Logger.c(5, this.f3033a);
                break;
        }
    }

    public final boolean i() {
        Rational rational = this.s;
        return !(rational != null && rational.getDenominator() == rational.getNumerator());
    }

    public final void j() {
        while (true) {
            ArrayDeque arrayDeque = this.m;
            if (arrayDeque.isEmpty()) {
                return;
            }
            ArrayDeque arrayDeque2 = this.l;
            if (arrayDeque2.isEmpty()) {
                return;
            }
            CallbackToFutureAdapter.Completer completer = (CallbackToFutureAdapter.Completer) arrayDeque.poll();
            Objects.requireNonNull(completer);
            Integer num = (Integer) arrayDeque2.poll();
            Objects.requireNonNull(num);
            try {
                InputBufferImpl inputBufferImpl = new InputBufferImpl(this.f3037f, num.intValue()) { // from class: androidx.camera.video.internal.encoder.EncoderImpl.2
                    @Override // androidx.camera.video.internal.encoder.InputBuffer
                    public final void b(long j2) {
                        EncoderImpl encoderImpl = EncoderImpl.this;
                        if (!encoderImpl.f3035c) {
                            j2 = encoderImpl.r(j2);
                        }
                        if (this.f3071f.get()) {
                            md.k("The buffer is submitted or canceled.");
                        } else {
                            Preconditions.a(j2 >= 0);
                            this.g = j2;
                        }
                    }
                };
                if (completer.b(inputBufferImpl)) {
                    this.n.add(inputBufferImpl);
                    Futures.h(inputBufferImpl.d).addListener(new a(this, inputBufferImpl, 0), this.f3039i);
                } else {
                    inputBufferImpl.cancel();
                }
            } catch (MediaCodec.CodecException e2) {
                h(1, e2.getMessage(), e2);
                return;
            }
        }
    }

    public final void k(int i2, String str, Throwable th) {
        EncoderCallback encoderCallback;
        Executor executor;
        synchronized (this.f3034b) {
            encoderCallback = this.u;
            executor = this.v;
        }
        try {
            executor.execute(new hw(encoderCallback, i2, str, th, 1));
        } catch (RejectedExecutionException unused) {
            Logger.b(this.f3033a);
        }
    }

    public final void l() {
        Surface surface;
        HashSet hashSet;
        Logger.c(3, this.f3033a);
        if (this.D) {
            if (!this.t) {
                Logger.c(3, this.f3033a);
                this.f3037f.stop();
            }
            this.D = false;
        }
        Logger.c(3, this.f3033a);
        this.f3037f.release();
        Encoder.EncoderInput encoderInput = this.g;
        if (encoderInput instanceof SurfaceInput) {
            SurfaceInput surfaceInput = (SurfaceInput) encoderInput;
            synchronized (surfaceInput.f3061a) {
                surface = surfaceInput.f3062b;
                surfaceInput.f3062b = null;
                hashSet = new HashSet(surfaceInput.f3063c);
                surfaceInput.f3063c.clear();
            }
            if (surface != null) {
                surface.release();
            }
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((Surface) it.next()).release();
            }
        }
        o(InternalState.RELEASED);
        this.f3041k.b(null);
    }

    public final void m() {
        Bundle bundle = new Bundle();
        bundle.putInt("request-sync", 0);
        Logger.c(3, this.f3033a);
        this.f3037f.setParameters(bundle);
    }

    public final void n() {
        androidx.camera.video.j jVar;
        Executor executor;
        this.x = H;
        this.y = 0L;
        this.p.clear();
        this.l.clear();
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            ((CallbackToFutureAdapter.Completer) it.next()).c();
        }
        this.m.clear();
        Logger.c(3, this.f3033a);
        this.f3037f.reset();
        this.D = false;
        this.E = false;
        this.F = false;
        this.z = false;
        ScheduledFuture scheduledFuture = this.B;
        Surface surfaceCreateInputSurface = null;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.B = null;
        }
        ScheduledFuture scheduledFuture2 = this.G;
        if (scheduledFuture2 != null) {
            scheduledFuture2.cancel(false);
            this.G = null;
        }
        MediaCodecCallback mediaCodecCallback = this.C;
        if (mediaCodecCallback != null) {
            mediaCodecCallback.f3057j = true;
        }
        this.C = new MediaCodecCallback();
        Logger.c(3, this.f3033a);
        this.f3037f.setCallback(this.C);
        Logger.c(3, this.f3033a);
        this.f3037f.configure(this.f3036e, (Surface) null, (MediaCrypto) null, 1);
        Encoder.EncoderInput encoderInput = this.g;
        if (encoderInput instanceof SurfaceInput) {
            SurfaceInput surfaceInput = (SurfaceInput) encoderInput;
            EncoderNotUsePersistentInputSurfaceQuirk encoderNotUsePersistentInputSurfaceQuirk = (EncoderNotUsePersistentInputSurfaceQuirk) DeviceQuirks.f2947a.b(EncoderNotUsePersistentInputSurfaceQuirk.class);
            synchronized (surfaceInput.f3061a) {
                Surface surface = surfaceInput.f3062b;
                try {
                    if (encoderNotUsePersistentInputSurfaceQuirk == null) {
                        if (surface == null) {
                            surfaceCreateInputSurface = MediaCodec.createPersistentInputSurface();
                            surfaceInput.f3062b = surfaceCreateInputSurface;
                        }
                        EncoderImpl.this.f3037f.setInputSurface(surfaceInput.f3062b);
                    } else {
                        if (surface != null) {
                            surfaceInput.f3063c.add(surface);
                        }
                        surfaceCreateInputSurface = EncoderImpl.this.f3037f.createInputSurface();
                        surfaceInput.f3062b = surfaceCreateInputSurface;
                    }
                    jVar = surfaceInput.d;
                    executor = surfaceInput.f3064e;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (surfaceCreateInputSurface == null || jVar == null || executor == null) {
                return;
            }
            try {
                executor.execute(new jr(jVar, surfaceCreateInputSurface, 15));
            } catch (RejectedExecutionException unused) {
                Logger.b(EncoderImpl.this.f3033a);
            }
        }
    }

    public final void o(InternalState internalState) {
        InternalState internalState2 = this.w;
        if (internalState2 == internalState) {
            return;
        }
        Objects.toString(internalState2);
        Objects.toString(internalState);
        Logger.c(3, this.f3033a);
        this.w = internalState;
    }

    public final void p() {
        Logger.c(3, this.f3033a);
        Encoder.EncoderInput encoderInput = this.g;
        int i2 = 0;
        if (encoderInput instanceof ByteBufferInput) {
            ((ByteBufferInput) encoderInput).f(false);
            ArrayList arrayList = new ArrayList();
            Iterator it = this.n.iterator();
            while (it.hasNext()) {
                arrayList.add(((InputBuffer) it.next()).d());
            }
            Futures.k(arrayList).addListener(new b(this, i2), this.f3039i);
            return;
        }
        if (encoderInput instanceof SurfaceInput) {
            int i3 = 1;
            try {
                if (DeviceQuirks.f2947a.b(SignalEosOutputBufferNotComeQuirk.class) != null) {
                    MediaCodecCallback mediaCodecCallback = this.C;
                    Executor executor = this.f3039i;
                    ScheduledFuture scheduledFuture = this.G;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    this.G = CameraXExecutors.c().schedule(new a(executor, mediaCodecCallback, i3), 1000L, TimeUnit.MILLISECONDS);
                }
                Logger.c(3, this.f3033a);
                this.f3037f.signalEndOfInputStream();
                this.F = true;
            } catch (MediaCodec.CodecException e2) {
                h(1, e2.getMessage(), e2);
            }
        }
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public final void pause() {
        this.f3039i.execute(new c(this, ((AnonymousClass3) this.r).b(), 0));
    }

    public final void q(Runnable runnable) {
        String str = this.f3033a;
        Logger.c(3, str);
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = this.o;
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            arrayList.add(Futures.h(((EncodedDataImpl) it.next()).f3030f));
        }
        HashSet hashSet2 = this.n;
        Iterator it2 = hashSet2.iterator();
        while (it2.hasNext()) {
            arrayList.add(((InputBuffer) it2.next()).d());
        }
        if (!arrayList.isEmpty()) {
            hashSet.size();
            hashSet2.size();
            Logger.c(3, str);
        }
        Futures.k(arrayList).addListener(new d(this, arrayList, runnable, 0), this.f3039i);
    }

    public final long r(long j2) {
        if (!i()) {
            return j2;
        }
        return Math.round(this.s.doubleValue() * j2);
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public final void release() {
        this.f3039i.execute(new b(this, 1));
    }

    @Override // androidx.camera.video.internal.encoder.Encoder
    public final void start() {
        this.f3039i.execute(new c(this, ((AnonymousClass3) this.r).b(), 1));
    }
}
