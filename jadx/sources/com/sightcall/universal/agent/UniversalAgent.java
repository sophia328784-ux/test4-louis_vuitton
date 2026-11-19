package com.sightcall.universal.agent;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.widget.Toast;
import com.appsflyer.sdk_base.referrer.Payload;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.firebase.messaging.FirebaseMessaging;
import com.sightcall.httpclient.di.HttpClientModule;
import com.sightcall.pratik.BuildConfig;
import com.sightcall.session.datasource.reference.v3.ReferenceApiV3ConstKt;
import com.sightcall.universal.R;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.pushnotification.PushNotificationMappersKt;
import com.sightcall.universal.agent.recording.RecordingV3MappersKt;
import com.sightcall.universal.agent.recording.RecordingV3Response;
import com.sightcall.universal.agent.registration.AccessTokensRequest;
import com.sightcall.universal.agent.registration.AccessTokensResponse;
import com.sightcall.universal.agent.registration.NewRegistrationRequest;
import com.sightcall.universal.agent.registration.NewRegistrationResponse;
import com.sightcall.universal.agent.registration.OldRegistration;
import com.sightcall.universal.agent.registration.RegistrationRequest;
import com.sightcall.universal.api.ApiCallback;
import com.sightcall.universal.api.Apis;
import com.sightcall.universal.api.Environment;
import com.sightcall.universal.api.Headers;
import com.sightcall.universal.api.JsonApi;
import com.sightcall.universal.fcm.FcmTokenUpdateEvent;
import com.sightcall.universal.fcm.messages.AgentUnregistered;
import com.sightcall.universal.fcm.messages.GuestReady;
import com.sightcall.universal.fcm.messages.Test;
import com.sightcall.universal.internal.report.di.CaseReportComponentKt;
import com.sightcall.universal.internal.ui.UniversalNotification;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.permission.Permissions;
import com.sightcall.universal.permission.PermissionsActivity;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.steps.AgentUsecaseStep;
import com.sightcall.universal.util.Feature;
import com.sightcall.universal.util.Lazy;
import com.sightcall.universal.util.Preconditions;
import defpackage.gy0;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;
import net.rtccloud.sdk.util.OldLogger;
import okhttp3.Request;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
public class UniversalAgent {
    private static final OldLogger logger = OldLogger.get("UNIVERSAL_AGENT");
    private final Context context;
    private AgentUsecaseStep currentStep;
    private final boolean isFeatureAgentEnabled;
    private final boolean isFeatureAgentNotificationsEnabled;
    private final Repository repository;
    final PermissionsActivity.PermissionsResultReceiver resultReceiver = new PermissionsActivity.PermissionsResultReceiver() { // from class: com.sightcall.universal.agent.UniversalAgent.1
        @Override // com.sightcall.universal.permission.PermissionsActivity.PermissionsResultReceiver
        public void onPermissionsDenied(boolean z) {
            Universal.logger().w("Required permissions denied!");
            Toast.makeText(UniversalAgent.this.context, UniversalAgent.this.context.getText(R.string.universal_permissions_required_to_start), 0).show();
            if (z) {
                Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
                intent.addFlags(268435456);
                intent.setData(Uri.fromParts("package", UniversalAgent.this.context.getPackageName(), null));
                UniversalAgent.this.context.startActivity(intent);
            }
        }

        @Override // com.sightcall.universal.permission.PermissionsActivity.PermissionsResultReceiver
        public void onPermissionsGranted() {
            Universal.start(Scenario.with(UniversalAgent.this.currentStep));
        }
    };
    private final Lazy<Agent> lazyAgent = new Lazy<Agent>() { // from class: com.sightcall.universal.agent.UniversalAgent.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.sightcall.universal.util.Lazy
        public Agent init() {
            Agent agentLoadAgent = UniversalAgent.this.repository.loadAgent();
            if (agentLoadAgent != null) {
                HttpClientModule.INSTANCE.initBaseUrl(agentLoadAgent.environment().baseUrl());
            }
            return agentLoadAgent;
        }

        @Override // com.sightcall.universal.util.Lazy
        public void set(Agent agent) {
            super.set(agent);
            UniversalAgent.this.repository.saveAgent(agent);
        }
    };
    private final Lazy<Code> lazyCode = new Lazy<Code>() { // from class: com.sightcall.universal.agent.UniversalAgent.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.sightcall.universal.util.Lazy
        public Code init() {
            return UniversalAgent.this.repository.loadCode();
        }

        @Override // com.sightcall.universal.util.Lazy
        public void set(Code code) {
            super.set(code);
            UniversalAgent.this.repository.saveCode(code);
        }
    };
    private final Lazy<List<Usecase>> lazyUsecases = new Lazy<List<Usecase>>() { // from class: com.sightcall.universal.agent.UniversalAgent.4
        @Override // com.sightcall.universal.util.Lazy
        public List<Usecase> init() {
            return UniversalAgent.this.repository.loadUsecases();
        }

        @Override // com.sightcall.universal.util.Lazy
        public void set(List<Usecase> list) {
            super.set(list);
            UniversalAgent.this.repository.saveUsecases(list);
        }
    };
    private final Lazy<Consent> lazyConsent = new Lazy<Consent>() { // from class: com.sightcall.universal.agent.UniversalAgent.5
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.sightcall.universal.util.Lazy
        public Consent init() {
            return UniversalAgent.this.repository.loadConsent();
        }

        @Override // com.sightcall.universal.util.Lazy
        public void set(Consent consent) {
            super.set(consent);
            UniversalAgent.this.repository.saveConsent(consent);
        }
    };
    private final Lazy<List<ProviderCustomization>> lazyProviderCustimizations = new Lazy<List<ProviderCustomization>>() { // from class: com.sightcall.universal.agent.UniversalAgent.6
        @Override // com.sightcall.universal.util.Lazy
        public List<ProviderCustomization> init() {
            return UniversalAgent.this.repository.loadProviderCustomizations();
        }

        @Override // com.sightcall.universal.util.Lazy
        public void set(List<ProviderCustomization> list) {
            super.set(list);
            UniversalAgent.this.repository.saveProviderCustomizations(list);
        }
    };
    private final Lazy<List<IntegrationScope>> lazyIntegrationScopes = new Lazy<List<IntegrationScope>>() { // from class: com.sightcall.universal.agent.UniversalAgent.7
        @Override // com.sightcall.universal.util.Lazy
        public List<IntegrationScope> init() {
            return UniversalAgent.this.repository.loadIntegrationScope();
        }

        @Override // com.sightcall.universal.util.Lazy
        public void set(List<IntegrationScope> list) {
            super.set(list);
            UniversalAgent.this.repository.saveIntegrationScope(list);
        }
    };
    private final AtomicBoolean isRegistering = new AtomicBoolean();
    private Lazy<List<ArOverlayModel>> lazyArOverlayModels = new Lazy<List<ArOverlayModel>>() { // from class: com.sightcall.universal.agent.UniversalAgent.8
        @Override // com.sightcall.universal.util.Lazy
        public List<ArOverlayModel> init() {
            return UniversalAgent.this.repository.loadArOverlayModels();
        }

        @Override // com.sightcall.universal.util.Lazy
        public void set(List<ArOverlayModel> list) {
            super.set(list);
            UniversalAgent.this.repository.saveArOverlayModels(list);
        }
    };

    /* JADX INFO: renamed from: com.sightcall.universal.agent.UniversalAgent$35, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass35 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$agent$CreateCode$Media;

        static {
            int[] iArr = new int[CreateCode.Media.values().length];
            $SwitchMap$com$sightcall$universal$agent$CreateCode$Media = iArr;
            try {
                iArr[CreateCode.Media.SMS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$CreateCode$Media[CreateCode.Media.EMAIL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$agent$CreateCode$Media[CreateCode.Media.URL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public UniversalAgent(Context context) {
        this.context = context.getApplicationContext();
        this.isFeatureAgentEnabled = Feature.AGENT.isEnabled(context);
        this.isFeatureAgentNotificationsEnabled = Feature.AGENT_NOTIFICATIONS.isEnabled(context);
        this.repository = new Repository(context, Apis.lazyMoshi());
        Rtcc.instance().bus().register(this);
    }

    private AgentApi api(Environment environment) {
        if (environment == null) {
            environment = Environment.PROD;
        }
        return (AgentApi) Apis.get(AgentApi.class, environment);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyUpdates(IdentityExtractor identityExtractor, Agent agent) {
        agent.update(identityExtractor.identity);
        agent.update(identityExtractor.included);
        this.lazyAgent.set(agent);
        Rtcc.instance().bus().post(agent);
        Consent consent = identityExtractor.consent;
        this.lazyConsent.set(consent);
        if (consent != null) {
            Rtcc.instance().bus().post(consent);
        }
        this.lazyArOverlayModels.set(identityExtractor.arOverlayModels);
        List<Usecase> list = identityExtractor.usecases;
        this.lazyUsecases.set(list);
        Rtcc.instance().bus().post(new Usecases(list));
        this.lazyProviderCustimizations.set(identityExtractor.providerCustomizations);
        this.lazyIntegrationScopes.set(identityExtractor.integrationScopes);
        Code code = this.lazyCode.get();
        Code code2 = identityExtractor.code;
        if (code2 != null && code2.correspondsTo(code)) {
            code2.applyState(code);
        }
        this.lazyCode.set(code2);
        if (code2 != null) {
            Rtcc.instance().bus().post(code2);
        }
    }

    private Headers.Authorization.Bearer authToken() {
        Agent agent = get();
        return Headers.Authorization.Bearer.with(agent != null ? agent.token() : null);
    }

    private AgentApi defaultApi() {
        return api(defaultEnv());
    }

    private Environment defaultEnv() {
        Environment environment = Universal.settings().defaultEnvironment().get();
        return environment != null ? environment : Environment.PROD;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean detectAgentInvalidated(Agent agent, Call<?> call, Response<?> response) {
        if (agent != get()) {
            return true;
        }
        okhttp3.Response response2 = response.f79449a;
        if (response2.r || response2.f76986e != 401) {
            return false;
        }
        invalidate(agent);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$syncFcmToken$0(final Agent agent, final String str) {
        api(agent).updatePushNotificationToken(tokenV3(agent.token()), PushNotificationMappersKt.createUpdatePushNotificationRequest(str)).p(new Callback<Void>() { // from class: com.sightcall.universal.agent.UniversalAgent.23
            @Override // retrofit2.Callback
            public void onFailure(Call<Void> call, Throwable th) {
                UniversalAgent.logger.e("FCM Token update failure");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Void> call, Response<Void> response) {
                UniversalAgent.logger.i("FCM Token update success");
                if (response.f79449a.r) {
                    agent.fcmToken(str);
                    UniversalAgent.this.lazyAgent.set(agent);
                    Rtcc.instance().bus().post(agent);
                }
            }
        });
    }

    private String tokenV3(String str) {
        Agent agent = get();
        if (str == null) {
            str = agent.token();
        }
        return String.valueOf(Headers.Authorization.PlaneTokenV3.with(str));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void traceOnFailure(Call<?> call, Throwable th) {
        Request request = call.request();
        logger.e(request.f76970b + " " + request.f76969a + " [" + th.getMessage() + "]", th);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void traceOnResponse(Call<?> call, Response<?> response) {
        Request request = call.request();
        logger.d(request.f76970b + " " + request.f76969a + " [" + response.f79449a.f76986e + " " + response.f79449a.d + "]");
    }

    private void updateIdentity(Identity identity, final UpdateIdentityCallback updateIdentityCallback) {
        Preconditions.checkNotNull(identity, "[identity] must not be null");
        Preconditions.checkNotNull(updateIdentityCallback, "[callback] must not be null");
        final Agent agent = get();
        if (agent == null) {
            updateIdentityCallback.onUpdateIdentityError(new UpdateIdentityCallback.Error());
        } else {
            api(agent).updateIdentity(authToken(), JsonApi.wrap(identity)).p(new Callback<JsonApi.Wrapper<Identity>>() { // from class: com.sightcall.universal.agent.UniversalAgent.24
                @Override // retrofit2.Callback
                public void onFailure(Call<JsonApi.Wrapper<Identity>> call, Throwable th) {
                    UniversalAgent.traceOnFailure(call, th);
                    updateIdentityCallback.onUpdateIdentityError(new UpdateIdentityCallback.Error(ApiCallback.Holder.hold(call, th)));
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<JsonApi.Wrapper<Identity>> call, Response<JsonApi.Wrapper<Identity>> response) {
                    UniversalAgent.traceOnResponse(call, response);
                    if (UniversalAgent.this.detectAgentInvalidated(agent, call, response) || !response.f79449a.r) {
                        updateIdentityCallback.onUpdateIdentityError(new UpdateIdentityCallback.Error(ApiCallback.Holder.hold(call, response)));
                    } else {
                        updateIdentityCallback.onUpdateIdentitySuccess(new UpdateIdentityCallback.Success(ApiCallback.Holder.hold(call, response), (JsonApi.Wrapper) response.f79450b));
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void wipe(Agent agent, boolean z) {
        this.lazyAgent.set(null);
        this.lazyCode.set(null);
        this.lazyUsecases.set(null);
        this.lazyConsent.set(null);
        this.lazyProviderCustimizations.set(null);
        this.lazyIntegrationScopes.set(null);
        Universal.media().invalidate();
        if (agent != null) {
            Rtcc.instance().bus().post(new UnregistrationEvent(agent));
        }
    }

    public void acceptConsent(final Consent consent, final AcceptConsentCallback acceptConsentCallback) {
        Preconditions.checkNotNull(consent, "[consent] must not be null");
        Preconditions.checkNotNull(acceptConsentCallback, "[callback] must not be null");
        final Agent agent = get();
        if (agent == null) {
            acceptConsentCallback.onAcceptConsentError(new AcceptConsentCallback.Error());
        } else {
            updateIdentity(Identity.acceptConsent(consent), new UpdateIdentityCallback() { // from class: com.sightcall.universal.agent.UniversalAgent.26
                @Override // com.sightcall.universal.agent.UpdateIdentityCallback
                public void onUpdateIdentityError(UpdateIdentityCallback.Error error) {
                    acceptConsentCallback.onAcceptConsentError(new AcceptConsentCallback.Error(ApiCallback.Holder.hold(error)));
                }

                @Override // com.sightcall.universal.agent.UpdateIdentityCallback
                public void onUpdateIdentitySuccess(UpdateIdentityCallback.Success success) {
                    ApiCallback.Holder holderHold = ApiCallback.Holder.hold(success);
                    IdentityExtractor identityExtractorExtract = IdentityExtractor.extract(success.body());
                    if (identityExtractorExtract == null) {
                        acceptConsentCallback.onAcceptConsentError(new AcceptConsentCallback.Error(holderHold));
                        return;
                    }
                    agent.requireConsent(identityExtractorExtract.identity.attributes.requireConsent);
                    UniversalAgent.this.lazyAgent.set(agent);
                    Rtcc.instance().bus().post(agent);
                    acceptConsentCallback.onAcceptConsentSuccess(new AcceptConsentCallback.Success(holderHold, consent));
                }
            });
        }
    }

    public List<ArOverlayModel> arOverlayModels() {
        List<ArOverlayModel> list = this.lazyArOverlayModels.get();
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public Code code() {
        return this.lazyCode.get();
    }

    public Config config(Usecase usecase) {
        Agent agent = get();
        Config configHash = new Config().hash(usecase.hash());
        if (agent != null) {
            configHash.environment(agent.environment()).hap(agent.hap());
        }
        return configHash;
    }

    public Consent consent() {
        return this.lazyConsent.get();
    }

    public synchronized void createCode(final CreateCode createCode, final CreateCodeCallback createCodeCallback) {
        Pincode pincodeSms;
        Preconditions.checkNotNull(createCodeCallback, "[callback] must not be null");
        Preconditions.checkNotNull(createCode, "[create] must not be null");
        final Agent agent = get();
        if (agent == null) {
            logger.e("createCode() expected a valid agent instance");
            createCodeCallback.onCreateCodeError(new CreateCodeCallback.Error(createCode));
            return;
        }
        Usecase.CallDistribution callDistribution = createCode.usecase().callDistribution();
        Usecase.CallDistribution callDistribution2 = Usecase.CallDistribution.CODE;
        if (callDistribution != callDistribution2) {
            logger.e("createCode() expected usecase callDistribution [%s], but found [%s]", callDistribution2, callDistribution);
            createCodeCallback.onCreateCodeError(new CreateCodeCallback.Error(createCode));
            return;
        }
        int i2 = AnonymousClass35.$SwitchMap$com$sightcall$universal$agent$CreateCode$Media[createCode.media.ordinal()];
        if (i2 == 1) {
            pincodeSms = Pincode.sms(createCode.usecase, createCode.reference, createCode.recipient, createCode.countryCode);
        } else if (i2 == 2) {
            pincodeSms = Pincode.email(createCode.usecase, createCode.reference, createCode.recipient);
        } else {
            if (i2 != 3) {
                throw new IllegalStateException();
            }
            pincodeSms = Pincode.url(createCode.usecase, createCode.reference);
        }
        api(agent).createPincode(authToken(), JsonApi.wrap(pincodeSms)).p(new Callback<JsonApi.Wrapper<Pincode>>() { // from class: com.sightcall.universal.agent.UniversalAgent.28
            @Override // retrofit2.Callback
            public void onFailure(Call<JsonApi.Wrapper<Pincode>> call, Throwable th) {
                UniversalAgent.traceOnFailure(call, th);
                createCodeCallback.onCreateCodeError(new CreateCodeCallback.Error(ApiCallback.Holder.hold(call, th), createCode));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<JsonApi.Wrapper<Pincode>> call, Response<JsonApi.Wrapper<Pincode>> response) {
                UniversalAgent.traceOnResponse(call, response);
                ApiCallback.Holder holderHold = ApiCallback.Holder.hold(call, response);
                if (UniversalAgent.this.detectAgentInvalidated(agent, call, response) || !response.f79449a.r) {
                    createCodeCallback.onCreateCodeError(new CreateCodeCallback.Error(holderHold, createCode));
                    return;
                }
                Pincode pincode = (Pincode) JsonApi.Wrapper.unwrap((JsonApi.Wrapper) response.f79450b);
                if (pincode == null) {
                    createCodeCallback.onCreateCodeError(new CreateCodeCallback.Error(holderHold, createCode));
                    return;
                }
                pincode.relationships = new Pincode.Relationships(createCode.usecase);
                Code code = new Code(pincode);
                UniversalAgent.this.lazyCode.set(code);
                Rtcc.instance().bus().post(code);
                createCodeCallback.onCreateCodeSuccess(new CreateCodeCallback.Success(holderHold, code));
                if (UniversalAgent.this.shouldSyncFcmToken()) {
                    UniversalAgent.this.syncFcmToken();
                }
            }
        });
    }

    public void createRecording(Session session, final CreateRecordingCallback createRecordingCallback) {
        Preconditions.checkNotNull(session, "[session] must not be null");
        Preconditions.checkNotNull(createRecordingCallback, "[callback] must not be null");
        Agent agent = get();
        if (agent == null || Rtcc.instance().user() == null || TextUtils.isEmpty(session.caseReportId())) {
            createRecordingCallback.onCreateRecordingError(new CreateRecordingCallback.Error());
        } else {
            api(agent).startRecording(tokenV3(agent.token()), RecordingV3MappersKt.createRecording(session)).p(new Callback<RecordingV3Response>() { // from class: com.sightcall.universal.agent.UniversalAgent.32
                @Override // retrofit2.Callback
                public void onFailure(Call<RecordingV3Response> call, Throwable th) {
                    UniversalAgent.traceOnFailure(call, th);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<RecordingV3Response> call, Response<RecordingV3Response> response) {
                    UniversalAgent.traceOnResponse(call, response);
                    if (!response.f79449a.r) {
                        createRecordingCallback.onCreateRecordingError(new CreateRecordingCallback.Error());
                        return;
                    }
                    RecordingV3Response recordingV3Response = (RecordingV3Response) response.f79450b;
                    CreateRecordingCallback createRecordingCallback2 = createRecordingCallback;
                    if (recordingV3Response == null) {
                        createRecordingCallback2.onCreateRecordingError(new CreateRecordingCallback.Error());
                    } else {
                        createRecordingCallback2.onCreateRecordingSuccess(new CreateRecordingCallback.Success(RecordingV3MappersKt.toRecordingEntity(recordingV3Response)));
                    }
                }
            });
        }
    }

    public void deleteCode(final Code code, final DeleteCodeCallback deleteCodeCallback) {
        Preconditions.checkNotNull(code, "[code] must not be null");
        Preconditions.checkNotNull(deleteCodeCallback, "[callback] must not be null");
        final Agent agent = get();
        if (agent == null) {
            deleteCodeCallback.onDeleteCodeError(new DeleteCodeCallback.Error(code));
        } else {
            api(agent).deletePincode(authToken(), code.value).p(new Callback<Void>() { // from class: com.sightcall.universal.agent.UniversalAgent.31
                private void next(Call<Void> call, Response<Void> response, Throwable th) {
                    code.deleted = true;
                    if (UniversalAgent.this.code() == code) {
                        UniversalAgent.this.lazyCode.set(code);
                    }
                    if (code.correspondsTo(UniversalAgent.this.code())) {
                        UniversalAgent.this.lazyCode.set(null);
                        Rtcc.instance().bus().post(code);
                    }
                    deleteCodeCallback.onDeleteCodeSuccess(new DeleteCodeCallback.Success(ApiCallback.Holder.hold(call, response, th), code));
                }

                @Override // retrofit2.Callback
                public void onFailure(Call<Void> call, Throwable th) {
                    UniversalAgent.logger.e(th);
                    next(call, null, th);
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<Void> call, Response<Void> response) {
                    UniversalAgent.traceOnResponse(call, response);
                    UniversalAgent.this.detectAgentInvalidated(agent, call, response);
                    next(call, response, null);
                }
            });
        }
    }

    public void fetchCode(String str, final FetchCodeCallback fetchCodeCallback) {
        Preconditions.checkNotNull(str, "[id] must not be null");
        Preconditions.checkNotNull(fetchCodeCallback, "[callback] must not be null");
        final Agent agent = get();
        if (agent == null) {
            fetchCodeCallback.onFetchCodeError(new FetchCodeCallback.Error());
        } else {
            api(agent).getPincode(authToken(), str).p(new Callback<JsonApi.Wrapper<Pincode>>() { // from class: com.sightcall.universal.agent.UniversalAgent.29
                @Override // retrofit2.Callback
                public void onFailure(Call<JsonApi.Wrapper<Pincode>> call, Throwable th) {
                    UniversalAgent.traceOnFailure(call, th);
                    fetchCodeCallback.onFetchCodeError(new FetchCodeCallback.Error(ApiCallback.Holder.hold(call, th)));
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<JsonApi.Wrapper<Pincode>> call, Response<JsonApi.Wrapper<Pincode>> response) {
                    UniversalAgent.traceOnResponse(call, response);
                    ApiCallback.Holder holderHold = ApiCallback.Holder.hold(call, response);
                    if (UniversalAgent.this.detectAgentInvalidated(agent, call, response) || !response.f79449a.r) {
                        fetchCodeCallback.onFetchCodeError(new FetchCodeCallback.Error(holderHold));
                        return;
                    }
                    Pincode pincode = (Pincode) JsonApi.Wrapper.unwrap((JsonApi.Wrapper) response.f79450b);
                    if (pincode == null) {
                        fetchCodeCallback.onFetchCodeError(new FetchCodeCallback.Error(holderHold));
                        return;
                    }
                    Code code = new Code(pincode);
                    Code code2 = UniversalAgent.this.code();
                    if (code.correspondsTo(code2)) {
                        code.applyState(code2);
                        UniversalAgent.this.lazyCode.set(code);
                        Rtcc.instance().bus().post(code);
                    }
                    fetchCodeCallback.onFetchCodeSuccess(new FetchCodeCallback.Success(holderHold, code));
                }
            });
        }
    }

    public void fetchConsent(final FetchConsentCallback fetchConsentCallback) {
        Preconditions.checkNotNull(fetchConsentCallback, "[callback] must not be null");
        final Agent agent = get();
        if (agent == null) {
            fetchConsentCallback.onFetchConsentError(new FetchConsentCallback.Error());
        } else {
            api(agent).getConsent(authToken()).p(new Callback<JsonApi.Wrapper<Identity>>() { // from class: com.sightcall.universal.agent.UniversalAgent.25
                @Override // retrofit2.Callback
                public void onFailure(Call<JsonApi.Wrapper<Identity>> call, Throwable th) {
                    UniversalAgent.traceOnFailure(call, th);
                    fetchConsentCallback.onFetchConsentError(new FetchConsentCallback.Error(ApiCallback.Holder.hold(call, th)));
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<JsonApi.Wrapper<Identity>> call, Response<JsonApi.Wrapper<Identity>> response) {
                    UniversalAgent.traceOnResponse(call, response);
                    ApiCallback.Holder holderHold = ApiCallback.Holder.hold(call, response);
                    if (UniversalAgent.this.detectAgentInvalidated(agent, call, response) || !response.f79449a.r) {
                        fetchConsentCallback.onFetchConsentError(new FetchConsentCallback.Error(holderHold));
                        return;
                    }
                    IdentityExtractor identityExtractorExtract = IdentityExtractor.extract((JsonApi.Wrapper) response.f79450b);
                    if (identityExtractorExtract == null) {
                        fetchConsentCallback.onFetchConsentError(new FetchConsentCallback.Error(holderHold));
                        return;
                    }
                    Consent consent = identityExtractorExtract.consent;
                    UniversalAgent.this.lazyConsent.set(consent);
                    if (consent != null) {
                        Rtcc.instance().bus().post(consent);
                    }
                    fetchConsentCallback.onFetchConsentSuccess(new FetchConsentCallback.Success(holderHold, consent));
                }
            });
        }
    }

    public void fetchUsecase(String str, final FetchUsecaseCallback fetchUsecaseCallback) {
        Preconditions.checkNotNull(str, "[id] must not be null");
        Preconditions.checkNotNull(fetchUsecaseCallback, "[callback] must not be null");
        final Agent agent = get();
        if (agent == null) {
            fetchUsecaseCallback.onFetchUsecaseError(new FetchUsecaseCallback.Error());
        } else {
            api(agent).getUsecase(authToken(), str).p(new Callback<JsonApi.Wrapper<Usecase>>() { // from class: com.sightcall.universal.agent.UniversalAgent.27
                @Override // retrofit2.Callback
                public void onFailure(Call<JsonApi.Wrapper<Usecase>> call, Throwable th) {
                    UniversalAgent.traceOnFailure(call, th);
                    fetchUsecaseCallback.onFetchUsecaseError(new FetchUsecaseCallback.Error(ApiCallback.Holder.hold(call, th)));
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<JsonApi.Wrapper<Usecase>> call, Response<JsonApi.Wrapper<Usecase>> response) {
                    UniversalAgent.traceOnResponse(call, response);
                    ApiCallback.Holder holderHold = ApiCallback.Holder.hold(call, response);
                    if (UniversalAgent.this.detectAgentInvalidated(agent, call, response) || !response.f79449a.r) {
                        fetchUsecaseCallback.onFetchUsecaseError(new FetchUsecaseCallback.Error(holderHold));
                        return;
                    }
                    Usecase usecase = (Usecase) JsonApi.Wrapper.unwrap((JsonApi.Wrapper) response.f79450b);
                    if (usecase == null) {
                        fetchUsecaseCallback.onFetchUsecaseError(new FetchUsecaseCallback.Error(holderHold));
                        return;
                    }
                    List list = (List) UniversalAgent.this.lazyUsecases.get();
                    int i2 = 0;
                    if (list != null && !list.isEmpty()) {
                        int i3 = 0;
                        while (i2 < list.size()) {
                            Usecase usecase2 = (Usecase) list.get(i2);
                            if (usecase2 != null && TextUtils.equals(usecase.id, usecase2.id)) {
                                list.set(i2, usecase);
                                Rtcc.instance().bus().post(usecase2);
                                i3 = 1;
                            }
                            i2++;
                        }
                        i2 = i3;
                    }
                    if (i2 != 0) {
                        UniversalAgent.this.lazyUsecases.set(list);
                    }
                    fetchUsecaseCallback.onFetchUsecaseSuccess(new FetchUsecaseCallback.Success(holderHold, usecase));
                }
            });
        }
    }

    public void fetchUsecases(final FetchUsecasesCallback fetchUsecasesCallback) {
        Preconditions.checkNotNull(fetchUsecasesCallback, "[callback] must not be null");
        if (get() == null) {
            fetchUsecasesCallback.onFetchUsecasesError(new FetchUsecasesCallback.Error());
        } else {
            refresh(new RefreshCallback() { // from class: com.sightcall.universal.agent.UniversalAgent.19
                @Override // com.sightcall.universal.agent.RefreshCallback
                public void onRefreshError(RefreshCallback.Error error) {
                    fetchUsecasesCallback.onFetchUsecasesError(new FetchUsecasesCallback.Error(ApiCallback.Holder.hold(error)));
                }

                @Override // com.sightcall.universal.agent.RefreshCallback
                public void onRefreshSuccess(RefreshCallback.Success success) {
                    ApiCallback.Holder holderHold = ApiCallback.Holder.hold(success);
                    List<Usecase> listUsecases = UniversalAgent.this.usecases();
                    FetchUsecasesCallback fetchUsecasesCallback2 = fetchUsecasesCallback;
                    if (listUsecases == null) {
                        fetchUsecasesCallback2.onFetchUsecasesError(new FetchUsecasesCallback.Error(holderHold));
                    } else {
                        fetchUsecasesCallback2.onFetchUsecasesSuccess(new FetchUsecasesCallback.Success(holderHold, listUsecases));
                    }
                }
            });
        }
    }

    public Agent get() {
        return this.lazyAgent.get();
    }

    public List<IntegrationScope> integrationScopes() {
        List<IntegrationScope> list = this.lazyIntegrationScopes.get();
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public void invalidate() {
        wipe(get(), true);
    }

    public boolean isAvailable() {
        return get() != null;
    }

    @Event
    public void onAgentUnregistered(AgentUnregistered agentUnregistered) {
        Agent agent = get();
        if (agent == null) {
            return;
        }
        if (agentUnregistered.relatesTo(agent)) {
            invalidate(agent);
        } else {
            logger.e("Invalid [%s]", AgentUnregistered.KEY);
        }
    }

    @Event
    public void onCodeCreated(com.sightcall.universal.fcm.messages.Code.Created created) {
        Agent agent = get();
        if (this.isFeatureAgentEnabled && this.isFeatureAgentNotificationsEnabled && agent != null) {
            fetchCode(created.id(), new FetchCodeCallback() { // from class: com.sightcall.universal.agent.UniversalAgent.33
                @Override // com.sightcall.universal.agent.FetchCodeCallback
                public void onFetchCodeError(FetchCodeCallback.Error error) {
                }

                @Override // com.sightcall.universal.agent.FetchCodeCallback
                public void onFetchCodeSuccess(FetchCodeCallback.Success success) {
                    Code code = success.code();
                    UniversalAgent.this.lazyCode.set(code);
                    Rtcc.instance().bus().post(code);
                }
            });
        }
    }

    @Event
    public void onCodeDestroyed(com.sightcall.universal.fcm.messages.Code.Destroyed destroyed) {
        Agent agent = get();
        if (this.isFeatureAgentEnabled && this.isFeatureAgentNotificationsEnabled && agent != null) {
            Code code = code();
            if (code == null) {
                logger.e("Unknown [%s], no [code] available", com.sightcall.universal.fcm.messages.Code.Destroyed.KEY);
            } else {
                if (!TextUtils.equals(code.value, destroyed.id())) {
                    logger.e("Invalid [%s], expecting pincode [%s] but got [%s]", com.sightcall.universal.fcm.messages.Code.Destroyed.KEY, code.value(), destroyed.id());
                    return;
                }
                code.deleted = true;
                this.lazyCode.set(null);
                Rtcc.instance().bus().post(code);
            }
        }
    }

    @Event
    public void onCodeResent(com.sightcall.universal.fcm.messages.Code.Resent resent) {
        Agent agent = get();
        if (this.isFeatureAgentEnabled && this.isFeatureAgentNotificationsEnabled && agent != null) {
            fetchCode(resent.id(), new FetchCodeCallback() { // from class: com.sightcall.universal.agent.UniversalAgent.34
                @Override // com.sightcall.universal.agent.FetchCodeCallback
                public void onFetchCodeError(FetchCodeCallback.Error error) {
                }

                @Override // com.sightcall.universal.agent.FetchCodeCallback
                public void onFetchCodeSuccess(FetchCodeCallback.Success success) {
                    Code code = success.code();
                    code.resent = true;
                    UniversalAgent.this.lazyCode.set(code);
                    Rtcc.instance().bus().post(code);
                }
            });
        }
    }

    @Event
    public void onFcmTest(Test test) {
        if (get() == null) {
            return;
        }
        UniversalNotification.PING.show(this.context, test);
    }

    @Event
    public void onFcmTokenUpdateEvent(FcmTokenUpdateEvent fcmTokenUpdateEvent) {
        if (shouldSyncFcmToken()) {
            syncFcmToken();
        }
    }

    @Event
    public void onGuestReady(GuestReady guestReady) {
        Agent agent = get();
        if (this.isFeatureAgentEnabled && this.isFeatureAgentNotificationsEnabled && agent != null) {
            Code code = code();
            if (code == null) {
                logger.e("Unknown [guest-ready], no [code] available");
                return;
            }
            if (code.isDeleted()) {
                logger.e("Invalid [guest-ready], [code] is deleted");
                return;
            }
            if (!guestReady.pincode().equals(code.value())) {
                logger.e("Invalid [guest-ready], expecting pincode [%s] but got [%s]", code.value(), guestReady.pincode());
                return;
            }
            if (!String.valueOf(guestReady.usecaseId()).equals(code.usecaseId())) {
                logger.e("Invalid [guest-ready], expecting usecaseId [%s] but got [%d]", code.usecaseId(), Integer.valueOf(guestReady.usecaseId()));
                return;
            }
            String strCaseReportId = code.caseReportId();
            String strCaseReportId2 = guestReady.caseReportId();
            if (!TextUtils.equals(strCaseReportId, strCaseReportId2) && !TextUtils.isEmpty(strCaseReportId2)) {
                logger.i("Updating case report id [%s] -> [%s]", strCaseReportId, strCaseReportId2);
                code.caseReportId = strCaseReportId2;
                this.lazyCode.set(code);
            }
            if (Rtcc.instance().call().get() != null) {
                logger.e("GuestReady received but a call is in progress, ignoring... ");
            } else {
                Rtcc.instance().provideRtccJWT(guestReady.getRtccJwtAuth());
                UniversalNotification.GUEST_READY.show(this.context, guestReady);
            }
        }
    }

    public void onGuestReadyAccepted(GuestReady guestReady) {
        logger.d("onGuestReadyAccepted() called with: message = [%s]", guestReady);
        UniversalNotification.GUEST_READY.cancel(this.context.getApplicationContext(), guestReady);
        if (get() == null) {
            return;
        }
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onGuestReadyAccepted(guestReady);
        AgentUsecaseStep agentUsecaseStepWith = AgentUsecaseStep.with(guestReady);
        if (agentUsecaseStepWith == null) {
            return;
        }
        this.currentStep = agentUsecaseStepWith;
        PermissionsActivity.start(this.context, this.resultReceiver, Permissions.getPermissionList(this.context));
    }

    public void onGuestReadyDenied(GuestReady guestReady) {
        logger.d("onGuestReadyDenied() called with: message = [%s]", guestReady);
        UniversalNotification.GUEST_READY.cancel(this.context.getApplicationContext(), guestReady);
        if (get() == null) {
            return;
        }
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onGuestReadyDenied(guestReady);
        Universal.start(Scenario.with(AgentUsecaseStep.with(guestReady)));
    }

    public List<ProviderCustomization> providerCustomizations() {
        List<ProviderCustomization> list = this.lazyProviderCustimizations.get();
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    public void refresh(final RefreshCallback refreshCallback) {
        Preconditions.checkNotNull(refreshCallback, "[callback] must not be null");
        final Agent agent = get();
        if (agent == null) {
            refreshCallback.onRefreshError(new RefreshCallback.Error());
        } else {
            api(agent).refresh(authToken()).p(new Callback<JsonApi.Wrapper<Identity>>() { // from class: com.sightcall.universal.agent.UniversalAgent.20
                @Override // retrofit2.Callback
                public void onFailure(Call<JsonApi.Wrapper<Identity>> call, Throwable th) {
                    UniversalAgent.traceOnFailure(call, th);
                    refreshCallback.onRefreshError(new RefreshCallback.Error(ApiCallback.Holder.hold(call, th)));
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<JsonApi.Wrapper<Identity>> call, Response<JsonApi.Wrapper<Identity>> response) {
                    UniversalAgent.traceOnResponse(call, response);
                    ApiCallback.Holder holderHold = ApiCallback.Holder.hold(call, response);
                    if (UniversalAgent.this.detectAgentInvalidated(agent, call, response) || !response.f79449a.r) {
                        refreshCallback.onRefreshError(new RefreshCallback.Error(holderHold));
                        return;
                    }
                    IdentityExtractor identityExtractorExtract = IdentityExtractor.extract((JsonApi.Wrapper) response.f79450b);
                    if (identityExtractorExtract == null) {
                        refreshCallback.onRefreshError(new RefreshCallback.Error(holderHold));
                        return;
                    }
                    UniversalAgent.this.applyUpdates(identityExtractorExtract, agent);
                    refreshCallback.onRefreshSuccess(new RefreshCallback.Success(holderHold, agent, UniversalAgent.this.usecases(), UniversalAgent.this.consent(), UniversalAgent.this.code()));
                    UniversalAgent.this.updateAgentInfos();
                }
            });
        }
    }

    public void refreshToken(AccessTokensRequest accessTokensRequest, final RefreshTokenCallback refreshTokenCallback) {
        final Agent agent = get();
        api(agent).refreshToken(JsonApi.wrap(accessTokensRequest)).p(new Callback<JsonApi.Wrapper<AccessTokensResponse>>() { // from class: com.sightcall.universal.agent.UniversalAgent.12
            @Override // retrofit2.Callback
            public void onFailure(Call<JsonApi.Wrapper<AccessTokensResponse>> call, Throwable th) {
                UniversalAgent.traceOnFailure(call, th);
                refreshTokenCallback.onRefreshTokenError(new RefreshTokenCallback.Error());
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<JsonApi.Wrapper<AccessTokensResponse>> call, Response<JsonApi.Wrapper<AccessTokensResponse>> response) {
                UniversalAgent.traceOnResponse(call, response);
                if (!response.f79449a.r) {
                    refreshTokenCallback.onRefreshTokenError(new RefreshTokenCallback.Error());
                    return;
                }
                AccessTokensResponse accessTokensResponse = (AccessTokensResponse) JsonApi.Wrapper.unwrap((JsonApi.Wrapper) response.f79450b);
                if (accessTokensResponse == null) {
                    refreshTokenCallback.onRefreshTokenError(new RefreshTokenCallback.Error());
                    return;
                }
                agent.updateTokens(accessTokensResponse);
                UniversalAgent.this.lazyAgent.set(agent);
                Rtcc.instance().bus().post(agent);
                refreshTokenCallback.onRefreshTokenSuccess(new RefreshTokenCallback.Success(ApiCallback.Holder.hold(call, response), accessTokensResponse));
            }
        });
    }

    public void register(RegistrationRequest registrationRequest, final RegisterCallback registerCallback, boolean z) {
        Preconditions.checkNotNull(registrationRequest, "[registration] must not be null");
        Preconditions.checkNotNull(registerCallback, "[callback] must not be null");
        final Environment environmentDefaultEnv = defaultEnv();
        Universal.settings().apiBaseUrl().set(environmentDefaultEnv.baseUrl());
        final AgentApi agentApiApi = api(environmentDefaultEnv);
        final AtomicReference atomicReference = new AtomicReference();
        final RegisterCallback registerCallback2 = new RegisterCallback() { // from class: com.sightcall.universal.agent.UniversalAgent.13
            @Override // com.sightcall.universal.agent.RegisterCallback
            public void onRegisterError(RegisterCallback.Error error) {
                UniversalAgent.this.isRegistering.set(false);
                registerCallback.onRegisterError(error);
            }

            @Override // com.sightcall.universal.agent.RegisterCallback
            public void onRegisterSuccess(RegisterCallback.Success success) {
                UniversalAgent.this.isRegistering.set(false);
                registerCallback.onRegisterSuccess(success);
                Rtcc.instance().bus().post(new RegistrationEvent(success.agent));
            }
        };
        if (!this.isRegistering.compareAndSet(false, true)) {
            logger.e("Registration already pending...");
            registerCallback2.onRegisterError(new RegisterCallback.Error(ApiCallback.Holder.hold(null, null, null)));
            return;
        }
        final Callback<JsonApi.Wrapper<Identity>> callback = new Callback<JsonApi.Wrapper<Identity>>() { // from class: com.sightcall.universal.agent.UniversalAgent.14
            @Override // retrofit2.Callback
            public void onFailure(Call<JsonApi.Wrapper<Identity>> call, Throwable th) {
                UniversalAgent.traceOnFailure(call, th);
                registerCallback2.onRegisterError(new RegisterCallback.Error(ApiCallback.Holder.hold(call, null, th)));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<JsonApi.Wrapper<Identity>> call, Response<JsonApi.Wrapper<Identity>> response) {
                UniversalAgent.traceOnResponse(call, response);
                if (!response.f79449a.r) {
                    registerCallback2.onRegisterError(new RegisterCallback.Error(ApiCallback.Holder.hold(call, response, null)));
                    return;
                }
                IdentityExtractor identityExtractorExtract = IdentityExtractor.extract((JsonApi.Wrapper) response.f79450b);
                if (identityExtractorExtract == null) {
                    registerCallback2.onRegisterError(new RegisterCallback.Error(ApiCallback.Holder.hold(call, response, null)));
                    return;
                }
                UniversalAgent universalAgent = UniversalAgent.this;
                universalAgent.wipe(universalAgent.get(), false);
                Agent agent = (Agent) atomicReference.get();
                UniversalAgent.this.applyUpdates(identityExtractorExtract, agent);
                registerCallback2.onRegisterSuccess(new RegisterCallback.Success(ApiCallback.Holder.hold(call, response), agent));
            }
        };
        Callback<JsonApi.Wrapper<OldRegistration>> callback2 = new Callback<JsonApi.Wrapper<OldRegistration>>() { // from class: com.sightcall.universal.agent.UniversalAgent.15
            @Override // retrofit2.Callback
            public void onFailure(Call<JsonApi.Wrapper<OldRegistration>> call, Throwable th) {
                UniversalAgent.traceOnFailure(call, th);
                registerCallback2.onRegisterError(new RegisterCallback.Error(ApiCallback.Holder.hold(call, null, th)));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<JsonApi.Wrapper<OldRegistration>> call, Response<JsonApi.Wrapper<OldRegistration>> response) {
                UniversalAgent.traceOnResponse(call, response);
                if (!response.f79449a.r) {
                    registerCallback2.onRegisterError(new RegisterCallback.Error(ApiCallback.Holder.hold(call, response, null)));
                    return;
                }
                OldRegistration oldRegistration = (OldRegistration) JsonApi.Wrapper.unwrap((JsonApi.Wrapper) response.f79450b);
                if (oldRegistration == null) {
                    registerCallback2.onRegisterError(new RegisterCallback.Error(ApiCallback.Holder.hold(call, response, null)));
                    return;
                }
                Agent agentCreate = Agent.create(oldRegistration, environmentDefaultEnv);
                atomicReference.set(agentCreate);
                agentApiApi.refresh(Headers.Authorization.Bearer.with(agentCreate.token())).p(callback);
            }
        };
        Callback<JsonApi.Wrapper<NewRegistrationResponse>> callback3 = new Callback<JsonApi.Wrapper<NewRegistrationResponse>>() { // from class: com.sightcall.universal.agent.UniversalAgent.16
            @Override // retrofit2.Callback
            public void onFailure(Call<JsonApi.Wrapper<NewRegistrationResponse>> call, Throwable th) {
                UniversalAgent.traceOnFailure(call, th);
                registerCallback2.onRegisterError(new RegisterCallback.Error(ApiCallback.Holder.hold(call, null, th)));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<JsonApi.Wrapper<NewRegistrationResponse>> call, Response<JsonApi.Wrapper<NewRegistrationResponse>> response) {
                UniversalAgent.traceOnResponse(call, response);
                if (!response.f79449a.r) {
                    registerCallback2.onRegisterError(new RegisterCallback.Error(ApiCallback.Holder.hold(call, response, null)));
                    return;
                }
                NewRegistrationResponse newRegistrationResponse = (NewRegistrationResponse) JsonApi.Wrapper.unwrap((JsonApi.Wrapper) response.f79450b);
                if (newRegistrationResponse == null) {
                    registerCallback2.onRegisterError(new RegisterCallback.Error(ApiCallback.Holder.hold(call, response, null)));
                    return;
                }
                Agent agentCreate = Agent.create(newRegistrationResponse, environmentDefaultEnv);
                atomicReference.set(agentCreate);
                agentApiApi.refresh(Headers.Authorization.Bearer.with(agentCreate.token())).p(callback);
            }
        };
        if (z) {
            agentApiApi.createAuthorizationToken(JsonApi.wrap((OldRegistration) registrationRequest)).p(callback2);
        } else {
            agentApiApi.createSession(JsonApi.wrap((NewRegistrationRequest) registrationRequest)).p(callback3);
        }
    }

    public void requestNotificationTest(final RequestNotificationTestCallback requestNotificationTestCallback) {
        Preconditions.checkNotNull(requestNotificationTestCallback, "[callback] must not be null");
        final Agent agent = get();
        if (agent == null) {
            requestNotificationTestCallback.onRequestNotificationTestError(new RequestNotificationTestCallback.Error());
        } else {
            api(agent).createNotificationTest(tokenV3(agent.token()), JsonApi.wrap(new AgentPushNotificationTests())).p(new Callback<JsonApi.Wrapper<AgentPushNotificationTestsResponse>>() { // from class: com.sightcall.universal.agent.UniversalAgent.18
                @Override // retrofit2.Callback
                public void onFailure(Call<JsonApi.Wrapper<AgentPushNotificationTestsResponse>> call, Throwable th) {
                    UniversalAgent.traceOnFailure(call, th);
                    requestNotificationTestCallback.onRequestNotificationTestError(new RequestNotificationTestCallback.Error(ApiCallback.Holder.hold(call, th)));
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<JsonApi.Wrapper<AgentPushNotificationTestsResponse>> call, Response<JsonApi.Wrapper<AgentPushNotificationTestsResponse>> response) {
                    UniversalAgent.traceOnResponse(call, response);
                    ApiCallback.Holder holderHold = ApiCallback.Holder.hold(call, response);
                    if (UniversalAgent.this.detectAgentInvalidated(agent, call, response)) {
                        requestNotificationTestCallback.onRequestNotificationTestError(new RequestNotificationTestCallback.Error(holderHold));
                        return;
                    }
                    if (!response.f79449a.r) {
                        requestNotificationTestCallback.onRequestNotificationTestError(new RequestNotificationTestCallback.Error(holderHold));
                        return;
                    }
                    boolean success = ((AgentPushNotificationTestsResponse) ((JsonApi.Wrapper) response.f79450b).unwrap()).getAttributes().getSuccess();
                    RequestNotificationTestCallback requestNotificationTestCallback2 = requestNotificationTestCallback;
                    if (success) {
                        requestNotificationTestCallback2.onRequestNotificationTestSuccess(new RequestNotificationTestCallback.Success(holderHold));
                    } else {
                        requestNotificationTestCallback2.onRequestNotificationTestError(new RequestNotificationTestCallback.Error(holderHold));
                    }
                }
            });
        }
    }

    public void requestTemporaryToken(final TemporaryToken temporaryToken, final RequestTemporaryTokenCallback requestTemporaryTokenCallback) {
        Preconditions.checkNotNull(temporaryToken, "[temporaryToken] must not be null");
        Preconditions.checkNotNull(requestTemporaryTokenCallback, "[callback] must not be null");
        defaultApi().createTemporaryToken(JsonApi.wrap(temporaryToken)).p(new Callback<JsonApi.Wrapper<TemporaryToken>>() { // from class: com.sightcall.universal.agent.UniversalAgent.10
            @Override // retrofit2.Callback
            public void onFailure(Call<JsonApi.Wrapper<TemporaryToken>> call, Throwable th) {
                UniversalAgent.traceOnFailure(call, th);
                requestTemporaryTokenCallback.onRequestTemporaryTokenError(new RequestTemporaryTokenCallback.Error(ApiCallback.Holder.hold(call, th), temporaryToken));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<JsonApi.Wrapper<TemporaryToken>> call, Response<JsonApi.Wrapper<TemporaryToken>> response) {
                UniversalAgent.traceOnResponse(call, response);
                ApiCallback.Holder holderHold = ApiCallback.Holder.hold(call, response);
                if (!response.f79449a.r) {
                    requestTemporaryTokenCallback.onRequestTemporaryTokenError(new RequestTemporaryTokenCallback.Error(holderHold, temporaryToken));
                    return;
                }
                TemporaryToken temporaryToken2 = (TemporaryToken) JsonApi.Wrapper.unwrap((JsonApi.Wrapper) response.f79450b);
                RequestTemporaryTokenCallback requestTemporaryTokenCallback2 = requestTemporaryTokenCallback;
                if (temporaryToken2 == null) {
                    requestTemporaryTokenCallback2.onRequestTemporaryTokenError(new RequestTemporaryTokenCallback.Error(holderHold, temporaryToken));
                } else {
                    requestTemporaryTokenCallback2.onRequestTemporaryTokenSuccess(new RequestTemporaryTokenCallback.Success(holderHold, temporaryToken2));
                    Rtcc.instance().bus().post(temporaryToken2);
                }
            }
        });
    }

    public void resendCode(final Code code, final ResendCodeCallback resendCodeCallback) {
        Preconditions.checkNotNull(code, "[code] must not be null");
        Preconditions.checkNotNull(resendCodeCallback, "[callback] must not be null");
        final Agent agent = get();
        if (agent == null) {
            resendCodeCallback.onResendCodeError(new ResendCodeCallback.Error(code));
            return;
        }
        AgentApi agentApiApi = api(agent);
        Headers.Authorization.Bearer bearerAuthToken = authToken();
        String str = code.value;
        agentApiApi.resendPincode(bearerAuthToken, str, JsonApi.wrap(Pincode.resend(str))).p(new Callback<JsonApi.Wrapper<Pincode>>() { // from class: com.sightcall.universal.agent.UniversalAgent.30
            @Override // retrofit2.Callback
            public void onFailure(Call<JsonApi.Wrapper<Pincode>> call, Throwable th) {
                UniversalAgent.traceOnFailure(call, th);
                resendCodeCallback.onResendCodeError(new ResendCodeCallback.Error(ApiCallback.Holder.hold(call, th), code));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<JsonApi.Wrapper<Pincode>> call, Response<JsonApi.Wrapper<Pincode>> response) {
                UniversalAgent.traceOnResponse(call, response);
                ApiCallback.Holder holderHold = ApiCallback.Holder.hold(call, response);
                if (UniversalAgent.this.detectAgentInvalidated(agent, call, response) || !response.f79449a.r) {
                    resendCodeCallback.onResendCodeError(new ResendCodeCallback.Error(holderHold, code));
                    return;
                }
                if (((Pincode) JsonApi.Wrapper.unwrap((JsonApi.Wrapper) response.f79450b)) == null) {
                    resendCodeCallback.onResendCodeError(new ResendCodeCallback.Error(holderHold, code));
                    return;
                }
                code.resent = true;
                if (UniversalAgent.this.code() == code) {
                    UniversalAgent.this.lazyCode.set(code);
                    Rtcc.instance().bus().post(code);
                }
                resendCodeCallback.onResendCodeSuccess(new ResendCodeCallback.Success(holderHold, code));
            }
        });
    }

    public void resendTemporaryToken(final TemporaryToken temporaryToken, final ResendTemporaryTokenCallback resendTemporaryTokenCallback) {
        Preconditions.checkNotNull(temporaryToken, "[temporaryToken] must not be null");
        Preconditions.checkNotNull(resendTemporaryTokenCallback, "[callback] must not be null");
        if (temporaryToken.isResent) {
            resendTemporaryTokenCallback.onResendTemporaryTokenError(new ResendTemporaryTokenCallback.Error(temporaryToken));
        } else {
            defaultApi().resendTemporaryToken(temporaryToken.id(), JsonApi.wrap(TemporaryToken.resend(temporaryToken))).p(new Callback<JsonApi.Wrapper<TemporaryToken>>() { // from class: com.sightcall.universal.agent.UniversalAgent.11
                @Override // retrofit2.Callback
                public void onFailure(Call<JsonApi.Wrapper<TemporaryToken>> call, Throwable th) {
                    UniversalAgent.traceOnFailure(call, th);
                    resendTemporaryTokenCallback.onResendTemporaryTokenError(new ResendTemporaryTokenCallback.Error(ApiCallback.Holder.hold(call, th), temporaryToken));
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<JsonApi.Wrapper<TemporaryToken>> call, Response<JsonApi.Wrapper<TemporaryToken>> response) {
                    UniversalAgent.traceOnResponse(call, response);
                    ApiCallback.Holder holderHold = ApiCallback.Holder.hold(call, response);
                    if (!response.f79449a.r) {
                        resendTemporaryTokenCallback.onResendTemporaryTokenError(new ResendTemporaryTokenCallback.Error(holderHold, temporaryToken));
                        return;
                    }
                    TemporaryToken temporaryToken2 = (TemporaryToken) JsonApi.Wrapper.unwrap((JsonApi.Wrapper) response.f79450b);
                    if (temporaryToken2 == null || !temporaryToken.id().equals(temporaryToken2.id)) {
                        resendTemporaryTokenCallback.onResendTemporaryTokenError(new ResendTemporaryTokenCallback.Error(holderHold, temporaryToken));
                        return;
                    }
                    TemporaryToken temporaryToken3 = temporaryToken;
                    temporaryToken3.isResent = true;
                    resendTemporaryTokenCallback.onResendTemporaryTokenSuccess(new ResendTemporaryTokenCallback.Success(holderHold, temporaryToken3));
                    Rtcc.instance().bus().post(temporaryToken);
                }
            });
        }
    }

    public void sendLead(final Lead lead, final SendLeadCallback sendLeadCallback) {
        Preconditions.checkNotNull(lead, "[lead] must not be null");
        Preconditions.checkNotNull(sendLeadCallback, "[callback] must not be null");
        defaultApi().createProspect(JsonApi.wrap(lead)).p(new Callback<JsonApi.Wrapper<Lead>>() { // from class: com.sightcall.universal.agent.UniversalAgent.9
            @Override // retrofit2.Callback
            public void onFailure(Call<JsonApi.Wrapper<Lead>> call, Throwable th) {
                UniversalAgent.traceOnFailure(call, th);
                sendLeadCallback.onSendLeadError(new SendLeadCallback.Error(ApiCallback.Holder.hold(call, th), lead));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<JsonApi.Wrapper<Lead>> call, Response<JsonApi.Wrapper<Lead>> response) {
                UniversalAgent.traceOnResponse(call, response);
                ApiCallback.Holder holderHold = ApiCallback.Holder.hold(call, response);
                if (!response.f79449a.r) {
                    sendLeadCallback.onSendLeadError(new SendLeadCallback.Error(holderHold, lead));
                    return;
                }
                Lead lead2 = (Lead) JsonApi.Wrapper.unwrap((JsonApi.Wrapper) response.f79450b);
                SendLeadCallback sendLeadCallback2 = sendLeadCallback;
                if (lead2 == null) {
                    sendLeadCallback2.onSendLeadError(new SendLeadCallback.Error(holderHold, lead));
                } else {
                    sendLeadCallback2.onSendLeadSuccess(new SendLeadCallback.Success(holderHold, lead2));
                }
            }
        });
    }

    public boolean shouldSyncFcmToken() {
        Agent agent = get();
        return agent != null && shouldSyncFcmToken(agent.fcmToken(), Universal.fcm().token());
    }

    public void startRecording(String str) {
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onRecordingStart(str);
    }

    public void stopRecording(String str) {
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onRecordingEnd(str);
    }

    public void syncFcmToken() {
        Agent agent = get();
        if (agent == null) {
            return;
        }
        FirebaseMessaging.c().e().e(new gy0(this, agent, 4)).c(new OnFailureListener() { // from class: com.sightcall.universal.agent.UniversalAgent.22
            @Override // com.google.android.gms.tasks.OnFailureListener
            public void onFailure(Exception exc) {
                UniversalAgent.logger.e("FCM Token retrieve token failure");
            }
        });
    }

    public void unregister(final UnregisterCallback unregisterCallback) {
        Preconditions.checkNotNull(unregisterCallback, "[callback] must not be null");
        final Agent agent = get();
        if (agent == null) {
            unregisterCallback.onUnregisterError(new UnregisterCallback.Error());
            return;
        }
        Callback<Void> callback = new Callback<Void>() { // from class: com.sightcall.universal.agent.UniversalAgent.17
            private void next(Call<Void> call, Response<Void> response, Throwable th) {
                UniversalAgent.this.invalidate(agent);
                unregisterCallback.onUnregisterSuccess(new UnregisterCallback.Success(ApiCallback.Holder.hold(call, response, th)));
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<Void> call, Throwable th) {
                UniversalAgent.traceOnFailure(call, th);
                next(call, null, th);
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Void> call, Response<Void> response) {
                UniversalAgent.traceOnResponse(call, response);
                next(call, response, null);
            }
        };
        if (Universal.agent().get().refreshToken() == null) {
            api(agent).deleteAuthorizationToken(agent.token()).p(callback);
        } else {
            api(agent).deleteNewToken(agent.refreshToken()).p(callback);
        }
    }

    public void updateAgentInfos() {
        String str;
        Agent agent = get();
        if (agent == null) {
            return;
        }
        try {
            str = this.context.getPackageManager().getPackageInfo(this.context.getPackageName(), 0).versionName;
        } catch (Exception e2) {
            logger.w("PackageManager Failed to get version number.", e2);
            str = null;
        }
        AgentApi agentApiApi = api(agent);
        String str2 = tokenV3(agent.token());
        String str3 = "" + Build.VERSION.SDK_INT;
        String str4 = Build.MODEL;
        String packageName = this.context.getPackageName();
        if (str == null) {
            str = "?";
        }
        agentApiApi.updateAgentInfos(str2, new AgentInfoRequestEntity(new AgentInfoRequestEntity.Data("me", "agentInfos", true, new AgentInfoRequestEntity.Data.Attributes(ReferenceApiV3ConstKt.OS_NAME, str3, str4, Payload.TYPE_APP, packageName, str, BuildConfig.SDK_VERSION, this.context.getString(com.sightcall.core.R.string.universal_mobile_solution_value))))).p(new Callback<Void>() { // from class: com.sightcall.universal.agent.UniversalAgent.21
            @Override // retrofit2.Callback
            public void onFailure(Call<Void> call, Throwable th) {
                UniversalAgent.logger.e("Agent info update failed");
                if (UniversalAgent.this.shouldSyncFcmToken()) {
                    UniversalAgent.this.syncFcmToken();
                }
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<Void> call, Response<Void> response) {
                if (response.f79449a.r) {
                    UniversalAgent.logger.i("Agent info update successfully");
                    if (UniversalAgent.this.shouldSyncFcmToken()) {
                        UniversalAgent.this.syncFcmToken();
                    }
                }
            }
        });
    }

    public Usecase usecase(String str) {
        List<Usecase> list;
        if (!TextUtils.isEmpty(str) && (list = this.lazyUsecases.get()) != null && !list.isEmpty()) {
            for (Usecase usecase : list) {
                if (TextUtils.equals(str, usecase.id())) {
                    return usecase;
                }
            }
        }
        return null;
    }

    public List<Usecase> usecases() {
        List<Usecase> list = this.lazyUsecases.get();
        if (list == null) {
            return null;
        }
        return Collections.unmodifiableList(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidate(Agent agent) {
        wipe(agent, true);
    }

    private AgentApi api(Agent agent) {
        return api(agent.environment());
    }

    private static boolean shouldSyncFcmToken(String str, String str2) {
        return (TextUtils.isEmpty(str2) || TextUtils.equals(str, str2)) ? false : true;
    }
}
