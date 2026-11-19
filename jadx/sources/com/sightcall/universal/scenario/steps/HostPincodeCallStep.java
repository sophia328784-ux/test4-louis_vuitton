package com.sightcall.universal.scenario.steps;

import android.text.TextUtils;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Code;
import com.sightcall.universal.agent.DeleteCodeCallback;
import com.sightcall.universal.fcm.messages.GuestReady;
import com.sightcall.universal.model.Session;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.MeetingPoint;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.call.StatusEvent;
import net.rtccloud.sdk.event.meetingpoint.ErrorEvent;
import net.rtccloud.sdk.event.meetingpoint.RequestEvent;

/* JADX INFO: loaded from: classes3.dex */
public class HostPincodeCallStep extends CallStep {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final Code code;
    private final String guestUid;

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.steps.HostPincodeCallStep$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Call$Status;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$MeetingPoint$Status;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type;

        static {
            int[] iArr = new int[RequestEvent.Type.values().length];
            $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type = iArr;
            try {
                iArr[RequestEvent.Type.JOIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type[RequestEvent.Type.DENY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type[RequestEvent.Type.CANCEL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[MeetingPoint.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$MeetingPoint$Status = iArr2;
            try {
                iArr2[MeetingPoint.Status.HOSTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr3 = new int[Call.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Call$Status = iArr3;
            try {
                iArr3[Call.Status.ENDED.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private HostPincodeCallStep(Session session, Code code, String str) {
        super(session);
        this.code = code;
        this.guestUid = str;
    }

    public static HostPincodeCallStep with(Session session) {
        GuestReady guestReady;
        Code code = session.config.code();
        if (code == null || (guestReady = session.config.guestReady()) == null) {
            return null;
        }
        if (session.requiresMvs() && TextUtils.isEmpty(code.mpi())) {
            Universal.logger().e("[mpid] must not be null to call on MVS");
            return null;
        }
        String strGuestUid = guestReady.guestUid();
        if (TextUtils.isEmpty(strGuestUid)) {
            return null;
        }
        return new HostPincodeCallStep(session, code, strGuestUid);
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    public Call.Parameters createCallParameters() {
        Call.Parameters parametersCreateCallParameters = super.createCallParameters();
        parametersCreateCallParameters.uidType(1);
        return parametersCreateCallParameters;
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    public void execute() {
        Logger.INSTANCE.d("execute() called", null);
        if (!session().requiresMvs()) {
            call(this.guestUid);
        } else {
            this.rtcc.meetingPoint().asHost(this.code.mpi()).host();
        }
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    @Event
    public void onCallStatusEvent(StatusEvent statusEvent) {
        super.onCallStatusEvent(statusEvent);
        if (AnonymousClass2.$SwitchMap$net$rtccloud$sdk$Call$Status[statusEvent.status().ordinal()] == 1 && session().usecase.pincodeAutoDelete()) {
            Universal.agent().deleteCode(this.code, new DeleteCodeCallback() { // from class: com.sightcall.universal.scenario.steps.HostPincodeCallStep.1
                @Override // com.sightcall.universal.agent.DeleteCodeCallback
                public void onDeleteCodeError(DeleteCodeCallback.Error error) {
                }

                @Override // com.sightcall.universal.agent.DeleteCodeCallback
                public void onDeleteCodeSuccess(DeleteCodeCallback.Success success) {
                }
            });
        }
    }

    @Event
    public void onMeetingPointErrorEvent(ErrorEvent errorEvent) {
        if (errorEvent.meetingPoint().isHost()) {
            Universal.logger().e(errorEvent.message());
            interrupt();
        }
    }

    @Event
    public void onMeetingPointRequestEvent(RequestEvent requestEvent) {
        if (requestEvent.meetingPoint().isHost()) {
            Universal.logger().d(requestEvent.toString());
            String strUid = requestEvent.uid();
            if (AnonymousClass2.$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type[requestEvent.type().ordinal()] == 1 && strUid != null) {
                requestEvent.meetingPoint().accept(strUid);
                call(requestEvent.meetingPoint());
            }
        }
    }

    @Event
    public void onMeetingPointStatusEvent(net.rtccloud.sdk.event.meetingpoint.StatusEvent statusEvent) {
        if (statusEvent.meetingPoint().isHost() && AnonymousClass2.$SwitchMap$net$rtccloud$sdk$MeetingPoint$Status[statusEvent.status().ordinal()] == 1) {
            statusEvent.meetingPoint().list();
        }
    }
}
