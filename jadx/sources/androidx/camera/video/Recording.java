package androidx.camera.video;

import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.CloseGuardHelper;
import androidx.core.util.Preconditions;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class Recording implements AutoCloseable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f2822b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Recorder f2823c;
    public final long d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final OutputOptions f2824e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CloseGuardHelper f2825f;

    public Recording(Recorder recorder, long j2, OutputOptions outputOptions, boolean z) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        this.f2822b = atomicBoolean;
        CloseGuardHelper closeGuardHelperB = CloseGuardHelper.b();
        this.f2825f = closeGuardHelperB;
        this.f2823c = recorder;
        this.d = j2;
        this.f2824e = outputOptions;
        if (z) {
            atomicBoolean.set(true);
        } else {
            closeGuardHelperB.c("stop");
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x007f  */
    /* JADX WARN: Code duplicated, block: B:26:0x0083  */
    /* JADX WARN: Code duplicated, block: B:34:? A[RETURN, SYNTHETIC] */
    public final void c(int i2, RuntimeException runtimeException) {
        final int i3;
        final RuntimeException runtimeException2;
        this.f2825f.a();
        if (this.f2822b.getAndSet(true)) {
            return;
        }
        final Recorder recorder = this.f2823c;
        synchronized (recorder.f2784i) {
            try {
                if (!Recorder.p(this, recorder.q) && !Recorder.p(this, recorder.p)) {
                    Objects.toString(this.f2824e);
                    Logger.c(3, "Recorder");
                    return;
                }
                AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord = null;
                switch (recorder.m.ordinal()) {
                    case 0:
                    case 3:
                        throw new IllegalStateException("Calling stop() while idling or initializing is invalid.");
                    case 1:
                    case 2:
                        i3 = i2;
                        runtimeException2 = runtimeException;
                        Preconditions.f(null, Recorder.p(this, recorder.q));
                        AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord2 = recorder.q;
                        recorder.q = null;
                        recorder.x();
                        autoValue_Recorder_RecordingRecord = autoValue_Recorder_RecordingRecord2;
                        if (autoValue_Recorder_RecordingRecord != null) {
                            if (i3 == 10) {
                                Logger.a("Recorder");
                            }
                            new RuntimeException("Recording was stopped before any data could be produced.", runtimeException2);
                            recorder.j(autoValue_Recorder_RecordingRecord, 8);
                            return;
                        }
                        return;
                    case 4:
                    case 5:
                        recorder.B(Recorder.State.STOPPING);
                        final long jNanoTime = System.nanoTime() / 1000;
                        final AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord3 = recorder.p;
                        i3 = i2;
                        runtimeException2 = runtimeException;
                        recorder.f2781e.execute(new Runnable() { // from class: androidx.camera.video.c
                            @Override // java.lang.Runnable
                            public final void run() throws Exception {
                                Set set = Recorder.m0;
                                recorder.G(autoValue_Recorder_RecordingRecord3, jNanoTime, i3, runtimeException2);
                            }
                        });
                        if (autoValue_Recorder_RecordingRecord != null) {
                            if (i3 == 10) {
                                Logger.a("Recorder");
                            }
                            new RuntimeException("Recording was stopped before any data could be produced.", runtimeException2);
                            recorder.j(autoValue_Recorder_RecordingRecord, 8);
                            return;
                        }
                        return;
                    case 6:
                    case 7:
                        Preconditions.f(null, Recorder.p(this, recorder.p));
                    default:
                        i3 = i2;
                        runtimeException2 = runtimeException;
                        if (autoValue_Recorder_RecordingRecord != null) {
                            if (i3 == 10) {
                                Logger.a("Recorder");
                            }
                            new RuntimeException("Recording was stopped before any data could be produced.", runtimeException2);
                            recorder.j(autoValue_Recorder_RecordingRecord, 8);
                            return;
                        }
                        return;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        c(0, null);
    }

    public final void finalize() throws Throwable {
        try {
            this.f2825f.d();
            c(10, new RuntimeException("Recording stopped due to being garbage collected."));
        } finally {
            super.finalize();
        }
    }
}
