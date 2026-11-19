package com.sightcall.universal.scenario.steps;

import android.text.TextUtils;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.Universal;
import com.sightcall.universal.guest.Calls;
import com.sightcall.universal.guest.UniversalGuest;
import com.sightcall.universal.internal.model.DataChannelParser;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Step;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.call.StatusEvent;
import net.rtccloud.sdk.event.meetingpoint.ErrorEvent;
import net.rtccloud.sdk.event.meetingpoint.RequestEvent;

/* JADX INFO: loaded from: classes3.dex */
public class GuestPincodeCallStep extends CallStep {
    private final String pincode;

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.steps.GuestPincodeCallStep$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$guest$Calls$Action;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Call$Status;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type;

        static {
            int[] iArr = new int[RequestEvent.Type.values().length];
            $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type = iArr;
            try {
                iArr[RequestEvent.Type.JOIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type[RequestEvent.Type.ACCEPT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type[RequestEvent.Type.ACCEPTONETOONE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Call.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Call$Status = iArr2;
            try {
                iArr2[Call.Status.RINGING.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr3 = new int[Calls.Action.values().length];
            $SwitchMap$com$sightcall$universal$guest$Calls$Action = iArr3;
            try {
                iArr3[Calls.Action.WAIT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$sightcall$universal$guest$Calls$Action[Calls.Action.CALL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    private GuestPincodeCallStep(Session session, String str) {
        super(session);
        this.pincode = str;
    }

    public static GuestPincodeCallStep with(Session session) {
        String strPin = session.config.pin();
        if (TextUtils.isEmpty(strPin)) {
            return null;
        }
        return new GuestPincodeCallStep(session, strPin);
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    public void execute() {
        Logger.INSTANCE.d("execute() called", null);
        String strCalleeId = session().config.calleeId();
        if (TextUtils.isEmpty(strCalleeId)) {
            strCalleeId = "recipient";
        }
        CallStep.sendDataChannel(strCalleeId, "SIPOK@@" + new DataChannelParser.UserInfo(Universal.context(), session()).toJson());
        Universal.guest().notifyAgent(session(), new UniversalGuest.NotifyAgentCallback() { // from class: com.sightcall.universal.scenario.steps.GuestPincodeCallStep.1
            @Override // com.sightcall.universal.guest.UniversalGuest.NotifyAgentCallback
            public void onNotifyAgentError() {
                if (GuestPincodeCallStep.this.is(Step.State.ACTIVE)) {
                    GuestPincodeCallStep.this.interrupt();
                }
            }

            @Override // com.sightcall.universal.guest.UniversalGuest.NotifyAgentCallback
            public void onNotifyAgentSuccess(Calls.Action action) {
                if (GuestPincodeCallStep.this.is(Step.State.ACTIVE) && AnonymousClass2.$SwitchMap$com$sightcall$universal$guest$Calls$Action[action.ordinal()] == 2) {
                    GuestPincodeCallStep guestPincodeCallStep = GuestPincodeCallStep.this;
                    guestPincodeCallStep.call(guestPincodeCallStep.pincode);
                }
            }
        });
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    @Event
    public void onCallStatusEvent(StatusEvent statusEvent) {
        super.onCallStatusEvent(statusEvent);
        if (AnonymousClass2.$SwitchMap$net$rtccloud$sdk$Call$Status[statusEvent.status().ordinal()] != 1) {
            return;
        }
        accept(statusEvent.call());
    }

    @Event
    public void onMeetingPointErrorEvent(ErrorEvent errorEvent) {
        if (errorEvent.meetingPoint().isAttendee()) {
            Universal.logger().e(errorEvent.message());
            interrupt();
        }
    }

    @Event
    public void onMeetingPointRequestEvent(RequestEvent requestEvent) {
        if (requestEvent.meetingPoint().isAttendee()) {
            Universal.logger().d(requestEvent.toString());
            int i2 = AnonymousClass2.$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type[requestEvent.type().ordinal()];
            if (i2 == 2 || i2 == 3) {
                call(requestEvent.meetingPoint());
            }
        }
    }
}
