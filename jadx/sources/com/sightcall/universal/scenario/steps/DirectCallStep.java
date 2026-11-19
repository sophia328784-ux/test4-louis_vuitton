package com.sightcall.universal.scenario.steps;

import android.text.TextUtils;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.Universal;
import com.sightcall.universal.internal.model.DataChannelParser;
import com.sightcall.universal.model.Session;
import java.util.Arrays;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.call.StatusEvent;
import net.rtccloud.sdk.event.datachannel.DataChannelOutOfBandEvent;

/* JADX INFO: loaded from: classes3.dex */
public class DirectCallStep extends CallStep {
    private static final byte[] PREFIX_DIRECT_ACCEPT = "@DIRECT_ACCEPT@".getBytes();
    private static final byte[] PREFIX_DIRECT_DECLINE = "@DIRECT_DECLINE@".getBytes();
    private static final String PREFIX_DIRECT_REQUEST = "@DIRECT_REQUEST@";
    private final String uid;

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.steps.DirectCallStep$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Call$Status;

        static {
            int[] iArr = new int[Call.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Call$Status = iArr;
            try {
                iArr[Call.Status.RINGING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    private DirectCallStep(Session session, String str) {
        super(session);
        this.uid = str;
    }

    public static DirectCallStep with(Session session) {
        String strCalleeId = session.config.calleeId();
        if (TextUtils.isEmpty(strCalleeId)) {
            strCalleeId = session.config.uid();
        }
        if (TextUtils.isEmpty(strCalleeId)) {
            return null;
        }
        return new DirectCallStep(session, strCalleeId);
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    public void execute() {
        Logger.INSTANCE.d("execute() called", null);
        CallStep.sendDataChannel(this.uid, PREFIX_DIRECT_REQUEST + new DataChannelParser.UserInfo(Universal.context(), session()).toJson());
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    @Event
    public void onCallStatusEvent(StatusEvent statusEvent) {
        super.onCallStatusEvent(statusEvent);
        if (AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Call$Status[statusEvent.status().ordinal()] != 1) {
            return;
        }
        accept(statusEvent.call());
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    public void onDataChannelMessage(DataChannelOutOfBandEvent dataChannelOutOfBandEvent) {
        super.onDataChannelMessage(dataChannelOutOfBandEvent);
        byte[] bArrPayload = dataChannelOutOfBandEvent.payload();
        if (!Arrays.equals(bArrPayload, PREFIX_DIRECT_ACCEPT) && Arrays.equals(bArrPayload, PREFIX_DIRECT_DECLINE)) {
            Universal.logger().i("Remote user declined direct call");
            interrupt();
        }
    }
}
