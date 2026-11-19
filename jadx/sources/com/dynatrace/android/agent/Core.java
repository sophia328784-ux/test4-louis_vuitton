package com.dynatrace.android.agent;

import android.app.Application;
import android.content.SharedPreferences;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import com.batch.android.b.b;
import com.dynatrace.agent.OneAgentFacade;
import com.dynatrace.agent.OneAgentStartup;
import com.dynatrace.agent.common.InstrumentationFlavor;
import com.dynatrace.agent.di.CoreComponent;
import com.dynatrace.agent.events.EventThrottler;
import com.dynatrace.agent.events.TracestateHeader;
import com.dynatrace.agent.metrics.AppVersion;
import com.dynatrace.agent.metrics.MetricsRepository;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.storage.preference.MetricsData;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.comm.CommHandler;
import com.dynatrace.android.agent.comm.InvalidConfigurationException;
import com.dynatrace.android.agent.comm.RequestExecutor;
import com.dynatrace.android.agent.communication.CommunicationManagerBridge;
import com.dynatrace.android.agent.conf.Configuration;
import com.dynatrace.android.agent.conf.ConfigurationPublisher;
import com.dynatrace.android.agent.conf.DataCollectionLevel;
import com.dynatrace.android.agent.conf.InitialServerIdProvider;
import com.dynatrace.android.agent.conf.PreferencesManager;
import com.dynatrace.android.agent.conf.PrivacyRules;
import com.dynatrace.android.agent.conf.ServerConfiguration;
import com.dynatrace.android.agent.conf.ServerConfigurationManager;
import com.dynatrace.android.agent.conf.UserPrivacyOptions;
import com.dynatrace.android.agent.crash.CrashCatcher;
import com.dynatrace.android.agent.data.CrossPlatformScreenshotStore;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.data.SessionParameterStore;
import com.dynatrace.android.agent.data.SessionParameterUtil;
import com.dynatrace.android.agent.db.DataAccessObject;
import com.dynatrace.android.agent.db.DatabaseWriteQueue;
import com.dynatrace.android.agent.events.eventsapi.format.SessionIdFormatter;
import com.dynatrace.android.agent.events.lifecycle.AppStartActionObserverImpl;
import com.dynatrace.android.agent.events.lifecycle.FinishedActionObserver;
import com.dynatrace.android.agent.events.lifecycle.StoreActionObserver;
import com.dynatrace.android.agent.events.ragetap.RageTapObserver;
import com.dynatrace.android.agent.lifecycle.OneAgentLifecycleManagerBridge;
import com.dynatrace.android.agent.measurement.MeasurementProviderImpl;
import com.dynatrace.android.agent.metrics.AndroidMetrics;
import com.dynatrace.android.agent.metrics.ConnectionType;
import com.dynatrace.android.agent.mixed.AgentServiceLocatorImpl;
import com.dynatrace.android.agent.mixed.SessionInformationGenerator;
import com.dynatrace.android.agent.mixed.TimeProviderFactory;
import com.dynatrace.android.agent.useraction.OneAgentUserInteractionManagerBridge;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.internal.api.SelfMonitoring;
import com.dynatrace.android.lifecycle.ActivityLifecycleMonitor;
import com.dynatrace.android.lifecycle.LifecycleController;
import com.dynatrace.android.lifecycle.action.LifecycleActionFactoryImpl;
import com.dynatrace.android.lifecycle.activitytracking.ActiveActivityMonitor;
import com.dynatrace.android.lifecycle.activitytracking.ActiveActivityTracker;
import com.dynatrace.android.lifecycle.activitytracking.ActivityScreenMetricsCollector;
import com.dynatrace.android.lifecycle.activitytracking.metrics.ScreenMetrics;
import com.dynatrace.android.lifecycle.appstart.ActivityStateListener;
import com.dynatrace.android.lifecycle.appstart.AppStartController;
import com.dynatrace.android.lifecycle.appstart.ApplicationStartMonitor;
import com.dynatrace.android.lifecycle.appstate.ApplicationStateMonitor;
import com.dynatrace.android.lifecycle.appstate.ApplicationStateTracker;
import com.dynatrace.android.lifecycle.callback.ActivityComponentIdentifier;
import com.dynatrace.android.lifecycle.callback.ActivityLifecycleListener;
import com.dynatrace.android.ragetap.detection.RageTapDetector;
import com.dynatrace.android.ragetap.detection.RageTapRules;
import com.dynatrace.android.ragetap.measure.TapMonitorFactory;
import com.dynatrace.android.useraction.ActionAggregatorImpl;
import com.dynatrace.android.useraction.AppStartAggregatorImpl;
import com.dynatrace.android.useraction.LoadingActionNameGenerator;
import com.dynatrace.android.window.ActivityWindowTracker;
import com.dynatrace.android.window.OnTouchEventListener;
import com.dynatrace.android.window.WindowCallbackInstrumentation;
import com.dynatrace.android.window.WindowCallbackMonitor;
import com.dynatrace.android.window.WindowListenerFactory;
import com.linkplay.medialib.ContentTree;
import defpackage.fc;
import defpackage.n00;
import defpackage.wp;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Vector;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public final class Core {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ActivityLifecycleMonitor f27280a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final ApplicationStartMonitor f27281b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final ApplicationStateMonitor f27282c;
    public static final ActiveActivityMonitor d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final WindowCallbackMonitor f27283e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ConfigurationPublisher f27284f;
    public static DataAccessObject g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static BasicSegment f27285h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static long f27286i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final CalloutTable f27287j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final CommunicationManager f27288k;
    public static OneAgentFacade l;
    public static final AtomicBoolean m;
    public static final AdkSettings n;
    public static final CrashReporter o;
    public static RageTapDetector p;
    public static CommunicationManagerBridge q;
    public static OneAgentLifecycleManagerBridge r;
    public static OneAgentUserInteractionManagerBridge s;
    public static OneAgentStartup t;
    public static AgentServiceLocatorImpl u;
    public static EventThrottler v;
    public static SessionParameterStore w;
    public static CrossPlatformScreenshotStore x;

    /* JADX INFO: renamed from: com.dynatrace.android.agent.Core$1, reason: invalid class name */
    class AnonymousClass1 implements EventThrottler.SummaryReceiver {
        @Override // com.dynatrace.agent.events.EventThrottler.SummaryReceiver
        public final void a(String str) {
            SelfMonitoring.a("EventThrottlingInvalidEventType", str);
        }

        @Override // com.dynatrace.agent.events.EventThrottler.SummaryReceiver
        public final void b(String str) {
            SelfMonitoring.a("EventThrottling", str);
        }
    }

    /* JADX INFO: renamed from: com.dynatrace.android.agent.Core$2, reason: invalid class name */
    class AnonymousClass2 implements WindowListenerFactory {
        @Override // com.dynatrace.android.window.WindowListenerFactory
        public final OnTouchEventListener a(Window window) {
            final View rootView = window.getDecorView().getRootView();
            return new OnTouchEventListener() { // from class: kq
                @Override // com.dynatrace.android.window.OnTouchEventListener
                public final void a(MotionEvent motionEvent) {
                    Core.s.a(rootView, motionEvent);
                }
            };
        }
    }

    static {
        boolean z = Global.f27307a;
        f27280a = new ActivityLifecycleMonitor();
        f27281b = new ApplicationStartMonitor();
        f27282c = new ApplicationStateMonitor();
        d = new ActiveActivityMonitor();
        f27283e = new WindowCallbackMonitor();
        f27284f = new ConfigurationPublisher();
        f27285h = null;
        f27286i = 12L;
        CalloutTable calloutTable = new CalloutTable(12);
        f27287j = calloutTable;
        CommunicationManager communicationManager = new CommunicationManager(calloutTable);
        f27288k = communicationManager;
        l = null;
        m = new AtomicBoolean(true);
        n = AdkSettings.f27249k;
        o = new CrashReporter(communicationManager);
        p = null;
        q = null;
        r = null;
        s = null;
        t = null;
        u = null;
        v = null;
        w = null;
        x = null;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static CustomSegment a(String str, int i2, long j2, DTXActionImpl dTXActionImpl, Session session, int i3, String... strArr) {
        DTXActionImpl dTXActionImpl2 = dTXActionImpl;
        if (Global.f27307a) {
            Utility.n("Handle event name=" + str + " type=" + i2);
        }
        long j3 = j2 < 0 ? 0L : j2;
        CalloutTable calloutTable = f27287j;
        CustomSegment customSegment = dTXActionImpl2;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 == 4) {
                    if (str != null && !str.isEmpty()) {
                        CustomSegment customSegment2 = new CustomSegment(str, 4, EventType.NAMED_EVENT, j3, session, i3, true);
                        calloutTable.b();
                        customSegment = customSegment2;
                    }
                    customSegment = dTXActionImpl2;
                    customSegment = dTXActionImpl2;
                    return null;
                }
                if (i2 == 20) {
                    if (str != null && !str.isEmpty()) {
                        customSegment = dTXActionImpl2;
                        ErrorSegment errorSegment = new ErrorSegment(str, strArr[0], strArr[1], strArr[2], j3, session, i3, strArr[3], true);
                        calloutTable.b();
                        customSegment = errorSegment;
                    }
                    customSegment = dTXActionImpl2;
                    customSegment = dTXActionImpl2;
                    return null;
                }
                if (i2 == 21) {
                    if (str != null && !str.isEmpty()) {
                        CrashSegment crashSegment = new CrashSegment(str, strArr[0], strArr[1], session, i3, strArr[2], true);
                        calloutTable.b();
                        CrashCatcher.b(strArr[2], str, strArr[0], strArr[1]);
                        customSegment = crashSegment;
                    }
                    customSegment = dTXActionImpl2;
                    customSegment = dTXActionImpl2;
                    return null;
                }
                customSegment = dTXActionImpl2;
                switch (i2) {
                    case 6:
                        if (str != null && !str.isEmpty()) {
                            CustomSegment customSegment3 = new CustomSegment(str, 6, EventType.VALUE_INT64, j3, session, i3, true);
                            customSegment3.f27292a = Utility.k(250, strArr[0]);
                            calloutTable.b();
                            customSegment = customSegment3;
                            break;
                        }
                        customSegment = dTXActionImpl2;
                        customSegment = dTXActionImpl2;
                        return null;
                    case 7:
                        if (str != null && !str.isEmpty()) {
                            CustomSegment customSegment4 = new CustomSegment(str, 6, EventType.VALUE_DOUBLE, j3, session, i3, true);
                            customSegment4.f27292a = Utility.k(250, strArr[0]);
                            calloutTable.b();
                            customSegment = customSegment4;
                            break;
                        }
                        customSegment = dTXActionImpl2;
                        customSegment = dTXActionImpl2;
                        return null;
                    case 8:
                        if (str != null && !str.isEmpty()) {
                            CustomSegment customSegment5 = new CustomSegment(str, 6, EventType.VALUE_STRING, j3, session, i3, true);
                            customSegment5.f27292a = Utility.k(250, strArr[0]);
                            calloutTable.b();
                            customSegment = customSegment5;
                            break;
                        }
                        customSegment = dTXActionImpl2;
                        customSegment = dTXActionImpl2;
                        return null;
                    case 9:
                        if (str != null && !str.isEmpty()) {
                            CustomSegment customSegment6 = new CustomSegment(str, 6, EventType.ERROR_INT, j3, session, i3, true ^ session.f27483k);
                            customSegment6.f27292a = Utility.k(250, strArr[0]);
                            calloutTable.b();
                            customSegment = customSegment6;
                            break;
                        }
                        customSegment = dTXActionImpl2;
                        customSegment = dTXActionImpl2;
                        return null;
                    case 10:
                        if (str != null && !str.isEmpty()) {
                            ErrorSegment errorSegment2 = new ErrorSegment(str, strArr[0], strArr[1], strArr[2], j3, session, i3, strArr[3], !session.f27483k);
                            calloutTable.b();
                            customSegment = errorSegment2;
                            break;
                        }
                        customSegment = dTXActionImpl2;
                        customSegment = dTXActionImpl2;
                        return null;
                    case 11:
                        if (str != null && !str.isEmpty()) {
                            CrashSegment crashSegment2 = new CrashSegment(str, strArr[0], strArr[1], session, i3, strArr[2], !session.f27483k);
                            calloutTable.b();
                            CrashCatcher.b(strArr[2], str, strArr[0], strArr[1]);
                            customSegment = crashSegment2;
                            break;
                        }
                        customSegment = dTXActionImpl2;
                        customSegment = dTXActionImpl2;
                        return null;
                    case 12:
                        CustomSegment customSegment7 = new CustomSegment(str, 12, EventType.IDENTIFY_USER, j3, session, i3, true ^ session.f27483k);
                        calloutTable.b();
                        customSegment = customSegment7;
                        break;
                    default:
                        if (Global.f27307a) {
                            Utility.n(String.format("addEvent invalid type: %d", Integer.valueOf(i2)));
                        }
                        customSegment = null;
                        break;
                }
            } else if (dTXActionImpl2 != null) {
                dTXActionImpl2.m();
                customSegment = dTXActionImpl2;
            }
        } else if (dTXActionImpl2 != null) {
            calloutTable.a(dTXActionImpl2);
            customSegment = dTXActionImpl2;
        }
        g(customSegment, i2);
        return customSegment;
    }

    public static void b(ServerConfiguration serverConfiguration) {
        AdkSettings adkSettings = n;
        adkSettings.getClass();
        if (Global.f27307a) {
            Utility.n("switching settings: " + serverConfiguration);
        }
        adkSettings.g = serverConfiguration;
        long j2 = (serverConfiguration.d + 9) / 10;
        f27286i = j2;
        f27287j.c(j2);
        if (Global.f27307a) {
            Utility.n("Send event timeout set to: " + j2 + " ticks");
        }
        if (serverConfiguration.m) {
            int i2 = serverConfiguration.l;
            AdkSettings.f27249k.f27252c = i2;
            CommunicationManagerBridge communicationManagerBridge = q;
            if (communicationManagerBridge != null) {
                communicationManagerBridge.b(i2);
            }
        }
        Session session = Session.n;
        if (session != null) {
            session.l = serverConfiguration.f27415i;
        }
    }

    public static void c(ConfigurationPublisher.ConfigurationUpdate.Builder builder, SessionInformationMetrics sessionInformationMetrics, Session session, boolean z) {
        UserPrivacyOptions userPrivacyOptions = session.f27481i.f27384a;
        int iA = userPrivacyOptions.f27436a.a();
        boolean z2 = userPrivacyOptions.f27437b;
        boolean z3 = f27288k.f27270k.get();
        String str = AdkSettings.f27249k.f27254f.f27339a;
        builder.f27369a = z;
        String str2 = sessionInformationMetrics.f26883a;
        str2.getClass();
        builder.d = str2;
        String str3 = sessionInformationMetrics.f26884b;
        str3.getClass();
        builder.f27372e = str3;
        str.getClass();
        builder.f27373f = str;
        builder.g = iA;
        builder.f27374h = z2;
        builder.f27376j = z3;
    }

    public static void d() {
        if (g == null) {
            return;
        }
        DatabaseWriteQueue.getInstance().flushQueue();
        f27287j.d();
        CommunicationManager communicationManager = f27288k;
        if (communicationManager.v) {
            Utility.b("cannot flush events while still waiting for BPv4 configuration");
            return;
        }
        synchronized (communicationManager.l) {
            communicationManager.f27269j.set(true);
            communicationManager.l.notify();
        }
    }

    public static void e(String str) {
        ArrayList arrayList;
        Vector vector;
        if (Global.f27307a) {
            Utility.n(Thread.currentThread().getName() + " ... force closed actions due to " + str);
        }
        ThreadLocal threadLocal = ActionThreadLocal.f27245a;
        synchronized (ActionThreadLocal.class) {
            try {
                ThreadLocal threadLocal2 = ActionThreadLocal.f27245a;
                synchronized (threadLocal2) {
                    vector = new Vector((Collection) threadLocal2.get());
                }
                for (int i2 = 0; i2 < vector.size(); i2++) {
                    DTXActionImpl dTXActionImpl = (DTXActionImpl) vector.get(i2);
                    if (dTXActionImpl != null && !dTXActionImpl.f27295e) {
                        dTXActionImpl.a();
                    }
                }
            } catch (Exception unused) {
                if (Global.f27307a) {
                    Utility.g();
                }
            }
        }
        String str2 = DTXAutoAction.J;
        synchronized (DTXAutoAction.class) {
            DTXAutoAction dTXAutoAction = DTXAutoAction.N;
            DTXAutoAction.N = null;
            if (dTXAutoAction != null) {
                DTXAutoAction.O.add(dTXAutoAction);
            }
        }
        List list = DTXAutoAction.O;
        synchronized (list) {
            arrayList = new ArrayList(list);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            try {
                ((DTXAutoAction) it.next()).a();
            } catch (Exception unused2) {
                if (Global.f27307a) {
                    Utility.g();
                }
            }
        }
    }

    public static String f(Session session) {
        String str;
        String str2;
        BasicSegment basicSegment = f27285h;
        StringBuilder sb = new StringBuilder("vv=3&va=8.343.1.1038&ap=");
        ScreenMetrics screenMetrics = basicSegment.f27255a.r;
        sb.append(AdkSettings.f27246h);
        sb.append("&an=");
        sb.append(Utility.m(AdkSettings.f27247i));
        sb.append("&ai=");
        sb.append(Utility.m(AdkSettings.f27248j));
        AppVersion appVersion = basicSegment.f27255a.t;
        if (appVersion == null) {
            sb.append("&vb=0");
        } else {
            sb.append("&vb=");
            sb.append(appVersion.f26864a);
            String str3 = appVersion.f26865b;
            if (str3 != null) {
                String strK = Utility.k(50, str3);
                sb.append("&vn=");
                sb.append(Utility.m(strK));
            }
        }
        sb.append("&vi=");
        sb.append(session.f27476b);
        sb.append("&sn=");
        sb.append(session.f27477c);
        sb.append("&ss=0&rm=");
        sb.append(basicSegment.f27255a.d.intValue());
        String str4 = basicSegment.f27255a.n;
        if (str4 != null && !str4.isEmpty()) {
            sb.append("&cp=");
            sb.append(Utility.m(str4));
        }
        sb.append("&os=");
        sb.append(Utility.m(basicSegment.f27255a.m));
        sb.append("&mf=");
        String str5 = basicSegment.f27255a.f27554e;
        if (str5 == null) {
            str5 = "unknown";
        }
        sb.append(Utility.m(Utility.k(250, str5)));
        sb.append("&md=");
        sb.append(Utility.m(basicSegment.f27255a.q));
        Boolean bool = basicSegment.f27255a.g;
        if (bool != null) {
            sb.append("&rj=");
            sb.append(bool.booleanValue() ? "r" : "g");
        }
        sb.append("&ul=");
        sb.append(basicSegment.f27255a.f27555f);
        if (screenMetrics != null) {
            if (screenMetrics.f27660a > screenMetrics.f27661b) {
                sb.append("&sw=");
                sb.append(screenMetrics.f27661b);
                sb.append("&sh=");
                sb.append(screenMetrics.f27660a);
            } else {
                sb.append("&sw=");
                sb.append(screenMetrics.f27660a);
                sb.append("&sh=");
                sb.append(screenMetrics.f27661b);
            }
            sb.append("&sd=");
            sb.append(screenMetrics.f27662c);
        }
        sb.append("&pt=0");
        int i2 = basicSegment.f27255a.f27559k;
        if (i2 == 2) {
            str = b.d;
        } else {
            str = i2 == 1 ? "p" : null;
        }
        if (str != null) {
            sb.append("&so=");
            sb.append(str);
        }
        if (basicSegment.f27255a.o >= 0) {
            sb.append("&bl=");
            sb.append(basicSegment.f27255a.o);
        }
        if (basicSegment.f27255a.p != null) {
            sb.append("&fm=");
            sb.append(basicSegment.f27255a.p.intValue());
        }
        if (basicSegment.f27255a.f27556h != null) {
            sb.append("&cr=");
            sb.append(Utility.m(basicSegment.f27255a.f27556h));
        }
        if (basicSegment.f27255a.f27557i != ConnectionType.OTHER) {
            sb.append("&ct=");
            sb.append(basicSegment.f27255a.f27557i.a());
            String str6 = basicSegment.f27255a.f27558j;
            if (str6 != null && str6.length() > 0) {
                sb.append("&np=");
                sb.append(Utility.m(basicSegment.f27255a.f27558j));
            }
        }
        PrivacyRules privacyRules = session.f27481i;
        basicSegment.f27255a.getClass();
        sb.append("&tt=maandroid&dl=");
        sb.append(privacyRules.f27384a.f27436a.ordinal());
        sb.append("&cl=");
        UserPrivacyOptions userPrivacyOptions = privacyRules.f27384a;
        if (CrashCatcher.f27442a) {
            str2 = userPrivacyOptions.f27437b ? ContentTree.AUDIO_ID : "1";
        } else {
            str2 = ContentTree.ROOT_ID;
        }
        sb.append(str2);
        sb.append("&fv=");
        sb.append(basicSegment.f27256b.getProtocolValue());
        return sb.toString();
    }

    public static void g(CustomSegment customSegment, int i2) {
        if (customSegment != null) {
            Session session = customSegment.f27297h;
            if (customSegment.f27295e && customSegment.f27296f) {
                if (f27285h != null) {
                    if (session.f27481i.a(customSegment.f27299j)) {
                        EventThrottler eventThrottler = v;
                        if (eventThrottler == null || !eventThrottler.a(customSegment.f27299j.b())) {
                            boolean z = Global.f27307a;
                        } else {
                            String string = customSegment.h().toString();
                            AndroidMetrics androidMetrics = f27285h.f27255a;
                            if (androidMetrics.v.a() - androidMetrics.u > 6000) {
                                androidMetrics.e();
                            }
                            String strF = f(session);
                            boolean z2 = Global.f27307a;
                            DatabaseWriteQueue.getInstance().accept(new DatabaseWriteQueue.DatabaseRecord(strF, string, customSegment.f27297h, customSegment.f27299j.b(), customSegment.f27293b, customSegment.f27298i, AdkSettings.f27246h));
                        }
                    }
                    AtomicInteger atomicInteger = CustomSegment.s;
                    if (atomicInteger.get() == 0) {
                        atomicInteger.set(1);
                    }
                } else {
                    boolean z3 = Global.f27307a;
                }
                if (i2 == 2) {
                    f27287j.e(customSegment);
                }
            }
        }
    }

    public static synchronized void h() {
        try {
            Global.f27308b.set(false);
            SessionParameterStore sessionParameterStore = w;
            if (sessionParameterStore != null) {
                sessionParameterStore.b();
                x.b();
            }
            Application application = (Application) AdkSettings.f27249k.f27253e;
            ApplicationStateMonitor applicationStateMonitor = f27282c;
            ApplicationStateTracker applicationStateTracker = applicationStateMonitor.f27685a;
            if (applicationStateTracker != null) {
                application.unregisterActivityLifecycleCallbacks(applicationStateTracker);
                applicationStateMonitor.f27685a = null;
            }
            ApplicationStartMonitor applicationStartMonitor = f27281b;
            ActivityStateListener activityStateListener = applicationStartMonitor.f27683a;
            if (activityStateListener != null) {
                application.unregisterActivityLifecycleCallbacks(activityStateListener);
                applicationStartMonitor.f27683a = null;
                applicationStartMonitor.f27684b = null;
            }
            OneAgentLifecycleManagerBridge oneAgentLifecycleManagerBridge = r;
            if (oneAgentLifecycleManagerBridge != null) {
                oneAgentLifecycleManagerBridge.b();
            }
            if (u != null) {
                CoreComponent.f26702k.getClass();
                Utility.b("tearDown OneAgent");
                try {
                    CoreComponent coreComponent = CoreComponent.l;
                    if (coreComponent != null) {
                        CoreComponent.a(coreComponent);
                    }
                    CoreComponent.l = null;
                } catch (Exception unused) {
                    CoreComponent.l = null;
                    Utility.a();
                }
            }
            ActivityLifecycleMonitor activityLifecycleMonitor = f27280a;
            ActivityLifecycleListener activityLifecycleListener = activityLifecycleMonitor.f27641a;
            if (activityLifecycleListener != null) {
                application.unregisterActivityLifecycleCallbacks(activityLifecycleListener);
                activityLifecycleMonitor.f27641a = null;
            }
            ActiveActivityMonitor activeActivityMonitor = d;
            ActiveActivityTracker activeActivityTracker = activeActivityMonitor.f27655a;
            if (activeActivityTracker != null) {
                application.unregisterActivityLifecycleCallbacks(activeActivityTracker);
                activeActivityMonitor.f27655a = null;
            }
            WindowCallbackMonitor windowCallbackMonitor = f27283e;
            ActivityWindowTracker activityWindowTracker = windowCallbackMonitor.f27728a;
            if (activityWindowTracker != null) {
                application.unregisterActivityLifecycleCallbacks(activityWindowTracker);
                windowCallbackMonitor.f27728a = null;
            }
            p = null;
            DatabaseWriteQueue.getInstance().stopThread();
            f27288k.g();
            u = null;
            t = null;
            q = null;
            r = null;
            l = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void i(boolean z, PrivacyRules privacyRules, long j2) {
        long jNextInt;
        int i2;
        RageTapDetector rageTapDetector;
        Session session;
        int iIntValue;
        boolean z2;
        boolean z3 = Global.f27307a;
        final int i3 = 0;
        final int i4 = 1;
        if (privacyRules.f27384a.f27436a == DataCollectionLevel.USER_BEHAVIOR) {
            SessionParameterStore sessionParameterStore = w;
            Integer num = sessionParameterStore.f27488c;
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                sessionParameterStore.a();
                Integer num2 = sessionParameterStore.f27488c;
                iIntValue = num2 != null ? num2.intValue() : 0;
            }
            i2 = iIntValue + 1;
            SessionParameterStore sessionParameterStore2 = w;
            Long l2 = sessionParameterStore2.d;
            if (l2 != null) {
                jNextInt = l2.longValue();
            } else {
                sessionParameterStore2.a();
                Long l3 = sessionParameterStore2.d;
                jNextInt = l3 != null ? l3.longValue() : 0L;
            }
            if (jNextInt == 0) {
                SecureRandom secureRandom = SessionParameterUtil.f27506a;
                jNextInt = ((long) (secureRandom.nextInt(65536) + (secureRandom.nextInt(65536) << 8))) + (((long) secureRandom.nextInt(65536)) << 16);
                z2 = true;
            } else {
                z2 = false;
            }
            Session sessionA = Session.a();
            boolean z4 = (sessionA == null || sessionA.f27476b == jNextInt) ? false : true;
            if (z2 || (z && z4)) {
                AdkSettings.f27249k.a(false);
            }
            w.d(i2, jNextInt);
        } else {
            SecureRandom secureRandom2 = SessionParameterUtil.f27506a;
            jNextInt = ((long) (secureRandom2.nextInt(65536) + (secureRandom2.nextInt(65536) << 8))) + (((long) secureRandom2.nextInt(65536)) << 16);
            w.d(0, 0L);
            AdkSettings.f27249k.a(true);
            AndroidMetrics.a().getClass();
            boolean z5 = Global.f27307a;
            if (u != null) {
                CoreComponent.f26702k.getClass();
                CoreComponent coreComponent = CoreComponent.l;
                MetricsRepository metricsRepository = coreComponent != null ? coreComponent.f26706e : null;
                if (metricsRepository != null) {
                    metricsRepository.f26871h = MetricsData.a(metricsRepository.f26871h, 0, 0, 0, 0, null, null, false, null, null, null, false, false, 262095);
                }
            }
            i2 = 1;
        }
        Session sessionA2 = Session.a();
        CrossPlatformScreenshotStore crossPlatformScreenshotStore = x;
        if (crossPlatformScreenshotStore != null) {
            crossPlatformScreenshotStore.a();
            int i5 = crossPlatformScreenshotStore.f27459c.get();
            CrossPlatformScreenshotStore crossPlatformScreenshotStore2 = x;
            crossPlatformScreenshotStore2.a();
            String str = crossPlatformScreenshotStore2.d;
            if (!str.isEmpty() && i5 > 0) {
                Configuration configuration = n.f27254f;
                InstrumentationFlavor instrumentationFlavor = configuration != null ? configuration.u : null;
                if (instrumentationFlavor != null && instrumentationFlavor != InstrumentationFlavor.PLAIN && instrumentationFlavor != InstrumentationFlavor.JETPACK_COMPOSE) {
                    String strR = n00.r(instrumentationFlavor.name().toLowerCase(), "\"}", fc.r(i5, "{\"visitId\":\"", str, "\",\"screenshotCount\":", ",\"technology\":\""));
                    int i6 = SelfMonitoring.f27640a;
                    AdkSettings adkSettings = AdkSettings.f27249k;
                    if (adkSettings.g.f27410b && (session = Session.n) != null && session.f27479f < 20) {
                        int i7 = adkSettings.f27252c;
                        boolean z6 = Global.f27307a;
                        SelfMonitoringSegment selfMonitoringSegment = new SelfMonitoringSegment("CrossPlatformScreenshotCount", strR, session, i7);
                        f27287j.b();
                        g(selfMonitoringSegment, selfMonitoringSegment.p);
                        session.f27479f++;
                    }
                }
            }
        }
        boolean z7 = sessionA2 != null && sessionA2.f27483k;
        final Session sessionH = z ? Session.h(privacyRules, j2) : Session.i(privacyRules);
        sessionH.f27476b = jNextInt;
        sessionH.f27477c = i2;
        if (!z) {
            sessionH.f27481i = privacyRules;
        }
        boolean z8 = sessionH.f27483k;
        if (z7 && !z8) {
            Utility.b("Grail has been turned off for this new session");
            t.a();
            f27288k.u = false;
            Utility.b("gen3Enabled updated to: false");
        } else if (!z7 && z8) {
            Utility.b("Grail is active with this new session");
            f27288k.u = true;
            Utility.b("gen3Enabled updated to: true");
            t.b(AdkSettings.f27249k.g);
        }
        if (z) {
            synchronized (Core.class) {
                e("resetLifecycle");
                Utility.f27585a.set(1);
            }
        }
        AdkSettings adkSettings2 = AdkSettings.f27249k;
        int i8 = adkSettings2.g.l;
        adkSettings2.f27252c = i8;
        CommunicationManagerBridge communicationManagerBridge = q;
        if (communicationManagerBridge != null) {
            communicationManagerBridge.b(i8);
        }
        OneAgentLifecycleManagerBridge oneAgentLifecycleManagerBridge = r;
        if (oneAgentLifecycleManagerBridge != null) {
            oneAgentLifecycleManagerBridge.c();
        }
        AndroidMetrics androidMetrics = f27285h.f27255a;
        androidMetrics.d();
        if (androidMetrics.v.a() - androidMetrics.u > 6000) {
            androidMetrics.e();
        }
        if (adkSettings2.f27254f.v && (rageTapDetector = p) != null) {
            synchronized (rageTapDetector) {
                try {
                    if (rageTapDetector.l) {
                        rageTapDetector.b(false);
                    }
                    rageTapDetector.f27702e = sessionH;
                    rageTapDetector.f27703f = new RageTapRules(sessionH.f27482j);
                    rageTapDetector.f27707k = sessionH.f27482j.f27388c;
                    rageTapDetector.l = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        PrivacyRules privacyRules2 = sessionH.f27481i;
        EventType eventType = EventType.ACTION_AUTO_LOADING_APP;
        if (privacyRules2.a(eventType)) {
            DTXAutoAction dTXAutoAction = new DTXAutoAction("Loading " + AdkSettings.f27247i, sessionH, i8);
            dTXAutoAction.m();
            dTXAutoAction.u = Utility.f27585a.getAndIncrement();
            dTXAutoAction.f27299j = eventType;
            g(dTXAutoAction, dTXAutoAction.p);
        }
        CommunicationManager communicationManager = f27288k;
        if (communicationManager.v) {
            Utility.b("startNewSession: waiting for the GET request executed via BPv4");
        } else {
            communicationManager.f27268i.set(sessionH.e());
        }
        d();
        n.getClass();
        final SessionInformationMetrics sessionInformationMetricsA = SessionInformationGenerator.a(sessionH);
        TracestateHeader.TracestateContext tracestateContext = TracestateHeader.f26755a;
        TracestateHeader.e(sessionInformationMetricsA.f26883a, sessionInformationMetricsA.f26884b);
        if (sessionH.f27483k) {
            f27284f.a(new ConfigurationPublisher.ConfigurationTransform() { // from class: jq
                @Override // com.dynatrace.android.agent.conf.ConfigurationPublisher.ConfigurationTransform
                public final ConfigurationPublisher.ConfigurationUpdate.Builder a(ConfigurationPublisher.ConfigurationUpdate.Builder builder) {
                    int i9 = i4;
                    Session session2 = sessionH;
                    SessionInformationMetrics sessionInformationMetrics = sessionInformationMetricsA;
                    switch (i9) {
                        case 0:
                            Core.c(builder, sessionInformationMetrics, session2, false);
                            break;
                        default:
                            Core.c(builder, sessionInformationMetrics, session2, true);
                            break;
                    }
                    return builder;
                }
            });
        } else {
            f27284f.a(new ConfigurationPublisher.ConfigurationTransform() { // from class: jq
                @Override // com.dynatrace.android.agent.conf.ConfigurationPublisher.ConfigurationTransform
                public final ConfigurationPublisher.ConfigurationUpdate.Builder a(ConfigurationPublisher.ConfigurationUpdate.Builder builder) {
                    int i9 = i3;
                    Session session2 = sessionH;
                    SessionInformationMetrics sessionInformationMetrics = sessionInformationMetricsA;
                    switch (i9) {
                        case 0:
                            Core.c(builder, sessionInformationMetrics, session2, false);
                            break;
                        default:
                            Core.c(builder, sessionInformationMetrics, session2, true);
                            break;
                    }
                    return builder;
                }
            });
        }
        CrossPlatformScreenshotStore crossPlatformScreenshotStore3 = x;
        if (crossPlatformScreenshotStore3 != null) {
            new SessionIdFormatter();
            crossPlatformScreenshotStore3.d(sessionH.f27476b + "_" + sessionH.f27477c + "-0");
        }
    }

    public static void j(Application application, Configuration configuration, AgentServiceLocatorImpl agentServiceLocatorImpl) {
        int i2;
        String string;
        ServerConfiguration serverConfigurationC;
        ServerConfiguration.Builder builder;
        PrivacyRules privacyRules;
        u = agentServiceLocatorImpl;
        configuration.getClass();
        boolean z = Global.f27307a;
        SessionParameterStore sessionParameterStore = new SessionParameterStore(application);
        w = sessionParameterStore;
        sessionParameterStore.c();
        CrossPlatformScreenshotStore crossPlatformScreenshotStore = new CrossPlatformScreenshotStore(application);
        x = crossPlatformScreenshotStore;
        crossPlatformScreenshotStore.c();
        String str = DTXAutoAction.J;
        DTXAutoAction.K = configuration.f27343f;
        DTXAutoAction.L = configuration.g;
        DTXAutoAction.M = configuration.f27344h;
        AdkSettings adkSettings = n;
        adkSettings.b(configuration, application);
        PreferencesManager preferencesManager = adkSettings.d;
        new InitialServerIdProvider();
        if (configuration.t) {
            InitialServerIdProvider.f27378a.getClass();
            i2 = (-new Random().nextInt(32767)) - 2;
        } else {
            i2 = 1;
        }
        SharedPreferences sharedPreferences = preferencesManager.f27380a;
        CommunicationManager.AnonymousClass1 anonymousClass1 = null;
        if (sharedPreferences.contains("ServerConfig")) {
            SharedPreferences sharedPreferences2 = preferencesManager.f27380a;
            try {
                string = sharedPreferences2.getString("ServerConfig", null);
            } catch (ClassCastException unused) {
                sharedPreferences2.edit().remove("ServerConfig").apply();
                string = null;
            }
            boolean z2 = Global.f27307a;
            try {
                serverConfigurationC = preferencesManager.f27381b.c(ServerConfigurationManager.f27428c, string);
                if (serverConfigurationC.n != ServerConfiguration.Status.OK) {
                    throw new InvalidConfigurationException("unexpected status code: " + serverConfigurationC.n);
                }
            } catch (Exception unused2) {
                boolean z3 = Global.f27307a;
                sharedPreferences.edit().remove("ServerConfig").apply();
                serverConfigurationC = null;
            }
        } else {
            serverConfigurationC = null;
        }
        if (serverConfigurationC != null) {
            builder = new ServerConfiguration.Builder(serverConfigurationC, false);
        } else {
            ServerConfiguration.Builder builder2 = new ServerConfiguration.Builder();
            builder2.l = i2;
            builder2.f27424i = false;
            builder = builder2;
        }
        builder.o = 0L;
        builder.g = 1;
        builder.m = false;
        ServerConfiguration serverConfiguration = new ServerConfiguration(builder);
        u.a(f27284f);
        CoreComponent.Holder holder = CoreComponent.f26702k;
        holder.getClass();
        t = CoreComponent.l.f26708h;
        holder.getClass();
        q = CoreComponent.l.g;
        holder.getClass();
        r = CoreComponent.l.f26710j;
        holder.getClass();
        s = CoreComponent.l.f26709i;
        holder.getClass();
        l = CoreComponent.l.f26707f;
        if (!serverConfiguration.f27415i) {
            Utility.b("RUM powered by Grail initially inactive");
        }
        new TimeProviderFactory();
        v = new EventThrottler(TimeProviderFactory.a(), configuration.w, new AnonymousClass1());
        b(serverConfiguration);
        if (configuration.s) {
            PreferencesManager preferencesManager2 = n.d;
            SharedPreferences sharedPreferences3 = preferencesManager2.f27380a;
            UserPrivacyOptions userPrivacyOptions = PrivacyRules.f27383c;
            try {
                boolean z4 = sharedPreferences3.getBoolean("DTXOptInCrashes", userPrivacyOptions.f27437b);
                DataCollectionLevel dataCollectionLevelValueOf = DataCollectionLevel.valueOf(sharedPreferences3.getString("DTXDataCollectionLevel", userPrivacyOptions.f27436a.name()));
                boolean z5 = sharedPreferences3.getBoolean("DTXCrashReplayOptedIn", userPrivacyOptions.f27437b);
                if (!z4 && z5) {
                    sharedPreferences3.edit().putBoolean("DTXCrashReplayOptedIn", false).apply();
                    boolean z6 = Global.f27307a;
                    z5 = false;
                }
                UserPrivacyOptions.Builder builder3 = new UserPrivacyOptions.Builder();
                builder3.a(dataCollectionLevelValueOf);
                builder3.f27440b = z4;
                int i3 = sharedPreferences3.getInt("DTXCScreenRecordOptedIn", -1);
                if (i3 != -1) {
                    boolean z7 = i3 == 1;
                    builder3.d = Boolean.valueOf(z7);
                    builder3.f27441c = z7;
                } else {
                    builder3.d = null;
                    builder3.f27441c = z5;
                }
                userPrivacyOptions = new UserPrivacyOptions(builder3);
            } catch (Exception unused3) {
                boolean z8 = Global.f27307a;
                preferencesManager2.a();
            }
            privacyRules = new PrivacyRules(userPrivacyOptions);
        } else {
            n.d.a();
            privacyRules = PrivacyRules.f27382b;
        }
        AdkSettings.f27246h = configuration.f27340b;
        AndroidMetrics.a();
        if (m.get()) {
            Session.i(privacyRules);
        } else {
            Utility.f27585a.set(1);
            Session.h(privacyRules, TimeLineProvider.f27311c.a());
        }
        DataAccessObject dataAccessObject = new DataAccessObject(application);
        g = dataAccessObject;
        String str2 = configuration.f27340b;
        synchronized (dataAccessObject) {
            try {
                dataAccessObject.f27507a.getWritableDatabase().delete("Events", "app_id!= ?", new String[]{str2});
            } catch (Exception unused4) {
                boolean z9 = Global.f27307a;
            }
        }
        ConfigurationPublisher configurationPublisher = f27284f;
        configurationPublisher.a(new wp(8));
        Utility.g();
        f27285h = new BasicSegment(configuration.u);
        DatabaseWriteQueue.getInstance().start();
        f27287j.c(f27286i);
        CommunicationManager communicationManager = f27288k;
        DataAccessObject dataAccessObject2 = g;
        communicationManager.t = q;
        communicationManager.f27262a = dataAccessObject2;
        communicationManager.s = configurationPublisher;
        communicationManager.q = Long.MAX_VALUE;
        communicationManager.u = AdkSettings.f27249k.g.f27415i;
        communicationManager.v = communicationManager.u;
        communicationManager.f27263b = new RequestExecutor(new CommHandler(configuration), configuration, new ServerConfigurationManager(configuration.f27340b));
        Thread thread = communicationManager.l;
        if (thread != null && thread.isAlive()) {
            try {
                communicationManager.l.interrupt();
            } catch (Exception unused5) {
                boolean z10 = Global.f27307a;
            }
        }
        CommunicationManager.EventSenderThread eventSenderThread = new CommunicationManager.EventSenderThread(communicationManager, anonymousClass1);
        communicationManager.l = eventSenderThread;
        eventSenderThread.start();
        communicationManager.f27270k.set(true);
        if (configuration.f27347k) {
            CrashCatcher.a();
            CrashReporter crashReporter = o;
            if (crashReporter != null) {
                CrashCatcher.f27443b.add(crashReporter);
            }
        }
        ArrayList arrayList = new ArrayList();
        if (s != null) {
            arrayList.add(new AnonymousClass2());
        }
        if (configuration.v) {
            ArrayList arrayList2 = new ArrayList();
            arrayList2.add(new RageTapObserver());
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1);
            TimeLineProvider timeLineProvider = TimeLineProvider.f27311c;
            p = new RageTapDetector(arrayList2, scheduledExecutorServiceNewScheduledThreadPool, timeLineProvider);
            arrayList.add(new TapMonitorFactory(p, timeLineProvider));
        }
        WindowCallbackMonitor windowCallbackMonitor = f27283e;
        windowCallbackMonitor.getClass();
        if (!arrayList.isEmpty()) {
            ActivityWindowTracker activityWindowTracker = new ActivityWindowTracker(new WindowCallbackInstrumentation(arrayList));
            windowCallbackMonitor.f27728a = activityWindowTracker;
            application.registerActivityLifecycleCallbacks(activityWindowTracker);
        }
        TimeLineProvider timeLineProvider2 = TimeLineProvider.f27311c;
        i(false, privacyRules, timeLineProvider2.a());
        if (configuration.f27346j) {
            ActivityLifecycleMonitor activityLifecycleMonitor = f27280a;
            activityLifecycleMonitor.getClass();
            ActivityLifecycleListener activityLifecycleListener = new ActivityLifecycleListener(new LifecycleController(new LifecycleActionFactoryImpl(), new FinishedActionObserver(), new StoreActionObserver(), new MeasurementProviderImpl(timeLineProvider2), new ActionAggregatorImpl(new LoadingActionNameGenerator())), new ActivityComponentIdentifier());
            activityLifecycleMonitor.f27641a = activityLifecycleListener;
            application.registerActivityLifecycleCallbacks(activityLifecycleListener);
        }
        ActiveActivityMonitor activeActivityMonitor = d;
        activeActivityMonitor.getClass();
        ActiveActivityTracker activeActivityTracker = new ActiveActivityTracker(new ActivityComponentIdentifier(), activeActivityMonitor, new ActivityScreenMetricsCollector(), activeActivityMonitor);
        activeActivityMonitor.f27655a = activeActivityTracker;
        application.registerActivityLifecycleCallbacks(activeActivityTracker);
        if (configuration.f27345i) {
            ApplicationStartMonitor applicationStartMonitor = f27281b;
            applicationStartMonitor.getClass();
            AppStartController appStartController = new AppStartController(new MeasurementProviderImpl(timeLineProvider2), new AppStartAggregatorImpl(new LoadingActionNameGenerator()), new AppStartActionObserverImpl(), application);
            applicationStartMonitor.f27684b = appStartController;
            applicationStartMonitor.f27683a = appStartController.f27681e;
        }
        ApplicationStateMonitor applicationStateMonitor = f27282c;
        applicationStateMonitor.getClass();
        ApplicationStateTracker applicationStateTracker = new ApplicationStateTracker(new ActivityComponentIdentifier());
        applicationStateMonitor.f27685a = applicationStateTracker;
        applicationStateTracker.f27686b.add(new AppFgBgStateListener());
        application.registerActivityLifecycleCallbacks(applicationStateMonitor.f27685a);
        OneAgentLifecycleManagerBridge oneAgentLifecycleManagerBridge = r;
        if (oneAgentLifecycleManagerBridge != null) {
            oneAgentLifecycleManagerBridge.a();
        }
        t.c(serverConfiguration);
        if (Session.a().f27483k) {
            t.b(serverConfiguration);
        }
        f27288k.h(true);
        Global.f27308b.set(true);
        m.set(false);
    }
}
