package com.networkbench.agent.impl.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.HarvestAdapter;
import com.networkbench.agent.impl.harvest.HarvestConfiguration;
import com.networkbench.agent.impl.session.screen.NBSSessionConfig;
import com.networkbench.agent.impl.webview.JsPageUtil;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import net.rtccloud.sdk.Call;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes2.dex */
public class af extends HarvestAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f38305a = "SavedState";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final com.networkbench.agent.impl.c.e f38306b = com.networkbench.agent.impl.c.f.a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f38307c = "isNewPageCalcAlgoEnabled";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f38308e = "_main";
    private final Context d;
    private Float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final SharedPreferences f38310h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final SharedPreferences.Editor f38311i;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HarvestConfiguration f38309f = new HarvestConfiguration();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Lock f38312j = new ReentrantLock();

    public af(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(ak.h(context.getPackageName()), 0);
        this.f38310h = sharedPreferences;
        this.f38311i = sharedPreferences.edit();
        this.d = context;
    }

    private int R() {
        return g("harvestIntervalOnIdleInSeconds");
    }

    private void b(HarvestConfiguration harvestConfiguration) {
        this.f38309f = harvestConfiguration;
        j(harvestConfiguration.getTingyunId());
        b(harvestConfiguration.getInterval());
        m(harvestConfiguration.getIntervalOnIdle());
        f(harvestConfiguration.getActions());
        e(harvestConfiguration.getActionAge());
        l(harvestConfiguration.getCrashTrails());
        a(harvestConfiguration.isEnableErrTrace());
        g(harvestConfiguration.getStackDepth());
        h(harvestConfiguration.getErrRspSize());
        j(harvestConfiguration.getErrs());
        a(harvestConfiguration.getUiTraceThreshold());
        k(harvestConfiguration.getControllerInterval());
        c(harvestConfiguration.getHotStartThreshold());
        d(harvestConfiguration.getSlowStartThreshold());
        i(harvestConfiguration.getUrlFilterMode());
        w(harvestConfiguration.getUrlRulesToString());
        v(harvestConfiguration.getIgnoredErrorRulestoString());
        d(harvestConfiguration.getEnabled());
        a(harvestConfiguration.getFeature());
        b(r.u().B());
        a(ConfigurationName.anrThresholdName, harvestConfiguration.getAnrThreshold());
        a(ConfigurationName.betaOn, harvestConfiguration.getBetaonFlag());
        a("uiPages", harvestConfiguration.getUiPages());
        s(harvestConfiguration.getBrsAgent());
        a(ConfigurationName.enableNdk, harvestConfiguration.isEnableNdk());
        a(ConfigurationName.tyId, harvestConfiguration.getTyId());
        a(ConfigurationName.tyIdNew, harvestConfiguration.getTyIdNew());
        a(ConfigurationName.apmsIssue, harvestConfiguration.getApmsIssue());
        a(ConfigurationName.tyPlatform, harvestConfiguration.getTyPlatformValue());
        if (r("deviceId")) {
            q("deviceId");
        }
        a(harvestConfiguration.getNbsSessionConfig());
        a(harvestConfiguration.getLogTrackConfig());
        a(ConfigurationName.stackInterval, harvestConfiguration.getStackInterval());
        a(ConfigurationName.httpBodyMaxSize, harvestConfiguration.getHttpBodyMaxSize());
        a(ConfigurationName.PROPAGATORS, harvestConfiguration.getPropagators());
        a(ConfigurationName.CPUCONFIG, harvestConfiguration.getCpuConfig());
        a(ConfigurationName.viewClassWhitelist, harvestConfiguration.getViewClassWhitelist());
        a(f38307c, r.u().aK());
    }

    private void l(int i2) {
        a("crashTrails", i2);
    }

    private void q(String str) {
        this.f38312j.lock();
        try {
            this.f38311i.remove(str);
            this.f38311i.apply();
        } finally {
            this.f38312j.unlock();
        }
    }

    private boolean r(String str) {
        return this.f38310h.contains(str);
    }

    private void s(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        a(ConfigurationName.brsAgent, str);
        a(ConfigurationName.brsAgentMD5, ah.d(str).toLowerCase());
    }

    private boolean t(String str) {
        return this.f38310h.contains(p.b(str));
    }

    private boolean u(String str) {
        String str2;
        if (ak.b(this.d)) {
            str2 = this.d.getPackageName() + f38308e;
        } else {
            str2 = ConfigurationName.processName;
        }
        if (ak.r(str2)) {
            return false;
        }
        return this.d.getSharedPreferences(ak.h(str2), 0).contains(p.b(str));
    }

    public int A() {
        return g("responseBodyLimit");
    }

    public int B() {
        return g("errorLimit");
    }

    public int C() {
        return g("urlFilterMode");
    }

    public float D() {
        if (this.g == null) {
            this.g = h("activityTraceThreshold");
        }
        Float f2 = this.g;
        return f2 != null ? f2.floatValue() : Call.Parameters.DEFAULT_CAMERA_ZOOM;
    }

    public long E() {
        return w();
    }

    public int F() {
        return x();
    }

    public String G() {
        return c("userName");
    }

    public int H() {
        return g("controllerInterval");
    }

    public void I() {
        this.f38312j.lock();
        try {
            k("");
        } finally {
            this.f38312j.unlock();
        }
    }

    public long J() {
        return this.f38310h.getLong(p.b("hotStartThreshold"), HarvestConfiguration.HOT_START_THRESHOLD);
    }

    public long K() {
        return this.f38310h.getLong(p.b("slowStartThreshold"), HarvestConfiguration.SLOW_USER_ACTION_THRESHOLD);
    }

    public int L() {
        return this.f38310h.getInt(p.b(ConfigurationName.anrThresholdName), 5000);
    }

    public String M() {
        return c("urlRules");
    }

    public String N() {
        return c("ignoreErrRules");
    }

    public int O() {
        if (!ak.b(this.d)) {
            return b(ConfigurationName.features, ConfigurationName.processName);
        }
        return b(ConfigurationName.features, this.d.getPackageName() + f38308e);
    }

    public int P() {
        return g("uiPages");
    }

    public long Q() {
        return f("disableTimeout");
    }

    public void a() {
        NBSSessionConfig.initInstance(0, t(ConfigurationName.REPLAYQUALITY) ? b(ConfigurationName.REPLAYQUALITY, 0) : Sink.ORIENTATION_180, t(ConfigurationName.REPLAYUPLOADTYPE) ? g(ConfigurationName.REPLAYUPLOADTYPE) : 0, t(ConfigurationName.REPLAYCACHESIZE) ? g(ConfigurationName.REPLAYCACHESIZE) : 10, Boolean.valueOf(t(ConfigurationName.MASK_INPUT_ENABLED) ? d(ConfigurationName.MASK_INPUT_ENABLED) : true), Boolean.valueOf(t(ConfigurationName.MASK_TEXT_ENABLED) ? d(ConfigurationName.MASK_TEXT_ENABLED) : false), Boolean.valueOf(t(ConfigurationName.MASK_IMAGE_ENABLED) ? d(ConfigurationName.MASK_IMAGE_ENABLED) : false), t(ConfigurationName.MASK_PAGE_BLACKLIST) ? c(ConfigurationName.MASK_PAGE_BLACKLIST) : "", t(ConfigurationName.MASK_VIEWID_BLACKLIST) ? c(ConfigurationName.MASK_VIEWID_BLACKLIST) : "");
        Logger.debug(f38305a, "sessionConfig: " + NBSSessionConfig.getInstance().toString());
    }

    public String c(String str) {
        String strB = p.b(str);
        if (this.f38310h.contains(strB)) {
            return p.c(this.f38310h.getString(strB, null));
        }
        return null;
    }

    public void d(int i2) {
        if (!ak.b(this.d)) {
            a(ConfigurationName.sdkEnabled, i2, ConfigurationName.processName);
            return;
        }
        a(ConfigurationName.sdkEnabled, i2, this.d.getPackageName() + f38308e);
    }

    public boolean e(String str) {
        return this.f38310h.getBoolean(p.b(str), true);
    }

    public boolean f() {
        Context context = this.d;
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.getPackageName());
        sb.append(f38308e);
        return context.getSharedPreferences(ak.h(sb.toString()), 0).contains(p.b(ConfigurationName.features));
    }

    public int g() {
        return this.f38310h.getInt(p.b(ConfigurationName.appVersion), -1);
    }

    public Float h(String str) {
        String strB = p.b(str);
        return !this.f38310h.contains(strB) ? Float.valueOf(Call.Parameters.DEFAULT_CAMERA_ZOOM) : Float.valueOf(((int) (this.f38310h.getFloat(strB, Call.Parameters.DEFAULT_CAMERA_ZOOM) * 100.0f)) / 100.0f);
    }

    public int i() {
        if (!ak.b(this.d)) {
            return b(ConfigurationName.sdkEnabled, ConfigurationName.processName);
        }
        return b(ConfigurationName.sdkEnabled, this.d.getPackageName() + f38308e);
    }

    public int j() {
        return g(ConfigurationName.betaOn);
    }

    public void k() {
        try {
            com.networkbench.agent.impl.c.j.a("SavedState loadHarvestConfiguration method called");
            if (r("deviceId")) {
                r.u().l(a("deviceId"));
            }
            if (t("deviceId")) {
                this.f38309f.setTingyunId(q());
                r.u().l(q());
            }
            if (t("harvestIntervalInSeconds")) {
                this.f38309f.setInterval(E());
            }
            if (t("maxActionAgeInSeconds")) {
                this.f38309f.setActionAge(F());
            }
            if (t("maxActionCount")) {
                this.f38309f.setActions(y());
            }
            if (t("stackTraceLimit")) {
                this.f38309f.setStackDepth(z());
            }
            if (t("responseBodyLimit")) {
                this.f38309f.setErrRspSize(A());
            }
            if (t("collectNetworkErrors")) {
                this.f38309f.setEnableErrTrace(u());
            }
            if (t("errorLimit")) {
                this.f38309f.setErrs(B());
            }
            if (t("urlFilterMode")) {
                this.f38309f.setUrlFilterMode(C());
            }
            if (t("activityTraceThreshold")) {
                this.f38309f.setUiTraceThreshold(D());
            }
            if (t("harvestIntervalOnIdleInSeconds")) {
                this.f38309f.setIntervalOnIdle(R());
            }
            if (t("controllerInterval")) {
                this.f38309f.setControllerInterval(H());
            }
            if (t("hotStartThreshold")) {
                this.f38309f.setHotStartThreshold(J());
            }
            if (t("slowStartThreshold")) {
                this.f38309f.setSlowStartThreshold(K());
            }
            if (t("urlRules")) {
                this.f38309f.setUrlRules(M());
            }
            if (t("ignoreErrRules")) {
                this.f38309f.setIgnoreErrRules(N());
            }
            if (t("uiPages")) {
                this.f38309f.setUiPages(P());
            }
            if (u(ConfigurationName.features)) {
                r.u().c(O());
                this.f38309f.setFeature(O());
            }
            if (u(ConfigurationName.sdkEnabled)) {
                r.u().d(i() != 0);
            }
            if (t(ConfigurationName.anrThresholdName)) {
                this.f38309f.setAnrThreshold(L());
            }
            if (t(ConfigurationName.betaOn)) {
                r.u().e(g(ConfigurationName.betaOn));
            }
            if (t(ConfigurationName.brsAgent)) {
                JsPageUtil.setJSAgent(c(ConfigurationName.brsAgent));
            } else {
                JsPageUtil.setJSAgent("");
            }
            if (t(ConfigurationName.enableNdk)) {
                r.u().a(d(ConfigurationName.enableNdk));
            }
            if (t(ConfigurationName.tyId)) {
                r.u().m(c(ConfigurationName.tyId));
            }
            if (t(ConfigurationName.tyIdNew)) {
                r.u().n(c(ConfigurationName.tyIdNew));
            }
            if (t(ConfigurationName.tyPlatform)) {
                r.u().g(g(ConfigurationName.tyPlatform));
            }
            if (t(ConfigurationName.PROPAGATORS)) {
                r.u().aH().a(c(ConfigurationName.PROPAGATORS));
            }
            if (t(ConfigurationName.apmsIssue)) {
                r.u().a(c(ConfigurationName.apmsIssue));
            }
            a();
            if (t(ConfigurationName.LOG_TRACK_SP_KEY)) {
                this.f38309f.setLogTrackConfig(b());
            }
            if (t(ConfigurationName.stackInterval)) {
                com.networkbench.agent.impl.b.h.b(g(ConfigurationName.stackInterval));
            } else {
                com.networkbench.agent.impl.b.h.b(-1);
            }
            if (t(ConfigurationName.httpBodyMaxSize)) {
                this.f38309f.setHttpBodyMaxSize(f(ConfigurationName.httpBodyMaxSize));
            }
            if (t(ConfigurationName.INITSWITCHLOG)) {
                r.u().q(d(ConfigurationName.INITSWITCHLOG));
                r.u().aC();
            } else {
                r.u().aC();
            }
            if (t(ConfigurationName.UPLOADSWITCH)) {
                r.u().p(d(ConfigurationName.UPLOADSWITCH));
                r.u().aB();
            } else {
                r.u().aB();
            }
            if (t(ConfigurationName.BATTERYCONFIG)) {
                r.u().r(c(ConfigurationName.BATTERYCONFIG));
            }
            if (t(ConfigurationName.CPUCONFIG)) {
                r.u().aI().a(c(ConfigurationName.CPUCONFIG));
            }
            f38306b.a("Loaded configuration: " + this.f38309f);
            com.networkbench.agent.impl.c.j.a("SavedState loadHarvestConfiguration method completed");
        } catch (Throwable unused) {
            this.f38311i.clear().apply();
        }
    }

    public void m(String str) {
        a("crossProcessId", str);
    }

    public String n() {
        return c(ConfigurationName.Native_Crash_UUID);
    }

    public String o() {
        return c("NBSNewLensAgentDisabledVersion");
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestAdapter, com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestComplete() {
        a(HarvestConfiguration.getDefaultHarvestConfiguration());
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestAdapter, com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestConnected() {
        b(HarvestConfiguration.getDefaultHarvestConfiguration());
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestAdapter, com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestDeviceIdError() {
        f38306b.a("onHarvestError  初始化出现错误 清除掉 缓存的feature状态!");
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestAdapter, com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestDisabled() {
    }

    @Override // com.networkbench.agent.impl.harvest.HarvestAdapter, com.networkbench.agent.impl.harvest.HarvestLifecycleAware
    public void onHarvestDisconnected() {
        f38306b.a("Clearing harvest configuration.");
        I();
    }

    public String p() {
        return c("token");
    }

    public long v() {
        return f("serverTimestamp");
    }

    public long w() {
        return f("harvestIntervalInSeconds");
    }

    public int x() {
        return g("maxActionAgeInSeconds");
    }

    public int y() {
        return g("maxActionCount");
    }

    public int z() {
        return g("stackTraceLimit");
    }

    public void l() {
    }

    public HarvestConfiguration m() {
        return this.f38309f;
    }

    private void m(int i2) {
        a("harvestIntervalOnIdleInSeconds", i2);
    }

    private void v(String str) {
        a("ignoreErrRules", str);
    }

    private void w(String str) {
        a("urlRules", str);
    }

    public void j(String str) {
        a(ConfigurationName.deviceId, str);
    }

    public void l(String str) {
        a("agentVersion", str);
    }

    public void n(String str) {
        a("androidIdBugWorkAround", str);
    }

    public void o(String str) {
        a("userName", str);
    }

    public void p(String str) {
        a("oaid", str);
    }

    public String r() {
        return c("agentVersion");
    }

    public void j(int i2) {
        a("errorLimit", i2);
    }

    public String t() {
        return c("androidIdBugWorkAround");
    }

    public String e() {
        return c("oaid");
    }

    public void e(int i2) {
        a("maxActionAgeInSeconds", i2);
    }

    public void e(long j2) {
        a("disableTimeout", j2);
    }

    public int g(String str) {
        return this.f38310h.getInt(p.b(str), 0);
    }

    public void g(int i2) {
        a("stackTraceLimit", i2);
    }

    public void c(int i2) {
        a(ConfigurationName.appVersionOfPrivacy, i2);
    }

    public String s() {
        return c("crossProcessId");
    }

    public int c() {
        return this.f38310h.getInt(p.b("crashTrails"), 20);
    }

    public void c(long j2) {
        a("hotStartThreshold", j2);
    }

    public String q() {
        return c(ConfigurationName.deviceId);
    }

    public void c(boolean z) {
        a(ConfigurationName.UPLOADSWITCH, z);
    }

    public int h() {
        return this.f38310h.getInt(p.b(ConfigurationName.appVersionOfPrivacy), -1);
    }

    public void h(int i2) {
        a("responseBodyLimit", i2);
    }

    public int d() {
        return this.f38310h.getInt(p.b(ConfigurationName.stackInterval), -1);
    }

    public boolean d(String str) {
        return this.f38310h.getBoolean(p.b(str), false);
    }

    public void i(String str) {
        a("NBSNewLensAgentDisabledVersion", str);
    }

    public void i(int i2) {
        a("urlFilterMode", i2);
    }

    public void d(long j2) {
        a("slowStartThreshold", j2);
    }

    public long f(String str) {
        return this.f38310h.getLong(p.b(str), 0L);
    }

    public void f(int i2) {
        a("maxActionCount", i2);
    }

    public boolean u() {
        return d("collectNetworkErrors");
    }

    private void a(NBSSessionConfig nBSSessionConfig) {
        f38306b.a("Saving sessionConfig: " + nBSSessionConfig.toString());
        a(ConfigurationName.REPLAYTHRESHOLD, nBSSessionConfig.getReplayThreshold());
        a(ConfigurationName.REPLAYQUALITY, nBSSessionConfig.getReplayQuality());
        a(ConfigurationName.REPLAYUPLOADTYPE, nBSSessionConfig.getReplayUploadType());
        a(ConfigurationName.REPLAYCACHESIZE, nBSSessionConfig.getReplayCacheSize());
        a(ConfigurationName.MASK_INPUT_ENABLED, nBSSessionConfig.maskInputEnabled);
        a(ConfigurationName.MASK_TEXT_ENABLED, nBSSessionConfig.maskTextEnabled);
        a(ConfigurationName.MASK_IMAGE_ENABLED, nBSSessionConfig.maskImageEnabled);
        a(ConfigurationName.MASK_PAGE_BLACKLIST, nBSSessionConfig.maskPageBlacklist);
        a(ConfigurationName.MASK_VIEWID_BLACKLIST, nBSSessionConfig.maskViewIdBlacklist);
    }

    public void a(HarvestConfiguration harvestConfiguration) {
        if (this.f38309f.equals(harvestConfiguration)) {
            a(harvestConfiguration.getFeature());
        } else {
            b(harvestConfiguration);
        }
    }

    private void a(com.networkbench.agent.impl.plugin.c.b bVar) {
        if (ab.c(bVar.b())) {
            Logger.debug(f38305a, "logTrackConfig is empty, not save");
            return;
        }
        Logger.debug(f38305a, "save log config:" + bVar.b());
        a(ConfigurationName.LOG_TRACK_SP_KEY, bVar.b());
    }

    public String a(String str) {
        if (this.f38310h.contains(str)) {
            return this.f38310h.getString(str, "");
        }
        return null;
    }

    public void a(int i2) {
        if (ak.b(this.d)) {
            a(ConfigurationName.features, i2, this.d.getPackageName() + f38308e);
            return;
        }
        a(ConfigurationName.features, i2, ConfigurationName.processName);
    }

    private void a(String str, int i2, String str2) {
        SharedPreferences.Editor editorEdit = this.d.getSharedPreferences(ak.h(str2), 0).edit();
        String strB = p.b(str);
        com.networkbench.agent.impl.c.g.p("saveFeatureWithProcess path:" + ak.h(ConfigurationName.processName));
        editorEdit.putInt(strB, i2);
        editorEdit.apply();
    }

    public void a(String str, String str2) {
        this.f38312j.lock();
        try {
            this.f38311i.putString(p.b(str), p.b(str2));
            this.f38311i.apply();
        } finally {
            this.f38312j.unlock();
        }
    }

    public void a(String str, boolean z) {
        this.f38312j.lock();
        try {
            this.f38311i.putBoolean(p.b(str), z);
            this.f38311i.apply();
        } finally {
            this.f38312j.unlock();
        }
    }

    public void a(String str, int i2) {
        this.f38312j.lock();
        try {
            this.f38311i.putInt(p.b(str), i2);
            this.f38311i.apply();
        } finally {
            this.f38312j.unlock();
        }
    }

    public void a(String str, long j2) {
        this.f38312j.lock();
        try {
            this.f38311i.putLong(p.b(str), j2);
            this.f38311i.apply();
        } finally {
            this.f38312j.unlock();
        }
    }

    public void a(String str, float f2) {
        this.f38312j.lock();
        try {
            this.f38311i.putFloat(p.b(str), f2);
            this.f38311i.apply();
        } finally {
            this.f38312j.unlock();
        }
    }

    public void a(boolean z) {
        a("collectNetworkErrors", z);
    }

    public void a(long j2) {
        a("serverTimestamp", j2);
    }

    public void a(float f2) {
        this.g = Float.valueOf(f2);
        a("activityTraceThreshold", f2);
    }

    public com.networkbench.agent.impl.plugin.c.b b() {
        String strC = c(ConfigurationName.LOG_TRACK_SP_KEY);
        Logger.debug(f38305a, "get log config from sp is:" + strC);
        com.networkbench.agent.impl.plugin.c.b bVarA = com.networkbench.agent.impl.plugin.c.b.a();
        if (ab.c(strC)) {
            Logger.debug(f38305a, "logTrack string is empty");
            return bVarA;
        }
        bVarA.b(strC);
        return bVarA;
    }

    public void b(int i2) {
        a(ConfigurationName.appVersion, i2);
    }

    public void b(String str) {
        a(ConfigurationName.Native_Crash_UUID, str);
    }

    public int b(String str, int i2) {
        return this.f38310h.getInt(p.b(str), i2);
    }

    public void b(long j2) {
        a("harvestIntervalInSeconds", j2);
    }

    private int b(String str, String str2) {
        return this.d.getSharedPreferences(ak.h(str2), 0).getInt(p.b(str), 0);
    }

    public void b(boolean z) {
        a(ConfigurationName.INITSWITCHLOG, z);
    }

    public void k(String str) {
        a("token", str);
    }

    public void k(int i2) {
        a("controllerInterval", i2);
    }
}
