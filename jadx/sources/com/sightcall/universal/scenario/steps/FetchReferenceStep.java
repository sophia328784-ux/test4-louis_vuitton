package com.sightcall.universal.scenario.steps;

import android.text.TextUtils;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.pratik.Result;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.session.Reference;
import com.sightcall.session.SessionRepository;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.ScenarioService;
import com.sightcall.universal.scenario.Step;
import defpackage.ct0;
import defpackage.mt;
import defpackage.p3;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
public class FetchReferenceStep extends Step {
    private final Config config;

    @Inject
    SessionRepository sessionRepository;

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.steps.FetchReferenceStep$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$com$sightcall$universal$model$Session$Role;

        static {
            int[] iArr = new int[Session.Role.values().length];
            $SwitchMap$com$sightcall$universal$model$Session$Role = iArr;
            try {
                iArr[Session.Role.HOST.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sightcall$universal$model$Session$Role[Session.Role.GUEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sightcall$universal$model$Session$Role[Session.Role.ATTENDEE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public FetchReferenceStep(Config config) {
        this.config = config;
        SDKInjector.getSdkInjector().inject(this);
    }

    private LiveTranslationAPI.Role getLiveTranslationRole(Session session) {
        int i2 = AnonymousClass2.$SwitchMap$com$sightcall$universal$model$Session$Role[session.config.role().ordinal()];
        if (i2 == 1) {
            return LiveTranslationAPI.Role.Host;
        }
        if (i2 == 2) {
            return LiveTranslationAPI.Role.Guest;
        }
        if (i2 == 3) {
            return LiveTranslationAPI.Role.Attendee;
        }
        ct0.o(session.config.role(), "Unexpected value: ");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onReferenceReady$1(Session session, Boolean bool) throws Throwable {
        success(ConsentStep.nextStep(session));
    }

    public static Step next(Config config) {
        if (!TextUtils.isEmpty(config.hash())) {
            return new FetchReferenceStep(config);
        }
        Universal.logger().e("[hash] must not be null");
        return null;
    }

    private void onReferenceReady(Session session) {
        Rtcc.instance().provideRtccJWT(session.rtccJwt);
        LiveTranslationAPI liveTranslationAPI = SDKInjector.getSdkInjector().createReferenceComponent(session.usecase.liveTranslation, getLiveTranslationRole(session), new LiveTranslationAPI.LocaleLanguage(Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry()), session.environment().baseUrl()).getLiveTranslationAPI();
        if (liveTranslationAPI.getEnabled()) {
            liveTranslationAPI.isReady().filter(new mt(26)).take(1L).subscribe(new p3(this, session, 13));
        } else {
            success(ConsentStep.nextStep(session));
        }
    }

    public static Step with(Usecase usecase) {
        return new FetchReferenceStep(new Config().hash(usecase.hash()));
    }

    @Override // com.sightcall.universal.scenario.Step
    public void interrupt() {
        this.sessionRepository.interruptGetReference();
        super.interrupt();
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
        Universal.register(this);
    }

    public void onFetchReferenceFailure() {
        if (is(Step.State.ACTIVE)) {
            unbindService();
            failure(new Step[0]);
        }
    }

    public void onFetchReferenceSuccess(Session session) {
        if (is(Step.State.ACTIVE)) {
            onReferenceReady(session);
        }
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onServiceConnected(final ScenarioService scenarioService) {
        super.onServiceConnected(scenarioService);
        Logger.INSTANCE.d("onServiceConnected() called with: service = [" + scenarioService + "]", null);
        this.sessionRepository.getReference(this.config.uri(), new Continuation<Result<Reference, Unit>>() { // from class: com.sightcall.universal.scenario.steps.FetchReferenceStep.1
            @Override // kotlin.coroutines.Continuation
            public CoroutineContext getContext() {
                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                return DefaultIoScheduler.f75161b;
            }

            @Override // kotlin.coroutines.Continuation
            public void resumeWith(Object obj) {
                Result result = (Result) obj;
                if (!(result instanceof Result.Success)) {
                    if (result instanceof Result.Error) {
                        Logger.INSTANCE.e("Unable to get reference");
                        FetchReferenceStep.this.onFetchReferenceFailure();
                        return;
                    }
                    return;
                }
                try {
                    Reference reference = (Reference) ((Result.Success) result).getSuccess();
                    Reference.UseCase.Analytics analytics = reference.useCase.analytics;
                    boolean zEquals = scenarioService.getPackageName().equals("com.sightcall.agent");
                    FetchReferenceStep fetchReferenceStep = FetchReferenceStep.this;
                    fetchReferenceStep.onFetchReferenceSuccess(new Session(fetchReferenceStep.config, reference, zEquals));
                    Rtcc.instance().setupAnalytics(analytics.uploadUrl, analytics.token);
                } catch (Exception e2) {
                    Logger.INSTANCE.e("Unable to get reference", e2);
                    FetchReferenceStep.this.onFetchReferenceFailure();
                }
            }
        });
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onUnbind() {
        Universal.unregister(this);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void run() {
        if (networkExpected()) {
            bindService();
        } else {
            failure(new Step[0]);
        }
    }

    public String toString() {
        return "FetchReferenceStep{hash='" + this.config.hash() + "'}";
    }
}
