package androidx.camera.video;

import androidx.core.util.Consumer;
import defpackage.o60;
import defpackage.r81;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public final class AutoValue_Recorder_RecordingRecord extends Recorder.RecordingRecord {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final OutputOptions f2740i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Executor f2741j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Consumer f2742k;
    public final boolean l;
    public final long m;

    public AutoValue_Recorder_RecordingRecord(OutputOptions outputOptions, Executor executor, Consumer consumer, boolean z, long j2) {
        if (outputOptions == null) {
            r81.d("Null getOutputOptions");
            throw null;
        }
        this.f2740i = outputOptions;
        this.f2741j = executor;
        this.f2742k = consumer;
        this.l = z;
        this.m = j2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Recorder.RecordingRecord)) {
            return false;
        }
        AutoValue_Recorder_RecordingRecord autoValue_Recorder_RecordingRecord = (AutoValue_Recorder_RecordingRecord) ((Recorder.RecordingRecord) obj);
        if (!this.f2740i.equals(autoValue_Recorder_RecordingRecord.f2740i)) {
            return false;
        }
        Executor executor = autoValue_Recorder_RecordingRecord.f2741j;
        Executor executor2 = this.f2741j;
        if (executor2 == null) {
            if (executor != null) {
                return false;
            }
        } else if (!executor2.equals(executor)) {
            return false;
        }
        Consumer consumer = autoValue_Recorder_RecordingRecord.f2742k;
        Consumer consumer2 = this.f2742k;
        if (consumer2 == null) {
            if (consumer != null) {
                return false;
            }
        } else if (!consumer2.equals(consumer)) {
            return false;
        }
        return this.l == autoValue_Recorder_RecordingRecord.l && this.m == autoValue_Recorder_RecordingRecord.m;
    }

    public final int hashCode() {
        int iHashCode = (this.f2740i.hashCode() ^ 1000003) * 1000003;
        Executor executor = this.f2741j;
        int iHashCode2 = (iHashCode ^ (executor == null ? 0 : executor.hashCode())) * 1000003;
        Consumer consumer = this.f2742k;
        int iHashCode3 = (((((iHashCode2 ^ (consumer != null ? consumer.hashCode() : 0)) * 1000003) ^ (this.l ? 1231 : 1237)) * 1000003) ^ 1237) * 1000003;
        long j2 = this.m;
        return ((int) ((j2 >>> 32) ^ j2)) ^ iHashCode3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("RecordingRecord{getOutputOptions=");
        sb.append(this.f2740i);
        sb.append(", getCallbackExecutor=");
        sb.append(this.f2741j);
        sb.append(", getEventListener=");
        sb.append(this.f2742k);
        sb.append(", hasAudioEnabled=");
        sb.append(this.l);
        sb.append(", isPersistent=false, getRecordingId=");
        return o60.j(this.m, "}", sb);
    }
}
