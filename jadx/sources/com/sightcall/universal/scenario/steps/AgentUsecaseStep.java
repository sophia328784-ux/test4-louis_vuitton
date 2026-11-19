package com.sightcall.universal.scenario.steps;

import com.sightcall.analyticsagentsession.AnalyticsAgentSessionRepository;
import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.session.Reference;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Code;
import com.sightcall.universal.agent.FetchUsecaseCallback;
import com.sightcall.universal.di.SDKInjector;
import com.sightcall.universal.fcm.messages.GuestReady;
import com.sightcall.universal.model.Config;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.ScenarioService;
import com.sightcall.universal.scenario.Step;
import defpackage.l0;
import defpackage.p3;
import defpackage.x1;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Unit;

/* JADX INFO: loaded from: classes3.dex */
public class AgentUsecaseStep extends Step implements FetchUsecaseCallback {

    @Inject
    AnalyticsAgentSessionRepository analyticsAgentSessionRepository;
    final Config config;
    private final String usecaseId;

    private AgentUsecaseStep(Config config, String str) {
        SDKInjector.getSdkInjector().inject(this);
        this.config = config;
        this.usecaseId = str;
    }

    private void getAnalyticsAgentSession(Session session) {
        FetchAnalyticsAgentSessionKt.getAnalyticsAgentSession(this.analyticsAgentSessionRepository, session, new l0(this, session, 7));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit lambda$getAnalyticsAgentSession$2(Session session) {
        success(ConsentStep.nextStep(session));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFetchUsecaseSuccess$1(Session session, Boolean bool) throws Throwable {
        getAnalyticsAgentSession(session);
    }

    public static AgentUsecaseStep with(GuestReady guestReady) {
        Code code = Universal.agent().code();
        if (code == null || !guestReady.correspondsTo(code)) {
            return null;
        }
        return new AgentUsecaseStep(new Config().role(Session.Role.HOST).code(code).guestReady(guestReady), String.valueOf(guestReady.usecaseId()));
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
    }

    @Override // com.sightcall.universal.agent.FetchUsecaseCallback
    public void onFetchUsecaseError(FetchUsecaseCallback.Error error) {
        unbindService();
        interrupt();
    }

    @Override // com.sightcall.universal.agent.FetchUsecaseCallback
    public void onFetchUsecaseSuccess(FetchUsecaseCallback.Success success) {
        Session session = new Session(this.config, success.usecase());
        LiveTranslationAPI liveTranslationAPI = SDKInjector.getSdkInjector().createReferenceComponent(new Reference.UseCase.LiveTranslation(), LiveTranslationAPI.Role.Host, new LiveTranslationAPI.LocaleLanguage(Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry()), session.environment().baseUrl()).getLiveTranslationAPI();
        if (liveTranslationAPI.getEnabled()) {
            liveTranslationAPI.isReady().filter(new x1(18)).take(1L).subscribe(new p3(this, session, 1));
        } else {
            getAnalyticsAgentSession(session);
        }
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onServiceConnected(ScenarioService scenarioService) {
        super.onServiceConnected(scenarioService);
        Universal.agent().fetchUsecase(this.usecaseId, this);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onUnbind() {
    }

    @Override // com.sightcall.universal.scenario.Step
    public void run() {
        if (!networkExpected()) {
            failure(new Step[0]);
        } else if (Universal.agent().get() == null) {
            failure(new Step[0]);
        } else {
            bindService();
        }
    }
}
