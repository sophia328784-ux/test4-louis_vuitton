package com.sightcall.universal.scenario.steps;

import android.text.TextUtils;
import com.sightcall.common.DataChannelAction;
import com.sightcall.universal.Universal;
import com.sightcall.universal.internal.api.Presence;
import com.sightcall.universal.internal.model.DataChannelParser;
import com.sightcall.universal.model.Session;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.call.StatusEvent;
import net.rtccloud.sdk.event.datachannel.DataChannelOutOfBandEvent;
import net.rtccloud.sdk.event.meetingpoint.ErrorEvent;
import net.rtccloud.sdk.event.meetingpoint.RequestEvent;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public abstract class AcdCallStep extends CallStep {
    private static final String PREFIX_ACD_INFO = "@ACD@INFO";
    private static final String PREFIX_CALL_REQUEST = "@CALL_REQUEST@";
    private static final String TAG = "AcdCallStep";

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.steps.AcdCallStep$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Call$Status;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type;

        static {
            int[] iArr = new int[Call.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Call$Status = iArr;
            try {
                iArr[Call.Status.RINGING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            int[] iArr2 = new int[RequestEvent.Type.values().length];
            $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type = iArr2;
            try {
                iArr2[RequestEvent.Type.JOIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type[RequestEvent.Type.INVITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type[RequestEvent.Type.ACCEPT.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type[RequestEvent.Type.ACCEPTONETOONE.ordinal()] = 4;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public AcdCallStep(Session session) {
        super(session);
    }

    private void handleAcdInfo(DataChannelOutOfBandEvent dataChannelOutOfBandEvent) {
        dataChannelOutOfBandEvent.ack(dataChannelOutOfBandEvent.id());
        String strUid = dataChannelOutOfBandEvent.uid();
        if (TextUtils.isEmpty(strUid)) {
            return;
        }
        this.rtcc.dataChannel().send((PREFIX_ACD_INFO + new DataChannelParser.UserInfo(Universal.context(), session()).toJson()).getBytes(), 0L, strUid);
    }

    private void handleCallRequest(String str) {
        try {
            this.rtcc.meetingPoint().asAttendee(new JSONObject(str.substring(14)).getString("mpi")).join();
        } catch (Exception e2) {
            Universal.logger().e(e2);
            interrupt();
        }
    }

    public static AcdCallStep with(Session session) {
        String strPartner = session.usecase.partner();
        return !TextUtils.isEmpty(strPartner) ? new AcdHttpCallStep(session, strPartner) : new AcdRtccCallStep(session, session.config.acdMask(), session.config.acdValue());
    }

    public void cancelAcd() {
        interrupt();
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    public void execute() {
        this.rtcc.presence().set(Presence.ONLINE.ordinal());
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    @Event
    public final void onCallStatusEvent(StatusEvent statusEvent) {
        super.onCallStatusEvent(statusEvent);
        if (AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Call$Status[statusEvent.status().ordinal()] != 1) {
            return;
        }
        accept(statusEvent.call());
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    public final void onDataChannelAction(DataChannelAction dataChannelAction) {
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    public void onDataChannelMessage(DataChannelOutOfBandEvent dataChannelOutOfBandEvent) {
        byte[] bArrPayload = dataChannelOutOfBandEvent.payload();
        if (bArrPayload == null) {
            return;
        }
        String str = new String(bArrPayload);
        if (str.startsWith(PREFIX_ACD_INFO)) {
            handleAcdInfo(dataChannelOutOfBandEvent);
        } else if (str.startsWith(PREFIX_CALL_REQUEST)) {
            handleCallRequest(str);
        }
    }

    @Event
    public void onMeetingPointErrorEvent(ErrorEvent errorEvent) {
        Universal.logger().e(errorEvent.message());
        interrupt();
    }

    @Event
    public void onMeetingPointRequestEvent(RequestEvent requestEvent) {
        int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type[requestEvent.type().ordinal()];
        if (i2 == 2) {
            String strUid = requestEvent.uid();
            if (strUid != null) {
                requestEvent.meetingPoint().accept(strUid);
            }
        } else if (i2 != 3 && i2 != 4) {
            return;
        }
        call(requestEvent.meetingPoint());
    }
}
