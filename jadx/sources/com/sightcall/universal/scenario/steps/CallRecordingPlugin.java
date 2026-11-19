package com.sightcall.universal.scenario.steps;

import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.agent.CreateRecordingCallback;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.agent.recording.RecordingV3Entity;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.RecordingModule;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.call.RecordingEvent;
import net.rtccloud.sdk.event.call.StatusEvent;

/* JADX INFO: loaded from: classes3.dex */
abstract class CallRecordingPlugin {

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.steps.CallRecordingPlugin$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Call$Status;

        static {
            int[] iArr = new int[Call.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Call$Status = iArr;
            try {
                iArr[Call.Status.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Call$Status[Call.Status.ENDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class NoopCallRecordingPlugin extends CallRecordingPlugin {
        @Override // com.sightcall.universal.scenario.steps.CallRecordingPlugin
        public void onBind(Scenario scenario) {
        }

        @Override // com.sightcall.universal.scenario.steps.CallRecordingPlugin
        public void onUnbind() {
        }
    }

    public static CallRecordingPlugin create(CallStep callStep) {
        Agent agent = Universal.agent().get();
        int i2 = 0;
        boolean z = agent != null && agent.recording();
        Session session = callStep.session();
        Config config = session.config();
        Session.Role role = config != null ? config.role() : null;
        Usecase.Recording recording = session.usecase.recording();
        return (recording != null && role == Session.Role.HOST && z) ? new RealCallRecordingPlugin(callStep, recording.autoStart(), i2) : new NoopCallRecordingPlugin();
    }

    public abstract void onBind(Scenario scenario);

    public abstract void onUnbind();

    public static class RealCallRecordingPlugin extends CallRecordingPlugin implements CreateRecordingCallback {
        private final boolean autoStart;
        private RecordingV3Entity recording;
        private final CallStep step;

        private RealCallRecordingPlugin(CallStep callStep, boolean z) {
            this.step = callStep;
            this.autoStart = z;
        }

        @Override // com.sightcall.universal.scenario.steps.CallRecordingPlugin
        public void onBind(Scenario scenario) {
            Universal.register(this);
        }

        @Event
        public void onCallStatusEvent(StatusEvent statusEvent) {
            if (statusEvent.call().isConference()) {
                int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Call$Status[statusEvent.status().ordinal()];
                if (i2 == 1) {
                    Universal.agent().createRecording(this.step.session(), this);
                } else if (i2 == 2 && this.recording != null) {
                    Universal.agent().stopRecording(this.step.session().caseReportId());
                }
            }
        }

        @Override // com.sightcall.universal.agent.CreateRecordingCallback
        public void onCreateRecordingError(CreateRecordingCallback.Error error) {
        }

        @Override // com.sightcall.universal.agent.CreateRecordingCallback
        public void onCreateRecordingSuccess(CreateRecordingCallback.Success success) {
            Call call = Rtcc.instance().call().get();
            if (call != null && call.status() == Call.Status.ACTIVE && this.step.is(Step.State.ACTIVE)) {
                this.recording = success.recording();
                RecordingModule.Mode mode = RecordingModule.Mode.getMode(success.recording().getMode());
                if (this.autoStart) {
                    call.conference().recording().start(success.recording().getUrl(), mode);
                } else {
                    CallStep.success = success;
                    CallStep.mode = mode;
                }
            }
        }

        @Event
        public void onRecordingEvent(RecordingEvent recordingEvent) {
            if (this.recording == null || !recordingEvent.isRecording()) {
                return;
            }
            Universal.agent().startRecording(this.step.session().caseReportId());
        }

        @Override // com.sightcall.universal.scenario.steps.CallRecordingPlugin
        public void onUnbind() {
            Universal.unregister(this);
        }

        public /* synthetic */ RealCallRecordingPlugin(CallStep callStep, boolean z, int i2) {
            this(callStep, z);
        }
    }
}
