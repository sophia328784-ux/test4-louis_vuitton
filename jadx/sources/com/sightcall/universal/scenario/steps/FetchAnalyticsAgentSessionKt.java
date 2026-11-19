package com.sightcall.universal.scenario.steps;

import com.sightcall.analyticsagentsession.AnalyticsAgentSession;
import com.sightcall.analyticsagentsession.AnalyticsAgentSessionRepository;
import com.sightcall.pratik.Result;
import com.sightcall.pratik.logs.Logger;
import com.sightcall.universal.Universal;
import com.sightcall.universal.agent.Agent;
import com.sightcall.universal.model.Session;
import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.rtccloud.sdk.Rtcc;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a$\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007¨\u0006\b"}, d2 = {"getAnalyticsAgentSession", "", "analyticsAgentSessionRepository", "Lcom/sightcall/analyticsagentsession/AnalyticsAgentSessionRepository;", "session", "Lcom/sightcall/universal/model/Session;", "next", "Lkotlin/Function0;", "sdk_installedRelease"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class FetchAnalyticsAgentSessionKt {

    /* JADX INFO: renamed from: com.sightcall.universal.scenario.steps.FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.sightcall.universal.scenario.steps.FetchAnalyticsAgentSessionKt$getAnalyticsAgentSession$1", f = "FetchAnalyticsAgentSession.kt", l = {19}, m = "invokeSuspend", v = 2)
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ AnalyticsAgentSessionRepository $analyticsAgentSessionRepository;
        final /* synthetic */ Function0<Unit> $next;
        final /* synthetic */ Session $session;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(AnalyticsAgentSessionRepository analyticsAgentSessionRepository, Session session, Function0<Unit> function0, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$analyticsAgentSessionRepository = analyticsAgentSessionRepository;
            this.$session = session;
            this.$next = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$analyticsAgentSessionRepository, this.$session, this.$next, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.label;
            if (i2 == 0) {
                ResultKt.b(obj);
                AnalyticsAgentSessionRepository analyticsAgentSessionRepository = this.$analyticsAgentSessionRepository;
                Agent agent = Universal.agent().get();
                String str = agent != null ? agent.token() : null;
                str.getClass();
                String strCaseReportId = this.$session.caseReportId();
                strCaseReportId.getClass();
                this.label = 1;
                obj = analyticsAgentSessionRepository.getAgentSession(str, strCaseReportId, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i2 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            Result result = (Result) obj;
            if (result instanceof Result.Error) {
                Logger.INSTANCE.getTag();
            } else {
                if (!(result instanceof Result.Success)) {
                    v40.g();
                    return null;
                }
                Result.Success success = (Result.Success) result;
                Rtcc.instance().setupAnalytics(((AnalyticsAgentSession) success.getSuccess()).getUploadUrl(), ((AnalyticsAgentSession) success.getSuccess()).getToken());
            }
            this.$next.mo47invoke();
            return Unit.f71739a;
        }
    }

    public static final void getAnalyticsAgentSession(AnalyticsAgentSessionRepository analyticsAgentSessionRepository, Session session, Function0<Unit> function0) {
        analyticsAgentSessionRepository.getClass();
        session.getClass();
        function0.getClass();
        DefaultScheduler defaultScheduler = Dispatchers.f74659a;
        BuildersKt.c(CoroutineScopeKt.a(DefaultIoScheduler.f75161b), null, null, new AnonymousClass1(analyticsAgentSessionRepository, session, function0, null), 3);
    }
}
