package net.rtccloud.sdk;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.nbslens.nbsnativecrashlib.m;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import net.rtccloud.sdk.event.call.CallEvent;
import net.rtccloud.sdk.event.call.ProgressivexEvent;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\bH&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J \u0010\f\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H&J\u001b\u0010\u0011\u001a\u00020\u00032\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H&¢\u0006\u0002\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0018H&J\u0018\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000eH&J\"\u0010\u001b\u001a\u00020\u00032\b\u0010\u001c\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001d\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u000eH&J\u0010\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020!H&¨\u0006\"À\u0006\u0003"}, d2 = {"Lnet/rtccloud/sdk/RtccMeetingCallBack;", "", "muclState", "", "state", "", "handleCommand", "callEvent", "Lnet/rtccloud/sdk/event/call/CallEvent;", "handleDataInBandChannel", ConfigurationName.PING_PAYLOAD, "", "handleBlob", "param", "", "Ljava/nio/ByteBuffer;", "type", "handleParticipant", "participant", "", "Lnet/rtccloud/sdk/Participant;", "([Lnet/rtccloud/sdk/Participant;)V", "handleProgressiveXEvent", "progressivexEvent", "Lnet/rtccloud/sdk/event/call/ProgressivexEvent;", "handleShareStartStop", "cmd", "newTranslationSentence", "text", "messageStatus", m.q, "handleRecordingStatus", "status", "Lnet/rtccloud/sdk/RecordingModule$Status;", "rtcc_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface RtccMeetingCallBack {
    void handleBlob(int param, ByteBuffer payload, String type);

    void handleCommand(CallEvent callEvent);

    void handleDataInBandChannel(byte[] payload);

    void handleParticipant(Participant[] participant);

    void handleProgressiveXEvent(ProgressivexEvent progressivexEvent);

    void handleRecordingStatus(RecordingModule.Status status);

    void handleShareStartStop(int cmd, int param);

    void muclState(String state);

    void newTranslationSentence(String text, int messageStatus, int pid);
}
