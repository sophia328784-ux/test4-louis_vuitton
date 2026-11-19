package com.sightcall.universal.model;

import com.sightcall.session.Reference;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.fcm.messages.GuestReady;
import com.sightcall.universal.internal.model.RemoteState;
import com.sightcall.universal.internal.view.CallButton;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import com.sightcall.universal.util.ConfigUtilsKt;
import net.rtccloud.sdk.VideoModule;

/* JADX INFO: loaded from: classes3.dex */
public class Session {
    public final Config config;
    public final CallParameters parameters;
    public final RemoteState remoteState;
    public String rtccJwt;
    public final Usecase usecase;

    /* JADX INFO: renamed from: com.sightcall.universal.model.Session$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$model$Session$Role;

        static {
            int[] iArr = new int[Usecase.VideoCapture.values().length];
            $SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture = iArr;
            try {
                iArr[Usecase.VideoCapture.FRONT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture[Usecase.VideoCapture.REAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Role.values().length];
            $SwitchMap$com$sightcall$universal$model$Session$Role = iArr2;
            try {
                iArr2[Role.HOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sightcall$universal$model$Session$Role[Role.GUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$sightcall$universal$model$Session$Role[Role.ATTENDEE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum Role {
        HOST,
        GUEST,
        ATTENDEE
    }

    public Session(Config config, Reference reference, boolean z) {
        this.rtccJwt = null;
        Config configUpdateFromReference = ConfigUtilsKt.updateFromReference(config, reference);
        this.config = configUpdateFromReference;
        Usecase usecaseFrom = Usecase.from(reference, config, z);
        this.usecase = usecaseFrom;
        this.remoteState = initialRemoteState(configUpdateFromReference, usecaseFrom);
        this.parameters = initialCallParameters(configUpdateFromReference, usecaseFrom);
        this.rtccJwt = reference.provider.rtccJwtAuth;
    }

    public static Session get() {
        Scenario scenario = Universal.scenario().get();
        Object objStep = scenario != null ? scenario.step() : null;
        if (objStep instanceof Step.WithSession) {
            return ((Step.WithSession) objStep).session();
        }
        return null;
    }

    private static CallParameters initialCallParameters(Config config, Usecase usecase) {
        CallParameters callParameters = new CallParameters();
        callParameters.allowUsbCamera = usecase.isUsbCameraAllowed(config);
        return callParameters;
    }

    private static RemoteState initialRemoteState(Config config, Usecase usecase) {
        Usecase.User userGuest;
        RemoteState remoteState = new RemoteState();
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$model$Session$Role[config.role().ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                userGuest = usecase.agent();
            }
            return remoteState;
        }
        userGuest = usecase.guest();
        Usecase.VideoCapture videoCapture = userGuest != null ? userGuest.videoCapture : null;
        if (videoCapture != null) {
            int i3 = AnonymousClass1.$SwitchMap$com$sightcall$universal$agent$Usecase$VideoCapture[videoCapture.ordinal()];
            if (i3 == 1) {
                remoteState.cameraSource(VideoModule.CameraSource.FRONT);
            } else if (i3 == 2) {
                remoteState.cameraSource(VideoModule.CameraSource.BACK);
                return remoteState;
            }
        }
        return remoteState;
    }

    public String appId() {
        return this.config.appId();
    }

    public CallButton[] buttonsLocal() {
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$model$Session$Role[this.config.role().ordinal()];
        if (i2 == 1) {
            return this.usecase.buttons(Usecase.Bar.Role.LOCAL);
        }
        if (i2 == 2) {
            return this.usecase.buttons(Usecase.Bar.Role.MOBILE);
        }
        if (i2 != 3) {
            return null;
        }
        return this.usecase.buttons(Usecase.Bar.Role.ATTENDEE);
    }

    public CallButton[] buttonsRemote() {
        if (AnonymousClass1.$SwitchMap$com$sightcall$universal$model$Session$Role[this.config.role().ordinal()] != 1) {
            return null;
        }
        return this.usecase.buttons(Usecase.Bar.Role.REMOTE);
    }

    public String caseReportId() {
        return this.config.caseReportId();
    }

    public Config config() {
        return this.config;
    }

    public Environment environment() {
        return this.config.environment();
    }

    public String hap() {
        return this.config.hap();
    }

    public Boolean mute() {
        return Boolean.valueOf(this.usecase.user(this.config).muted);
    }

    public String reference() {
        return this.config.reference();
    }

    public boolean reportChatContent() {
        return this.config.reportChatContent().booleanValue();
    }

    public boolean requiresMvs() {
        return this.usecase.recording() != null;
    }

    public String rtccToken() {
        GuestReady guestReady = this.config.guestReady();
        if (guestReady != null) {
            return guestReady.rtccToken();
        }
        return null;
    }

    public String uid() {
        Agent agent;
        if (this.config.role() == Role.GUEST && this.usecase.callDistribution() == Usecase.CallDistribution.ACD) {
            return "acd_external";
        }
        return (this.config.role() != Role.HOST || (agent = Universal.agent().get()) == null) ? this.config.uid() : agent.login();
    }

    public Usecase.VideoCapture videoCapture() {
        return this.usecase.user(this.config).videoCapture;
    }

    public Boolean videoOutStartup() {
        return Boolean.valueOf(this.usecase.user(this.config).camera);
    }

    public Usecase.VideoProfile videoProfile() {
        Usecase.VideoProfile videoProfile = Usecase.VideoProfile.MD;
        Usecase.VideoProfile videoProfile2 = this.usecase.user(this.config).videoProfile;
        return videoProfile2 != null ? videoProfile2 : videoProfile;
    }

    public Session(Config config, Usecase usecase) {
        this.rtccJwt = null;
        this.config = config;
        this.usecase = usecase;
        this.remoteState = initialRemoteState(config, usecase);
        this.parameters = initialCallParameters(config, usecase);
    }
}
