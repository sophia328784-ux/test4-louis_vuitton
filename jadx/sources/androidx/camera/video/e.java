package androidx.camera.video;

import android.view.Surface;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.video.internal.encoder.Encoder;
import java.util.Objects;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f2866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f2867c;
    public final /* synthetic */ Object d;

    public /* synthetic */ e(Object obj, Object obj2, int i2) {
        this.f2866b = i2;
        this.f2867c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws Exception {
        ScheduledFuture scheduledFuture;
        Encoder encoder;
        int i2 = this.f2866b;
        Object obj = this.d;
        Object obj2 = this.f2867c;
        switch (i2) {
            case 0:
                Recorder recorder = (Recorder) obj2;
                VideoOutput.SourceState sourceState = (VideoOutput.SourceState) obj;
                VideoOutput.SourceState sourceState2 = recorder.b0;
                recorder.b0 = sourceState;
                if (sourceState2 != sourceState) {
                    Objects.toString(sourceState);
                    Logger.c(3, "Recorder");
                    if (sourceState == VideoOutput.SourceState.INACTIVE) {
                        if (recorder.D != null) {
                            recorder.d0 = true;
                            Recorder.RecordingRecord recordingRecord = recorder.s;
                            if (recordingRecord != null) {
                                recorder.s(recordingRecord, 4, null);
                            }
                        } else {
                            Recorder.SetupVideoTask setupVideoTask = recorder.i0;
                            if (setupVideoTask != null) {
                                if (!setupVideoTask.d) {
                                    setupVideoTask.d = true;
                                    ScheduledFuture scheduledFuture2 = setupVideoTask.f2816f;
                                    if (scheduledFuture2 != null) {
                                        scheduledFuture2.cancel(false);
                                        setupVideoTask.f2816f = null;
                                    }
                                }
                                recorder.i0 = null;
                            }
                            recorder.u(false);
                        }
                        break;
                    } else if (sourceState == VideoOutput.SourceState.ACTIVE_NON_STREAMING && (scheduledFuture = recorder.c0) != null && scheduledFuture.cancel(false) && (encoder = recorder.H) != null) {
                        Recorder.r(encoder);
                        break;
                    }
                } else {
                    Objects.toString(sourceState);
                    Logger.c(3, "Recorder");
                    break;
                }
                break;
            case 1:
                ((AutoValue_Recorder_RecordingRecord) ((Recorder.RecordingRecord) obj2)).f2742k.accept((VideoRecordEvent) obj);
                break;
            case 2:
                ((SessionConfig.Builder) obj).o((VideoCapture.AnonymousClass2) obj2);
                break;
            default:
                ((VideoEncoderSession) obj2).f2848h.a((Surface) obj);
                break;
        }
    }
}
