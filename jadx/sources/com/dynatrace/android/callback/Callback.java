package com.dynatrace.android.callback;

import android.app.Application;
import android.os.Process;
import android.view.MenuItem;
import android.view.View;
import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.TimeLineProvider;
import com.dynatrace.android.agent.conf.Configuration;
import com.dynatrace.android.agent.conf.ConfigurationPreset;
import com.dynatrace.android.agent.lifecycle.OneAgentLifecycleManagerBridge;
import com.dynatrace.android.agent.measurement.MeasurementPoint;
import com.dynatrace.android.agent.measurement.MeasurementProviderImpl;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.appstart.AppStartAction;
import com.dynatrace.android.lifecycle.appstart.AppStartAggregator;
import com.dynatrace.android.lifecycle.appstart.AppStartController;
import com.dynatrace.android.lifecycle.appstart.ApplicationStartMonitor;
import com.dynatrace.android.useraction.AppStartPlaceholderSegment;
import com.dynatrace.android.useraction.DTXAutoActionWrapper;
import com.vuitton.android.presentation.Hilt_LVApplication;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Callback {
    static {
        boolean z = Global.f27307a;
    }

    public static void A() {
        if (Global.f27308b.get()) {
            CallbackCore.ListenerActionType listenerActionType = CallbackCore.ListenerActionType.SwipeToRefresh;
            CallbackCore.f(listenerActionType, listenerActionType.toString());
        }
    }

    public static void B() {
        CallbackCore.g(CallbackCore.ListenerActionType.SwipeToRefresh);
    }

    public static void C(URLConnection uRLConnection) {
        if (Global.f27308b.get() && (uRLConnection instanceof HttpURLConnection)) {
            CallbackCore.b((HttpURLConnection) uRLConnection, true);
        }
    }

    public static void D(HttpURLConnection httpURLConnection) {
        try {
            String requestProperty = httpURLConnection.getRequestProperty("x-dtc");
            Object obj = Dynatrace.f27305a;
            String requestProperty2 = httpURLConnection.getRequestProperty("x-dynatrace");
            if (requestProperty == null && requestProperty2 == null) {
                CallbackCore.h(httpURLConnection);
                return;
            }
            Utility.b("web request tags already exists: x-dtc=" + requestProperty + " x-dynatrace=" + requestProperty2);
        } catch (Exception unused) {
            boolean z = Global.f27307a;
        }
    }

    public static void E(ConnStateParms connStateParms) {
        try {
            CallbackCore.j(connStateParms);
        } catch (Exception unused) {
            boolean z = Global.f27307a;
        }
    }

    public static void a(HttpURLConnection httpURLConnection) throws IOException {
        if (Global.f27308b.get()) {
            D(httpURLConnection);
        }
        httpURLConnection.connect();
    }

    public static void b(URLConnection uRLConnection) throws IOException {
        if (Global.f27308b.get() && (uRLConnection instanceof HttpURLConnection)) {
            D((HttpURLConnection) uRLConnection);
        }
        uRLConnection.connect();
    }

    public static int c(URLConnection uRLConnection) {
        if (Global.f27308b.get() && (uRLConnection instanceof HttpURLConnection)) {
            D((HttpURLConnection) uRLConnection);
        }
        return uRLConnection.getContentLength();
    }

    public static InputStream d(HttpURLConnection httpURLConnection) {
        if (Global.f27308b.get()) {
            D(httpURLConnection);
        }
        return httpURLConnection.getErrorStream();
    }

    public static String e(String str, URLConnection uRLConnection) {
        if (Global.f27308b.get() && (uRLConnection instanceof HttpURLConnection)) {
            D((HttpURLConnection) uRLConnection);
        }
        return uRLConnection.getHeaderField(str);
    }

    public static Map f(URLConnection uRLConnection) {
        if (Global.f27308b.get() && (uRLConnection instanceof HttpURLConnection)) {
            D((HttpURLConnection) uRLConnection);
        }
        return uRLConnection.getHeaderFields();
    }

    public static InputStream g(HttpURLConnection httpURLConnection) {
        if (!Global.f27308b.get()) {
            return httpURLConnection.getInputStream();
        }
        D(httpURLConnection);
        ConnStateParms connStateParms = new ConnStateParms(httpURLConnection, CbConstants$WrMethod.getInputStream, CbConstants$WrStates.PRE_EXEC);
        try {
            try {
                E(connStateParms);
                InputStream inputStream = httpURLConnection.getInputStream();
                j(httpURLConnection, connStateParms);
                connStateParms.f27616c = CbConstants$WrStates.POST_EXEC_OK;
                E(connStateParms);
                j(httpURLConnection, connStateParms);
                connStateParms.f27616c = CbConstants$WrStates.POST_EXEC_ERR;
                E(connStateParms);
                return inputStream;
            } catch (Exception e2) {
                Utility.b("tracked failed 'getInputStream' method call");
                connStateParms.f27617e = e2.toString();
                connStateParms.f27621j = e2;
                throw e2;
            }
        } catch (Throwable th) {
            j(httpURLConnection, connStateParms);
            connStateParms.f27616c = CbConstants$WrStates.POST_EXEC_ERR;
            E(connStateParms);
            throw th;
        }
    }

    public static InputStream h(URLConnection uRLConnection) {
        return uRLConnection instanceof HttpURLConnection ? g((HttpURLConnection) uRLConnection) : uRLConnection.getInputStream();
    }

    public static OutputStream i(HttpURLConnection httpURLConnection) {
        if (!Global.f27308b.get()) {
            return httpURLConnection.getOutputStream();
        }
        D(httpURLConnection);
        ConnStateParms connStateParms = new ConnStateParms(httpURLConnection, CbConstants$WrMethod.getOutputStream, CbConstants$WrStates.PRE_EXEC);
        try {
            try {
                E(connStateParms);
                OutputStream outputStream = httpURLConnection.getOutputStream();
                connStateParms.f27616c = CbConstants$WrStates.POST_EXEC_OK;
                E(connStateParms);
                connStateParms.f27616c = CbConstants$WrStates.POST_EXEC_ERR;
                E(connStateParms);
                return outputStream;
            } catch (Exception e2) {
                Utility.b("tracked failed 'getOutputStream' method call");
                connStateParms.f27617e = e2.toString();
                connStateParms.f27621j = e2;
                throw e2;
            }
        } catch (Throwable th) {
            connStateParms.f27616c = CbConstants$WrStates.POST_EXEC_ERR;
            E(connStateParms);
            throw th;
        }
    }

    public static void j(HttpURLConnection httpURLConnection, ConnStateParms connStateParms) {
        int responseCode;
        try {
            responseCode = httpURLConnection.getResponseCode();
            try {
                String responseMessage = httpURLConnection.getResponseMessage();
                connStateParms.f27618f = responseMessage;
                connStateParms.f27617e = responseMessage;
            } catch (Exception e2) {
                e = e2;
                if (connStateParms.f27617e == null) {
                    connStateParms.f27617e = e.getMessage();
                }
            }
        } catch (Exception e3) {
            e = e3;
            responseCode = -1;
        }
        connStateParms.d = responseCode;
    }

    public static int k(HttpURLConnection httpURLConnection) {
        if (!Global.f27308b.get()) {
            return httpURLConnection.getResponseCode();
        }
        D(httpURLConnection);
        ConnStateParms connStateParms = new ConnStateParms(httpURLConnection, CbConstants$WrMethod.getResponseCode, CbConstants$WrStates.PRE_EXEC);
        int responseCode = -1;
        try {
            try {
                E(connStateParms);
                responseCode = httpURLConnection.getResponseCode();
                j(httpURLConnection, connStateParms);
                connStateParms.f27616c = CbConstants$WrStates.POST_EXEC_OK;
                E(connStateParms);
                connStateParms.d = responseCode;
                connStateParms.f27616c = CbConstants$WrStates.POST_EXEC_ERR;
                E(connStateParms);
                return responseCode;
            } catch (Exception e2) {
                Utility.b("tracked failed 'getResponseCode' method call");
                connStateParms.f27617e = e2.toString();
                connStateParms.f27621j = e2;
                throw e2;
            }
        } catch (Throwable th) {
            connStateParms.d = responseCode;
            connStateParms.f27616c = CbConstants$WrStates.POST_EXEC_ERR;
            E(connStateParms);
            throw th;
        }
    }

    public static String l(HttpURLConnection httpURLConnection) {
        if (Global.f27308b.get()) {
            D(httpURLConnection);
        }
        return httpURLConnection.getResponseMessage();
    }

    public static void m(HttpURLConnection httpURLConnection) {
        if (Global.f27308b.get()) {
            CallbackCore.b(httpURLConnection, false);
        }
    }

    public static void n(View view) {
        if (Global.f27308b.get()) {
            CallbackCore.e(CallbackCore.ListenerActionType.Clicked, view);
        }
    }

    public static void o() {
        CallbackCore.g(CallbackCore.ListenerActionType.Clicked);
    }

    public static void p(Hilt_LVApplication hilt_LVApplication) {
        OneAgentLifecycleManagerBridge oneAgentLifecycleManagerBridge;
        Configuration configurationA = ConfigurationPreset.a();
        AtomicBoolean atomicBoolean = CallbackCore.f27589a;
        Application application = (Application) hilt_LVApplication.getApplicationContext();
        if (CallbackCore.f27589a.getAndSet(true)) {
            return;
        }
        AdkSettings adkSettings = AdkSettings.f27249k;
        Configuration configuration = adkSettings.f27254f;
        if (configuration != null) {
            configurationA = configuration;
        }
        CallbackCore.f27590b = configurationA;
        if (Global.f27307a) {
            Utility.n("Runtime properties: " + CallbackCore.f27590b);
        }
        AtomicInteger atomicInteger = Utility.f27585a;
        if (Process.isIsolated()) {
            if (Global.f27307a) {
                Utility.n("Isolated service detected. Monitoring deactivated for this process");
                return;
            }
            return;
        }
        String processName = Application.getProcessName();
        if (!(processName != null ? processName.equals(application.getApplicationInfo().processName) : true)) {
            if (Global.f27307a) {
                Utility.n("Secondary process detected. Monitoring deactivated for this process");
                return;
            }
            return;
        }
        CallbackCore.f27590b.getClass();
        if (adkSettings.f27253e == null) {
            try {
                adkSettings.b(CallbackCore.f27590b, application);
            } catch (Exception unused) {
                if (Global.f27307a) {
                    Utility.g();
                    return;
                }
                return;
            }
        }
        if (adkSettings.g.f27415i && (oneAgentLifecycleManagerBridge = Core.r) != null) {
            oneAgentLifecycleManagerBridge.a();
        }
        if (CallbackCore.f27590b.f27345i) {
            ApplicationStartMonitor applicationStartMonitor = Core.f27281b;
            TimeLineProvider timeLineProvider = TimeLineProvider.f27311c;
            if (applicationStartMonitor.f27684b == null) {
                return;
            }
            MeasurementProviderImpl measurementProviderImpl = new MeasurementProviderImpl(timeLineProvider);
            MeasurementPoint measurementPointA = measurementProviderImpl.a();
            MeasurementPoint measurementPointA2 = measurementProviderImpl.a();
            String str = AdkSettings.f27247i;
            if (str == null || str.isEmpty()) {
                str = "null";
            }
            AppStartController appStartController = applicationStartMonitor.f27684b;
            AppStartAggregator appStartAggregator = appStartController.f27679b;
            DTXAutoActionWrapper dTXAutoActionWrapperA = appStartAggregator.a(measurementPointA, str);
            dTXAutoActionWrapperA.f27723a.H(5000);
            AppStartPlaceholderSegment appStartPlaceholderSegment = new AppStartPlaceholderSegment(str, dTXAutoActionWrapperA, appStartController);
            appStartAggregator.b(appStartPlaceholderSegment);
            AppStartAction.Builder builder = new AppStartAction.Builder();
            builder.f27673a = str;
            builder.f27674b = measurementPointA2;
            builder.d = dTXAutoActionWrapperA;
            builder.f27676e = appStartPlaceholderSegment;
            appStartController.g = builder;
            appStartController.f27682f.registerActivityLifecycleCallbacks(appStartController.f27681e);
        }
    }

    public static void q(View view) {
        if (Global.f27308b.get()) {
            CallbackCore.e(CallbackCore.ListenerActionType.ItemClicked, view);
        }
    }

    public static void r() {
        CallbackCore.g(CallbackCore.ListenerActionType.ItemClicked);
    }

    public static void s(View view) {
        if (Global.f27308b.get()) {
            CallbackCore.e(CallbackCore.ListenerActionType.ItemSelected, view);
        }
    }

    public static void t() {
        CallbackCore.g(CallbackCore.ListenerActionType.ItemSelected);
    }

    public static void u(MenuItem menuItem) {
        if (Global.f27308b.get()) {
            CallbackCore.d(CallbackCore.ListenerActionType.MenuItemClick, menuItem);
        }
    }

    public static void v() {
        CallbackCore.g(CallbackCore.ListenerActionType.MenuItemClick);
    }

    public static void w(MenuItem menuItem) {
        if (Global.f27308b.get()) {
            CallbackCore.d(CallbackCore.ListenerActionType.OptionsItemSelected, menuItem);
        }
    }

    public static void x() {
        CallbackCore.g(CallbackCore.ListenerActionType.OptionsItemSelected);
    }

    public static void y() {
        if (Global.f27308b.get()) {
            CallbackCore.c(CallbackCore.ListenerActionType.PageSelected);
        }
    }

    public static void z() {
        CallbackCore.g(CallbackCore.ListenerActionType.PageSelected);
    }
}
