package com.sightcall.universal.scenario.steps;

import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.Universal;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.User;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.acd.AcdQueueEvent;
import net.rtccloud.sdk.event.acd.AcdReadyEvent;
import net.rtccloud.sdk.event.presence.RegistrationEvent;

/* JADX INFO: loaded from: classes3.dex */
public class AcdRtccCallStep extends AcdCallStep {
    private boolean flagRetryAfterConnection;
    private final long mask;
    private final long value;

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.steps.AcdRtccCallStep$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Rtcc$Status;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$User$Status;

        static {
            int[] iArr = new int[User.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$User$Status = iArr;
            try {
                iArr[User.Status.REGISTERED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$User$Status[User.Status.NOT_REGISTERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Rtcc.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Rtcc$Status = iArr2;
            try {
                iArr2[Rtcc.Status.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.NETWORK_LOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public AcdRtccCallStep(Session session, long j2, long j3) {
        super(session);
        this.mask = j2;
        this.value = j3;
    }

    private void retryAfterConnection() {
        User user = this.rtcc.user();
        if (this.flagRetryAfterConnection && this.rtcc.status() == Rtcc.Status.CONNECTED && user != null && user.status() == User.Status.REGISTERED) {
            execute();
            this.flagRetryAfterConnection = false;
        }
    }

    @Override // com.sightcall.universal.scenario.steps.AcdCallStep
    public void cancelAcd() {
        interrupt();
    }

    @Override // com.sightcall.universal.scenario.steps.AcdCallStep, com.sightcall.universal.scenario.steps.CallStep
    public void execute() {
        super.execute();
        if (this.rtcc.acd().request(this.mask, this.value)) {
            return;
        }
        Universal.logger().e(" request error: mask:" + this.mask + " value:" + this.value);
        interrupt();
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep, com.sightcall.universal.scenario.Step
    public void interrupt() {
        this.rtcc.acd().cancel();
        super.interrupt();
    }

    @Event
    public final void onAcdQueueEvent(AcdQueueEvent acdQueueEvent) {
        Logger.INSTANCE.d("onAcdQueueEvent() called with: event = [" + acdQueueEvent + "]", null);
        updateServiceNotification();
    }

    @Event
    public final void onAcdReadyEvent(AcdReadyEvent acdReadyEvent) {
        Logger.INSTANCE.d("onAcdReadyEvent() called with: event = [" + acdReadyEvent + "]", null);
        updateServiceNotification();
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep, com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
        super.onBind(scenario);
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    @Event
    public void onRegistrationEvent(RegistrationEvent registrationEvent) {
        super.onRegistrationEvent(registrationEvent);
        if (this.rtcc.call().get() != null) {
            return;
        }
        int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$User$Status[registrationEvent.status().ordinal()];
        if (i2 == 1) {
            retryAfterConnection();
        } else {
            if (i2 != 2) {
                return;
            }
            this.flagRetryAfterConnection = true;
        }
    }

    @Override // com.sightcall.universal.scenario.steps.CallStep
    @Event
    public void onRtccStatus(Rtcc.Status status) {
        super.onRtccStatus(status);
        if (this.rtcc.call().get() != null) {
            return;
        }
        int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Rtcc$Status[status.ordinal()];
        if (i2 == 1) {
            retryAfterConnection();
        } else {
            if (i2 != 2) {
                return;
            }
            this.flagRetryAfterConnection = true;
        }
    }
}
