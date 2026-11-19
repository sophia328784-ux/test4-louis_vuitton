package com.sightcall.universal.scenario.steps;

import android.content.Context;
import android.text.TextUtils;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.livetranslation.domain.Language;
import com.sightcall.pratik.extensions.ContextExtensionsKt;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.agent.ProviderCustomization;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.internal.report.di.CaseReportComponentKt;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.ScenarioService;
import com.sightcall.universal.scenario.Step;
import defpackage.no0;
import defpackage.r81;
import java.util.List;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.User;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.event.presence.RegistrationEvent;
import net.rtccloud.sdk.util.Utils;

/* JADX INFO: loaded from: classes3.dex */
public class ConnectionStep extends Step implements Step.WithSession {
    public static boolean declined = false;
    private final Session session;

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.steps.ConnectionStep$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution;
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$model$Session$Role;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Rtcc$Error;
        static final /* synthetic */ int[] $SwitchMap$net$rtccloud$sdk$Rtcc$Status;

        static {
            int[] iArr = new int[Session.Role.values().length];
            $SwitchMap$com$sightcall$universal$model$Session$Role = iArr;
            try {
                iArr[Session.Role.GUEST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$model$Session$Role[Session.Role.HOST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$model$Session$Role[Session.Role.ATTENDEE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[Rtcc.Error.values().length];
            $SwitchMap$net$rtccloud$sdk$Rtcc$Error = iArr2;
            try {
                iArr2[Rtcc.Error.NETWORK_LOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Error[Rtcc.Error.BAD_CREDENTIALS.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Error[Rtcc.Error.NETWORK_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Error[Rtcc.Error.DISCONNECTED.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[Rtcc.Status.values().length];
            $SwitchMap$net$rtccloud$sdk$Rtcc$Status = iArr3;
            try {
                iArr3[Rtcc.Status.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.IDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.CONNECTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.NETWORK_LOST.ordinal()] = 4;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$net$rtccloud$sdk$Rtcc$Status[Rtcc.Status.DISCONNECTING.ordinal()] = 5;
            } catch (NoSuchFieldError unused12) {
            }
            int[] iArr4 = new int[Usecase.CallDistribution.values().length];
            $SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution = iArr4;
            try {
                iArr4[Usecase.CallDistribution.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution[Usecase.CallDistribution.CODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution[Usecase.CallDistribution.ACD.ordinal()] = 3;
            } catch (NoSuchFieldError unused15) {
            }
        }
    }

    public ConnectionStep(Session session) {
        this.session = session;
    }

    private <U extends User.Builder<?, ?>> U configureUserWithDefaultValues(U u, Session session, Context context) {
        u.hap(session.hap());
        u.displayName(createDisplayName(session, context));
        if (TextUtils.isEmpty(session.config.suffix())) {
            session.config.suffix(Utils.safeSuffix(null));
        }
        String strSuffix = session.config.suffix();
        if (u instanceof User.External.Builder) {
            ((User.External.Builder) u).suffix(strSuffix);
            return u;
        }
        if (u instanceof User.SixDigits.Builder) {
            ((User.SixDigits.Builder) u).suffix(strSuffix);
        }
        return u;
    }

    private String createDisplayName(Session session, Context context) {
        Agent agent;
        if (session.config.role() == Session.Role.HOST && (agent = Universal.agent().get()) != null) {
            return agent.name();
        }
        patchDisplayName();
        if (session.config.displayName() != null) {
            return session.config.displayName();
        }
        String strReference = session.reference();
        if (TextUtils.isEmpty(strReference)) {
            return session.usecase.callDistribution() == Usecase.CallDistribution.CODE ? "" : ContextExtensionsKt.deviceName(context);
        }
        return strReference;
    }

    private User.External.Builder createExternalUser(Session session, Context context) {
        return (User.External.Builder) configureUserWithDefaultValues(User.external(session.appId(), session.uid()), session, context);
    }

    private User.Internal.Builder createInternalUser(Session session, Context context) {
        User.Internal.Builder builderInternal = User.internal(session.appId(), session.rtccToken());
        builderInternal.extras().putString("uid", session.uid());
        configureUserWithDefaultValues(builderInternal, session, context);
        return builderInternal;
    }

    private User.SixDigits.Builder createSixDigitsUser(Session session, Context context) {
        return (User.SixDigits.Builder) configureUserWithDefaultValues(User.sixDigits(session.appId(), session.config.pin()), session, context);
    }

    private User.Builder<?, ?> createUser(Session session, Context context) {
        Usecase.CallDistribution callDistribution = session.usecase.callDistribution();
        if (callDistribution == null) {
            r81.d("Call Distribution is null");
            return null;
        }
        Session.Role role = session.config.role();
        if (role == Session.Role.ATTENDEE) {
            return createExternalUser(session, context);
        }
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution[callDistribution.ordinal()];
        if (i2 == 1) {
            return role == Session.Role.HOST ? createInternalUser(session, context) : createExternalUser(session, context);
        }
        if (i2 == 2) {
            return role == Session.Role.HOST ? createInternalUser(session, context) : createSixDigitsUser(session, context);
        }
        if (i2 == 3) {
            return createExternalUser(session, context);
        }
        no0.t(callDistribution, "Invalid configuration mode to create a user: ");
        return null;
    }

    private boolean findConsoleSslPlugin(List<ProviderCustomization> list) {
        if (list == null) {
            return false;
        }
        for (ProviderCustomization providerCustomization : list) {
            if (providerCustomization.name().equals("console_ssl_plugin")) {
                return parseCustomBoolean(providerCustomization.value());
            }
        }
        return false;
    }

    private boolean findLocalUdpCusto(List<ProviderCustomization> list) {
        if (list == null) {
            return false;
        }
        for (ProviderCustomization providerCustomization : list) {
            if (providerCustomization.name().equals("rtcc_localudp_disabled")) {
                return parseCustomBoolean(providerCustomization.value());
            }
        }
        return false;
    }

    private boolean findUsapCusto(List<ProviderCustomization> list) {
        if (list == null) {
            return false;
        }
        for (ProviderCustomization providerCustomization : list) {
            if (providerCustomization.name().equals("rtcc_usapturn_disabled")) {
                return parseCustomBoolean(providerCustomization.value());
            }
        }
        return false;
    }

    private Step nextStep() {
        Session.Role role = this.session.config.role();
        Usecase.CallDistribution callDistribution = this.session.usecase.callDistribution();
        if (callDistribution == null) {
            return null;
        }
        int i2 = AnonymousClass1.$SwitchMap$com$sightcall$universal$model$Session$Role[role.ordinal()];
        if (i2 == 1) {
            int i3 = AnonymousClass1.$SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution[callDistribution.ordinal()];
            if (i3 == 1) {
                return DirectCallStep.with(this.session);
            }
            if (i3 == 2) {
                return GuestPincodeCallStep.with(this.session);
            }
            if (i3 == 3) {
                return AcdCallStep.with(this.session);
            }
        } else {
            if (i2 == 2) {
                if (AnonymousClass1.$SwitchMap$com$sightcall$universal$agent$Usecase$CallDistribution[callDistribution.ordinal()] == 2) {
                    return HostPincodeCallStep.with(this.session);
                }
                StringBuilder sb = new StringBuilder();
                sb.append(callDistribution);
                Session.Role role2 = this.session.config.role();
                sb.append(" ~ ");
                sb.append(role2);
                throw new UnsupportedOperationException(sb.toString());
            }
            if (i2 == 3) {
                return AttendeeCallStep.with(this.session);
            }
        }
        return null;
    }

    private synchronized void onUserConnected() {
        if (is(Step.State.ACTIVE)) {
            Rtcc rtccInstance = Rtcc.instance();
            User user = rtccInstance.user();
            if (rtccInstance.status() == Rtcc.Status.CONNECTED && user != null && user.status() == User.Status.REGISTERED) {
                rtccInstance.utils().setDeadPartyTimeout(this.session.config.deadPartyTimeout());
                CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onConnected(this.session, user);
                Step stepNextStep = nextStep();
                if (stepNextStep == null) {
                    interrupt();
                    return;
                } else {
                    success(stepNextStep);
                    return;
                }
            }
            Universal.logger().d("Wait for full CONNECTED/REGISTERED rtcc: %s user: %s", rtccInstance.status(), user != null ? user.status() : null);
        }
    }

    private boolean parseCustomBoolean(String str) {
        if (str == null) {
            return false;
        }
        return "1".equals(str.trim()) || Boolean.parseBoolean(str.trim());
    }

    private void patchDisplayName() {
        Session session = Session.get();
        String strDisplayNameMode = session.config.displayNameMode();
        String strDisplayName = session.config.displayName();
        if (strDisplayNameMode != null) {
            if (strDisplayNameMode.equals("optional") && (strDisplayName == null || strDisplayName.isEmpty())) {
                CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onDisplayNameSkipped(session);
            } else {
                CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onDisplayNameSet(session);
            }
        }
    }

    @Override // com.sightcall.universal.scenario.Step
    public void interrupt() {
        declined = false;
        Rtcc rtccInstance = Rtcc.instance();
        int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Rtcc$Status[rtccInstance.status().ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                unbindService();
                failure(new Step[0]);
                return;
            } else if (i2 == 3) {
                rtccInstance.disconnect();
                return;
            } else if (i2 != 4) {
                if (i2 != 5) {
                    return;
                }
                rtccInstance.disconnect();
                return;
            }
        }
        rtccInstance.disconnect();
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
        Universal.register(this);
    }

    @Event
    public void onRegistrationEvent(RegistrationEvent registrationEvent) {
        if (registrationEvent.status() == User.Status.REGISTERED) {
            onUserConnected();
        }
    }

    @Event
    public void onRtccError(Rtcc.Error error) {
        if (error != Rtcc.Error.DISCONNECTED) {
            toastConnectionError(error);
        }
        int i2 = AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Rtcc$Error[error.ordinal()];
        if (i2 == 2 || i2 == 3 || i2 == 4) {
            if (Rtcc.instance().status() != Rtcc.Status.IDLE) {
                Rtcc.instance().disconnect();
            } else {
                interrupt();
            }
        }
    }

    @Event
    public void onRtccStatus(Rtcc.Status status) {
        if (AnonymousClass1.$SwitchMap$net$rtccloud$sdk$Rtcc$Status[status.ordinal()] != 1) {
            return;
        }
        if (!declined) {
            onUserConnected();
            return;
        }
        String strUid = this.session.config.uid();
        if (strUid == null && this.session.config.guestReady() != null && this.session.config.guestReady().guestUid() != null) {
            strUid = this.session.config.guestReady().guestUid();
        }
        if (strUid == null) {
            strUid = "recipent";
        }
        Rtcc.instance().dataChannel().send("@M2M_DECLINE@".getBytes(), 0L, strUid);
        interrupt();
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onServiceConnected(ScenarioService scenarioService) {
        super.onServiceConnected(scenarioService);
        if (!networkExpected()) {
            interrupt();
            return;
        }
        User.Builder<?, ?> builderCreateUser = null;
        try {
            Session.Role role = this.session.config.role();
            builderCreateUser = createUser(this.session, Universal.context());
            if (role == Session.Role.ATTENDEE || role == Session.Role.GUEST) {
                builderCreateUser.rtccLocalUdpDisabled(this.session.usecase.localUdp());
                builderCreateUser.rtccUsapTurnDisabled(this.session.usecase.usapTurn());
                builderCreateUser.rtccAttendeeSslPlugin(this.session.usecase.sslPlugin());
            } else {
                boolean zFindUsapCusto = findUsapCusto(Universal.agent().providerCustomizations());
                boolean zFindLocalUdpCusto = findLocalUdpCusto(Universal.agent().providerCustomizations());
                boolean zFindConsoleSslPlugin = findConsoleSslPlugin(Universal.agent().providerCustomizations());
                builderCreateUser.rtccLocalUdpDisabled(zFindLocalUdpCusto);
                builderCreateUser.rtccUsapTurnDisabled(zFindUsapCusto);
                builderCreateUser.rtccAttendeeSslPlugin(zFindConsoleSslPlugin);
            }
            builderCreateUser.rtccAdvancedAnnotations(this.session.usecase.useAdvancedAnnotations);
            builderCreateUser.rtccEnvironment(this.session.environment().getEnvironmentPlatform());
            LiveTranslationAPI liveTranslationAPI = SDKInjector.getSdkInjector().getReferenceComponent().getLiveTranslationAPI();
            Language selectedLanguage = liveTranslationAPI.getSelectedLanguage();
            if (selectedLanguage != null) {
                builderCreateUser.liveTranslationLanguage(selectedLanguage.getTag());
            } else {
                builderCreateUser.liveTranslationLanguage(liveTranslationAPI.getDefaultLanguage());
            }
            Rtcc.instance().connect(builderCreateUser, this.session.rtccJwt);
        } catch (Exception e2) {
            e2.printStackTrace();
            Universal.logger().e("Unable to connect this user: " + builderCreateUser);
            interrupt();
        }
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onServiceDisconnected() {
        super.onServiceDisconnected();
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onUnbind() {
        Universal.unregister(this);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void run() {
        Universal.ar().checkArCoreAvailability();
        bindService();
    }

    @Override // com.sightcall.universal.scenario.Step.WithSession
    public Session session() {
        return this.session;
    }
}
