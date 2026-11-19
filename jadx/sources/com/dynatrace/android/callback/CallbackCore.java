package com.dynatrace.android.callback;

import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import com.dynatrace.agent.events.TracestateHeader;
import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.AgentUtil;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.DTXAutoAction;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.WebReqTag;
import com.dynatrace.android.agent.conf.Configuration;
import com.dynatrace.android.agent.conf.ConfigurationPreset;
import com.dynatrace.android.agent.data.RandomFactory;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.mixed.WebRequestTraceContext;
import com.dynatrace.android.agent.mixed.WebRequestTraceContextInitializer;
import com.dynatrace.android.agent.useraction.OneAgentUserInteractionManagerBridge;
import com.dynatrace.android.agent.util.Utility;
import java.net.HttpURLConnection;
import java.util.HashSet;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes2.dex */
abstract class CallbackCore {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AtomicBoolean f27589a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Configuration f27590b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final WeakHashMap f27591c;
    public static volatile DTXAutoAction d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile ListenerActionType f27592e;

    public static class ConnRegistration extends Thread {
        private static HashSet<Integer> requests = new HashSet<>();
        private HttpURLConnection conn;

        private ConnRegistration(HttpURLConnection httpURLConnection) {
            this.conn = httpURLConnection;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public CbWebReqTracker register() {
            String requestProperty;
            WeakHashMap weakHashMap;
            CbWebReqTracker cbWebReqTrackerA = null;
            try {
                WeakHashMap weakHashMap2 = CallbackCore.f27591c;
                CbWebReqTracker cbWebReqTracker = (CbWebReqTracker) weakHashMap2.get(this.conn);
                if (cbWebReqTracker != null) {
                    return cbWebReqTracker;
                }
                HttpURLConnection httpURLConnection = this.conn;
                Object obj = Dynatrace.f27305a;
                if (httpURLConnection == null) {
                    requestProperty = null;
                } else {
                    try {
                        requestProperty = httpURLConnection.getRequestProperty("x-dynatrace");
                    } catch (Exception unused) {
                        requestProperty = null;
                    }
                }
                if (requestProperty != null) {
                    synchronized (weakHashMap2) {
                        weakHashMap = new WeakHashMap(weakHashMap2);
                    }
                    for (Map.Entry entry : weakHashMap.entrySet()) {
                        if (((CbWebReqTracker) entry.getValue()).f27599e.toString().equals(requestProperty)) {
                            boolean z = Global.f27307a;
                            WeakHashMap weakHashMap3 = CallbackCore.f27591c;
                            weakHashMap3.remove(entry.getKey());
                            weakHashMap3.put(this.conn, (CbWebReqTracker) entry.getValue());
                            return (CbWebReqTracker) entry.getValue();
                        }
                    }
                }
                return null;
            } catch (Exception unused2) {
                boolean z2 = Global.f27307a;
            }
            if (!requests.contains(Integer.valueOf(this.conn.hashCode()))) {
                requests.add(Integer.valueOf(this.conn.hashCode()));
                int i2 = 0;
                while (true) {
                    int i3 = i2 + 1;
                    if (i2 > 3) {
                        break;
                    }
                    try {
                        cbWebReqTrackerA = CallbackCore.a(this.conn);
                        break;
                    } catch (Exception unused3) {
                        try {
                            Thread.sleep(100L);
                        } catch (InterruptedException unused4) {
                        }
                        i2 = i3;
                    }
                }
                requests.remove(Integer.valueOf(this.conn.hashCode()));
                return cbWebReqTrackerA;
            }
            return null;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            register();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class ListenerActionType {
        private static final /* synthetic */ ListenerActionType[] $VALUES;
        public static final ListenerActionType Clicked;
        public static final ListenerActionType ItemClicked;
        public static final ListenerActionType ItemSelected;
        public static final ListenerActionType MenuItemClick;
        public static final ListenerActionType OptionsItemSelected;
        public static final ListenerActionType PageSelected;
        public static final ListenerActionType SwipeToRefresh;

        static {
            ListenerActionType listenerActionType = new ListenerActionType("Clicked", 0);
            Clicked = listenerActionType;
            ListenerActionType listenerActionType2 = new ListenerActionType("ItemClicked", 1);
            ItemClicked = listenerActionType2;
            ListenerActionType listenerActionType3 = new ListenerActionType("ItemSelected", 2);
            ItemSelected = listenerActionType3;
            ListenerActionType listenerActionType4 = new ListenerActionType("MenuItemClick", 3);
            MenuItemClick = listenerActionType4;
            ListenerActionType listenerActionType5 = new ListenerActionType("OptionsItemSelected", 4);
            OptionsItemSelected = listenerActionType5;
            ListenerActionType listenerActionType6 = new ListenerActionType("PageSelected", 5);
            PageSelected = listenerActionType6;
            ListenerActionType listenerActionType7 = new ListenerActionType("SwipeToRefresh", 6);
            SwipeToRefresh = listenerActionType7;
            $VALUES = new ListenerActionType[]{listenerActionType, listenerActionType2, listenerActionType3, listenerActionType4, listenerActionType5, listenerActionType6, listenerActionType7};
        }

        public static ListenerActionType valueOf(String str) {
            return (ListenerActionType) Enum.valueOf(ListenerActionType.class, str);
        }

        public static ListenerActionType[] values() {
            return (ListenerActionType[]) $VALUES.clone();
        }
    }

    static {
        boolean z = Global.f27307a;
        f27589a = new AtomicBoolean(false);
        f27590b = ConfigurationPreset.a();
        f27591c = new WeakHashMap();
        d = null;
        f27592e = null;
    }

    public static CbWebReqTracker a(HttpURLConnection httpURLConnection) {
        WebReqTag webReqTagA;
        if (Global.f27307a) {
            Utility.n("Add WR " + httpURLConnection.getClass().getSimpleName() + " to " + httpURLConnection.getURL().toString());
        }
        if (f27589a.get()) {
            if (i(httpURLConnection.getURL().toString())) {
                if (Global.f27307a) {
                    Utility.n("Skip WR (URL filtered): " + httpURLConnection.getURL());
                    return null;
                }
            } else if (f27590b.n) {
                DTXAutoAction dTXAutoAction = DTXAutoAction.N;
                if (dTXAutoAction == null || (webReqTagA = dTXAutoAction.u()) == null) {
                    webReqTagA = AgentUtil.a();
                }
                if (webReqTagA != null) {
                    Session session = webReqTagA.f27314b;
                    CbWebReqTracker cbWebReqTracker = new CbWebReqTracker(dTXAutoAction, session);
                    if (session.f27483k) {
                        try {
                            TracestateHeader.TracestateContext tracestateContext = TracestateHeader.f26755a;
                            if (TracestateHeader.b(httpURLConnection.getRequestProperty("tracestate"))) {
                                Utility.b("Request already instrumented by Dynatrace, skipping Gen3 monitoring");
                            } else {
                                WebRequestTraceContextInitializer.TraceInitializationResult traceInitializationResultA = WebRequestTraceContextInitializer.a(httpURLConnection.getRequestProperty("traceparent"), httpURLConnection.getRequestProperty("tracestate"), TracestateHeader.f26756b);
                                String str = traceInitializationResultA.f27583b;
                                if (str != null) {
                                    httpURLConnection.setRequestProperty("traceparent", str);
                                    Utility.b("Set traceparent: ".concat(str));
                                }
                                String str2 = traceInitializationResultA.f27584c;
                                if (str2 != null) {
                                    httpURLConnection.setRequestProperty("tracestate", str2);
                                    Utility.b("Set tracestate: ".concat(str2));
                                }
                                WebRequestTraceContext webRequestTraceContext = traceInitializationResultA.f27582a;
                                cbWebReqTracker.m = webRequestTraceContext;
                                Utility.b("traceId: " + webRequestTraceContext.f27579a + " spanId: " + webRequestTraceContext.f27580b + " hint: " + webRequestTraceContext.f27581c);
                            }
                        } catch (Exception e2) {
                            if (Global.f27307a) {
                                e2.toString();
                                Utility.g();
                            }
                        }
                    }
                    WeakHashMap weakHashMap = f27591c;
                    synchronized (weakHashMap) {
                        weakHashMap.put(httpURLConnection, cbWebReqTracker);
                    }
                    cbWebReqTracker.f27599e = webReqTagA;
                    return cbWebReqTracker;
                }
            }
        } else if (Global.f27307a) {
            Utility.n("OneAgent not correctly initialized");
            return null;
        }
        return null;
    }

    public static void b(HttpURLConnection httpURLConnection, boolean z) {
        if (httpURLConnection != null && Dynatrace.c() && Session.a().f27481i.a(EventType.WEB_REQUEST)) {
            ConnRegistration connRegistration = new ConnRegistration(httpURLConnection);
            if (z) {
                connRegistration.register();
                return;
            }
            try {
                httpURLConnection.getURL().toString();
                connRegistration.register();
            } catch (Exception unused) {
                connRegistration.start();
            }
        }
    }

    public static void c(ListenerActionType listenerActionType) {
        f(listenerActionType, "Initiate " + listenerActionType.toString());
    }

    public static void d(ListenerActionType listenerActionType, MenuItem menuItem) {
        String strConcat;
        if (menuItem == null) {
            c(listenerActionType);
            return;
        }
        f27590b.getClass();
        CharSequence title = menuItem.getTitle();
        if (title == null || title.length() <= 0) {
            strConcat = "Touch on ".concat(menuItem.getClass().getSimpleName());
        } else {
            strConcat = "Touch on " + ((Object) title);
        }
        f(listenerActionType, strConcat);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0061  */
    public static void e(ListenerActionType listenerActionType, View view) {
        String strConcat;
        if (view == null) {
            c(listenerActionType);
            return;
        }
        f27590b.getClass();
        CharSequence contentDescription = view.getContentDescription();
        if (contentDescription != null && contentDescription.length() > 0) {
            strConcat = "Touch on " + ((Object) contentDescription);
        } else if (view instanceof TextView) {
            TextView textView = (TextView) view;
            int inputType = textView.getInputType() & 4095;
            if (inputType == 129 || inputType == 225 || inputType == 18 || inputType == 145) {
                strConcat = "Touch on ****";
            } else {
                CharSequence text = textView.getText();
                if (text == null || text.length() <= 0) {
                    strConcat = "Touch on ".concat(view.getClass().getSimpleName());
                } else {
                    strConcat = "Touch on " + ((Object) text);
                }
            }
        } else {
            strConcat = "Touch on ".concat(view.getClass().getSimpleName());
        }
        f(listenerActionType, strConcat);
        OneAgentUserInteractionManagerBridge oneAgentUserInteractionManagerBridge = Core.s;
        if (oneAgentUserInteractionManagerBridge != null) {
            oneAgentUserInteractionManagerBridge.b(view);
        }
    }

    public static void f(ListenerActionType listenerActionType, String str) {
        if (Global.f27307a) {
            Utility.n("onUA: " + listenerActionType + " entry=true actionName=" + str);
        }
        if (d != null && f27592e != listenerActionType) {
            d.H(0);
            d = null;
            f27592e = null;
        }
        if (d == null && Global.f27308b.get()) {
            RandomFactory randomFactory = Session.m;
            d = DTXAutoAction.B(str, Session.b(TimeLineProvider.f27311c.a(), false), AdkSettings.f27249k.f27252c);
            f27592e = listenerActionType;
        }
        if (Global.f27307a) {
            Utility.n("onUA: " + listenerActionType + " entry=true");
        }
    }

    public static void g(ListenerActionType listenerActionType) {
        if (Global.f27307a) {
            Utility.n("onUA: " + listenerActionType + " entry=false");
        }
        if (d == null || f27592e != listenerActionType) {
            return;
        }
        DTXAutoAction dTXAutoAction = d;
        dTXAutoAction.H(DTXAutoAction.K);
        dTXAutoAction.D();
        d = null;
        f27592e = null;
    }

    public static void h(HttpURLConnection httpURLConnection) {
        CbWebReqTracker cbWebReqTracker = (CbWebReqTracker) f27591c.get(httpURLConnection);
        if (cbWebReqTracker != null) {
            Object obj = Dynatrace.f27305a;
            httpURLConnection.setRequestProperty("x-dynatrace", cbWebReqTracker.f27599e.toString());
        }
        if (Global.f27307a) {
            Utility.n("webReqState is: " + cbWebReqTracker);
        }
    }

    public static boolean i(String str) {
        String[] strArr = f27590b.q;
        int i2 = UrlFilter.f27613a;
        if (str == null || strArr == null || strArr.length == 0) {
            return false;
        }
        for (String str2 : strArr) {
            if (str2 != null) {
                String strTrim = str2.trim();
                try {
                    if (Pattern.compile(strTrim).matcher(str).find()) {
                        if (Global.f27307a) {
                            int i3 = UrlFilter.f27613a;
                            Utility.n("URL filtered by pattern \"" + strTrim + "\": " + str);
                        }
                        return true;
                    }
                    continue;
                } catch (PatternSyntaxException unused) {
                    if (Global.f27307a) {
                        Utility.g();
                    }
                }
            }
        }
        return false;
    }

    public static void j(ConnStateParms connStateParms) {
        String requestProperty;
        HttpURLConnection httpURLConnection = connStateParms.m;
        if (httpURLConnection == null || !f27590b.n) {
            return;
        }
        if (Global.f27307a) {
            Utility.n(connStateParms.f27616c + " of " + connStateParms.f27615b + " of " + httpURLConnection.getClass().getSimpleName() + " to " + connStateParms.c());
        }
        WeakHashMap weakHashMap = f27591c;
        CbWebReqTracker cbWebReqTracker = (CbWebReqTracker) weakHashMap.get(connStateParms.m);
        if (cbWebReqTracker == null) {
            return;
        }
        if (CbConstants$WrStates.PRE_EXEC == connStateParms.f27616c) {
            HttpURLConnection httpURLConnection2 = connStateParms.m;
            Object obj = Dynatrace.f27305a;
            String requestProperty2 = null;
            if (httpURLConnection2 == null) {
                requestProperty = null;
            } else {
                try {
                    requestProperty = httpURLConnection2.getRequestProperty("x-dynatrace");
                } catch (Exception unused) {
                    requestProperty = null;
                }
            }
            HttpURLConnection httpURLConnection3 = connStateParms.m;
            if (httpURLConnection3 != null) {
                try {
                    requestProperty2 = httpURLConnection3.getRequestProperty("x-dtc");
                } catch (Exception unused2) {
                }
            }
            cbWebReqTracker.a(requestProperty, requestProperty2);
        }
        cbWebReqTracker.b(connStateParms);
        if (cbWebReqTracker.f27598c) {
            synchronized (weakHashMap) {
                weakHashMap.remove(connStateParms.m);
            }
            cbWebReqTracker.c(connStateParms);
        }
    }
}
