package androidx.camera.video;

import android.content.Context;
import android.media.MediaMuxer;
import android.net.Uri;
import android.os.Build;
import android.util.Rational;
import android.util.Size;
import android.view.Surface;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.EncoderProfilesProxy;
import androidx.camera.core.impl.MutableStateObservable;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.StateObservable;
import androidx.camera.core.impl.Timebase;
import androidx.camera.core.impl.utils.CloseGuardHelper;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.utils.ArrayRingBuffer;
import androidx.camera.core.internal.utils.SizeUtil;
import androidx.camera.video.internal.DebugUtils;
import androidx.camera.video.internal.OutputStorage;
import androidx.camera.video.internal.OutputStorageImpl;
import androidx.camera.video.internal.VideoValidatedEncoderProfilesProxy;
import androidx.camera.video.internal.audio.AudioSettings;
import androidx.camera.video.internal.audio.AudioSource;
import androidx.camera.video.internal.audio.AudioSourceAccessException;
import androidx.camera.video.internal.compat.quirk.DeactivateEncoderSurfaceBeforeStopEncoderQuirk;
import androidx.camera.video.internal.compat.quirk.DeviceQuirks;
import androidx.camera.video.internal.compat.quirk.EncoderNotUsePersistentInputSurfaceQuirk;
import androidx.camera.video.internal.config.AudioConfigUtil;
import androidx.camera.video.internal.config.AudioEncoderConfigAudioProfileResolver;
import androidx.camera.video.internal.config.AudioEncoderConfigDefaultResolver;
import androidx.camera.video.internal.config.AudioMimeInfo;
import androidx.camera.video.internal.config.AudioSettingsAudioProfileResolver;
import androidx.camera.video.internal.config.AudioSettingsDefaultResolver;
import androidx.camera.video.internal.encoder.AudioEncoderConfig;
import androidx.camera.video.internal.encoder.BufferCopiedEncodedData;
import androidx.camera.video.internal.encoder.EncodeException;
import androidx.camera.video.internal.encoder.EncodedData;
import androidx.camera.video.internal.encoder.Encoder;
import androidx.camera.video.internal.encoder.EncoderCallback;
import androidx.camera.video.internal.encoder.EncoderFactory;
import androidx.camera.video.internal.encoder.EncoderImpl;
import androidx.camera.video.internal.encoder.InvalidConfigException;
import androidx.camera.video.internal.encoder.VideoEncoderConfig;
import androidx.camera.video.internal.encoder.VideoEncoderInfo;
import androidx.camera.video.internal.utils.StorageUtil;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.aa0;
import defpackage.b5;
import defpackage.bm;
import defpackage.gr0;
import defpackage.gw;
import defpackage.hn0;
import defpackage.hr0;
import defpackage.ir0;
import defpackage.md;
import defpackage.no0;
import defpackage.ot;
import defpackage.r6;
import defpackage.r81;
import defpackage.s3;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes.dex */
public final class Recorder implements VideoOutput {
    public static final Set m0 = Collections.unmodifiableSet(EnumSet.of(State.PENDING_RECORDING, State.PENDING_PAUSED));
    public static final Set n0 = Collections.unmodifiableSet(EnumSet.of(State.CONFIGURING, State.IDLING, State.RESETTING, State.STOPPING, State.ERROR));
    public static final VideoSpec o0;
    public static final MediaSpec p0;
    public static final no0 q0;
    public static final no0 r0;
    public static final Executor s0;
    public static final int t0;
    public static final long u0;
    public SurfaceRequest A;
    public Timebase B;
    public Surface C;
    public Surface D;
    public MediaMuxer E;
    public final MutableStateObservable F;
    public AudioSource G;
    public Encoder H;
    public androidx.camera.video.internal.encoder.f I;
    public Encoder J;
    public androidx.camera.video.internal.encoder.f K;
    public AudioState L;
    public Uri M;
    public long N;
    public long O;
    public long P;
    public long Q;
    public long R;
    public long S;
    public long T;
    public long U;
    public long V;
    public int W;
    public EncodedData X;
    public final ArrayRingBuffer Y;
    public Throwable Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MutableStateObservable f2778a;
    public boolean a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MutableStateObservable f2779b;
    public VideoOutput.SourceState b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Executor f2780c;
    public ScheduledFuture c0;
    public final Executor d;
    public boolean d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f2781e;
    public VideoEncoderSession e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final EncoderFactory f2782f;
    public VideoEncoderConfig f0;
    public final EncoderFactory g;
    public VideoEncoderSession g0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final OutputStorage.Factory f2783h;
    public double h0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f2784i = new Object();
    public SetupVideoTask i0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f2785j;
    public OutputStorage j0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f2786k;
    public long k0;
    public final MutableStateObservable l;
    public boolean l0;
    public State m;
    public State n;
    public int o;
    public AutoValue_Recorder_RecordingRecord p;
    public AutoValue_Recorder_RecordingRecord q;
    public long r;
    public RecordingRecord s;
    public boolean t;
    public SurfaceRequest.TransformationInfo u;
    public SurfaceRequest.TransformationInfo v;
    public VideoValidatedEncoderProfilesProxy w;
    public final ArrayList x;
    public Integer y;
    public Integer z;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class AudioState {
        private static final /* synthetic */ AudioState[] $VALUES;
        public static final AudioState DISABLED;
        public static final AudioState ENABLED;
        public static final AudioState ERROR_ENCODER;
        public static final AudioState ERROR_SOURCE;
        public static final AudioState IDLING;
        public static final AudioState INITIALIZING;

        static {
            AudioState audioState = new AudioState("INITIALIZING", 0);
            INITIALIZING = audioState;
            AudioState audioState2 = new AudioState("IDLING", 1);
            IDLING = audioState2;
            AudioState audioState3 = new AudioState("DISABLED", 2);
            DISABLED = audioState3;
            AudioState audioState4 = new AudioState("ENABLED", 3);
            ENABLED = audioState4;
            AudioState audioState5 = new AudioState("ERROR_ENCODER", 4);
            ERROR_ENCODER = audioState5;
            AudioState audioState6 = new AudioState("ERROR_SOURCE", 5);
            ERROR_SOURCE = audioState6;
            $VALUES = new AudioState[]{audioState, audioState2, audioState3, audioState4, audioState5, audioState6};
        }

        public static AudioState valueOf(String str) {
            return (AudioState) Enum.valueOf(AudioState.class, str);
        }

        public static AudioState[] values() {
            return (AudioState[]) $VALUES.clone();
        }
    }

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaSpec.Builder f2799a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Executor f2800b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final no0 f2801c;
        public final no0 d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final no0 f2802e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final long f2803f;

        public Builder() {
            no0 no0Var = Recorder.q0;
            this.f2801c = no0Var;
            this.d = no0Var;
            this.f2802e = Recorder.r0;
            this.f2803f = -1L;
            AutoValue_MediaSpec.Builder builder = new AutoValue_MediaSpec.Builder();
            builder.f2734c = -1;
            builder.f2733b = AudioSpec.a().a();
            builder.f2732a = VideoSpec.a().a();
            this.f2799a = builder;
        }

        public final void a(QualitySelector qualitySelector) {
            MediaSpec.Builder builder = this.f2799a;
            builder.getClass();
            AutoValue_MediaSpec.Builder builder2 = (AutoValue_MediaSpec.Builder) builder;
            VideoSpec videoSpec = builder2.f2732a;
            if (videoSpec == null) {
                md.k("Property \"videoSpec\" has not been set");
                return;
            }
            AutoValue_VideoSpec autoValue_VideoSpec = (AutoValue_VideoSpec) videoSpec;
            AutoValue_VideoSpec.Builder builder3 = new AutoValue_VideoSpec.Builder();
            builder3.f2751a = autoValue_VideoSpec.f2748c;
            builder3.f2752b = Integer.valueOf(autoValue_VideoSpec.d);
            builder3.f2753c = autoValue_VideoSpec.f2749e;
            builder3.d = Integer.valueOf(autoValue_VideoSpec.f2750f);
            builder3.f2751a = qualitySelector;
            builder2.f2732a = builder3.a();
        }
    }

    public static abstract class RecordingRecord implements AutoCloseable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final CloseGuardHelper f2804b = CloseGuardHelper.b();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final AtomicBoolean f2805c = new AtomicBoolean(false);
        public final AtomicReference d = new AtomicReference(null);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final AtomicReference f2806e = new AtomicReference(null);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final AtomicReference f2807f = new AtomicReference(new ot(4));
        public final AtomicBoolean g = new AtomicBoolean(false);

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final MutableStateObservable f2808h = new MutableStateObservable(Boolean.FALSE);

        public interface AudioSourceSupplier {
            AudioSource a(AudioSettings audioSettings, Executor executor);
        }

        public interface MediaMuxerSupplier {
            MediaMuxer a(int i2, ir0 ir0Var);
        }

        public final void c(Uri uri) {
            if (this.f2805c.get()) {
                d((Consumer) this.f2807f.getAndSet(null), uri);
            }
        }

        @Override // java.lang.AutoCloseable
        public final void close() {
            c(Uri.EMPTY);
        }

        public final void d(Consumer consumer, Uri uri) {
            if (consumer != null) {
                this.f2804b.a();
                consumer.accept(uri);
            } else {
                throw new AssertionError("Recording " + this + " has already been finalized");
            }
        }

        public final void e(final Context context) {
            if (this.f2805c.getAndSet(true)) {
                throw new AssertionError("Recording " + this + " has already been initialized");
            }
            final AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord = (AutoValue_Recorder_RecordingRecord) this;
            this.f2804b.c("finalizeRecording");
            final OutputOptions outputOptions = autoValue_Recorder_RecordingRecord.f2740i;
            this.d.set(new MediaMuxerSupplier() { // from class: androidx.camera.video.f
                @Override // androidx.camera.video.Recorder.RecordingRecord.MediaMuxerSupplier
                public final MediaMuxer a(int i2, ir0 ir0Var) {
                    boolean zIsDirectory;
                    Uri uri = Uri.EMPTY;
                    OutputOptions outputOptions2 = outputOptions;
                    if (!(outputOptions2 instanceof FileOutputOptions)) {
                        md.h("Invalid output options type: ".concat(outputOptions2.getClass().getSimpleName()));
                        return null;
                    }
                    File file = ((FileOutputOptions) outputOptions2).f2758b.f2725c;
                    File parentFile = file.getParentFile();
                    if (parentFile == null) {
                        zIsDirectory = false;
                    } else {
                        zIsDirectory = parentFile.exists() ? parentFile.isDirectory() : parentFile.mkdirs();
                    }
                    if (!zIsDirectory) {
                        file.getAbsolutePath();
                        Logger.c(5, "Recorder");
                    }
                    MediaMuxer mediaMuxer = new MediaMuxer(file.getAbsolutePath(), i2);
                    ((Recorder) ir0Var.f71195b).M = Uri.fromFile(file);
                    return mediaMuxer;
                }
            });
            if (autoValue_Recorder_RecordingRecord.l) {
                int i2 = Build.VERSION.SDK_INT;
                AtomicReference atomicReference = this.f2806e;
                if (i2 >= 31) {
                    atomicReference.set(new AudioSourceSupplier() { // from class: androidx.camera.video.Recorder.RecordingRecord.1
                        @Override // androidx.camera.video.Recorder.RecordingRecord.AudioSourceSupplier
                        public final AudioSource a(AudioSettings audioSettings, Executor executor) {
                            return new AudioSource(audioSettings, executor, context);
                        }
                    });
                } else {
                    atomicReference.set(new AudioSourceSupplier() { // from class: androidx.camera.video.Recorder.RecordingRecord.2
                        @Override // androidx.camera.video.Recorder.RecordingRecord.AudioSourceSupplier
                        public final AudioSource a(AudioSettings audioSettings, Executor executor) {
                            return new AudioSource(audioSettings, executor, null);
                        }
                    });
                }
            }
        }

        public final void finalize() throws Throwable {
            try {
                this.f2804b.d();
                Consumer consumer = (Consumer) this.f2807f.getAndSet(null);
                if (consumer != null) {
                    d(consumer, Uri.EMPTY);
                }
            } finally {
                super.finalize();
            }
        }

        public final MediaMuxer g(int i2, ir0 ir0Var) throws IOException {
            if (!this.f2805c.get()) {
                throw new AssertionError("Recording " + this + " has not been initialized");
            }
            MediaMuxerSupplier mediaMuxerSupplier = (MediaMuxerSupplier) this.d.getAndSet(null);
            if (mediaMuxerSupplier == null) {
                no0.t(this, "One-time media muxer creation has already occurred for recording ");
                return null;
            }
            try {
                return mediaMuxerSupplier.a(i2, ir0Var);
            } catch (RuntimeException e2) {
                throw new IOException("Failed to create MediaMuxer by " + e2, e2);
            }
        }

        public final void h(VideoRecordEvent videoRecordEvent, boolean z) {
            int i2;
            OutputOptions outputOptions = videoRecordEvent.f2853a;
            AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord = (AutoValue_Recorder_RecordingRecord) this;
            OutputOptions outputOptions2 = autoValue_Recorder_RecordingRecord.f2740i;
            if (!Objects.equals(outputOptions, outputOptions2)) {
                throw new AssertionError("Attempted to update event listener with event from incorrect recording [Recording: " + outputOptions + ", Expected: " + outputOptions2 + "]");
            }
            if (z) {
                "Sending VideoRecordEvent ".concat(videoRecordEvent.getClass().getSimpleName());
                if ((videoRecordEvent instanceof VideoRecordEvent.Finalize) && (i2 = ((VideoRecordEvent.Finalize) videoRecordEvent).f2854b) != 0) {
                    switch (i2) {
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                            break;
                        default:
                            StringBuilder sb = new StringBuilder("Unknown(");
                            sb.append(i2);
                            sb.append(")");
                            break;
                    }
                }
                Logger.c(3, "Recorder");
            }
            boolean z2 = videoRecordEvent instanceof VideoRecordEvent.Start;
            MutableStateObservable mutableStateObservable = this.f2808h;
            if (z2 || (videoRecordEvent instanceof VideoRecordEvent.Resume)) {
                mutableStateObservable.f(Boolean.TRUE);
            } else if ((videoRecordEvent instanceof VideoRecordEvent.Pause) || (videoRecordEvent instanceof VideoRecordEvent.Finalize)) {
                mutableStateObservable.f(Boolean.FALSE);
            }
            if (autoValue_Recorder_RecordingRecord.f2741j == null || autoValue_Recorder_RecordingRecord.f2742k == null) {
                return;
            }
            try {
                ((AutoValue_Recorder_RecordingRecord) this).f2741j.execute(new e(this, videoRecordEvent, 1));
            } catch (RejectedExecutionException unused) {
                Logger.b("Recorder");
            }
        }
    }

    public class SetupVideoTask {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SurfaceRequest f2812a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Timebase f2813b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f2814c;
        public boolean d = false;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f2815e = 0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ScheduledFuture f2816f = null;

        /* JADX INFO: renamed from: androidx.camera.video.Recorder$SetupVideoTask$1, reason: invalid class name */
        class AnonymousClass1 implements FutureCallback<Encoder> {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final /* synthetic */ VideoEncoderSession f2817a;

            public AnonymousClass1(VideoEncoderSession videoEncoderSession) {
                this.f2817a = videoEncoderSession;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord;
                Objects.toString(th);
                Logger.c(5, "Recorder");
                SetupVideoTask setupVideoTask = SetupVideoTask.this;
                int i2 = setupVideoTask.f2815e;
                if (i2 < setupVideoTask.f2814c) {
                    setupVideoTask.f2815e = i2 + 1;
                    h hVar = new h(this, 0);
                    setupVideoTask.f2816f = CameraXExecutors.c().schedule(new aa0(Recorder.this.f2781e, hVar, 20), Recorder.u0, TimeUnit.MILLISECONDS);
                    return;
                }
                Recorder recorder = Recorder.this;
                synchronized (recorder.f2784i) {
                    try {
                        autoValue_Recorder_RecordingRecord = null;
                        switch (recorder.m.ordinal()) {
                            case 1:
                            case 2:
                                AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord2 = recorder.q;
                                recorder.q = null;
                                autoValue_Recorder_RecordingRecord = autoValue_Recorder_RecordingRecord2;
                            case 0:
                                recorder.C(-1);
                                recorder.B(State.ERROR);
                                break;
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                                throw new AssertionError("Encountered encoder setup error while in unexpected state " + recorder.m + ": " + th);
                            default:
                                break;
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (autoValue_Recorder_RecordingRecord != null) {
                    recorder.j(autoValue_Recorder_RecordingRecord, 7);
                }
            }

            /* JADX WARN: Code duplicated, block: B:39:0x00cb  */
            /* JADX WARN: Code duplicated, block: B:41:0x00ce A[Catch: all -> 0x0094, TryCatch #0 {all -> 0x0094, blocks: (B:19:0x0082, B:20:0x0088, B:47:0x00f1, B:22:0x008d, B:25:0x0097, B:28:0x009c, B:29:0x00a3, B:32:0x00a7, B:33:0x00b0, B:34:0x00c3, B:37:0x00c7, B:41:0x00ce, B:43:0x00d4, B:44:0x00df, B:45:0x00e9), top: B:61:0x0082 }] */
            /* JADX WARN: Code duplicated, block: B:43:0x00d4 A[Catch: all -> 0x0094, TryCatch #0 {all -> 0x0094, blocks: (B:19:0x0082, B:20:0x0088, B:47:0x00f1, B:22:0x008d, B:25:0x0097, B:28:0x009c, B:29:0x00a3, B:32:0x00a7, B:33:0x00b0, B:34:0x00c3, B:37:0x00c7, B:41:0x00ce, B:43:0x00d4, B:44:0x00df, B:45:0x00e9), top: B:61:0x0082 }] */
            /* JADX WARN: Code duplicated, block: B:44:0x00df A[Catch: all -> 0x0094, TryCatch #0 {all -> 0x0094, blocks: (B:19:0x0082, B:20:0x0088, B:47:0x00f1, B:22:0x008d, B:25:0x0097, B:28:0x009c, B:29:0x00a3, B:32:0x00a7, B:33:0x00b0, B:34:0x00c3, B:37:0x00c7, B:41:0x00ce, B:43:0x00d4, B:44:0x00df, B:45:0x00e9), top: B:61:0x0082 }] */
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                boolean z;
                int i2;
                Encoder encoder = (Encoder) obj;
                Objects.toString(encoder);
                Logger.c(3, "Recorder");
                if (encoder == null) {
                    return;
                }
                boolean z2 = false;
                RecordingRecord recordingRecordQ = null;
                Preconditions.f(null, Recorder.this.e0 == this.f2817a);
                Preconditions.f(null, Recorder.this.H == null);
                final Recorder recorder = Recorder.this;
                final VideoEncoderSession videoEncoderSession = this.f2817a;
                Executor executor = recorder.f2781e;
                Encoder encoder2 = videoEncoderSession.d;
                encoder2.getClass();
                recorder.H = encoder2;
                recorder.l.f(((VideoEncoderInfo) encoder2.c()).g());
                recorder.H.f();
                Surface surface = videoEncoderSession.f2849i != VideoEncoderSession.VideoEncoderState.READY ? null : videoEncoderSession.f2846e;
                recorder.D = surface;
                recorder.A(surface);
                hr0 hr0Var = new hr0(recorder);
                videoEncoderSession.g = executor;
                videoEncoderSession.f2848h = hr0Var;
                Futures.a(Futures.h(videoEncoderSession.l), new FutureCallback<Encoder>() { // from class: androidx.camera.video.Recorder.1
                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final void onFailure(Throwable th) {
                        Objects.toString(th);
                        Logger.c(3, "Recorder");
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public final void onSuccess(Object obj2) throws Exception {
                        Encoder encoder3;
                        Encoder encoder4 = (Encoder) obj2;
                        Objects.toString(encoder4);
                        Logger.c(3, "Recorder");
                        if (encoder4 == null) {
                            return;
                        }
                        Recorder recorder2 = Recorder.this;
                        ScheduledFuture scheduledFuture = recorder2.c0;
                        if (scheduledFuture != null && scheduledFuture.cancel(false) && (encoder3 = recorder2.H) != null && encoder3 == encoder4) {
                            Recorder.r(encoder3);
                        }
                        recorder2.g0 = videoEncoderSession;
                        recorder2.A(null);
                        recorder2.u(false);
                    }
                }, executor);
                Recorder recorder2 = Recorder.this;
                synchronized (recorder2.f2784i) {
                    try {
                        switch (recorder2.m.ordinal()) {
                            case 0:
                                recorder2.B(State.IDLING);
                                recordingRecordQ = null;
                                z = false;
                                i2 = 0;
                                break;
                            case 1:
                                z = false;
                                if (recorder2.p == null) {
                                    if (recorder2.b0 == VideoOutput.SourceState.INACTIVE) {
                                        recordingRecordQ = recorder2.q;
                                        recorder2.q = null;
                                        recorder2.x();
                                        Set set = Recorder.m0;
                                        i2 = 4;
                                    } else {
                                        recordingRecordQ = recorder2.q(recorder2.m);
                                    }
                                    break;
                                }
                                i2 = 0;
                                break;
                            case 2:
                                z = true;
                                if (recorder2.p == null) {
                                    if (recorder2.b0 == VideoOutput.SourceState.INACTIVE) {
                                        recordingRecordQ = recorder2.q;
                                        recorder2.q = null;
                                        recorder2.x();
                                        Set set2 = Recorder.m0;
                                        i2 = 4;
                                    } else {
                                        recordingRecordQ = recorder2.q(recorder2.m);
                                    }
                                    break;
                                }
                                i2 = 0;
                                break;
                            case 3:
                            case 7:
                                throw new AssertionError("Incorrectly invoke onConfigured() in state " + recorder2.m);
                            case 4:
                                z = false;
                                Preconditions.f("Unexpectedly invoke onConfigured() when there's a non-persistent in-progress recording", false);
                                recordingRecordQ = null;
                                i2 = 0;
                                z2 = true;
                                break;
                            case 5:
                                z = true;
                                Preconditions.f("Unexpectedly invoke onConfigured() when there's a non-persistent in-progress recording", false);
                                recordingRecordQ = null;
                                i2 = 0;
                                z2 = true;
                                break;
                            case 6:
                                if (!recorder2.f2785j) {
                                    throw new AssertionError("Unexpectedly invoke onConfigured() in a STOPPING state when it's not waiting for a new surface.");
                                }
                                recordingRecordQ = null;
                                z = false;
                                i2 = 0;
                                break;
                                break;
                            case 8:
                                Logger.a("Recorder");
                                recordingRecordQ = null;
                                z = false;
                                i2 = 0;
                                break;
                            default:
                                recordingRecordQ = null;
                                z = false;
                                i2 = 0;
                                break;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (z2) {
                    recorder2.H(recorder2.s, true);
                    recorder2.H.start();
                    if (z) {
                        recorder2.H.pause();
                        return;
                    }
                    return;
                }
                if (recordingRecordQ != null) {
                    recorder2.F(recordingRecordQ, z);
                } else if (recordingRecordQ != null) {
                    recorder2.j(recordingRecordQ, i2);
                }
            }
        }

        public SetupVideoTask(SurfaceRequest surfaceRequest, Timebase timebase, boolean z, int i2) {
            this.f2812a = surfaceRequest;
            this.f2813b = timebase;
            Recorder.this.l0 = z;
            this.f2814c = i2;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class State {
        private static final /* synthetic */ State[] $VALUES;
        public static final State CONFIGURING;
        public static final State ERROR;
        public static final State IDLING;
        public static final State PAUSED;
        public static final State PENDING_PAUSED;
        public static final State PENDING_RECORDING;
        public static final State RECORDING;
        public static final State RESETTING;
        public static final State STOPPING;

        static {
            State state = new State("CONFIGURING", 0);
            CONFIGURING = state;
            State state2 = new State("PENDING_RECORDING", 1);
            PENDING_RECORDING = state2;
            State state3 = new State("PENDING_PAUSED", 2);
            PENDING_PAUSED = state3;
            State state4 = new State("IDLING", 3);
            IDLING = state4;
            State state5 = new State("RECORDING", 4);
            RECORDING = state5;
            State state6 = new State("PAUSED", 5);
            PAUSED = state6;
            State state7 = new State("STOPPING", 6);
            STOPPING = state7;
            State state8 = new State("RESETTING", 7);
            RESETTING = state8;
            State state9 = new State("ERROR", 8);
            ERROR = state9;
            $VALUES = new State[]{state, state2, state3, state4, state5, state6, state7, state8, state9};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    static {
        QualitySelector qualitySelector = VideoSpec.f2856b;
        VideoSpec.Builder builderA = VideoSpec.a();
        AutoValue_VideoSpec.Builder builder = (AutoValue_VideoSpec.Builder) builderA;
        if (qualitySelector == null) {
            r81.d("Null qualitySelector");
            return;
        }
        builder.f2751a = qualitySelector;
        AutoValue_VideoSpec.Builder builder2 = (AutoValue_VideoSpec.Builder) builderA;
        builder2.d = -1;
        VideoSpec videoSpecA = builder2.a();
        o0 = videoSpecA;
        AutoValue_MediaSpec.Builder builder3 = new AutoValue_MediaSpec.Builder();
        builder3.f2734c = -1;
        builder3.f2733b = AudioSpec.a().a();
        VideoSpec.a().a();
        builder3.f2734c = -1;
        builder3.f2732a = videoSpecA;
        p0 = builder3.a();
        new RuntimeException("The video frame producer became inactive before any data was received.");
        q0 = new no0(23);
        r0 = new no0(24);
        s0 = CameraXExecutors.e(CameraXExecutors.b());
        t0 = 3;
        u0 = 1000L;
    }

    public Recorder(Executor executor, MediaSpec mediaSpec, EncoderFactory encoderFactory, EncoderFactory encoderFactory2, OutputStorage.Factory factory, long j2) {
        this.f2785j = DeviceQuirks.f2947a.b(EncoderNotUsePersistentInputSurfaceQuirk.class) != null;
        this.l = new MutableStateObservable(null);
        this.m = State.CONFIGURING;
        this.n = null;
        this.o = 0;
        this.p = null;
        this.q = null;
        this.r = 0L;
        this.s = null;
        this.t = false;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = new ArrayList();
        this.y = null;
        this.z = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = null;
        this.L = AudioState.INITIALIZING;
        this.M = Uri.EMPTY;
        this.N = 0L;
        this.O = 0L;
        this.P = 0L;
        this.Q = Long.MAX_VALUE;
        this.R = Long.MAX_VALUE;
        this.S = Long.MAX_VALUE;
        this.T = Long.MAX_VALUE;
        this.U = 0L;
        this.V = 0L;
        this.W = 1;
        this.X = null;
        this.Y = new ArrayRingBuffer(60);
        this.Z = null;
        this.a0 = false;
        this.b0 = VideoOutput.SourceState.INACTIVE;
        this.c0 = null;
        this.d0 = false;
        this.f0 = null;
        this.g0 = null;
        this.h0 = 0.0d;
        this.i0 = null;
        this.j0 = null;
        this.k0 = Long.MAX_VALUE;
        this.l0 = false;
        this.f2780c = executor;
        executor = executor == null ? CameraXExecutors.b() : executor;
        this.d = executor;
        Executor executorE = CameraXExecutors.e(executor);
        this.f2781e = executorE;
        AutoValue_MediaSpec autoValue_MediaSpec = (AutoValue_MediaSpec) mediaSpec;
        AutoValue_MediaSpec.Builder builder = new AutoValue_MediaSpec.Builder();
        builder.f2732a = autoValue_MediaSpec.f2729a;
        builder.f2733b = autoValue_MediaSpec.f2730b;
        builder.f2734c = Integer.valueOf(autoValue_MediaSpec.f2731c);
        if (((AutoValue_VideoSpec) autoValue_MediaSpec.f2729a).f2750f == -1) {
            VideoSpec videoSpec = builder.f2732a;
            if (videoSpec == null) {
                md.k("Property \"videoSpec\" has not been set");
                throw null;
            }
            AutoValue_VideoSpec autoValue_VideoSpec = (AutoValue_VideoSpec) videoSpec;
            AutoValue_VideoSpec.Builder builder2 = new AutoValue_VideoSpec.Builder();
            builder2.f2751a = autoValue_VideoSpec.f2748c;
            builder2.f2752b = Integer.valueOf(autoValue_VideoSpec.d);
            builder2.f2753c = autoValue_VideoSpec.f2749e;
            builder2.d = Integer.valueOf(autoValue_VideoSpec.f2750f);
            builder2.d = Integer.valueOf(((AutoValue_VideoSpec) o0).f2750f);
            builder.f2732a = builder2.a();
        }
        this.F = new MutableStateObservable(builder.a());
        int i2 = this.o;
        StreamInfo.StreamState streamStateM = m(this.m);
        StreamInfo streamInfo = StreamInfo.f2826a;
        this.f2778a = new MutableStateObservable(new AutoValue_StreamInfo(i2, streamStateM, null));
        this.f2779b = new MutableStateObservable(Boolean.FALSE);
        this.f2782f = encoderFactory;
        this.g = encoderFactory2;
        this.f2783h = factory;
        this.e0 = new VideoEncoderSession(encoderFactory, executorE, executor);
        j2 = j2 == -1 ? 52428800L : j2;
        this.f2786k = j2;
        StorageUtil.a(j2);
        Logger.c(3, "Recorder");
    }

    public static Object l(StateObservable stateObservable) {
        try {
            return stateObservable.a().get();
        } catch (InterruptedException | ExecutionException e2) {
            bm.i(e2);
            return null;
        }
    }

    public static StreamInfo.StreamState m(State state) {
        return (state == State.RECORDING || (state == State.STOPPING && ((DeactivateEncoderSurfaceBeforeStopEncoderQuirk) DeviceQuirks.f2947a.b(DeactivateEncoderSurfaceBeforeStopEncoderQuirk.class)) == null)) ? StreamInfo.StreamState.ACTIVE : StreamInfo.StreamState.INACTIVE;
    }

    public static boolean p(Recording recording, AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord) {
        return autoValue_Recorder_RecordingRecord != null && recording.d == autoValue_Recorder_RecordingRecord.m;
    }

    public static void r(Encoder encoder) {
        if (encoder instanceof EncoderImpl) {
            EncoderImpl encoderImpl = (EncoderImpl) encoder;
            Logger.c(3, encoderImpl.f3033a);
            encoderImpl.f3039i.execute(new gw(encoderImpl, 3));
        }
    }

    public final void A(Surface surface) {
        int iHashCode;
        if (this.C == surface) {
            return;
        }
        this.C = surface;
        synchronized (this.f2784i) {
            if (surface != null) {
                try {
                    iHashCode = surface.hashCode();
                } catch (Throwable th) {
                    throw th;
                }
            } else {
                iHashCode = 0;
            }
            C(iHashCode);
        }
    }

    public final void B(State state) {
        State state2 = this.m;
        if (state2 == state) {
            throw new AssertionError("Attempted to transition to state " + state + ", but Recorder is already in state " + state);
        }
        Objects.toString(state2);
        Objects.toString(state);
        Logger.c(3, "Recorder");
        Set set = m0;
        StreamInfo.StreamState streamStateM = null;
        if (set.contains(state)) {
            if (!set.contains(this.m)) {
                boolean zContains = n0.contains(this.m);
                State state3 = this.m;
                if (!zContains) {
                    no0.t(state3, "Invalid state transition. Should not be transitioning to a PENDING state from state ");
                    return;
                } else {
                    this.n = state3;
                    streamStateM = m(state3);
                }
            }
        } else if (this.n != null) {
            this.n = null;
        }
        this.m = state;
        if (streamStateM == null) {
            streamStateM = m(state);
        }
        int i2 = this.o;
        SurfaceRequest.TransformationInfo transformationInfo = this.u;
        StreamInfo streamInfo = StreamInfo.f2826a;
        this.f2778a.f(new AutoValue_StreamInfo(i2, streamStateM, transformationInfo));
    }

    public final void C(int i2) {
        if (this.o == i2) {
            return;
        }
        Logger.c(3, "Recorder");
        this.o = i2;
        StreamInfo.StreamState streamStateM = m(this.m);
        SurfaceRequest.TransformationInfo transformationInfo = this.u;
        StreamInfo streamInfo = StreamInfo.f2826a;
        this.f2778a.f(new AutoValue_StreamInfo(i2, streamStateM, transformationInfo));
    }

    /* JADX WARN: Code duplicated, block: B:47:0x00b9  */
    public final void D(RecordingRecord recordingRecord) throws Exception {
        String message;
        if (this.E != null) {
            md.h("Unable to set up media muxer when one already exists.");
            return;
        }
        boolean zN = n();
        ArrayRingBuffer arrayRingBuffer = this.Y;
        if (zN && arrayRingBuffer.c()) {
            md.h("Audio is enabled but no audio sample is ready. Cannot start media muxer.");
            return;
        }
        EncodedData encodedData = this.X;
        if (encodedData == null) {
            md.h("Media muxer cannot be started without an encoded video frame.");
            return;
        }
        try {
            this.X = null;
            long jY0 = encodedData.y0();
            ArrayList arrayList = new ArrayList();
            while (!arrayRingBuffer.c()) {
                EncodedData encodedData2 = (EncodedData) arrayRingBuffer.a();
                if (encodedData2.y0() >= jY0) {
                    arrayList.add(encodedData2);
                }
            }
            long size = encodedData.size();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                size += ((EncodedData) it.next()).size();
            }
            long j2 = this.U;
            int i2 = 2;
            int i3 = 3;
            if (j2 != 0 && size > j2) {
                String.format("Initial data exceeds file size limit %d > %d", Long.valueOf(size), Long.valueOf(this.U));
                Logger.c(3, "Recorder");
                s(recordingRecord, 2, null);
                encodedData.close();
                return;
            }
            int i4 = 0;
            try {
                MediaSpec mediaSpec = (MediaSpec) l(this.F);
                if (((AutoValue_MediaSpec) mediaSpec).f2731c == -1) {
                    VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxy = this.w;
                    int i5 = ((AutoValue_MediaSpec) p0).f2731c != 1 ? 0 : 1;
                    if (videoValidatedEncoderProfilesProxy != null) {
                        int iC = videoValidatedEncoderProfilesProxy.c();
                        if (iC != 1) {
                            if (iC == 2) {
                                i2 = 0;
                            } else if (iC != 9) {
                                i2 = i5;
                            } else {
                                i2 = 1;
                            }
                        }
                        try {
                            encodedData.close();
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                        }
                        throw th;
                    }
                    i2 = i5;
                } else if (((AutoValue_MediaSpec) mediaSpec).f2731c != 1) {
                    i2 = 0;
                } else {
                    i2 = 1;
                }
                MediaMuxer mediaMuxerG = recordingRecord.g(i2, new ir0(this, i4));
                SurfaceRequest.TransformationInfo transformationInfo = this.v;
                if (transformationInfo != null) {
                    z(transformationInfo);
                    mediaMuxerG.setOrientationHint(transformationInfo.b());
                }
                AutoValue_FileOutputOptions_FileOutputOptionsInternal autoValue_FileOutputOptions_FileOutputOptionsInternal = ((AutoValue_Recorder_RecordingRecord) recordingRecord).f2740i.f2760a;
                this.z = Integer.valueOf(mediaMuxerG.addTrack(this.I.a()));
                if (n()) {
                    this.y = Integer.valueOf(mediaMuxerG.addTrack(this.K.a()));
                }
                try {
                    mediaMuxerG.start();
                    this.E = mediaMuxerG;
                    L(encodedData, recordingRecord);
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        K((EncodedData) it2.next(), recordingRecord);
                    }
                    encodedData.close();
                } catch (IllegalStateException e2) {
                    OutputStorage outputStorage = this.j0;
                    outputStorage.getClass();
                    if (outputStorage.a() >= this.f2786k) {
                        i3 = 1;
                    }
                    s(recordingRecord, i3, e2);
                    encodedData.close();
                }
            } catch (IOException e3) {
                if (!(e3 instanceof FileNotFoundException) || (message = e3.getMessage()) == null || !StringsKt.k(message, "No space left on device", false)) {
                    i3 = 5;
                }
                s(recordingRecord, i3, e3);
                encodedData.close();
            }
        } catch (Throwable th2) {
            encodedData.close();
            throw th2;
        }
    }

    public final void E(RecordingRecord recordingRecord) {
        MediaSpec mediaSpec = (MediaSpec) l(this.F);
        AudioMimeInfo audioMimeInfoA = AudioConfigUtil.a(mediaSpec, this.w);
        Timebase timebase = Timebase.UPTIME;
        VideoEncoderConfig videoEncoderConfig = this.f0;
        videoEncoderConfig.getClass();
        Rational rational = videoEncoderConfig.e() != videoEncoderConfig.g() ? new Rational(videoEncoderConfig.e(), videoEncoderConfig.g()) : null;
        AutoValue_MediaSpec autoValue_MediaSpec = (AutoValue_MediaSpec) mediaSpec;
        AudioSpec audioSpec = autoValue_MediaSpec.f2730b;
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxyC = audioMimeInfoA.c();
        AudioSettings audioSettings = (AudioSettings) (audioProfileProxyC != null ? new AudioSettingsAudioProfileResolver(audioSpec, audioProfileProxyC, rational) : new AudioSettingsDefaultResolver(audioSpec, rational)).get();
        if (this.G != null) {
            t();
        }
        if (!((AutoValue_Recorder_RecordingRecord) recordingRecord).l) {
            no0.t(recordingRecord, "Recording does not have audio enabled. Unable to create audio source for recording ");
            return;
        }
        RecordingRecord.AudioSourceSupplier audioSourceSupplier = (RecordingRecord.AudioSourceSupplier) recordingRecord.f2806e.getAndSet(null);
        if (audioSourceSupplier == null) {
            no0.t(recordingRecord, "One-time audio source creation has already occurred for recording ");
            return;
        }
        AudioSource audioSourceA = audioSourceSupplier.a(audioSettings, s0);
        this.G = audioSourceA;
        String.format("Set up new audio source: 0x%x", Integer.valueOf(audioSourceA.hashCode()));
        Logger.c(3, "Recorder");
        AudioSpec audioSpec2 = autoValue_MediaSpec.f2730b;
        EncoderProfilesProxy.AudioProfileProxy audioProfileProxyC2 = audioMimeInfoA.c();
        AudioEncoderConfig audioEncoderConfig = (AudioEncoderConfig) (audioProfileProxyC2 != null ? new AudioEncoderConfigAudioProfileResolver(audioMimeInfoA.a(), audioMimeInfoA.b(), timebase, audioSpec2, audioSettings, audioProfileProxyC2) : new AudioEncoderConfigDefaultResolver(audioMimeInfoA.a(), audioMimeInfoA.b(), timebase, audioSpec2, audioSettings)).get();
        SurfaceRequest surfaceRequest = this.A;
        surfaceRequest.getClass();
        EncoderImpl encoderImplC = this.g.c(this.d, audioEncoderConfig, surfaceRequest.g);
        this.J = encoderImplC;
        Encoder.EncoderInput encoderInput = encoderImplC.g;
        if (!(encoderInput instanceof Encoder.ByteBufferInput)) {
            md.h("The EncoderInput of audio isn't a ByteBufferInput.");
        } else {
            AudioSource audioSource = this.G;
            audioSource.f2886a.execute(new r6(audioSource, (Encoder.ByteBufferInput) encoderInput, 5));
        }
    }

    public final void F(RecordingRecord recordingRecord, boolean z) {
        if (this.s != null) {
            md.h("Attempted to start a new recording while another was in progress.");
            return;
        }
        this.s = recordingRecord;
        AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord = (AutoValue_Recorder_RecordingRecord) recordingRecord;
        OutputOptions outputOptions = autoValue_Recorder_RecordingRecord.f2740i;
        OutputStorageImpl outputStorageImplD = this.f2783h.d(outputOptions);
        this.j0 = outputStorageImplD;
        long jA = outputStorageImplD.a();
        StorageUtil.a(jA);
        Logger.c(3, "Recorder");
        long j2 = this.f2786k;
        if (jA < j2) {
            new IOException(String.format("Insufficient storage space. The available storage (%d bytes) is below the required threshold of %d bytes.", Long.valueOf(jA), Long.valueOf(j2)));
            i(3);
        } else {
            this.k0 = jA - j2;
            boolean z2 = autoValue_Recorder_RecordingRecord.l;
            long j3 = outputOptions.f2760a.f2723a;
            if (j3 > 0) {
                this.U = Math.round(j3 * 0.95d);
                Logger.c(3, "Recorder");
            } else {
                this.U = 0L;
            }
            long j4 = outputOptions.f2760a.f2724b;
            if (j4 > 0) {
                this.V = TimeUnit.MILLISECONDS.toNanos(j4);
                Logger.c(3, "Recorder");
            } else {
                this.V = 0L;
            }
            int iOrdinal = this.L.ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal == 1) {
                    y(z2 ? AudioState.ENABLED : AudioState.DISABLED);
                } else if (iOrdinal == 2 || iOrdinal == 3 || iOrdinal == 4 || iOrdinal == 5) {
                    bm.d(this.L, "Incorrectly invoke startInternal in audio state ");
                    return;
                }
            } else if (z2) {
                if (!o()) {
                    md.h("The Recorder doesn't support recording with audio");
                    return;
                }
                try {
                    ((AutoValue_Recorder_RecordingRecord) this.s).getClass();
                    E(recordingRecord);
                    y(AudioState.ENABLED);
                } catch (AudioSourceAccessException | InvalidConfigException e2) {
                    Logger.b("Recorder");
                    y(e2 instanceof InvalidConfigException ? AudioState.ERROR_ENCODER : AudioState.ERROR_SOURCE);
                    this.Z = e2;
                }
            }
            int i2 = 0;
            H(recordingRecord, false);
            if (n()) {
                AudioSource audioSource = this.G;
                audioSource.f2886a.execute(new androidx.camera.video.internal.audio.b(audioSource, recordingRecord.g.get(), i2));
                this.J.start();
            }
            this.H.start();
            RecordingRecord recordingRecord2 = this.s;
            recordingRecord2.h(new VideoRecordEvent.Start(((AutoValue_Recorder_RecordingRecord) recordingRecord2).f2740i, k()), true);
        }
        if (z && this.s == recordingRecord && !this.t) {
            if (n()) {
                this.J.pause();
            }
            this.H.pause();
            RecordingRecord recordingRecord3 = this.s;
            recordingRecord3.h(new VideoRecordEvent.Pause(((AutoValue_Recorder_RecordingRecord) recordingRecord3).f2740i, k()), true);
        }
    }

    public final void G(RecordingRecord recordingRecord, long j2, int i2, Throwable th) throws Exception {
        if (this.s != recordingRecord || this.t) {
            return;
        }
        this.t = true;
        this.W = i2;
        if (n()) {
            while (true) {
                ArrayRingBuffer arrayRingBuffer = this.Y;
                if (arrayRingBuffer.c()) {
                    break;
                } else {
                    arrayRingBuffer.a();
                }
            }
            this.J.b(j2);
        }
        EncodedData encodedData = this.X;
        if (encodedData != null) {
            encodedData.close();
            this.X = null;
        }
        VideoOutput.SourceState sourceState = this.b0;
        VideoOutput.SourceState sourceState2 = VideoOutput.SourceState.ACTIVE_NON_STREAMING;
        Encoder encoder = this.H;
        if (sourceState != sourceState2) {
            hn0 hn0Var = new hn0(encoder, 13);
            this.c0 = CameraXExecutors.c().schedule(new aa0(this.f2781e, hn0Var, 20), 1000L, TimeUnit.MILLISECONDS);
        } else {
            r(encoder);
        }
        this.H.b(j2);
    }

    public final void H(final RecordingRecord recordingRecord, boolean z) {
        ArrayList arrayList = this.x;
        final int i2 = 1;
        if (!arrayList.isEmpty()) {
            ListenableFuture listenableFutureB = Futures.b(arrayList);
            if (!listenableFutureB.isDone()) {
                listenableFutureB.cancel(true);
            }
            arrayList.clear();
        }
        final int i3 = 0;
        arrayList.add(CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver(this) { // from class: androidx.camera.video.d

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Recorder f2865c;

            {
                this.f2865c = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object i(final CallbackToFutureAdapter.Completer completer) {
                int i4 = i3;
                final Recorder.RecordingRecord recordingRecord2 = recordingRecord;
                final Recorder recorder = this.f2865c;
                switch (i4) {
                    case 0:
                        recorder.H.a(new EncoderCallback() { // from class: androidx.camera.video.Recorder.3
                            @Override // androidx.camera.video.internal.encoder.EncoderCallback
                            public final void a() {
                                completer.b(null);
                            }

                            @Override // androidx.camera.video.internal.encoder.EncoderCallback
                            public final void b(EncodedData encodedData) throws Exception {
                                boolean z2;
                                Recorder recorder2 = Recorder.this;
                                MediaMuxer mediaMuxer = recorder2.E;
                                RecordingRecord recordingRecord3 = recordingRecord2;
                                if (mediaMuxer != null) {
                                    try {
                                        recorder2.L(encodedData, recordingRecord3);
                                        encodedData.close();
                                        return;
                                    } catch (Throwable th) {
                                        try {
                                            encodedData.close();
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                        throw th;
                                    }
                                }
                                if (recorder2.t) {
                                    Logger.c(3, "Recorder");
                                    encodedData.close();
                                    return;
                                }
                                EncodedData encodedData2 = recorder2.X;
                                if (encodedData2 != null) {
                                    encodedData2.close();
                                    recorder2.X = null;
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (!encodedData.c0()) {
                                    if (z2) {
                                        Logger.c(3, "Recorder");
                                    }
                                    Logger.c(3, "Recorder");
                                    recorder2.H.e();
                                    encodedData.close();
                                    return;
                                }
                                recorder2.X = encodedData;
                                if (!recorder2.n() || !recorder2.Y.c()) {
                                    Logger.c(3, "Recorder");
                                    recorder2.D(recordingRecord3);
                                } else if (z2) {
                                    Logger.c(3, "Recorder");
                                } else {
                                    Logger.c(3, "Recorder");
                                }
                            }

                            @Override // androidx.camera.video.internal.encoder.EncoderCallback
                            public final void c(androidx.camera.video.internal.encoder.f fVar) {
                                Recorder.this.I = fVar;
                            }

                            @Override // androidx.camera.video.internal.encoder.EncoderCallback
                            public final void d(EncodeException encodeException) {
                                completer.d(encodeException);
                            }
                        }, recorder.f2781e);
                        return "videoEncodingFuture";
                    default:
                        Set set = Recorder.m0;
                        final b bVar = new b(recorder, completer);
                        AudioSource audioSource = recorder.G;
                        Executor executor = recorder.f2781e;
                        audioSource.f2886a.execute(new b5(audioSource, executor, new AudioSource.AudioSourceCallback() { // from class: androidx.camera.video.Recorder.4
                            @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
                            public final void a(boolean z2) {
                                Recorder recorder2 = Recorder.this;
                                if (recorder2.a0 == z2) {
                                    Logger.c(5, "Recorder");
                                } else {
                                    recorder2.a0 = z2;
                                    recorder2.I(true);
                                }
                            }

                            @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
                            public final void b(double d) {
                                Recorder.this.h0 = d;
                            }

                            @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
                            public final void onError(Throwable th) {
                                Logger.b("Recorder");
                                if (th instanceof AudioSourceAccessException) {
                                    bVar.accept(th);
                                }
                            }
                        }, 2));
                        recorder.J.a(new EncoderCallback() { // from class: androidx.camera.video.Recorder.5
                            @Override // androidx.camera.video.internal.encoder.EncoderCallback
                            public final void a() {
                                completer.b(null);
                            }

                            @Override // androidx.camera.video.internal.encoder.EncoderCallback
                            public final void b(EncodedData encodedData) throws Exception {
                                Recorder recorder2 = Recorder.this;
                                if (recorder2.L == AudioState.DISABLED) {
                                    encodedData.close();
                                    md.h("Audio is not enabled but audio encoded data is being produced.");
                                    return;
                                }
                                MediaMuxer mediaMuxer = recorder2.E;
                                RecordingRecord recordingRecord3 = recordingRecord2;
                                if (mediaMuxer != null) {
                                    try {
                                        recorder2.K(encodedData, recordingRecord3);
                                        encodedData.close();
                                        return;
                                    } catch (Throwable th) {
                                        try {
                                            encodedData.close();
                                        } catch (Throwable th2) {
                                            th.addSuppressed(th2);
                                        }
                                        throw th;
                                    }
                                }
                                if (recorder2.t) {
                                    Logger.c(3, "Recorder");
                                } else {
                                    recorder2.Y.b(new BufferCopiedEncodedData(encodedData));
                                    if (recorder2.X != null) {
                                        Logger.c(3, "Recorder");
                                        recorder2.D(recordingRecord3);
                                    } else {
                                        Logger.c(3, "Recorder");
                                    }
                                }
                                encodedData.close();
                            }

                            @Override // androidx.camera.video.internal.encoder.EncoderCallback
                            public final void c(androidx.camera.video.internal.encoder.f fVar) {
                                Recorder.this.K = fVar;
                            }

                            @Override // androidx.camera.video.internal.encoder.EncoderCallback
                            public final void d(EncodeException encodeException) {
                                if (Recorder.this.Z == null) {
                                    bVar.accept(encodeException);
                                }
                            }
                        }, executor);
                        return "audioEncodingFuture";
                }
            }
        }));
        if (n() && !z) {
            arrayList.add(CallbackToFutureAdapter.a(new CallbackToFutureAdapter.Resolver(this) { // from class: androidx.camera.video.d

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Recorder f2865c;

                {
                    this.f2865c = this;
                }

                @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                public final Object i(final CallbackToFutureAdapter.Completer completer) {
                    int i4 = i2;
                    final Recorder.RecordingRecord recordingRecord2 = recordingRecord;
                    final Recorder recorder = this.f2865c;
                    switch (i4) {
                        case 0:
                            recorder.H.a(new EncoderCallback() { // from class: androidx.camera.video.Recorder.3
                                @Override // androidx.camera.video.internal.encoder.EncoderCallback
                                public final void a() {
                                    completer.b(null);
                                }

                                @Override // androidx.camera.video.internal.encoder.EncoderCallback
                                public final void b(EncodedData encodedData) throws Exception {
                                    boolean z2;
                                    Recorder recorder2 = Recorder.this;
                                    MediaMuxer mediaMuxer = recorder2.E;
                                    RecordingRecord recordingRecord3 = recordingRecord2;
                                    if (mediaMuxer != null) {
                                        try {
                                            recorder2.L(encodedData, recordingRecord3);
                                            encodedData.close();
                                            return;
                                        } catch (Throwable th) {
                                            try {
                                                encodedData.close();
                                            } catch (Throwable th2) {
                                                th.addSuppressed(th2);
                                            }
                                            throw th;
                                        }
                                    }
                                    if (recorder2.t) {
                                        Logger.c(3, "Recorder");
                                        encodedData.close();
                                        return;
                                    }
                                    EncodedData encodedData2 = recorder2.X;
                                    if (encodedData2 != null) {
                                        encodedData2.close();
                                        recorder2.X = null;
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (!encodedData.c0()) {
                                        if (z2) {
                                            Logger.c(3, "Recorder");
                                        }
                                        Logger.c(3, "Recorder");
                                        recorder2.H.e();
                                        encodedData.close();
                                        return;
                                    }
                                    recorder2.X = encodedData;
                                    if (!recorder2.n() || !recorder2.Y.c()) {
                                        Logger.c(3, "Recorder");
                                        recorder2.D(recordingRecord3);
                                    } else if (z2) {
                                        Logger.c(3, "Recorder");
                                    } else {
                                        Logger.c(3, "Recorder");
                                    }
                                }

                                @Override // androidx.camera.video.internal.encoder.EncoderCallback
                                public final void c(androidx.camera.video.internal.encoder.f fVar) {
                                    Recorder.this.I = fVar;
                                }

                                @Override // androidx.camera.video.internal.encoder.EncoderCallback
                                public final void d(EncodeException encodeException) {
                                    completer.d(encodeException);
                                }
                            }, recorder.f2781e);
                            return "videoEncodingFuture";
                        default:
                            Set set = Recorder.m0;
                            final b bVar = new b(recorder, completer);
                            AudioSource audioSource = recorder.G;
                            Executor executor = recorder.f2781e;
                            audioSource.f2886a.execute(new b5(audioSource, executor, new AudioSource.AudioSourceCallback() { // from class: androidx.camera.video.Recorder.4
                                @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
                                public final void a(boolean z2) {
                                    Recorder recorder2 = Recorder.this;
                                    if (recorder2.a0 == z2) {
                                        Logger.c(5, "Recorder");
                                    } else {
                                        recorder2.a0 = z2;
                                        recorder2.I(true);
                                    }
                                }

                                @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
                                public final void b(double d) {
                                    Recorder.this.h0 = d;
                                }

                                @Override // androidx.camera.video.internal.audio.AudioSource.AudioSourceCallback
                                public final void onError(Throwable th) {
                                    Logger.b("Recorder");
                                    if (th instanceof AudioSourceAccessException) {
                                        bVar.accept(th);
                                    }
                                }
                            }, 2));
                            recorder.J.a(new EncoderCallback() { // from class: androidx.camera.video.Recorder.5
                                @Override // androidx.camera.video.internal.encoder.EncoderCallback
                                public final void a() {
                                    completer.b(null);
                                }

                                @Override // androidx.camera.video.internal.encoder.EncoderCallback
                                public final void b(EncodedData encodedData) throws Exception {
                                    Recorder recorder2 = Recorder.this;
                                    if (recorder2.L == AudioState.DISABLED) {
                                        encodedData.close();
                                        md.h("Audio is not enabled but audio encoded data is being produced.");
                                        return;
                                    }
                                    MediaMuxer mediaMuxer = recorder2.E;
                                    RecordingRecord recordingRecord3 = recordingRecord2;
                                    if (mediaMuxer != null) {
                                        try {
                                            recorder2.K(encodedData, recordingRecord3);
                                            encodedData.close();
                                            return;
                                        } catch (Throwable th) {
                                            try {
                                                encodedData.close();
                                            } catch (Throwable th2) {
                                                th.addSuppressed(th2);
                                            }
                                            throw th;
                                        }
                                    }
                                    if (recorder2.t) {
                                        Logger.c(3, "Recorder");
                                    } else {
                                        recorder2.Y.b(new BufferCopiedEncodedData(encodedData));
                                        if (recorder2.X != null) {
                                            Logger.c(3, "Recorder");
                                            recorder2.D(recordingRecord3);
                                        } else {
                                            Logger.c(3, "Recorder");
                                        }
                                    }
                                    encodedData.close();
                                }

                                @Override // androidx.camera.video.internal.encoder.EncoderCallback
                                public final void c(androidx.camera.video.internal.encoder.f fVar) {
                                    Recorder.this.K = fVar;
                                }

                                @Override // androidx.camera.video.internal.encoder.EncoderCallback
                                public final void d(EncodeException encodeException) {
                                    if (Recorder.this.Z == null) {
                                        bVar.accept(encodeException);
                                    }
                                }
                            }, executor);
                            return "audioEncodingFuture";
                    }
                }
            }));
        }
        Futures.a(Futures.b(arrayList), new FutureCallback<List<Void>>() { // from class: androidx.camera.video.Recorder.6
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                Recorder recorder = Recorder.this;
                Preconditions.f("In-progress recording shouldn't be null", recorder.s != null);
                ((AutoValue_Recorder_RecordingRecord) recorder.s).getClass();
                Objects.toString(th);
                Logger.c(3, "Recorder");
                recorder.i(recorder.E == null ? 8 : 6);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                Logger.c(3, "Recorder");
                Recorder recorder = Recorder.this;
                recorder.i(recorder.W);
            }
        }, CameraXExecutors.a());
    }

    public final void I(boolean z) {
        RecordingRecord recordingRecord = this.s;
        if (recordingRecord != null) {
            recordingRecord.h(new VideoRecordEvent.Status(((AutoValue_Recorder_RecordingRecord) recordingRecord).f2740i, k()), z);
        }
    }

    public final void J(State state) {
        if (!m0.contains(this.m)) {
            bm.d(this.m, "Can only updated non-pending state from a pending state, but state is ");
            return;
        }
        if (!n0.contains(state)) {
            no0.t(state, "Invalid state transition. State is not a valid non-pending state while in a pending state: ");
            return;
        }
        if (this.n != state) {
            this.n = state;
            int i2 = this.o;
            StreamInfo.StreamState streamStateM = m(state);
            SurfaceRequest.TransformationInfo transformationInfo = this.u;
            StreamInfo streamInfo = StreamInfo.f2826a;
            this.f2778a.f(new AutoValue_StreamInfo(i2, streamStateM, transformationInfo));
        }
    }

    public final void K(EncodedData encodedData, RecordingRecord recordingRecord) throws Exception {
        long size = encodedData.size() + this.N;
        long j2 = this.U;
        if (j2 != 0 && size > j2) {
            String.format("Reach file size limit %d > %d", Long.valueOf(size), Long.valueOf(this.U));
            Logger.c(3, "Recorder");
            s(recordingRecord, 2, null);
            return;
        }
        long jY0 = encodedData.y0();
        long j3 = this.R;
        if (j3 == Long.MAX_VALUE) {
            this.R = jY0;
            String.format("First audio time: %d (%s)", Long.valueOf(jY0), DebugUtils.b(this.R));
            Logger.c(3, "Recorder");
        } else {
            long jMin = jY0 - Math.min(this.Q, j3);
            TimeUnit timeUnit = TimeUnit.MICROSECONDS;
            long nanos = timeUnit.toNanos(jMin);
            Preconditions.f("There should be a previous data for adjusting the duration.", this.T != Long.MAX_VALUE);
            long nanos2 = timeUnit.toNanos(jY0 - this.T) + nanos;
            long j4 = this.V;
            if (j4 != 0 && nanos2 > j4) {
                String.format("Audio data reaches duration limit %d > %d", Long.valueOf(nanos2), Long.valueOf(this.V));
                Logger.c(3, "Recorder");
                s(recordingRecord, 9, null);
                return;
            }
        }
        try {
            this.E.writeSampleData(this.y.intValue(), encodedData.N(), encodedData.Y());
            this.N = size;
            this.O = encodedData.size() + this.O;
            this.T = jY0;
        } catch (IllegalStateException e2) {
            OutputStorage outputStorage = this.j0;
            outputStorage.getClass();
            s(recordingRecord, outputStorage.a() >= this.f2786k ? 1 : 3, e2);
        }
    }

    public final void L(EncodedData encodedData, RecordingRecord recordingRecord) throws Exception {
        String str;
        long j2 = this.f2786k;
        if (this.z == null) {
            md.h("Video data comes before the track is added to MediaMuxer.");
            return;
        }
        long size = encodedData.size() + this.N;
        long j3 = this.U;
        long nanos = 0;
        if (j3 != 0 && size > j3) {
            String.format("Reach file size limit %d > %d", Long.valueOf(size), Long.valueOf(this.U));
            Logger.c(3, "Recorder");
            s(recordingRecord, 2, null);
            return;
        }
        long jY0 = encodedData.y0();
        long j4 = this.Q;
        if (j4 == Long.MAX_VALUE) {
            this.Q = jY0;
            String.format("First video time: %d (%s)", Long.valueOf(jY0), DebugUtils.b(this.Q));
            Logger.c(3, "Recorder");
            str = "Recorder";
        } else {
            long jMin = jY0 - Math.min(j4, this.R);
            TimeUnit timeUnit = TimeUnit.MICROSECONDS;
            nanos = timeUnit.toNanos(jMin);
            Preconditions.f("There should be a previous data for adjusting the duration.", this.S != Long.MAX_VALUE);
            long nanos2 = timeUnit.toNanos(jY0 - this.S) + nanos;
            str = "Recorder";
            long j5 = this.V;
            if (j5 != 0 && nanos2 > j5) {
                String.format("Video data reaches duration limit %d > %d", Long.valueOf(nanos2), Long.valueOf(this.V));
                Logger.c(3, str);
                s(recordingRecord, 9, null);
                return;
            }
        }
        try {
            this.E.writeSampleData(this.z.intValue(), encodedData.N(), encodedData.Y());
            this.N = size;
            this.P = nanos;
            this.S = jY0;
            I(encodedData.c0());
            if (size > this.k0) {
                OutputStorage outputStorage = this.j0;
                outputStorage.getClass();
                long jA = outputStorage.a();
                StorageUtil.a(jA);
                Logger.c(3, str);
                if (jA < j2) {
                    s(recordingRecord, 3, new IOException(String.format("Insufficient storage space. The available storage (%d bytes) is below the required threshold of %d bytes.", Long.valueOf(jA), Long.valueOf(j2))));
                } else {
                    this.k0 = jA - j2;
                }
            }
        } catch (IllegalStateException e2) {
            OutputStorage outputStorage2 = this.j0;
            outputStorage2.getClass();
            s(recordingRecord, outputStorage2.a() >= j2 ? 1 : 3, e2);
        }
    }

    @Override // androidx.camera.video.VideoOutput
    public final void a(SurfaceRequest surfaceRequest) {
        g(surfaceRequest, Timebase.UPTIME, false);
    }

    @Override // androidx.camera.video.VideoOutput
    public final Observable b() {
        return this.F;
    }

    @Override // androidx.camera.video.VideoOutput
    public final Observable c() {
        return this.f2778a;
    }

    @Override // androidx.camera.video.VideoOutput
    public final void d(VideoOutput.SourceState sourceState) {
        this.f2781e.execute(new e(this, sourceState, 0));
    }

    @Override // androidx.camera.video.VideoOutput
    public final VideoCapabilities e(CameraInfo cameraInfo, int i2) {
        return new RecorderVideoCapabilities((CameraInfoInternal) cameraInfo, i2 == 1 ? 2 : 1);
    }

    @Override // androidx.camera.video.VideoOutput
    public final Observable f() {
        return this.f2779b;
    }

    @Override // androidx.camera.video.VideoOutput
    public final void g(SurfaceRequest surfaceRequest, Timebase timebase, boolean z) {
        synchronized (this.f2784i) {
            try {
                Objects.toString(this.m);
                Logger.c(3, "Recorder");
                if (this.m == State.ERROR) {
                    B(State.CONFIGURING);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f2781e.execute(new gr0(this, surfaceRequest, timebase, z, 0));
    }

    public final void h(SurfaceRequest surfaceRequest, Timebase timebase, boolean z) {
        Object value;
        Quality quality;
        if (surfaceRequest.f1978h.isDone()) {
            Logger.c(5, "Recorder");
            return;
        }
        hr0 hr0Var = new hr0(this);
        Executor executor = this.f2781e;
        surfaceRequest.b(executor, hr0Var);
        Size size = surfaceRequest.f1974b;
        DynamicRange dynamicRange = surfaceRequest.f1975c;
        RecorderVideoCapabilities recorderVideoCapabilities = (RecorderVideoCapabilities) e(surfaceRequest.f1976e.b(), surfaceRequest.g);
        CapabilitiesByQuality capabilitiesByQualityE = recorderVideoCapabilities.e(dynamicRange);
        if (capabilitiesByQualityE == null) {
            quality = Quality.g;
        } else {
            TreeMap treeMap = capabilitiesByQualityE.f2755b;
            Size size2 = SizeUtil.f2515a;
            Map.Entry entryCeilingEntry = treeMap.ceilingEntry(size);
            if (entryCeilingEntry != null) {
                value = entryCeilingEntry.getValue();
            } else {
                Map.Entry entryFloorEntry = treeMap.floorEntry(size);
                value = entryFloorEntry != null ? entryFloorEntry.getValue() : null;
            }
            quality = (Quality) value;
            if (quality == null) {
                quality = Quality.g;
            }
        }
        Objects.toString(quality);
        Objects.toString(size);
        Logger.c(3, "Recorder");
        if (quality != Quality.g) {
            CapabilitiesByQuality capabilitiesByQualityE2 = recorderVideoCapabilities.e(dynamicRange);
            VideoValidatedEncoderProfilesProxy videoValidatedEncoderProfilesProxyA = capabilitiesByQualityE2 == null ? null : capabilitiesByQualityE2.a(quality);
            this.w = videoValidatedEncoderProfilesProxyA;
            if (videoValidatedEncoderProfilesProxyA == null) {
                md.h("Camera advertised available quality but did not produce EncoderProfiles  for advertised quality.");
                return;
            }
        }
        Objects.toString(this.w);
        Logger.c(3, "Recorder");
        SetupVideoTask setupVideoTask = this.i0;
        if (setupVideoTask != null && !setupVideoTask.d) {
            setupVideoTask.d = true;
            ScheduledFuture scheduledFuture = setupVideoTask.f2816f;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                setupVideoTask.f2816f = null;
            }
        }
        SetupVideoTask setupVideoTask2 = new SetupVideoTask(surfaceRequest, timebase, this.l0, z ? t0 : 0);
        this.i0 = setupVideoTask2;
        Objects.toString(this.H);
        Logger.c(3, "Recorder");
        VideoEncoderSession videoEncoderSession = this.e0;
        videoEncoderSession.a();
        Futures.h(videoEncoderSession.f2850j).addListener(new g(setupVideoTask2, surfaceRequest, timebase), executor);
    }

    /* JADX WARN: Code duplicated, block: B:80:0x0175 A[Catch: all -> 0x014b, TryCatch #2 {all -> 0x014b, blocks: (B:43:0x00ed, B:45:0x00f1, B:46:0x00f5, B:54:0x0119, B:55:0x0121, B:94:0x01b1, B:59:0x012c, B:61:0x0130, B:63:0x0136, B:67:0x0140, B:71:0x014e, B:74:0x0158, B:75:0x016b, B:78:0x016f, B:80:0x0175, B:81:0x0182, B:83:0x0186, B:85:0x018c, B:89:0x0196, B:90:0x019e, B:92:0x01a2, B:109:0x01d9, B:110:0x01da, B:111:0x01e1, B:47:0x00f6, B:48:0x0105, B:50:0x010b, B:53:0x0118), top: B:120:0x00ed, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x0182 A[Catch: all -> 0x014b, TryCatch #2 {all -> 0x014b, blocks: (B:43:0x00ed, B:45:0x00f1, B:46:0x00f5, B:54:0x0119, B:55:0x0121, B:94:0x01b1, B:59:0x012c, B:61:0x0130, B:63:0x0136, B:67:0x0140, B:71:0x014e, B:74:0x0158, B:75:0x016b, B:78:0x016f, B:80:0x0175, B:81:0x0182, B:83:0x0186, B:85:0x018c, B:89:0x0196, B:90:0x019e, B:92:0x01a2, B:109:0x01d9, B:110:0x01da, B:111:0x01e1, B:47:0x00f6, B:48:0x0105, B:50:0x010b, B:53:0x0118), top: B:120:0x00ed, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:83:0x0186 A[Catch: all -> 0x014b, TryCatch #2 {all -> 0x014b, blocks: (B:43:0x00ed, B:45:0x00f1, B:46:0x00f5, B:54:0x0119, B:55:0x0121, B:94:0x01b1, B:59:0x012c, B:61:0x0130, B:63:0x0136, B:67:0x0140, B:71:0x014e, B:74:0x0158, B:75:0x016b, B:78:0x016f, B:80:0x0175, B:81:0x0182, B:83:0x0186, B:85:0x018c, B:89:0x0196, B:90:0x019e, B:92:0x01a2, B:109:0x01d9, B:110:0x01da, B:111:0x01e1, B:47:0x00f6, B:48:0x0105, B:50:0x010b, B:53:0x0118), top: B:120:0x00ed, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0195  */
    /* JADX WARN: Code duplicated, block: B:90:0x019e A[Catch: all -> 0x014b, TryCatch #2 {all -> 0x014b, blocks: (B:43:0x00ed, B:45:0x00f1, B:46:0x00f5, B:54:0x0119, B:55:0x0121, B:94:0x01b1, B:59:0x012c, B:61:0x0130, B:63:0x0136, B:67:0x0140, B:71:0x014e, B:74:0x0158, B:75:0x016b, B:78:0x016f, B:80:0x0175, B:81:0x0182, B:83:0x0186, B:85:0x018c, B:89:0x0196, B:90:0x019e, B:92:0x01a2, B:109:0x01d9, B:110:0x01da, B:111:0x01e1, B:47:0x00f6, B:48:0x0105, B:50:0x010b, B:53:0x0118), top: B:120:0x00ed, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:92:0x01a2 A[Catch: all -> 0x014b, TryCatch #2 {all -> 0x014b, blocks: (B:43:0x00ed, B:45:0x00f1, B:46:0x00f5, B:54:0x0119, B:55:0x0121, B:94:0x01b1, B:59:0x012c, B:61:0x0130, B:63:0x0136, B:67:0x0140, B:71:0x014e, B:74:0x0158, B:75:0x016b, B:78:0x016f, B:80:0x0175, B:81:0x0182, B:83:0x0186, B:85:0x018c, B:89:0x0196, B:90:0x019e, B:92:0x01a2, B:109:0x01d9, B:110:0x01da, B:111:0x01e1, B:47:0x00f6, B:48:0x0105, B:50:0x010b, B:53:0x0118), top: B:120:0x00ed, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x01ae  */
    public final void i(int i2) {
        VideoRecordEvent.Finalize finalize;
        boolean z;
        int i3;
        SurfaceRequest surfaceRequest;
        if (this.s == null) {
            md.h("Attempted to finalize in-progress recording, but no recording is in progress.");
            return;
        }
        MediaMuxer mediaMuxer = this.E;
        int i4 = 1;
        RecordingRecord recordingRecordQ = null;
        if (mediaMuxer != null) {
            try {
                mediaMuxer.stop();
                this.E.release();
            } catch (IllegalStateException e2) {
                e2.getMessage();
                Logger.b("Recorder");
                if (i2 == 0) {
                    OutputStorage outputStorage = this.j0;
                    outputStorage.getClass();
                    i2 = outputStorage.a() < this.f2786k ? 3 : this.O == 0 ? 8 : 1;
                }
            }
            this.E = null;
        } else if (i2 == 0) {
            i2 = 8;
        }
        this.s.c(this.M);
        OutputOptions outputOptions = ((AutoValue_Recorder_RecordingRecord) this.s).f2740i;
        RecordingStats recordingStatsK = k();
        Uri uri = this.M;
        Preconditions.e(uri, "OutputUri cannot be null.");
        new AutoValue_OutputResults(uri);
        RecordingRecord recordingRecord = this.s;
        if (i2 == 0) {
            finalize = new VideoRecordEvent.Finalize(outputOptions, recordingStatsK, 0);
        } else {
            Preconditions.b(i2 != 0, "An error type is required.");
            finalize = new VideoRecordEvent.Finalize(outputOptions, recordingStatsK, i2);
        }
        recordingRecord.h(finalize, true);
        RecordingRecord recordingRecord2 = this.s;
        this.s = null;
        this.t = false;
        this.y = null;
        this.z = null;
        this.x.clear();
        this.M = Uri.EMPTY;
        this.N = 0L;
        this.O = 0L;
        this.P = 0L;
        this.Q = Long.MAX_VALUE;
        this.R = Long.MAX_VALUE;
        this.S = Long.MAX_VALUE;
        this.T = Long.MAX_VALUE;
        this.W = 1;
        this.Z = null;
        this.h0 = 0.0d;
        this.j0 = null;
        this.k0 = Long.MAX_VALUE;
        ArrayRingBuffer arrayRingBuffer = this.Y;
        while (!arrayRingBuffer.c()) {
            arrayRingBuffer.a();
        }
        z(null);
        int iOrdinal = this.L.ordinal();
        int i5 = 4;
        if (iOrdinal == 2 || iOrdinal == 3) {
            y(AudioState.IDLING);
            final AudioSource audioSource = this.G;
            audioSource.f2886a.execute(new Runnable() { // from class: androidx.camera.video.internal.audio.a
                @Override // java.lang.Runnable
                public final void run() {
                    AudioSource audioSource2 = audioSource;
                    int iOrdinal2 = audioSource2.g.ordinal();
                    if (iOrdinal2 == 1) {
                        audioSource2.c(AudioSource.InternalState.CONFIGURED);
                        audioSource2.e();
                    } else {
                        if (iOrdinal2 != 2) {
                            return;
                        }
                        Logger.c(5, "AudioSource");
                    }
                }
            });
        } else if (iOrdinal == 4 || iOrdinal == 5) {
            y(AudioState.INITIALIZING);
        }
        synchronized (this.f2784i) {
            try {
                AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord = this.p;
                if (autoValue_Recorder_RecordingRecord != recordingRecord2) {
                    throw new AssertionError("Active recording did not match finalized recording on finalize.");
                }
                MutableStateObservable mutableStateObservable = autoValue_Recorder_RecordingRecord.f2808h;
                synchronized (mutableStateObservable.f2343a) {
                    try {
                        Iterator it = new HashSet(mutableStateObservable.f2346e.keySet()).iterator();
                        while (it.hasNext()) {
                            mutableStateObservable.c((Observable.Observer) it.next());
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                this.p = null;
                switch (this.m.ordinal()) {
                    case 1:
                        z = false;
                        if (this.b0 == VideoOutput.SourceState.INACTIVE) {
                            AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord2 = this.q;
                            this.q = null;
                            B(State.CONFIGURING);
                            recordingRecordQ = autoValue_Recorder_RecordingRecord2;
                            i3 = 0;
                            i4 = 0;
                        } else if (this.f2785j) {
                            this.D = null;
                            surfaceRequest = this.A;
                            if (surfaceRequest != null || surfaceRequest.f1978h.isDone()) {
                                i4 = 0;
                            }
                            J(State.CONFIGURING);
                            i3 = 0;
                            i5 = i3;
                        } else if (this.H != null) {
                            recordingRecordQ = null;
                            i4 = 0;
                            i5 = 0;
                            recordingRecordQ = q(this.m);
                            i3 = 0;
                        } else {
                            i3 = 0;
                            i4 = i3;
                            i5 = i4;
                        }
                        break;
                    case 2:
                        z = true;
                        if (this.b0 == VideoOutput.SourceState.INACTIVE) {
                            AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord3 = this.q;
                            this.q = null;
                            B(State.CONFIGURING);
                            recordingRecordQ = autoValue_Recorder_RecordingRecord3;
                            i3 = 0;
                            i4 = 0;
                        } else if (this.f2785j) {
                            this.D = null;
                            surfaceRequest = this.A;
                            if (surfaceRequest != null) {
                                i4 = 0;
                            } else {
                                i4 = 0;
                            }
                            J(State.CONFIGURING);
                            i3 = 0;
                            i5 = i3;
                        } else if (this.H != null) {
                            recordingRecordQ = null;
                            i4 = 0;
                            i5 = 0;
                            recordingRecordQ = q(this.m);
                            i3 = 0;
                        } else {
                            i3 = 0;
                            i4 = i3;
                            i5 = i4;
                        }
                        break;
                    case 3:
                        throw new AssertionError("Unexpected state on finalize of recording: " + this.m);
                    case 4:
                    case 5:
                    case 6:
                        if (!this.f2785j) {
                            B(State.IDLING);
                            z = false;
                            i3 = 0;
                            i4 = i3;
                            i5 = i4;
                        } else {
                            this.D = null;
                            SurfaceRequest surfaceRequest2 = this.A;
                            if (surfaceRequest2 == null || surfaceRequest2.f1978h.isDone()) {
                                i4 = 0;
                            }
                            B(State.CONFIGURING);
                            z = false;
                            i3 = 0;
                            i5 = i3;
                        }
                        break;
                    case 7:
                        i3 = 1;
                        recordingRecordQ = null;
                        z = false;
                        i4 = 0;
                        i5 = i4;
                        break;
                    default:
                        z = false;
                        i3 = 0;
                        i4 = i3;
                        i5 = i4;
                        break;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (i4 != 0) {
            h(this.A, this.B, false);
            return;
        }
        if (i3 != 0) {
            v();
            return;
        }
        if (recordingRecordQ == null) {
            if (recordingRecordQ != null) {
                j(recordingRecordQ, i5);
            }
        } else if (this.f2785j) {
            md.h("Attempt to start a pending recording while the Recorder is waiting for a new surface request.");
        } else {
            F(recordingRecordQ, z);
        }
    }

    public final void j(RecordingRecord recordingRecord, int i2) {
        Uri uri = Uri.EMPTY;
        recordingRecord.c(uri);
        OutputOptions outputOptions = ((AutoValue_Recorder_RecordingRecord) recordingRecord).f2740i;
        Throwable th = this.Z;
        Set set = AudioStats.f2710a;
        RecordingStats recordingStatsA = RecordingStats.a(0L, 0L, new AutoValue_AudioStats(1, 0.0d, 0L, th));
        Preconditions.e(uri, "OutputUri cannot be null.");
        new AutoValue_OutputResults(uri);
        Preconditions.b(i2 != 0, "An error type is required.");
        recordingRecord.h(new VideoRecordEvent.Finalize(outputOptions, recordingStatsA, i2), true);
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0030 A[PHI: r6
      0x0030: PHI (r6v1 int) = (r6v0 int), (r6v0 int), (r6v0 int), (r6v3 int), (r6v2 int) binds: [B:3:0x000b, B:4:0x000d, B:6:0x0010, B:23:0x0037, B:18:0x002e] A[DONT_GENERATE, DONT_INLINE]] */
    public final RecordingStats k() {
        int i2;
        long j2 = this.P;
        long j3 = this.N;
        AudioState audioState = this.L;
        int iOrdinal = audioState.ordinal();
        int i3 = 1;
        if (iOrdinal == 0 || iOrdinal == 1) {
            i2 = i3;
        } else {
            int i4 = 2;
            if (iOrdinal != 2) {
                i3 = 5;
                i2 = 3;
                if (iOrdinal != 3) {
                    i4 = 4;
                    if (iOrdinal != 4) {
                        if (iOrdinal != 5) {
                            no0.t(audioState, "Invalid internal audio state: ");
                            return null;
                        }
                    }
                } else {
                    RecordingRecord recordingRecord = this.s;
                    if (recordingRecord == null || !recordingRecord.g.get()) {
                        if (!this.a0) {
                            i3 = 0;
                        }
                    }
                    i2 = i3;
                }
                i2 = i4;
            } else {
                i2 = i3;
            }
        }
        Throwable th = this.Z;
        double d = this.h0;
        long j4 = this.O;
        Set set = AudioStats.f2710a;
        return RecordingStats.a(j2, j3, new AutoValue_AudioStats(i2, d, j4, th));
    }

    public final boolean n() {
        return this.L == AudioState.ENABLED;
    }

    public final boolean o() {
        return ((AutoValue_AudioSpec) ((AutoValue_MediaSpec) ((MediaSpec) l(this.F))).f2730b).g != 0;
    }

    public final RecordingRecord q(State state) {
        boolean z;
        if (state == State.PENDING_PAUSED) {
            z = true;
        } else {
            if (state != State.PENDING_RECORDING) {
                md.h("makePendingRecordingActiveLocked() can only be called from a pending state.");
                return null;
            }
            z = false;
        }
        if (this.p != null) {
            md.h("Cannot make pending recording active because another recording is already active.");
            return null;
        }
        AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord = this.q;
        if (autoValue_Recorder_RecordingRecord == null) {
            md.h("Pending recording should exist when in a PENDING state.");
            return null;
        }
        this.p = autoValue_Recorder_RecordingRecord;
        autoValue_Recorder_RecordingRecord.f2808h.b(CameraXExecutors.a(), new Observable.Observer<Boolean>() { // from class: androidx.camera.video.Recorder.7
            @Override // androidx.camera.core.impl.Observable.Observer
            public final void a(Object obj) {
                Recorder.this.f2779b.f((Boolean) obj);
            }

            @Override // androidx.camera.core.impl.Observable.Observer
            public final void onError(Throwable th) {
                Recorder.this.f2779b.g(th);
            }
        });
        this.q = null;
        if (z) {
            B(State.PAUSED);
            return autoValue_Recorder_RecordingRecord;
        }
        B(State.RECORDING);
        return autoValue_Recorder_RecordingRecord;
    }

    public final void s(RecordingRecord recordingRecord, int i2, Exception exc) throws Exception {
        boolean z;
        if (recordingRecord != this.s) {
            md.h("Internal error occurred on recording that is not the current in-progress recording.");
            return;
        }
        synchronized (this.f2784i) {
            try {
                z = false;
                switch (this.m.ordinal()) {
                    case 0:
                    case 3:
                    case 8:
                        throw new AssertionError("In-progress recording error occurred while in unexpected state: " + this.m);
                    case 4:
                    case 5:
                        B(State.STOPPING);
                        z = true;
                    case 1:
                    case 2:
                    case 6:
                    case 7:
                        if (recordingRecord != this.p) {
                            throw new AssertionError("Internal error occurred for recording but it is not the active recording.");
                        }
                        break;
                    default:
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            G(recordingRecord, -1L, i2, exc);
        }
    }

    public final void t() {
        final AudioSource audioSource = this.G;
        if (audioSource == null) {
            md.h("Cannot release null audio source.");
            return;
        }
        this.G = null;
        String.format("Releasing audio source: 0x%x", Integer.valueOf(audioSource.hashCode()));
        Logger.c(3, "Recorder");
        Futures.a(CallbackToFutureAdapter.a(new s3(audioSource, 5)), new FutureCallback<Void>() { // from class: androidx.camera.video.Recorder.2
            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onFailure(Throwable th) {
                String.format("An error occurred while attempting to release audio source: 0x%x", Integer.valueOf(audioSource.hashCode()));
                Logger.c(3, "Recorder");
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public final void onSuccess(Object obj) {
                String.format("Released audio source successfully: 0x%x", Integer.valueOf(audioSource.hashCode()));
                Logger.c(3, "Recorder");
            }
        }, CameraXExecutors.a());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void u(boolean z) throws Exception {
        boolean z2;
        boolean z3;
        synchronized (this.f2784i) {
            try {
                z2 = true;
                z3 = false;
                switch (this.m.ordinal()) {
                    case 0:
                    case 3:
                    case 8:
                        break;
                    case 1:
                    case 2:
                        J(State.RESETTING);
                        break;
                    case 4:
                    case 5:
                        Preconditions.f("In-progress recording shouldn't be null when in state " + this.m, this.s != null);
                        if (this.p != this.s) {
                            throw new AssertionError("In-progress recording does not match the active recording. Unable to reset encoder.");
                        }
                        B(State.RESETTING);
                        z3 = true;
                        z2 = false;
                        break;
                        break;
                    case 6:
                        B(State.RESETTING);
                        z2 = false;
                        break;
                    case 7:
                    default:
                        z2 = false;
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z2) {
            if (z3) {
                G(this.s, -1L, 4, null);
            }
        } else if (z) {
            w();
        } else {
            v();
        }
    }

    public final void v() {
        if (this.J != null) {
            Logger.c(3, "Recorder");
            this.J.release();
            this.J = null;
            this.K = null;
        }
        if (this.G != null) {
            t();
        }
        y(AudioState.INITIALIZING);
        w();
    }

    public final void w() {
        if (this.H != null) {
            Logger.c(3, "Recorder");
            VideoEncoderSession videoEncoderSession = this.g0;
            if (videoEncoderSession != null) {
                Preconditions.f(null, videoEncoderSession.d == this.H);
                Objects.toString(this.H);
                Logger.c(3, "Recorder");
                this.g0.b();
                this.g0 = null;
                this.H = null;
                this.I = null;
                A(null);
            } else {
                Objects.toString(this.H);
                Logger.c(3, "Recorder");
                VideoEncoderSession videoEncoderSession2 = this.e0;
                videoEncoderSession2.a();
                Futures.h(videoEncoderSession2.f2850j);
            }
        }
        synchronized (this.f2784i) {
            try {
                switch (this.m.ordinal()) {
                    case 1:
                    case 2:
                        J(State.CONFIGURING);
                        break;
                    case 3:
                    case 4:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                        B(State.CONFIGURING);
                        break;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.d0 = false;
        SurfaceRequest surfaceRequest = this.A;
        if (surfaceRequest == null || surfaceRequest.f1978h.isDone()) {
            return;
        }
        h(this.A, this.B, false);
    }

    public final void x() {
        if (m0.contains(this.m)) {
            B(this.n);
        } else {
            bm.d(this.m, "Cannot restore non-pending state when in state ");
        }
    }

    public final void y(AudioState audioState) {
        Objects.toString(this.L);
        Objects.toString(audioState);
        Logger.c(3, "Recorder");
        this.L = audioState;
    }

    public final void z(SurfaceRequest.TransformationInfo transformationInfo) {
        Objects.toString(transformationInfo);
        Logger.c(3, "Recorder");
        this.u = transformationInfo;
        synchronized (this.f2784i) {
            MutableStateObservable mutableStateObservable = this.f2778a;
            int i2 = this.o;
            StreamInfo.StreamState streamStateM = m(this.m);
            StreamInfo streamInfo = StreamInfo.f2826a;
            mutableStateObservable.f(new AutoValue_StreamInfo(i2, streamStateM, transformationInfo));
        }
    }
}
