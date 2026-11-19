package com.networkbench.agent.impl.floatbtnmanager;

import android.app.Activity;
import android.app.Application;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.text.TextUtils;
import com.alipay.mobile.nebulacore.core.H5PageImpl;
import com.alipay.mobile.nebulacore.ui.H5Fragment;
import com.alipay.mobile.nebulacore.ui.H5FragmentManager;
import com.alipay.mobile.nebulacore.ui.H5ViewHolder;
import com.alipay.mobile.nebulacore.web.H5WebChromeClient;
import com.alipay.mobile.nebulacore.web.H5WebViewClient;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.instrumentation.NBSJSBridgeDom;
import com.networkbench.agent.impl.instrumentation.nebula.NBSNebulaJsBridge;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ad;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.util.y;
import defpackage.z81;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class c implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f37078a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static String f37079b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static String f37080c = "";
    private static final String d = "ActivityTrackingDelegate";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f37081e = "tingyun.";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f37082f = false;
    private static boolean g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int f37083h = 123456;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static c f37084i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private k f37085j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private WeakReference<Activity> f37086k;
    private List<com.networkbench.agent.impl.data.type.l> l = new CopyOnWriteArrayList();
    private boolean m;

    /* JADX INFO: renamed from: com.networkbench.agent.impl.floatbtnmanager.c$1, reason: invalid class name */
    public class AnonymousClass1 implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Activity f37087a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f37088b;

        public AnonymousClass1(Activity activity, String str) {
            this.f37087a = activity;
            this.f37088b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            H5FragmentManager h5FragmentManager;
            while (true) {
                try {
                    h5FragmentManager = this.f37087a.getH5FragmentManager();
                    if (h5FragmentManager != null) {
                        break;
                    }
                    Logger.debug(c.d, this.f37088b + "fragmentManager == null");
                    try {
                        Thread.sleep(50L);
                    } catch (Throwable th) {
                        Logger.error(c.d, this.f37088b + "error in thread sleep", th);
                    }
                } catch (Throwable th2) {
                    Logger.error(c.d, this.f37088b + "error in get param", th2);
                }
            }
            Logger.debug(c.d, this.f37088b + "fragmentManager != null");
            Method method = h5FragmentManager.getClass().getMethod("getCurrentFragment", null);
            method.setAccessible(true);
            Object objInvoke = method.invoke(h5FragmentManager, null);
            if (objInvoke == null) {
                Logger.debug(c.d, this.f37088b + "fragmentManager fragment == null");
                return;
            }
            Logger.debug(c.d, this.f37088b + "fragmentManager fragment is " + objInvoke.getClass().getName());
            if (objInvoke instanceof H5Fragment) {
                final H5ViewHolder rootViewHolder = ((H5Fragment) objInvoke).getRootViewHolder();
                rootViewHolder.getH5Page().getWebView();
                H5WebChromeClient webChromeClient = rootViewHolder.getH5Page().getWebChromeClient();
                H5WebViewClient webViewClient = rootViewHolder.getH5Page().getWebViewClient();
                if (webChromeClient != null && webViewClient != null) {
                    final com.networkbench.agent.impl.webview.a.a aVar = new com.networkbench.agent.impl.webview.a.a(webChromeClient);
                    final com.networkbench.agent.impl.webview.a.b bVar = new com.networkbench.agent.impl.webview.a.b(webViewClient);
                    c.this.a(rootViewHolder.getH5Page(), aVar);
                    c.this.a(rootViewHolder.getH5Page(), bVar);
                    this.f37087a.runOnUiThread(new Runnable() { // from class: com.networkbench.agent.impl.floatbtnmanager.c.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                rootViewHolder.getH5Page().getWebView().addJavascriptInterface(new NBSNebulaJsBridge(), ConfigurationName.NBS_JS_BRIDGE_NAME);
                                rootViewHolder.getH5Page().getWebView().addJavascriptInterface(new NBSJSBridgeDom(), "nbsDOMChanged");
                                rootViewHolder.getH5Page().getWebView().setWebChromeClient(aVar);
                                rootViewHolder.getH5Page().getWebView().setWebViewClient(bVar);
                            } catch (Throwable th3) {
                                z81.k(new StringBuilder("  activity.runOnUiThread  has an error : "), th3);
                            }
                        }
                    });
                }
                Logger.debug(c.d, this.f37088b + " H5Page obj:" + rootViewHolder.getH5Page() + ", webview obj:" + rootViewHolder.getH5Page().getWebView() + ", WebChromeClient obj:" + rootViewHolder.getH5Page().getWebChromeClient() + ", WebViewClient obj:" + rootViewHolder.getH5Page().getWebViewClient().getClass().getName());
                Logger.debug(c.d, this.f37088b + " H5Page " + rootViewHolder.getH5Page().getClass().getName() + ", webview:" + rootViewHolder.getH5Page().getWebView().getClass().getName() + ", WebChromeClient:" + rootViewHolder.getH5Page().getWebChromeClient().getClass().getName() + ", WebViewClient:" + rootViewHolder.getH5Page().getWebViewClient().getClass().getName());
            }
        }
    }

    private c() {
        this.m = false;
        this.m = g();
    }

    private String a(Activity activity) {
        Uri uriC = c(activity);
        String scheme = uriC != null ? uriC.getScheme() : "";
        Logger.debug(d, "intent data value:" + scheme);
        return scheme;
    }

    private String b(Activity activity) {
        Uri uriC = c(activity);
        String host = uriC != null ? uriC.getHost() : "";
        Logger.debug(d, "intent data value:" + host);
        return host;
    }

    private Uri c(Activity activity) {
        if (activity == null) {
            return null;
        }
        try {
            return activity.getIntent().getData();
        } catch (Throwable th) {
            Logger.error(d, "error get intent data:", th);
            return null;
        }
    }

    private boolean d(Activity activity) {
        String strA = a(activity);
        if (TextUtils.isEmpty(strA) || !strA.toLowerCase().startsWith(f37081e)) {
            return false;
        }
        return TextUtils.isEmpty(NBSAppAgent.schemeIgnore) || !strA.toLowerCase().contains(NBSAppAgent.schemeIgnore.toLowerCase());
    }

    private void e(Activity activity) {
        if (g) {
            return;
        }
        boolean zD = d(activity);
        f37082f = zD;
        if (zD) {
            f37080c = a(activity);
            f37079b = b(activity);
            g(activity);
            com.networkbench.agent.impl.util.c.c.a().a(new y() { // from class: com.networkbench.agent.impl.floatbtnmanager.c.2
                @Override // com.networkbench.agent.impl.util.y
                public void tryCatchRun() {
                    Harvest.getInstance().getHarvestConnection().getResourceBmp();
                }
            });
        }
        this.f37085j = new k();
        g = true;
        Logger.debug(d, "runOnlyOnce isStartFromNBSBrowser:" + f37082f);
    }

    private boolean f(Activity activity) {
        return activity.checkSelfPermission("android.permission.SYSTEM_ALERT_WINDOW") == 0;
    }

    private void g(Activity activity) {
        if (!f(activity) && !Settings.canDrawOverlays(activity)) {
            activity.requestPermissions(new String[]{"android.permission.SYSTEM_ALERT_WINDOW"}, f37083h);
        }
        Logger.debug(d, "permission result:" + new com.networkbench.agent.impl.floatbtnmanager.a.c(activity).a(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        try {
            Logger.debug(d, "onActivityCreated : ".concat(activity.getClass().getName()));
            Harvest.addActionAndInteraction(activity.getClass().getName(), "onCreate", null, null);
            e(activity);
            Iterator<com.networkbench.agent.impl.data.type.l> it = this.l.iterator();
            while (it.hasNext()) {
                it.next().a(activity);
            }
        } catch (Throwable th) {
            Logger.error(d, "error onActivityCreated", th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        try {
            Harvest.addActionAndInteraction(activity.getClass().getName(), "onDestroy", null, null);
        } catch (Throwable th) {
            Logger.error(d, "onActivityDestroyed error", th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        k kVar;
        try {
            Logger.debug(d, "onActivityPaused");
            Harvest.addActionAndInteraction(activity.getClass().getName(), "onPause", null, null);
            if (!f37082f || (kVar = this.f37085j) == null) {
                return;
            }
            kVar.a();
        } catch (Throwable th) {
            Logger.debug(d, "onActivityResumed e:" + th.getMessage());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        k kVar;
        try {
            r.u().ad();
            Harvest.addActionAndInteraction(activity.getClass().getName(), "onResume", null, null);
            Logger.debug(d, "onActivityResumed");
            this.f37086k = new WeakReference<>(activity);
            e(activity);
            if (f37082f && (kVar = this.f37085j) != null) {
                kVar.a(new WeakReference<>(activity));
            }
            Iterator<com.networkbench.agent.impl.data.type.l> it = this.l.iterator();
            while (it.hasNext()) {
                it.next().b(activity);
            }
        } catch (Throwable th) {
            Logger.error(d, "onActivityResumed e:", th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        try {
            Logger.debug(d, " onActivityStarted : ".concat(activity.getClass().getName()));
            boolean zOnActivityStartMonitor = NBSApplicationStateMonitor.getInstance().onActivityStartMonitor(activity.getClass().getName());
            Logger.debug(d, "appstatus onActivityStarted foregrounded:" + zOnActivityStartMonitor);
            Iterator<com.networkbench.agent.impl.data.type.l> it = this.l.iterator();
            while (it.hasNext()) {
                it.next().a(activity, zOnActivityStartMonitor);
            }
        } catch (Throwable th) {
            Logger.error(d, "error onActivityStarted", th);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        try {
            Logger.debug(d, " onActivityStopped : ".concat(activity.getClass().getName()));
            boolean zOnActivityStopMonitor = NBSApplicationStateMonitor.getInstance().onActivityStopMonitor(activity.getClass().getName());
            Logger.debug(d, "appstatus onActivityStopped inBackground:" + zOnActivityStopMonitor);
            Iterator<com.networkbench.agent.impl.data.type.l> it = this.l.iterator();
            while (it.hasNext()) {
                it.next().b(activity, zOnActivityStopMonitor);
            }
        } catch (Throwable th) {
            Logger.error(d, "error onActivityStopped", th);
        }
    }

    public WeakReference<Activity> f() {
        return this.f37086k;
    }

    public boolean c() {
        return false;
    }

    public void b(com.networkbench.agent.impl.data.type.l lVar) {
        this.l.remove(lVar);
    }

    public static c b() {
        if (f37084i == null) {
            f37084i = new c();
        }
        f37078a = true;
        return f37084i;
    }

    public static c a() {
        if (f37084i == null) {
            f37084i = new c();
        }
        return f37084i;
    }

    public void a(com.networkbench.agent.impl.data.type.l lVar) {
        if (this.l.contains(lVar)) {
            return;
        }
        this.l.add(lVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(H5PageImpl h5PageImpl, H5WebChromeClient h5WebChromeClient) {
        try {
            Field declaredField = H5PageImpl.class.getDeclaredField("j");
            declaredField.setAccessible(true);
            ad.a(declaredField, h5PageImpl, h5WebChromeClient);
        } catch (Throwable th) {
            Logger.error(d, "setValueForWebChromeClient failed", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(H5PageImpl h5PageImpl, H5WebViewClient h5WebViewClient) {
        try {
            Field declaredField = H5PageImpl.class.getDeclaredField("k");
            declaredField.setAccessible(true);
            ad.a(declaredField, h5PageImpl, h5WebViewClient);
        } catch (Throwable th) {
            Logger.error(d, "setValueForWebViewClient failed", th);
        }
    }

    private void a(Activity activity, String str, int i2) {
    }

    public String d() {
        return "";
    }

    private boolean g() {
        try {
            Class.forName("com.alipay.mobile.nebulacore.ui.H5Activity");
            return true;
        } catch (Throwable unused) {
            Logger.debug(d, "not find H5Activity class, so not mpaas project");
            return false;
        }
    }

    public k e() {
        return this.f37085j;
    }
}
