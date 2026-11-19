package com.networkbench.agent.impl.harvest;

import android.text.TextUtils;
import com.linkplay.network.SecurityConstants;
import com.networkbench.agent.impl.NBSAgent;
import com.networkbench.agent.impl.NBSAppAgent;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.crash.b.a;
import com.networkbench.agent.impl.crash.b.b;
import com.networkbench.agent.impl.n.h;
import com.networkbench.agent.impl.plugin.f.c;
import com.networkbench.agent.impl.plugin.f.d;
import com.networkbench.agent.impl.socket.p;
import com.networkbench.agent.impl.socket.q;
import com.networkbench.agent.impl.util.af;
import com.networkbench.agent.impl.util.ai;
import com.networkbench.agent.impl.util.r;
import defpackage.z81;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes2.dex */
public class Harvest {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected HarvestData f37214b;
    private HarvestConnection harvestConnection;
    private HarvestTimer harvestTimer;
    private Harvester harvester;
    private static final e log = f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static Harvest f37213a = new Harvest();
    private static final Collection<HarvestLifecycleAware> unregisteredLifecycleListeners = new ArrayList();
    private static final HarvestableCache activityTraceCache = new HarvestableCache();
    public static h mSessionInfo = new h();
    public static volatile String currentActivity = "";
    public boolean disable = false;
    private HarvestConfiguration configuration = HarvestConfiguration.getDefaultHarvestConfiguration();
    public b actionAndInteractions = new b();

    public static synchronized boolean addActionAndInteraction(String str) {
        if (TextUtils.isEmpty(str)) {
            if (r.u().j()) {
                g.n(" leaveBreadcrumb is Empty ! ");
            }
            return false;
        }
        if (str.length() > 110) {
            str = str.substring(0, 110);
            if (r.u().j()) {
                g.n(" leaveBreadcrumb 超过限定超短, 截取前100单位  : ".concat(str));
            }
        }
        if (r.u().R() <= 0) {
            if (r.u().j()) {
                g.n("Breadcrumb was Add failed  because the MobileAgentApp not init");
            }
            return false;
        }
        a aVar = new a(str, null, null, null);
        b bVar = f37213a.actionAndInteractions;
        if (bVar != null) {
            bVar.a(aVar);
            log.a("Breadcrumb: " + str + " was added to the breadcrumb list");
        }
        return true;
    }

    public static void addHarvestListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            log.e("Harvest: Argument to addHarvestListener cannot be null.");
        } else if (isInitialized()) {
            f37213a.getHarvester().addHarvestListener(harvestLifecycleAware);
        } else {
            if (isUnregisteredListener(harvestLifecycleAware)) {
                return;
            }
            addUnregisteredListener(harvestLifecycleAware);
        }
    }

    public static void addHttpError(ActionData actionData, com.networkbench.agent.impl.data.f fVar) {
        if (fVar == null) {
            return;
        }
        actionData.setErrorInfo(fVar.m(), fVar.e());
        if (com.networkbench.agent.impl.plugin.f.h.f38056b && fVar.j().startsWith(SecurityConstants.SECURITY_NONE)) {
            c cVar = new c(actionData, fVar);
            com.networkbench.agent.impl.plugin.f.h.a(cVar);
            cVar.d();
        } else {
            addHttpErrorForScene(fVar);
            addHttpTransaction(actionData);
        }
        try {
            if (r.u().aC()) {
                NetworkPerfMetrics networkPerfMetrics = new NetworkPerfMetrics();
                networkPerfMetrics.getActionDatas().add(actionData);
                networkPerfMetrics.getErrorDatas().a(fVar);
                NBSAppAgent.debugLog(networkPerfMetrics.asJsonObject().toString(), "TingyunSDK_network");
            }
        } catch (Throwable th) {
            z81.k(new StringBuilder("addNetwork action debuglog has error :"), th);
        }
    }

    public static void addHttpErrorForScene(com.networkbench.agent.impl.data.f fVar) {
        try {
            Harvester harvester = f37213a.getHarvester();
            if (f37213a.shouldCollectNetworkErrors() && !isDisabled() && isHttp_network_enabled() && f37213a.getHarvestData() != null) {
                com.networkbench.agent.impl.data.g httpErrors = f37213a.getHarvestData().getHttpErrors();
                if (harvester != null) {
                    harvester.expireHttpErrors();
                }
                if (httpErrors.c() >= f37213a.getConfiguration().getErrs()) {
                    httpErrors.a(0);
                }
                httpErrors.a(fVar);
            }
        } catch (Throwable unused) {
        }
    }

    public static int addHttpTransaction(ActionData actionData) {
        try {
            if (isDisabled() || !isHttp_network_enabled() || f37213a.getHarvestData() == null) {
                return -2;
            }
            if (actionData.calcTotalTime() >= r.f38389a) {
                return 0;
            }
            ActionDatas actionDatas = f37213a.getHarvestData().getActionDatas();
            f37213a.getHarvester().expireHttpTransactions();
            int actions = f37213a.getConfiguration().getActions();
            if (com.networkbench.agent.impl.plugin.f.h.f38055a && actionData.getStatusCode() == 200 && actionData.getUrl().startsWith(SecurityConstants.SECURITY_NONE)) {
                d dVar = new d(actionData);
                com.networkbench.agent.impl.plugin.f.h.a(dVar);
                dVar.d();
            } else {
                if (actionDatas.count() >= actions) {
                    return -1;
                }
                actionDatas.add(actionData);
            }
            g.e("addHttpTransaction  SceneRegisterObserver.after_net : " + com.networkbench.agent.impl.plugin.f.h.f38055a);
        } catch (Throwable unused) {
        }
        return 0;
    }

    public static void addHttpTransactionForScene(ActionData actionData) {
        if (f37213a.getHarvestData().getActionDatas().count() >= f37213a.getConfiguration().getActions()) {
            ai.a(actionData);
        } else if (f37213a.getHarvestData() != null) {
            f37213a.getHarvestData().getActionDatas().add(actionData);
        }
    }

    public static void addJsError(com.networkbench.agent.impl.webview.b.a aVar) {
        if (!isDisabled() && isWebView_enabled()) {
            com.networkbench.agent.impl.webview.b.f webViewPerfMetrics = f37213a.getHarvestData().getWebViewPerfMetrics();
            int actions = f37213a.getConfiguration().getActions();
            if (webViewPerfMetrics.b().b() >= actions) {
                log.f("Maximum number of webviewTransaction (" + actions + ") reached. WebViewTransaction dropped.");
                return;
            }
            log.a("add JsError begin: jserror:" + aVar.toString());
            webViewPerfMetrics.c().a(aVar);
        }
    }

    public static void addPagePerfData(com.networkbench.agent.impl.webview.b.d dVar) {
        if (!isDisabled() && isWebView_enabled()) {
            addActionAndInteraction(ScreenNameManager.getCurrentScreenName(), dVar.a(), null, null);
            com.networkbench.agent.impl.webview.b.f webViewPerfMetrics = f37213a.getHarvestData().getWebViewPerfMetrics();
            int actions = f37213a.getConfiguration().getActions();
            if (webViewPerfMetrics.b().b() < actions) {
                log.a("addPagePerfData begin");
                webViewPerfMetrics.b().a(dVar);
                return;
            }
            log.f("Maximum number of webviewTransaction (" + actions + ") reached. WebViewTransaction dropped.");
        }
    }

    public static void addSocketDatasInfo(p pVar) {
        if (!isDisabled() && r.u().W()) {
            q socketDatas = f37213a.getHarvestData().getSocketDatas();
            int actions = f37213a.getConfiguration().getActions();
            if (socketDatas.c() < actions) {
                if (pVar.m() > 150000) {
                    log.a("timeelapsed is over 150000 ");
                    return;
                } else {
                    socketDatas.a(pVar);
                    return;
                }
            }
            log.f("Maximum number of transactions (" + actions + ") reached. socketdata dropped.");
        }
    }

    private static void addUnregisteredListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            return;
        }
        Collection<HarvestLifecycleAware> collection = unregisteredLifecycleListeners;
        synchronized (collection) {
            collection.add(harvestLifecycleAware);
        }
    }

    public static int getActionFailureThreshold() {
        return f37213a.getConfiguration().getActionFailureThreshold();
    }

    public static int getActivityTraceCacheSize() {
        return activityTraceCache.getSize();
    }

    public static Harvest getInstance() {
        return f37213a;
    }

    public static void harvestNow() {
        try {
            HarvestTimer harvestTimer = f37213a.getHarvestTimer();
            if (harvestTimer != null) {
                harvestTimer.tickNow();
            }
            mSessionInfo.b((int) (System.currentTimeMillis() / 1000));
            com.networkbench.agent.impl.n.c.a(mSessionInfo);
            mSessionInfo.d();
        } catch (Throwable th) {
            log.a("harvestNow has a Exception: " + th.toString());
        }
    }

    public static void initialize() {
        f37213a.initializeHarvester();
        registerUnregisteredListeners();
    }

    public static boolean isAnr_enabled() {
        return r.u().X();
    }

    public static boolean isCdn_enabled() {
        return r.u().Z();
    }

    public static boolean isCrash_enabled() {
        return r.u().ab();
    }

    public static boolean isDisabled() {
        try {
            if (isInitialized() && f37213a.getHarvester() != null) {
                return f37213a.getHarvester().isDisabled();
            }
            return true;
        } catch (Exception unused) {
            return true;
        }
    }

    public static boolean isHttp_network_enabled() {
        try {
            return r.u().V();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean isInitialized() {
        Harvest harvest = f37213a;
        return (harvest == null || harvest.getHarvester() == null) ? false : true;
    }

    public static boolean isUI_enabled() {
        return r.u().af();
    }

    private static boolean isUnregisteredListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            return false;
        }
        return unregisteredLifecycleListeners.contains(harvestLifecycleAware);
    }

    public static boolean isUser_action_enabled() {
        return r.u().Y();
    }

    public static boolean isWebView_enabled() {
        return r.u().ad();
    }

    private static void registerUnregisteredListeners() {
        Iterator<HarvestLifecycleAware> it = unregisteredLifecycleListeners.iterator();
        while (it.hasNext()) {
            addHarvestListener(it.next());
        }
        unregisteredLifecycleListeners.clear();
    }

    public static void removeHarvestListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            log.e("Harvest: Argument to removeHarvestListener cannot be null.");
        } else if (isInitialized()) {
            f37213a.getHarvester().removeHarvestListener(harvestLifecycleAware);
        } else if (isUnregisteredListener(harvestLifecycleAware)) {
            removeUnregisteredListener(harvestLifecycleAware);
        }
    }

    private static void removeUnregisteredListener(HarvestLifecycleAware harvestLifecycleAware) {
        if (harvestLifecycleAware == null) {
            return;
        }
        Collection<HarvestLifecycleAware> collection = unregisteredLifecycleListeners;
        synchronized (collection) {
            collection.remove(harvestLifecycleAware);
        }
    }

    public static void setHarvestConfiguration(HarvestConfiguration harvestConfiguration) {
        if (isInitialized()) {
            f37213a.setConfiguration(harvestConfiguration);
        } else {
            log.e("Cannot configure Harvester before initialization.");
            new Exception().printStackTrace();
        }
    }

    public static void setInstance(Harvest harvest) {
        f37213a = harvest;
    }

    public static void setPeriod(long j2) {
        f37213a.getHarvestTimer().setPeriod(j2);
    }

    public static boolean shouldCollectActivityTraces() {
        if (isDisabled()) {
            return false;
        }
        return !isInitialized() || f37213a.getConfiguration().getUiTraces() > 0;
    }

    public static void shutdown() {
        if (isInitialized()) {
            stop();
            f37213a.shutdownHarvester();
        }
    }

    public static void start() {
        f37213a.getHarvestTimer().start();
        mSessionInfo.a((int) (System.currentTimeMillis() / 1000));
    }

    public static void stop() {
        Harvest harvest = f37213a;
        if (harvest == null || harvest.getHarvestTimer() == null) {
            log.f("instance == null || instance.getHarvestTimer() == null");
        } else {
            f37213a.getHarvestTimer().stop();
        }
    }

    public void createHarvester() {
        if (this.harvestConnection == null) {
            this.harvestConnection = new HarvestConnection();
        }
        if (this.f37214b == null) {
            this.f37214b = new HarvestData();
        }
        Harvester harvester = new Harvester();
        this.harvester = harvester;
        harvester.setHarvestConnection(this.harvestConnection);
        this.harvester.setHarvestData(this.f37214b);
        this.harvestTimer = new HarvestTimer(this.harvester);
    }

    public synchronized void disableSdk(long j2) {
        try {
            if (!isDisabled()) {
                NBSAgent.disable();
            }
            new af(r.u().J()).e(j2 + System.currentTimeMillis());
            r.u().c(0);
        } catch (Throwable th) {
            throw th;
        }
    }

    public HarvestConfiguration getConfiguration() {
        return this.configuration;
    }

    public HarvestConnection getHarvestConnection() {
        return this.harvestConnection;
    }

    public HarvestData getHarvestData() {
        return this.f37214b;
    }

    public HarvestTimer getHarvestTimer() {
        return this.harvestTimer;
    }

    public Harvester getHarvester() {
        return this.harvester;
    }

    public void initCrashActions() {
        if (this.actionAndInteractions == null) {
            this.actionAndInteractions = new b();
        }
    }

    public void initializeHarvester() {
        createHarvester();
        this.harvester.setConfiguration(f37213a.getConfiguration());
    }

    public void setConfiguration(HarvestConfiguration harvestConfiguration) {
        try {
            this.configuration.reconfigure(harvestConfiguration);
            try {
                this.harvestTimer.setPeriod(TimeUnit.MILLISECONDS.convert(this.configuration.getInterval(), TimeUnit.SECONDS));
            } catch (Throwable unused) {
            }
            r.u().a(this.configuration.getInterval());
            r.u().l(this.configuration.isPluginSwitch());
            this.harvester.setConfiguration(this.configuration);
        } catch (Throwable unused2) {
        }
    }

    public void setHarvestData(HarvestData harvestData) {
        this.f37214b = harvestData;
    }

    public void setHarvester(Harvester harvester) {
        this.harvester = harvester;
    }

    public boolean shouldCollectNetworkErrors() {
        return this.configuration.isEnableErrTrace();
    }

    public void shutdownHarvester() {
        this.harvestTimer = null;
        this.harvester = null;
        this.f37214b.reset();
    }

    public static synchronized void addActionAndInteraction(String str, String str2, String str3, String str4) {
        if (r.u().aa() < 0) {
            return;
        }
        a aVar = new a(str, str2, str4, str3);
        b bVar = f37213a.actionAndInteractions;
        if (bVar != null) {
            bVar.a(aVar);
            log.a("harvester add actionAndInteraction " + ScreenNameManager.getCurrentScreenName() + "," + str2 + "," + str3 + "," + str4);
        }
    }
}
