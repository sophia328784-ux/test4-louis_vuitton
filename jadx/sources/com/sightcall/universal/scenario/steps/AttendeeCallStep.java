package com.sightcall.universal.scenario.steps;

import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.Universal;
import com.sightcall.universal.model.Session;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.meetingpoint.ErrorEvent;
import net.rtccloud.sdk.event.meetingpoint.RequestEvent;

/* JADX INFO: loaded from: classes3.dex */
public class AttendeeCallStep extends CallStep {
    private final String mpid;

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.steps.AttendeeCallStep$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
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
        }
    }

    private AttendeeCallStep(Session session, String str) {
        super(session);
        this.mpid = str;
    }

    public static AttendeeCallStep with(Session session) {
        String strMpi = session.config.mpi();
        if (strMpi == null) {
            return null;
        }
        return new AttendeeCallStep(session, strMpi);
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    public void execute() {
        Logger.INSTANCE.d("execute() called", null);
        this.rtcc.meetingPoint().asAttendee(this.mpid).join();
    }

    @Event
    public void onMeetingPointErrorEvent(ErrorEvent errorEvent) {
        Universal.logger().e("onMeetingPointErrorEvent");
        interrupt();
    }

    @Event
    public void onMeetingPointRequestEvent(RequestEvent requestEvent) {
        int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$event$meetingpoint$RequestEvent$Type[requestEvent.type().ordinal()];
        if (i2 == 2 || i2 == 3) {
            call(requestEvent.meetingPoint());
        }
    }
}
