package com.dynatrace.agent.lifecycle;

import com.dynatrace.agent.OneAgentStartupEventDispatcher;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.events.enrichment.JsonObjectExtensionsKt;
import com.dynatrace.agent.lifecycle.model.AppStartupInstant;
import com.dynatrace.agent.lifecycle.model.AppStartupInstantType;
import com.dynatrace.agent.lifecycle.model.AppStartupType;
import com.dynatrace.agent.lifecycle.model.VisibilityStatus;
import com.dynatrace.agent.lifecycle.util.AppStartupLogger;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.useraction.SignificantEvent;
import com.dynatrace.agent.useraction.UserActionController;
import com.dynatrace.agent.view.NavigationEvent;
import com.dynatrace.agent.view.NavigationTracker;
import com.dynatrace.android.agent.util.Utility;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/dynatrace/agent/lifecycle/AppStartupManagerImpl;", "Lcom/dynatrace/agent/lifecycle/AppStartupManager;", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;", "appStartupLogger", "Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;", "rumEventDispatcher", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/view/NavigationTracker;", "navigationTracker", "Lkotlin/Function0;", "Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;", "visibilityStatusProvider", "Lcom/dynatrace/agent/lifecycle/NewUserChecker;", "newUserChecker", "Lcom/dynatrace/agent/useraction/UserActionController;", "userActionController", "<init>", "(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lkotlin/jvm/functions/Function0;Lcom/dynatrace/agent/lifecycle/NewUserChecker;Lcom/dynatrace/agent/useraction/UserActionController;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AppStartupManagerImpl extends AppStartupManager {

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f26834a;

        static {
            int[] iArr = new int[AppStartupInstantType.values().length];
            try {
                iArr[AppStartupInstantType.APPLICATION_CREATE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AppStartupInstantType.APPLICATION_CREATE_END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AppStartupInstantType.ACTIVITY_CREATE_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AppStartupInstantType.ACTIVITY_CREATE_END.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[AppStartupInstantType.ACTIVITY_START_START.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[AppStartupInstantType.ACTIVITY_START_END.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[AppStartupInstantType.ACTIVITY_RESUME_START.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[AppStartupInstantType.ACTIVITY_RESUME_END.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            f26834a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppStartupManagerImpl(TimeProvider timeProvider, AppStartupLogger appStartupLogger, OneAgentStartupEventDispatcher oneAgentStartupEventDispatcher, SessionInformationProvider sessionInformationProvider, NavigationTracker navigationTracker, Function0<? extends VisibilityStatus> function0, NewUserChecker newUserChecker, UserActionController userActionController) {
        super(timeProvider, appStartupLogger, oneAgentStartupEventDispatcher, sessionInformationProvider, navigationTracker, function0, newUserChecker, userActionController);
        timeProvider.getClass();
        appStartupLogger.getClass();
        oneAgentStartupEventDispatcher.getClass();
        sessionInformationProvider.getClass();
        navigationTracker.getClass();
        function0.getClass();
        newUserChecker.getClass();
        userActionController.getClass();
    }

    @Override // com.dynatrace.agent.lifecycle.AppStartupManager
    public final void d(AppStartupInstantType appStartupInstantType) throws JSONException {
        JSONObject jSONObjectA;
        appStartupInstantType.getClass();
        if (this.f26828f.mo47invoke() == VisibilityStatus.BACKGROUND) {
            this.f26831j = true;
        }
        if (this.f26831j) {
            long jA = this.f26824a.a();
            switch (WhenMappings.f26834a[appStartupInstantType.ordinal()]) {
                case 1:
                    a(new AppStartupInstant(AppStartupInstantType.APPLICATION_CREATE_START, jA));
                    break;
                case 2:
                    break;
                case 3:
                    if (!this.f26830i.isEmpty() && ((AppStartupInstant) CollectionsKt.M(this.f26830i)).f26862a == AppStartupInstantType.APPLICATION_CREATE_START) {
                        a(new AppStartupInstant(AppStartupInstantType.APPLICATION_CREATE_END, jA));
                        c();
                    }
                    a(new AppStartupInstant(AppStartupInstantType.ACTIVITY_CREATE_START, jA));
                    break;
                case 4:
                    a(new AppStartupInstant(AppStartupInstantType.ACTIVITY_CREATE_END, jA));
                    c();
                    break;
                case 5:
                    a(new AppStartupInstant(AppStartupInstantType.ACTIVITY_START_START, jA));
                    break;
                case 6:
                    a(new AppStartupInstant(AppStartupInstantType.ACTIVITY_START_END, jA));
                    c();
                    break;
                case 7:
                    a(new AppStartupInstant(AppStartupInstantType.ACTIVITY_RESUME_START, jA));
                    break;
                case 8:
                    a(new AppStartupInstant(AppStartupInstantType.ACTIVITY_RESUME_END, jA));
                    c();
                    this.f26831j = false;
                    SessionInformationMetrics sessionInformationMetricsA = this.d.a();
                    if (!sessionInformationMetricsA.f26885c) {
                        Utility.b("startup event cannot be tracked, isGrailEventsCanBeCaptured == false");
                        this.f26832k = null;
                        this.f26830i.clear();
                    } else if (sessionInformationMetricsA.f26886e) {
                        AppStartupType appStartupTypeB = b();
                        if (appStartupTypeB != null) {
                            long j2 = ((AppStartupInstant) CollectionsKt.B(this.f26830i)).f26863b;
                            long j3 = ((AppStartupInstant) CollectionsKt.M(this.f26830i)).f26863b;
                            this.f26825b.getClass();
                            StringBuilder sb = new StringBuilder("App startup type ");
                            sb.append(appStartupTypeB.name());
                            sb.append(" duration: ");
                            long j4 = j3 - j2;
                            sb.append(j4);
                            sb.append(" ms");
                            Utility.b(sb.toString());
                            JSONObject jSONObject = new JSONObject();
                            jSONObject.put("characteristics.has_app_start", true);
                            jSONObject.put("app_start.type", appStartupTypeB.getValue());
                            for (AppStartupInstant appStartupInstant : this.f26830i) {
                                jSONObject.put("app_start." + appStartupInstant.f26862a.getValue(), appStartupInstant.f26863b - j2);
                            }
                            jSONObject.put("app_start.start_time", 0);
                            jSONObject.put("app_start.end_time", j4);
                            jSONObject.put("characteristics.has_visibility_change", true);
                            jSONObject.put("visibility.state", VisibilityStatus.FOREGROUND.getKeyValue());
                            if (appStartupTypeB == AppStartupType.COLD && this.g.a()) {
                                jSONObject.put("characteristics.is_new_user", true);
                            }
                            NavigationEvent navigationEvent = this.f26832k;
                            if (navigationEvent == null) {
                                jSONObjectA = new JSONObject();
                            } else {
                                this.f26829h.c(SignificantEvent.Navigation.f27070a);
                                navigationEvent.g = true;
                                jSONObjectA = navigationEvent.a();
                                if (jSONObjectA == null) {
                                    jSONObjectA = new JSONObject();
                                }
                                this.f26832k = null;
                            }
                            JsonObjectExtensionsKt.f(jSONObject, jSONObjectA, CollectionsKt.P("start_time", "duration"));
                            this.f26826c.a(jSONObject, j2, j4, sessionInformationMetricsA);
                        }
                        this.f26830i.clear();
                    } else {
                        Utility.b("startup event cannot be tracked, session is disabled");
                        this.f26832k = null;
                        this.f26830i.clear();
                    }
                    break;
                default:
                    v40.g();
                    return;
            }
            if (this.f26830i.size() == 1) {
                this.f26832k = this.f26827e.a(null, null, null, false);
                AppStartupType appStartupTypeB2 = b();
                if (appStartupTypeB2 != null) {
                    AppStartupLogger appStartupLogger = this.f26825b;
                    long j5 = ((AppStartupInstant) CollectionsKt.B(this.f26830i)).f26863b;
                    appStartupLogger.getClass();
                    Utility.b("App startup type " + appStartupTypeB2.name() + " begin at " + AppStartupLogger.a(j5));
                }
            }
        }
    }
}
