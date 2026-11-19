package net.rtccloud.sdk.event.call;

import defpackage.d21;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final class RecordingEvent extends CallEvent {
    private final boolean isRecording;

    public RecordingEvent(Call call, boolean z) {
        super(call);
        this.isRecording = z;
    }

    public boolean isRecording() {
        return this.isRecording;
    }

    @Override // net.rtccloud.sdk.event.call.CallEvent
    public String toString() {
        StringBuilder sb = new StringBuilder("RecordingEvent{call=");
        sb.append(this.call.id());
        sb.append(", isRecording=");
        return d21.q(sb, this.isRecording, '}');
    }
}
