package com.sightcall.universal.scenario.steps;

import com.sightcall.session.Reference;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Usecase;
import com.sightcall.universal.consent.ConsentRequestEvent;
import com.sightcall.universal.consent.ConsentResultEvent;
import com.sightcall.universal.internal.report.di.CaseReportComponentKt;
import com.sightcall.universal.model.Session;
import com.sightcall.universal.scenario.Scenario;
import com.sightcall.universal.scenario.Step;
import defpackage.mt;
import net.rtccloud.sdk.Rtcc;
import net.rtccloud.sdk.event.Event;

/* JADX INFO: loaded from: classes3.dex */
public class ConsentStep extends Step implements Step.WithSession {
    private final Reference.UseCase.Consent consent;
    private final Session session;

    private ConsentStep(Session session, Reference.UseCase.Consent consent) {
        this.session = session;
        this.consent = consent;
    }

    public static Step nextStep(Session session) {
        Usecase usecase = session.usecase;
        if (session.config.role() == Session.Role.HOST) {
            return DisplayNameStep.nextStep(session);
        }
        Reference.UseCase.Consent consent = usecase.guest().consent;
        return (consent == null || session.config.ignoreConsent()) ? DisplayNameStep.nextStep(session) : new ConsentStep(session, consent);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onBind(Scenario scenario) {
        Universal.register(this);
    }

    @Event
    public void onConsentResultEvent(ConsentResultEvent consentResultEvent) {
        Session session = this.session;
        Usecase usecase = session.usecase;
        if (session.config.role() == Session.Role.HOST) {
            mt.i("Agent Consent Result");
            return;
        }
        Reference.UseCase.Consent consent = usecase.guest().consent;
        Reference.UseCase.Consent consent2 = consentResultEvent.consent();
        if (consent == null || consent != consent2) {
            Universal.logger().e("Consent not matching with current configuration");
            return;
        }
        CaseReportComponentKt.getCaseReportComponent().getCaseReportRepository().onConsentAction(this.session, consent2);
        Reference.UseCase.Consent.Status status = consent2.status;
        if (status == Reference.UseCase.Consent.Status.Accepted.INSTANCE) {
            Universal.logger().i("Consent accepted");
            success(DisplayNameStep.nextStep(this.session));
        } else if (status == Reference.UseCase.Consent.Status.Refused.INSTANCE) {
            unbindService();
            failure("Consent refused");
        }
    }

    @Override // com.sightcall.universal.scenario.Step
    public void onUnbind() {
        Universal.unregister(this);
    }

    @Override // com.sightcall.universal.scenario.Step
    public void run() {
        bindService();
        Rtcc.instance().bus().post(new ConsentRequestEvent(this.consent));
    }

    @Override // com.sightcall.universal.scenario.Step.WithSession
    public Session session() {
        return this.session;
    }
}
