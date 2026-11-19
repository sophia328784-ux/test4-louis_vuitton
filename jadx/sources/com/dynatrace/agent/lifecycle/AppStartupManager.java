package com.dynatrace.agent.lifecycle;

import com.dynatrace.agent.OneAgentStartupEventDispatcher;
import com.dynatrace.agent.common.time.TimeProvider;
import com.dynatrace.agent.di.SessionInformationProvider;
import com.dynatrace.agent.lifecycle.model.AppStartupInstant;
import com.dynatrace.agent.lifecycle.model.AppStartupInstantType;
import com.dynatrace.agent.lifecycle.model.AppStartupType;
import com.dynatrace.agent.lifecycle.model.VisibilityStatus;
import com.dynatrace.agent.lifecycle.util.AppStartupLogger;
import com.dynatrace.agent.useraction.UserActionController;
import com.dynatrace.agent.view.NavigationEvent;
import com.dynatrace.agent.view.NavigationTracker;
import com.dynatrace.android.agent.util.Utility;
import defpackage.cj;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b \u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/dynatrace/agent/lifecycle/AppStartupManager;", "", "Lcom/dynatrace/agent/common/time/TimeProvider;", "timeProvider", "Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;", "appStartupLogger", "Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;", "rumEventDispatcher", "Lcom/dynatrace/agent/di/SessionInformationProvider;", "sessionInformationProvider", "Lcom/dynatrace/agent/view/NavigationTracker;", "navigationTracker", "Lkotlin/Function0;", "Lcom/dynatrace/agent/lifecycle/model/VisibilityStatus;", "visibilityStatusProvider", "Lcom/dynatrace/agent/lifecycle/NewUserChecker;", "newUserChecker", "Lcom/dynatrace/agent/useraction/UserActionController;", "userActionController", "<init>", "(Lcom/dynatrace/agent/common/time/TimeProvider;Lcom/dynatrace/agent/lifecycle/util/AppStartupLogger;Lcom/dynatrace/agent/OneAgentStartupEventDispatcher;Lcom/dynatrace/agent/di/SessionInformationProvider;Lcom/dynatrace/agent/view/NavigationTracker;Lkotlin/jvm/functions/Function0;Lcom/dynatrace/agent/lifecycle/NewUserChecker;Lcom/dynatrace/agent/useraction/UserActionController;)V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public abstract class AppStartupManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TimeProvider f26824a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AppStartupLogger f26825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final OneAgentStartupEventDispatcher f26826c;
    public final SessionInformationProvider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final NavigationTracker f26827e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Function0 f26828f;
    public final NewUserChecker g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final UserActionController f26829h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ArrayList f26830i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile boolean f26831j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public volatile NavigationEvent f26832k;

    @Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f26833a;

        static {
            int[] iArr = new int[AppStartupInstantType.values().length];
            try {
                iArr[AppStartupInstantType.APPLICATION_CREATE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AppStartupInstantType.ACTIVITY_CREATE_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AppStartupInstantType.ACTIVITY_START_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f26833a = iArr;
        }
    }

    public AppStartupManager(TimeProvider timeProvider, AppStartupLogger appStartupLogger, OneAgentStartupEventDispatcher oneAgentStartupEventDispatcher, SessionInformationProvider sessionInformationProvider, NavigationTracker navigationTracker, Function0<? extends VisibilityStatus> function0, NewUserChecker newUserChecker, UserActionController userActionController) {
        timeProvider.getClass();
        appStartupLogger.getClass();
        oneAgentStartupEventDispatcher.getClass();
        sessionInformationProvider.getClass();
        navigationTracker.getClass();
        function0.getClass();
        newUserChecker.getClass();
        userActionController.getClass();
        this.f26824a = timeProvider;
        this.f26825b = appStartupLogger;
        this.f26826c = oneAgentStartupEventDispatcher;
        this.d = sessionInformationProvider;
        this.f26827e = navigationTracker;
        this.f26828f = function0;
        this.g = newUserChecker;
        this.f26829h = userActionController;
        this.f26830i = new ArrayList();
    }

    public final void a(AppStartupInstant appStartupInstant) {
        if (!this.f26830i.isEmpty() && ((AppStartupInstant) CollectionsKt.M(this.f26830i)).f26862a.ordinal() + 1 != appStartupInstant.f26862a.ordinal()) {
            AppStartupType appStartupTypeB = b();
            if (appStartupTypeB != null) {
                this.f26825b.getClass();
                Utility.b("App startup type " + appStartupTypeB.name() + " was not finished");
            }
            this.f26830i.clear();
            this.f26832k = null;
        }
        this.f26830i.add(appStartupInstant);
    }

    public final AppStartupType b() {
        int i2 = WhenMappings.f26833a[((AppStartupInstant) CollectionsKt.B(this.f26830i)).f26862a.ordinal()];
        if (i2 == 1) {
            return AppStartupType.COLD;
        }
        if (i2 == 2) {
            return AppStartupType.WARM;
        }
        if (i2 != 3) {
            return null;
        }
        return AppStartupType.HOT;
    }

    public final void c() {
        AppStartupType appStartupTypeB = b();
        if (appStartupTypeB == null) {
            return;
        }
        ArrayList arrayList = this.f26830i;
        AppStartupInstant appStartupInstant = (AppStartupInstant) cj.c(2, arrayList);
        AppStartupInstant appStartupInstant2 = (AppStartupInstant) CollectionsKt.M(arrayList);
        this.f26825b.getClass();
        appStartupInstant.getClass();
        appStartupInstant2.getClass();
        Utility.b("App startup type " + appStartupTypeB.name() + " phase between " + appStartupInstant.f26862a.name() + " and " + appStartupInstant2.f26862a.name() + '[' + AppStartupLogger.a(appStartupInstant.f26863b) + "] -> [" + AppStartupLogger.a(appStartupInstant2.f26863b) + ']');
    }

    public abstract void d(AppStartupInstantType appStartupInstantType);
}
