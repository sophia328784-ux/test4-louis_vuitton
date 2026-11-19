package com.networkbench.agent.impl.harvest;

import android.text.TextUtils;
import com.networkbench.agent.impl.c.e;
import com.networkbench.agent.impl.c.f;
import com.networkbench.agent.impl.c.g;
import com.networkbench.agent.impl.data.c.a;
import com.networkbench.agent.impl.data.j;
import com.networkbench.agent.impl.plugin.c.b;
import com.networkbench.agent.impl.session.screen.NBSSessionConfig;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ab;
import com.networkbench.agent.impl.util.d;
import com.networkbench.agent.impl.util.r;
import com.networkbench.agent.impl.webview.JsPageUtil;
import defpackage.d21;
import defpackage.o60;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import net.rtccloud.sdk.Sink;
import net.rtccloud.sdk.internal.Constants;
import okhttp3.internal.ws.RealWebSocket;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class HarvestConfiguration {
    public static final int ANR_ACTIONS_MAX_COUNT = 20;
    public static final int ANR_THRESHOLD = 5000;
    private static final String FILTER_TYPE_TAG = "*";
    public static final int SLOW_START_THRESHOLD = 3000;
    public static final long SLOW_USER_ACTION_THRESHOLD = 3000;
    public static final int S_DOM_THR = 2100;
    public static final int S_FIRSTPAINT_THR = 1400;
    public static final int S_FIRSTSCREEN_THR = 2800;
    public static final int S_PAGE_THR = 7000;
    private static String TAG = "HarvestConfiguration";
    private static HarvestConfiguration defaultHarvestConfiguration;
    private int actionAge;
    private int actionFailureThreshold;
    private int actions;
    private String apmsIssue;
    private String batteryConfig;
    private int betaonFlag;
    private String brsAgent;
    private String cdnHeaderName;
    private String cpuConfig;
    private int crashTrails;
    private String deviceId;
    private boolean dnsconn;
    private boolean enableErrTrace;
    private int enabled;
    private int errRspSize;
    private int errs;
    private int feature;
    private long hotStartThreshold;
    private ArrayList<j.a> ignoreErrRules;
    private String ignoredErrorRulesToSting;
    private int intervalOnIdle;
    private b logTrackConfig;
    private NBSSessionConfig nbsSessionConfig;
    private boolean pluginSwitch;
    private String propagators;
    private int slowDomThreshold;
    private int slowFirstPaintThreshold;
    private int slowFirstScreenThreshold;
    private int slowInteractionThreshold;
    private int slowPageDurationThreshold;
    private int slowPageLoadThreshold;
    private int slowPageThreshold;
    private long slowStartThreshold;
    private long slowUserActionThreshold;
    private int stackDepth;
    private int stackInterval;
    private String token;
    private String tyId;
    private int uiPages;
    private int uiTraceRetries;
    private int uiTraceSize;
    private float uiTraceThreshold;
    private int uiTraces;
    private int urlFilterMode;
    private ArrayList<j.b> urlRules;
    private String urlRulesToString;
    private String viewClassWhitelist;
    private String whiteList;
    private static e log = f.a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static List<String> f37215a = new ArrayList();
    public static int HOT_START_THRESHOLD = Sink.ORIENTATION_180;
    private long interval = 60;
    private boolean enableNdk = true;
    private long httpBodyMaxSize = 10;
    private int anrThreshold = 5000;
    private int anrAction = 20;
    private ConcurrentHashMap<UrlFilter, j.c> urlParamArray = new ConcurrentHashMap<>();
    private ConcurrentHashMap<UrlFilter, j.c> urlParamBlackArray = new ConcurrentHashMap<>();
    private boolean controllerEnable = false;
    private float uiTraceMaxTime = 100000.0f;
    private int userActions = 100;
    private int tyPlatformValue = 0;
    private String tyIdNew = "";
    private int controllerInterval = 60;

    public enum FILTERTYPE {
        NONE,
        FIRST_FILTER,
        MIDDLE_FILTER,
        LAST_FILTER
    }

    public class UrlFilter {
        public FILTERTYPE filtertype;
        public String url;

        public UrlFilter() {
        }

        public boolean isAvalidUrl(String str) throws NullPointerException {
            if (this.filtertype == FILTERTYPE.FIRST_FILTER && str.endsWith(this.url)) {
                return true;
            }
            if (this.filtertype == FILTERTYPE.LAST_FILTER && str.startsWith(this.url)) {
                return true;
            }
            if (this.filtertype == FILTERTYPE.MIDDLE_FILTER && str.contains(this.url)) {
                return true;
            }
            return this.filtertype == FILTERTYPE.NONE && str.contains(this.url);
        }
    }

    public HarvestConfiguration() {
        setDefaultValues();
    }

    private String[] filterStrParam(String str) {
        String[] strArrC;
        if (TextUtils.isEmpty(str) || (strArrC = ab.c(str, ",")) == null || strArrC.length <= 0) {
            return null;
        }
        return strArrC;
    }

    public static List<String> getCellInfoConfig() {
        return f37215a;
    }

    private static List<String> getCellInfoType(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < jSONArray.length(); i2++) {
            try {
                arrayList.add(jSONArray.getString(i2));
            } catch (Throwable th) {
                d21.C(th, new StringBuilder("cellInfoJsonArray error :"), log);
                return arrayList;
            }
        }
        return arrayList;
    }

    public static HarvestConfiguration getDefaultHarvestConfiguration() {
        HarvestConfiguration harvestConfiguration = defaultHarvestConfiguration;
        if (harvestConfiguration != null) {
            return harvestConfiguration;
        }
        HarvestConfiguration harvestConfiguration2 = new HarvestConfiguration();
        defaultHarvestConfiguration = harvestConfiguration2;
        return harvestConfiguration2;
    }

    private j.c getUrlParamsItem(JSONObject jSONObject) throws Exception {
        String[] strArrFilterStrParam;
        String[] strArrFilterStrParam2;
        String[] strArrFilterStrParam3;
        String[] strArrFilterStrParam4;
        String[] strArrFilterStrParam5;
        if (jSONObject == null) {
            return null;
        }
        j.c cVar = new j.c();
        if (jSONObject.has("get") && (strArrFilterStrParam5 = filterStrParam(jSONObject.getString("get"))) != null) {
            cVar.f36923a = strArrFilterStrParam5;
        }
        if (jSONObject.has("post") && (strArrFilterStrParam4 = filterStrParam(jSONObject.getString("post"))) != null) {
            cVar.f36924b = strArrFilterStrParam4;
        }
        if (jSONObject.has("headers") && (strArrFilterStrParam3 = filterStrParam(jSONObject.getString("headers"))) != null) {
            cVar.f36925c = strArrFilterStrParam3;
        }
        if (jSONObject.has("resHeaders")) {
            String[] strArrFilterStrParam6 = filterStrParam(jSONObject.getString("resHeaders"));
            g.o("parseHarvestConfigFromResult  resHeaders: " + strArrFilterStrParam6);
            if (strArrFilterStrParam6 != null) {
                cVar.d = strArrFilterStrParam6;
            }
        }
        if (jSONObject.has("reqBodys") && (strArrFilterStrParam2 = filterStrParam(jSONObject.getString("reqBodys"))) != null) {
            cVar.f36926e = strArrFilterStrParam2;
        }
        if (jSONObject.has("resBodys") && (strArrFilterStrParam = filterStrParam(jSONObject.getString("resBodys"))) != null) {
            cVar.f36927f = strArrFilterStrParam;
        }
        log.a("add param filer urlparam: " + cVar.toString());
        return cVar;
    }

    private boolean isNull_Or_Exist(JSONObject jSONObject, String str) {
        return jSONObject.has(str) && !jSONObject.isNull(str);
    }

    private void setCpuConfig(String str) {
        this.cpuConfig = str;
    }

    private void setPropagators(String str) {
        this.propagators = str;
    }

    private void setTYIdNew(String str) {
        this.tyIdNew = str;
    }

    public int calcState(long j2, long j3) {
        int i2 = j3 >= ((long) getSlowPageDurationThreshold()) ? 2 : 0;
        if (j2 >= getSlowPageLoadThreshold()) {
            return 1;
        }
        return i2;
    }

    public String encryptAesToHeader() throws Exception {
        if (r.u().i() != null) {
            return r.u().i().c(new String(r.u().i().b()));
        }
        throw new d("encryptContent is not init");
    }

    public String encryptContentAES(String str) {
        return str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HarvestConfiguration harvestConfiguration = (HarvestConfiguration) obj;
        if (this.actionAge != harvestConfiguration.actionAge || this.actions != harvestConfiguration.actions || this.dnsconn != harvestConfiguration.dnsconn || this.enableErrTrace != harvestConfiguration.enableErrTrace || this.errRspSize != harvestConfiguration.errRspSize || this.errs != harvestConfiguration.errs) {
            return false;
        }
        ArrayList<j.a> arrayList = this.ignoreErrRules;
        ArrayList<j.a> arrayList2 = harvestConfiguration.ignoreErrRules;
        if (arrayList == null) {
            if (arrayList2 != null) {
                return false;
            }
        } else if (!arrayList.equals(arrayList2)) {
            return false;
        }
        if (this.interval != harvestConfiguration.interval || this.intervalOnIdle != harvestConfiguration.intervalOnIdle || this.stackDepth != harvestConfiguration.stackDepth || this.uiTraceRetries != harvestConfiguration.uiTraceRetries || this.uiTraceSize != harvestConfiguration.uiTraceSize || Float.floatToIntBits(this.uiTraceThreshold) != Float.floatToIntBits(harvestConfiguration.uiTraceThreshold) || this.uiTraces != harvestConfiguration.uiTraces || this.urlFilterMode != harvestConfiguration.urlFilterMode || this.controllerInterval != harvestConfiguration.controllerInterval) {
            return false;
        }
        ArrayList<j.b> arrayList3 = this.urlRules;
        ArrayList<j.b> arrayList4 = harvestConfiguration.urlRules;
        if (arrayList3 == null) {
            if (arrayList4 != null) {
                return false;
            }
        } else if (!arrayList3.equals(arrayList4)) {
            return false;
        }
        return true;
    }

    public int getActionAge() {
        return this.actionAge;
    }

    public int getActionFailureThreshold() {
        return this.actionFailureThreshold;
    }

    public int getActions() {
        return this.actions;
    }

    public int getAnrAction() {
        return this.anrAction;
    }

    public int getAnrThreshold() {
        return this.anrThreshold;
    }

    public String getApmsIssue() {
        return this.apmsIssue;
    }

    public String getBatteryConfig() {
        return this.batteryConfig;
    }

    public int getBetaonFlag() {
        return this.betaonFlag;
    }

    public String getBrsAgent() {
        return this.brsAgent;
    }

    public String getCdnHeaderName() {
        return this.cdnHeaderName;
    }

    public boolean getControllerEnable() {
        return this.controllerEnable;
    }

    public int getControllerInterval() {
        return this.controllerInterval;
    }

    public String getCpuConfig() {
        return this.cpuConfig;
    }

    public int getCrashTrails() {
        return this.crashTrails;
    }

    public int getEnabled() {
        return this.enabled;
    }

    public int getErrRspSize() {
        return this.errRspSize;
    }

    public int getErrs() {
        return this.errs;
    }

    public int getFeature() {
        return this.feature;
    }

    public long getHotStartThreshold() {
        return this.hotStartThreshold;
    }

    public long getHttpBodyMaxSize() {
        return this.httpBodyMaxSize;
    }

    public ArrayList<j.a> getIgnoreErrRules() {
        return this.ignoreErrRules;
    }

    public String getIgnoredErrorRulestoString() {
        return this.ignoredErrorRulesToSting;
    }

    public long getInterval() {
        return this.interval;
    }

    public int getIntervalOnIdle() {
        return this.intervalOnIdle;
    }

    public b getLogTrackConfig() {
        return this.logTrackConfig;
    }

    public NBSSessionConfig getNbsSessionConfig() {
        return this.nbsSessionConfig;
    }

    public String getPropagators() {
        return this.propagators;
    }

    public int getSlowDomThreshold() {
        return this.slowDomThreshold;
    }

    public int getSlowFirstPaintThreshold() {
        return this.slowFirstPaintThreshold;
    }

    public int getSlowFirstScreenThreshold() {
        return this.slowFirstScreenThreshold;
    }

    public int getSlowPageDurationThreshold() {
        return this.slowPageDurationThreshold;
    }

    public int getSlowPageLoadThreshold() {
        return this.slowPageLoadThreshold;
    }

    public int getSlowPageThreshold() {
        return this.slowPageThreshold;
    }

    public long getSlowStartThreshold() {
        return this.slowStartThreshold;
    }

    public long getSlowUserActionThreshold() {
        return this.slowUserActionThreshold;
    }

    public int getStackDepth() {
        return this.stackDepth;
    }

    public int getStackInterval() {
        return this.stackInterval;
    }

    public String getTingyunId() {
        return this.deviceId;
    }

    public String getToken() {
        return this.token;
    }

    public String getTyId() {
        return this.tyId;
    }

    public String getTyIdNew() {
        return this.tyIdNew;
    }

    public int getTyPlatformValue() {
        return this.tyPlatformValue;
    }

    public int getUiPages() {
        return this.uiPages;
    }

    public double getUiTraceMaxTime() {
        return this.uiTraceMaxTime;
    }

    public int getUiTraceRetries() {
        return this.uiTraceRetries;
    }

    public int getUiTraceSize() {
        return this.uiTraceSize;
    }

    public float getUiTraceThreshold() {
        return this.uiTraceThreshold;
    }

    public int getUiTraces() {
        return this.uiTraces;
    }

    public UrlFilter getUrlFilterKey(String str) throws Exception {
        FILTERTYPE urlFilterType = getUrlFilterType(str, "*");
        UrlFilter urlFilter = new UrlFilter();
        urlFilter.filtertype = urlFilterType;
        if (urlFilterType == FILTERTYPE.FIRST_FILTER) {
            if (str.length() > 1) {
                urlFilter.url = str.substring(1, str.length()).trim();
            }
        } else if (urlFilterType == FILTERTYPE.LAST_FILTER) {
            if (str.length() > 1) {
                urlFilter.url = str.substring(0, str.length() - 1).trim();
            }
        } else if (urlFilterType == FILTERTYPE.MIDDLE_FILTER) {
            if (str.length() > 2) {
                urlFilter.url = str.substring(1, str.length() - 1).trim();
            }
        } else if (urlFilterType.ordinal() == FILTERTYPE.NONE.ordinal()) {
            urlFilter.url = str.trim();
        }
        if (TextUtils.isEmpty(urlFilter.url)) {
            return null;
        }
        return urlFilter;
    }

    public int getUrlFilterMode() {
        return this.urlFilterMode;
    }

    public FILTERTYPE getUrlFilterType(String str, String str2) throws NullPointerException {
        FILTERTYPE filtertype = FILTERTYPE.NONE;
        if (str.startsWith(str2)) {
            return str.endsWith(str2) ? FILTERTYPE.MIDDLE_FILTER : FILTERTYPE.FIRST_FILTER;
        }
        return str.endsWith(str2) ? FILTERTYPE.LAST_FILTER : filtertype;
    }

    public ConcurrentHashMap<UrlFilter, j.c> getUrlParamArray() {
        return this.urlParamArray;
    }

    public ConcurrentHashMap<UrlFilter, j.c> getUrlParamBlackArray() {
        return this.urlParamBlackArray;
    }

    public ArrayList<j.b> getUrlRules() {
        return this.urlRules;
    }

    public String getUrlRulesToString() {
        return this.urlRulesToString;
    }

    public int getUserActions() {
        return this.userActions;
    }

    public String getViewClassWhitelist() {
        String str = this.viewClassWhitelist;
        return str == null ? "" : str;
    }

    public String getWhiteList() {
        return this.whiteList;
    }

    public int hashCode() {
        int i2 = (((((((((((this.actionAge + 31) * 31) + this.actions) * 31) + (this.dnsconn ? 1231 : 1237)) * 31) + (this.enableErrTrace ? 1231 : 1237)) * 31) + this.errRspSize) * 31) + this.errs) * 31;
        ArrayList<j.a> arrayList = this.ignoreErrRules;
        int iHashCode = arrayList == null ? 0 : arrayList.hashCode();
        long j2 = this.interval;
        int iFloatToIntBits = (((((Float.floatToIntBits(this.uiTraceThreshold) + ((((((((((((i2 + iHashCode) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.intervalOnIdle) * 31) + this.stackDepth) * 31) + this.uiTraceRetries) * 31) + this.uiTraceSize) * 31)) * 31) + this.uiTraces) * 31) + this.urlFilterMode) * 31;
        ArrayList<j.b> arrayList2 = this.urlRules;
        return iFloatToIntBits + (arrayList2 != null ? arrayList2.hashCode() : 0);
    }

    public boolean isDnsconn() {
        return this.dnsconn;
    }

    public boolean isEnableErrTrace() {
        return this.enableErrTrace;
    }

    public boolean isEnableNdk() {
        return this.enableNdk;
    }

    public boolean isPluginSwitch() {
        return this.pluginSwitch;
    }

    public boolean isUrlBlackListEnabled() {
        return getUrlParamBlackArray().size() > 0 && getUrlParamArray().size() == 0;
    }

    public boolean isUrlWhiteListEnabled() {
        return getUrlParamArray().size() > 0;
    }

    /* JADX WARN: Code duplicated, block: B:107:0x03b5 A[Catch: all -> 0x03e5, TRY_LEAVE, TryCatch #5 {, blocks: (B:101:0x03a3, B:103:0x03a9, B:105:0x03af, B:107:0x03b5), top: B:263:0x03a3 }] */
    /* JADX WARN: Code duplicated, block: B:133:0x0448 A[Catch: all -> 0x0450, TRY_LEAVE, TryCatch #29 {all -> 0x0450, blocks: (B:131:0x0442, B:133:0x0448), top: B:311:0x0442 }] */
    /* JADX WARN: Code duplicated, block: B:141:0x0473 A[Catch: all -> 0x047d, TryCatch #16 {all -> 0x047d, blocks: (B:139:0x046d, B:141:0x0473, B:145:0x047f, B:147:0x0485, B:148:0x048c, B:150:0x0494, B:151:0x049b, B:153:0x04a3), top: B:285:0x046d }] */
    /* JADX WARN: Code duplicated, block: B:147:0x0485 A[Catch: all -> 0x047d, TryCatch #16 {all -> 0x047d, blocks: (B:139:0x046d, B:141:0x0473, B:145:0x047f, B:147:0x0485, B:148:0x048c, B:150:0x0494, B:151:0x049b, B:153:0x04a3), top: B:285:0x046d }] */
    /* JADX WARN: Code duplicated, block: B:150:0x0494 A[Catch: all -> 0x047d, TryCatch #16 {all -> 0x047d, blocks: (B:139:0x046d, B:141:0x0473, B:145:0x047f, B:147:0x0485, B:148:0x048c, B:150:0x0494, B:151:0x049b, B:153:0x04a3), top: B:285:0x046d }] */
    /* JADX WARN: Code duplicated, block: B:153:0x04a3 A[Catch: all -> 0x047d, TRY_LEAVE, TryCatch #16 {all -> 0x047d, blocks: (B:139:0x046d, B:141:0x0473, B:145:0x047f, B:147:0x0485, B:148:0x048c, B:150:0x0494, B:151:0x049b, B:153:0x04a3), top: B:285:0x046d }] */
    /* JADX WARN: Code duplicated, block: B:162:0x04ed A[Catch: all -> 0x0502, TryCatch #20 {all -> 0x0502, blocks: (B:160:0x04e7, B:162:0x04ed, B:164:0x04fe, B:167:0x0504), top: B:259:0x04e7, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x04fe A[Catch: all -> 0x0502, TryCatch #20 {all -> 0x0502, blocks: (B:160:0x04e7, B:162:0x04ed, B:164:0x04fe, B:167:0x0504), top: B:259:0x04e7, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x0504 A[Catch: all -> 0x0502, TRY_LEAVE, TryCatch #20 {all -> 0x0502, blocks: (B:160:0x04e7, B:162:0x04ed, B:164:0x04fe, B:167:0x0504), top: B:259:0x04e7, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:173:0x0529 A[Catch: all -> 0x0531, TRY_LEAVE, TryCatch #12 {all -> 0x0531, blocks: (B:171:0x0523, B:173:0x0529), top: B:277:0x0523, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:177:0x0533  */
    /* JADX WARN: Code duplicated, block: B:182:0x0555 A[Catch: all -> 0x0581, TRY_LEAVE, TryCatch #18 {all -> 0x0581, blocks: (B:180:0x054f, B:182:0x0555), top: B:289:0x054f, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:186:0x0583  */
    /* JADX WARN: Code duplicated, block: B:191:0x05a5 A[Catch: all -> 0x05e5, TRY_LEAVE, TryCatch #4 {all -> 0x05e5, blocks: (B:189:0x059f, B:191:0x05a5), top: B:261:0x059f, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:195:0x0600 A[Catch: all -> 0x06e5, TRY_LEAVE, TryCatch #3 {all -> 0x06e5, blocks: (B:195:0x0600, B:233:0x06dd, B:230:0x06b8, B:223:0x0683, B:215:0x064f, B:208:0x0622, B:194:0x05e6, B:187:0x0586, B:178:0x0536, B:169:0x050a, B:189:0x059f, B:191:0x05a5, B:171:0x0523, B:173:0x0529, B:225:0x068b, B:227:0x0691, B:180:0x054f, B:182:0x0555, B:216:0x0667, B:220:0x067d, B:160:0x04e7, B:162:0x04ed, B:164:0x04fe, B:167:0x0504, B:210:0x063d, B:212:0x0643, B:197:0x060b, B:199:0x0611, B:202:0x0619, B:231:0x06d2), top: B:259:0x04e7, inners: #4, #12, #14, #18, #19, #20, #26, #35, #37 }] */
    /* JADX WARN: Code duplicated, block: B:199:0x0611 A[Catch: all -> 0x061c, TryCatch #35 {all -> 0x061c, blocks: (B:197:0x060b, B:199:0x0611, B:202:0x0619), top: B:323:0x060b, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:201:0x0617  */
    /* JADX WARN: Code duplicated, block: B:206:0x061e  */
    /* JADX WARN: Code duplicated, block: B:212:0x0643 A[Catch: all -> 0x064e, TRY_LEAVE, TryCatch #26 {all -> 0x064e, blocks: (B:210:0x063d, B:212:0x0643), top: B:305:0x063d, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:218:0x0677  */
    /* JADX WARN: Code duplicated, block: B:220:0x067d A[Catch: all -> 0x0682, TRY_LEAVE, TryCatch #19 {all -> 0x0682, blocks: (B:216:0x0667, B:220:0x067d), top: B:291:0x0667, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:227:0x0691 A[Catch: all -> 0x06b7, TRY_LEAVE, TryCatch #14 {all -> 0x06b7, blocks: (B:225:0x068b, B:227:0x0691), top: B:281:0x068b, outer: #3 }] */
    /* JADX WARN: Code duplicated, block: B:291:0x0667 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:327:0x06d2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:107:0x03b5, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:182:0x0555, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:191:0x05a5, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:227:0x0691, please report this as an issue */
    public HarvestConfiguration parseHarvestConfigFromResult(JSONObject jSONObject) throws Exception {
        String str;
        long jOptLong;
        int i2;
        String string;
        JSONArray jSONArray;
        JSONObject jSONObject2;
        JSONArray jSONArray2;
        JSONArray jSONArray3;
        JSONArray jSONArray4;
        if (jSONObject == null) {
            return null;
        }
        JSONObject jSONObject3 = jSONObject.getJSONObject("cfg");
        String str2 = ConfigurationName.DOWNLOAD_PLUGIN_URL;
        log.a("cfgObj:" + jSONObject3.toString());
        String string2 = jSONObject.getString("did");
        if (!TextUtils.isEmpty(string2)) {
            setTingyunId(string2);
        }
        try {
            setToken(jSONObject.getString("token"));
        } catch (Throwable unused) {
        }
        try {
            setEnabled(jSONObject.getInt("enabled"));
        } catch (Throwable unused2) {
        }
        try {
            log.a("parseHarvestConfigFromResult   isEncrypt : " + r.u().B);
            String string3 = jSONObject.getString("tySecretKey");
            r.u().c(string3);
            if (r.u().B) {
                r.u().a(new com.networkbench.agent.impl.util.g(string3));
            }
        } catch (Throwable th) {
            r.u().c("");
            log.a("tySecretKey  has an error : ", th);
        }
        log.a("did:" + string2 + ", token:" + this.token + ", enabled:" + this.enabled + "");
        try {
            int i3 = jSONObject3.getInt("interval");
            if (i3 <= 0) {
                i3 = 60;
            }
            setInterval(i3);
            setIntervalOnIdle(jSONObject3.getInt("intervalOnIdle"));
            setActions(jSONObject3.getInt("actions"));
            setActionAge(jSONObject3.getInt("actionAge"));
            setEnableErrTrace(jSONObject3.getBoolean("enableErrTrace"));
            setErrs(jSONObject3.getInt("errs"));
            setErrRspSize(jSONObject3.getInt("errRspSize"));
            setStackDepth(jSONObject3.getInt("stackDepth"));
        } catch (Throwable unused3) {
        }
        try {
            setAnrAction(jSONObject3.getInt("anrActions"));
        } catch (Throwable unused4) {
        }
        try {
            setUiTraces(jSONObject3.getInt("uiTraces"));
            setUiTraceSize(jSONObject3.getInt("uiTraceSize"));
            setUiTraceRetries(jSONObject3.getInt("uiTraceRetries"));
            setUiTraceThreshold(jSONObject3.getInt("uiTraceThreshold"));
            setAnrThreshold(jSONObject3.optInt(ConfigurationName.anrThresholdName, 5001));
        } catch (Throwable unused5) {
            log.e("Error while unpacking UITrace JSON response during connect");
        }
        try {
            setSlowPageThreshold(jSONObject3.getInt("slowPageThreshold"));
            setSlowFirstPaintThreshold(jSONObject3.getInt("slowFirstPaintThreshold"));
            setSlowFirstScreenThreshold(jSONObject3.getInt("slowFirstScreenThreshold"));
            setSlowDomThreshold(jSONObject3.getInt("slowDomThreshold"));
        } catch (Throwable th2) {
            o60.C(th2, new StringBuilder("error parse webview param error"), log);
        }
        try {
            setHotStartThreshold(jSONObject3.getInt("hotStartThreshold"));
            setSlowStartThreshold(jSONObject3.getInt("slowStartThreshold"));
        } catch (Throwable th3) {
            o60.C(th3, new StringBuilder("error parse 2.2.7协议 param error"), log);
        }
        try {
            if (isNull_Or_Exist(jSONObject3, "slowUserActionThreshold")) {
                setSlowUserActionThreshold(jSONObject3.getLong("slowUserActionThreshold"));
                g.j("setSlowUserActionThreshold : " + getSlowUserActionThreshold());
            }
            if (isNull_Or_Exist(jSONObject3, "userActions")) {
                setUserActions(jSONObject3.getInt("userActions"));
                g.j("setUserActions : " + getUserActions());
            }
        } catch (Throwable th4) {
            d21.C(th4, new StringBuilder("Error while unpacking JSON response during connect"), log);
        }
        try {
            setCrashTrails(jSONObject3.getInt("crashTrails"));
        } catch (Throwable unused6) {
            log.e("Error while unpacking JSON response during connect");
        }
        try {
            setBetaonFlag(jSONObject3.getInt("betaOn"));
        } catch (Throwable unused7) {
        }
        try {
            setFeature(jSONObject3.getInt(ConfigurationName.features));
        } catch (Throwable unused8) {
        }
        try {
            setTyId(jSONObject.getString("tyId"));
        } catch (Throwable unused9) {
        }
        try {
            String string4 = jSONObject.getString("tyIdNew");
            this.tyIdNew = string4;
            if (string4.startsWith("{") && this.tyIdNew.endsWith("}")) {
                this.tyIdNew = "";
            }
            r.u().n(this.tyIdNew);
            setTYIdNew(this.tyIdNew);
        } catch (Throwable th5) {
            o60.C(th5, new StringBuilder("tyIdNew error:"), log);
        }
        try {
            this.tyPlatformValue = jSONObject.getInt("tyPlatform");
            r.u().g(this.tyPlatformValue);
        } catch (Throwable th6) {
            o60.C(th6, new StringBuilder("typlatform error:"), log);
        }
        try {
            int i4 = jSONObject3.getInt("slowInteractionThreshold");
            setSlowInteractionThreshold(i4);
            log.a("slowInteractionThreshold:" + i4);
        } catch (Throwable th7) {
            log.a("Error while unpacking JSON response during connect", th7);
        }
        try {
            f37215a = getCellInfoType(jSONObject3.getJSONArray("netCellInfo"));
        } catch (Throwable unused10) {
            log.f("error whie parse cellinfo config");
        }
        try {
            setPluginSwitch(jSONObject3.optBoolean("enableExtension", false));
            log.a("parseHarvestConfigFromResult  enableExtension:" + isPluginSwitch());
        } catch (Throwable th8) {
            o60.C(th8, new StringBuilder("error whie unpacking cellinfo config"), log);
        }
        try {
            int i5 = jSONObject3.getInt("urlFilterMode");
            this.urlFilterMode = i5;
            setUrlFilterMode(i5);
            setUrlRules(this.urlFilterMode != 0 ? jSONObject3.getJSONArray("urlRules").toString() : "");
        } catch (Throwable unused11) {
        }
        try {
            if (jSONObject3.has("urlParams") && (jSONArray4 = jSONObject3.getJSONArray("urlParams")) != null) {
                int i6 = 0;
                while (i6 < jSONArray4.length()) {
                    JSONObject jSONObject4 = (JSONObject) jSONArray4.get(i6);
                    j.c urlParamsItem = getUrlParamsItem(jSONObject4);
                    str = str2;
                    try {
                        String string5 = jSONObject4.getString(str);
                        log.a("urlparam url:" + string5);
                        try {
                            this.urlParamArray.put(getUrlFilterKey(string5), urlParamsItem);
                        } catch (Throwable unused12) {
                        }
                        i6++;
                        str2 = str;
                    } catch (Throwable th9) {
                        th = th9;
                        log.a("Error while unpacking Json response during connect (urlParams)", th);
                        if (jSONObject3.has("urlParamsBlacklist")) {
                            for (int i7 = 0; i7 < jSONArray3.length(); i7++) {
                                JSONObject jSONObject5 = (JSONObject) jSONArray3.get(i7);
                                j.c urlParamsItem2 = getUrlParamsItem(jSONObject5);
                                String string6 = jSONObject5.getString(str);
                                log.a("urlparamBlack url:" + string6);
                                try {
                                    this.urlParamBlackArray.put(getUrlFilterKey(string6), urlParamsItem2);
                                } catch (Throwable unused13) {
                                }
                            }
                        }
                        if (jSONObject3.has(ConfigurationName.PROPAGATORS)) {
                            String string7 = jSONArray2.toString();
                            r.u().aH().a(string7);
                            setPropagators(string7);
                        }
                        if (jSONObject3.has(ConfigurationName.CPUCONFIG)) {
                            String string8 = jSONObject2.toString();
                            r.u().aI().a(string8);
                            setCpuConfig(string8);
                        }
                        if (isNull_Or_Exist(jSONObject3, "ignoredErrRules")) {
                            setIgnoreErrRules(jSONArray.toString());
                        }
                        if (isNull_Or_Exist(jSONObject3, "cdnHeaderName")) {
                            setCdnHeaderName(jSONObject3.getString("cdnHeaderName"));
                        }
                        if (isNull_Or_Exist(jSONObject3, "actionFailureThreshold")) {
                            setActionFailureThreshold(jSONObject3.getInt("actionFailureThreshold"));
                        }
                        if (isNull_Or_Exist(jSONObject3, "slowPageLoadThreshold")) {
                            setSlowPageLoadThreshold(jSONObject3.getInt("slowPageLoadThreshold"));
                        }
                        if (isNull_Or_Exist(jSONObject3, "slowPageDurationThreshold")) {
                            setSlowPageDurationThreshold(jSONObject3.getInt("slowPageDurationThreshold"));
                        }
                        if (isNull_Or_Exist(jSONObject3, "uiPages")) {
                            setUiPages(jSONObject3.getInt("uiPages"));
                        }
                        setControllerInterval(jSONObject.getJSONObject("ctl").getInt("interval"));
                        try {
                            if (isNull_Or_Exist(jSONObject3, "brsAgent")) {
                                string = jSONObject3.getString("brsAgent");
                                setBrsAgent(string);
                                if (r.u().ad()) {
                                    JsPageUtil.setJSAgentCon(string);
                                }
                            } else {
                                JsPageUtil.isUpdate = true;
                            }
                            if (isNull_Or_Exist(jSONObject3, "enableNdk")) {
                                setEnableNdk(jSONObject3.getBoolean("enableNdk"));
                                try {
                                    if (isNull_Or_Exist(jSONObject3, "apms")) {
                                        JSONArray jSONArray5 = jSONObject3.getJSONArray("apms");
                                        g.o("JSONArray apms : " + jSONArray5.toString());
                                        this.apmsIssue = jSONArray5.toString();
                                        r.u().a(this.apmsIssue);
                                        try {
                                            if (isNull_Or_Exist(jSONObject3, "sessionConfig")) {
                                                JSONObject jSONObject6 = jSONObject3.getJSONObject("sessionConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray sessionConfig : " + jSONObject6.toString());
                                                NBSSessionConfig nBSSessionConfig = new NBSSessionConfig(jSONObject6);
                                                log.a("NBSSessionConfig : " + nBSSessionConfig.toString());
                                                this.nbsSessionConfig = nBSSessionConfig;
                                                this.logTrackConfig.a(jSONObject3.toString());
                                                try {
                                                    if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                                                        i2 = jSONObject3.getInt("stack_interval");
                                                        if (i2 < 0) {
                                                            i2 = 100;
                                                        }
                                                        this.stackInterval = i2;
                                                        if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                                            this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                            this.httpBodyMaxSize = jOptLong;
                                                            if (jOptLong >= 0) {
                                                                this.httpBodyMaxSize = 10L;
                                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                    JSONObject jSONObject7 = jSONObject3.getJSONObject("taskConfig");
                                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject7.toString());
                                                                    a.a().a(jSONObject7);
                                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                } else {
                                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                }
                                                            } else {
                                                                this.httpBodyMaxSize = 10L;
                                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                    JSONObject jSONObject8 = jSONObject3.getJSONObject("taskConfig");
                                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject8.toString());
                                                                    a.a().a(jSONObject8);
                                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                } else {
                                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                }
                                                            }
                                                        } else {
                                                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                            this.httpBodyMaxSize = jOptLong;
                                                            if (jOptLong >= 0) {
                                                                this.httpBodyMaxSize = 10L;
                                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                    JSONObject jSONObject9 = jSONObject3.getJSONObject("taskConfig");
                                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject9.toString());
                                                                    a.a().a(jSONObject9);
                                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                } else {
                                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                }
                                                            } else {
                                                                this.httpBodyMaxSize = 10L;
                                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                    JSONObject jSONObject10 = jSONObject3.getJSONObject("taskConfig");
                                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject10.toString());
                                                                    a.a().a(jSONObject10);
                                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                } else {
                                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        try {
                                                            if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                                                this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                                                try {
                                                                    jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                                    this.httpBodyMaxSize = jOptLong;
                                                                    if (jOptLong >= 0) {
                                                                        this.httpBodyMaxSize = 10L;
                                                                        try {
                                                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                                JSONObject jSONObject11 = jSONObject3.getJSONObject("taskConfig");
                                                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11.toString());
                                                                                a.a().a(jSONObject11);
                                                                                try {
                                                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                                } catch (Throwable unused14) {
                                                                                    Logger.warning(TAG, "error viewClassWhitelist");
                                                                                }
                                                                            } else {
                                                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                            }
                                                                        } catch (Throwable th10) {
                                                                            log.a("Error while unpacking JSON taskConfig " + th10.getMessage());
                                                                        }
                                                                    } else {
                                                                        this.httpBodyMaxSize = 10L;
                                                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                            JSONObject jSONObject12 = jSONObject3.getJSONObject("taskConfig");
                                                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject12.toString());
                                                                            a.a().a(jSONObject12);
                                                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                        } else {
                                                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                        }
                                                                    }
                                                                } catch (Throwable th11) {
                                                                    Logger.error(TAG, "get httpBodyMaxSize error", th11);
                                                                }
                                                            } else {
                                                                jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                                this.httpBodyMaxSize = jOptLong;
                                                                if (jOptLong >= 0) {
                                                                    this.httpBodyMaxSize = 10L;
                                                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                        JSONObject jSONObject13 = jSONObject3.getJSONObject("taskConfig");
                                                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject13.toString());
                                                                        a.a().a(jSONObject13);
                                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                    } else {
                                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                    }
                                                                } else {
                                                                    this.httpBodyMaxSize = 10L;
                                                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                        JSONObject jSONObject14 = jSONObject3.getJSONObject("taskConfig");
                                                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject14.toString());
                                                                        a.a().a(jSONObject14);
                                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                    } else {
                                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                                    }
                                                                }
                                                            }
                                                        } catch (Throwable th12) {
                                                            g.y("batteryConfig has error " + th12.getMessage());
                                                        }
                                                    }
                                                } catch (Throwable th13) {
                                                    this.stackInterval = -1;
                                                    g.o(" cfgObj, \"stack_interval\"  has error " + th13.getMessage());
                                                }
                                            } else {
                                                this.logTrackConfig.a(jSONObject3.toString());
                                                if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                                                    i2 = jSONObject3.getInt("stack_interval");
                                                    if (i2 < 0) {
                                                        i2 = 100;
                                                    }
                                                    this.stackInterval = i2;
                                                    if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                                        this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                        this.httpBodyMaxSize = jOptLong;
                                                        if (jOptLong >= 0) {
                                                            this.httpBodyMaxSize = 10L;
                                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                JSONObject jSONObject15 = jSONObject3.getJSONObject("taskConfig");
                                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject15.toString());
                                                                a.a().a(jSONObject15);
                                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                            } else {
                                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                            }
                                                        } else {
                                                            this.httpBodyMaxSize = 10L;
                                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                JSONObject jSONObject16 = jSONObject3.getJSONObject("taskConfig");
                                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject16.toString());
                                                                a.a().a(jSONObject16);
                                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                            } else {
                                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                            }
                                                        }
                                                    } else {
                                                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                        this.httpBodyMaxSize = jOptLong;
                                                        if (jOptLong >= 0) {
                                                            this.httpBodyMaxSize = 10L;
                                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                JSONObject jSONObject17 = jSONObject3.getJSONObject("taskConfig");
                                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject17.toString());
                                                                a.a().a(jSONObject17);
                                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                            } else {
                                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                            }
                                                        } else {
                                                            this.httpBodyMaxSize = 10L;
                                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                                JSONObject jSONObject18 = jSONObject3.getJSONObject("taskConfig");
                                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject18.toString());
                                                                a.a().a(jSONObject18);
                                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                            } else {
                                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                            }
                                                        }
                                                    }
                                                } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                                    this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                                    jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                    this.httpBodyMaxSize = jOptLong;
                                                    if (jOptLong >= 0) {
                                                        this.httpBodyMaxSize = 10L;
                                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                            JSONObject jSONObject19 = jSONObject3.getJSONObject("taskConfig");
                                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject19.toString());
                                                            a.a().a(jSONObject19);
                                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                        } else {
                                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                        }
                                                    } else {
                                                        this.httpBodyMaxSize = 10L;
                                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                            JSONObject jSONObject110 = jSONObject3.getJSONObject("taskConfig");
                                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject110.toString());
                                                            a.a().a(jSONObject110);
                                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                        } else {
                                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                        }
                                                    }
                                                } else {
                                                    jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                    this.httpBodyMaxSize = jOptLong;
                                                    if (jOptLong >= 0) {
                                                        this.httpBodyMaxSize = 10L;
                                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                            JSONObject jSONObject111 = jSONObject3.getJSONObject("taskConfig");
                                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111.toString());
                                                            a.a().a(jSONObject111);
                                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                        } else {
                                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                        }
                                                    } else {
                                                        this.httpBodyMaxSize = 10L;
                                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                            JSONObject jSONObject112 = jSONObject3.getJSONObject("taskConfig");
                                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject112.toString());
                                                            a.a().a(jSONObject112);
                                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                        } else {
                                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                        }
                                                    }
                                                }
                                            }
                                        } catch (Throwable th14) {
                                            log.a("Error while unpacking JSON sessionConfig " + th14.getMessage());
                                        }
                                    } else if (isNull_Or_Exist(jSONObject3, "sessionConfig")) {
                                        JSONObject jSONObject20 = jSONObject3.getJSONObject("sessionConfig");
                                        log.a("parseHarvestConfigFromResult JSONArray sessionConfig : " + jSONObject20.toString());
                                        NBSSessionConfig nBSSessionConfig2 = new NBSSessionConfig(jSONObject20);
                                        log.a("NBSSessionConfig : " + nBSSessionConfig2.toString());
                                        this.nbsSessionConfig = nBSSessionConfig2;
                                        this.logTrackConfig.a(jSONObject3.toString());
                                        if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                                            i2 = jSONObject3.getInt("stack_interval");
                                            if (i2 < 0) {
                                                i2 = 100;
                                            }
                                            this.stackInterval = i2;
                                            if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                                this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                                jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                this.httpBodyMaxSize = jOptLong;
                                                if (jOptLong >= 0) {
                                                    this.httpBodyMaxSize = 10L;
                                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                        JSONObject jSONObject113 = jSONObject3.getJSONObject("taskConfig");
                                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject113.toString());
                                                        a.a().a(jSONObject113);
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    } else {
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    }
                                                } else {
                                                    this.httpBodyMaxSize = 10L;
                                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                        JSONObject jSONObject114 = jSONObject3.getJSONObject("taskConfig");
                                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject114.toString());
                                                        a.a().a(jSONObject114);
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    } else {
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    }
                                                }
                                            } else {
                                                jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                this.httpBodyMaxSize = jOptLong;
                                                if (jOptLong >= 0) {
                                                    this.httpBodyMaxSize = 10L;
                                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                        JSONObject jSONObject115 = jSONObject3.getJSONObject("taskConfig");
                                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject115.toString());
                                                        a.a().a(jSONObject115);
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    } else {
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    }
                                                } else {
                                                    this.httpBodyMaxSize = 10L;
                                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                        JSONObject jSONObject116 = jSONObject3.getJSONObject("taskConfig");
                                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject116.toString());
                                                        a.a().a(jSONObject116);
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    } else {
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    }
                                                }
                                            }
                                        } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                            this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                            this.httpBodyMaxSize = jOptLong;
                                            if (jOptLong >= 0) {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject117 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject117.toString());
                                                    a.a().a(jSONObject117);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            } else {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject118 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject118.toString());
                                                    a.a().a(jSONObject118);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            }
                                        } else {
                                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                            this.httpBodyMaxSize = jOptLong;
                                            if (jOptLong >= 0) {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject119 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject119.toString());
                                                    a.a().a(jSONObject119);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            } else {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject1110 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1110.toString());
                                                    a.a().a(jSONObject1110);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            }
                                        }
                                    } else {
                                        this.logTrackConfig.a(jSONObject3.toString());
                                        if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                                            i2 = jSONObject3.getInt("stack_interval");
                                            if (i2 < 0) {
                                                i2 = 100;
                                            }
                                            this.stackInterval = i2;
                                            if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                                this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                                jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                this.httpBodyMaxSize = jOptLong;
                                                if (jOptLong >= 0) {
                                                    this.httpBodyMaxSize = 10L;
                                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                        JSONObject jSONObject1111 = jSONObject3.getJSONObject("taskConfig");
                                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111.toString());
                                                        a.a().a(jSONObject1111);
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    } else {
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    }
                                                } else {
                                                    this.httpBodyMaxSize = 10L;
                                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                        JSONObject jSONObject1112 = jSONObject3.getJSONObject("taskConfig");
                                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1112.toString());
                                                        a.a().a(jSONObject1112);
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    } else {
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    }
                                                }
                                            } else {
                                                jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                                this.httpBodyMaxSize = jOptLong;
                                                if (jOptLong >= 0) {
                                                    this.httpBodyMaxSize = 10L;
                                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                        JSONObject jSONObject1113 = jSONObject3.getJSONObject("taskConfig");
                                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1113.toString());
                                                        a.a().a(jSONObject1113);
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    } else {
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    }
                                                } else {
                                                    this.httpBodyMaxSize = 10L;
                                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                        JSONObject jSONObject1114 = jSONObject3.getJSONObject("taskConfig");
                                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1114.toString());
                                                        a.a().a(jSONObject1114);
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    } else {
                                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                    }
                                                }
                                            }
                                        } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                            this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                            this.httpBodyMaxSize = jOptLong;
                                            if (jOptLong >= 0) {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject1115 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1115.toString());
                                                    a.a().a(jSONObject1115);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            } else {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject1116 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1116.toString());
                                                    a.a().a(jSONObject1116);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            }
                                        } else {
                                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                            this.httpBodyMaxSize = jOptLong;
                                            if (jOptLong >= 0) {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject1117 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1117.toString());
                                                    a.a().a(jSONObject1117);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            } else {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject1118 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1118.toString());
                                                    a.a().a(jSONObject1118);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            }
                                        }
                                    }
                                } catch (Throwable th15) {
                                    g.o(" cfgObj, \"apms\"  has error " + th15.getMessage());
                                }
                            } else if (isNull_Or_Exist(jSONObject3, "apms")) {
                                JSONArray jSONArray6 = jSONObject3.getJSONArray("apms");
                                g.o("JSONArray apms : " + jSONArray6.toString());
                                this.apmsIssue = jSONArray6.toString();
                                r.u().a(this.apmsIssue);
                                if (isNull_Or_Exist(jSONObject3, "sessionConfig")) {
                                    JSONObject jSONObject21 = jSONObject3.getJSONObject("sessionConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray sessionConfig : " + jSONObject21.toString());
                                    NBSSessionConfig nBSSessionConfig3 = new NBSSessionConfig(jSONObject21);
                                    log.a("NBSSessionConfig : " + nBSSessionConfig3.toString());
                                    this.nbsSessionConfig = nBSSessionConfig3;
                                    this.logTrackConfig.a(jSONObject3.toString());
                                    if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                                        i2 = jSONObject3.getInt("stack_interval");
                                        if (i2 < 0) {
                                            i2 = 100;
                                        }
                                        this.stackInterval = i2;
                                        if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                            this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                            this.httpBodyMaxSize = jOptLong;
                                            if (jOptLong >= 0) {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject1119 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1119.toString());
                                                    a.a().a(jSONObject1119);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            } else {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject11110 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11110.toString());
                                                    a.a().a(jSONObject11110);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            }
                                        } else {
                                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                            this.httpBodyMaxSize = jOptLong;
                                            if (jOptLong >= 0) {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject11111 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111.toString());
                                                    a.a().a(jSONObject11111);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            } else {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject11112 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11112.toString());
                                                    a.a().a(jSONObject11112);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            }
                                        }
                                    } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                        this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                        this.httpBodyMaxSize = jOptLong;
                                        if (jOptLong >= 0) {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject11113 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11113.toString());
                                                a.a().a(jSONObject11113);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        } else {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject11114 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11114.toString());
                                                a.a().a(jSONObject11114);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        }
                                    } else {
                                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                        this.httpBodyMaxSize = jOptLong;
                                        if (jOptLong >= 0) {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject11115 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11115.toString());
                                                a.a().a(jSONObject11115);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        } else {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject11116 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11116.toString());
                                                a.a().a(jSONObject11116);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        }
                                    }
                                } else {
                                    this.logTrackConfig.a(jSONObject3.toString());
                                    if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                                        i2 = jSONObject3.getInt("stack_interval");
                                        if (i2 < 0) {
                                            i2 = 100;
                                        }
                                        this.stackInterval = i2;
                                        if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                            this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                            this.httpBodyMaxSize = jOptLong;
                                            if (jOptLong >= 0) {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject11117 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11117.toString());
                                                    a.a().a(jSONObject11117);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            } else {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject11118 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11118.toString());
                                                    a.a().a(jSONObject11118);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            }
                                        } else {
                                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                            this.httpBodyMaxSize = jOptLong;
                                            if (jOptLong >= 0) {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject11119 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11119.toString());
                                                    a.a().a(jSONObject11119);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            } else {
                                                this.httpBodyMaxSize = 10L;
                                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                    JSONObject jSONObject111110 = jSONObject3.getJSONObject("taskConfig");
                                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111110.toString());
                                                    a.a().a(jSONObject111110);
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                } else {
                                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                                }
                                            }
                                        }
                                    } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                        this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                        this.httpBodyMaxSize = jOptLong;
                                        if (jOptLong >= 0) {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject111111 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111.toString());
                                                a.a().a(jSONObject111111);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        } else {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject111112 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111112.toString());
                                                a.a().a(jSONObject111112);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        }
                                    } else {
                                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                        this.httpBodyMaxSize = jOptLong;
                                        if (jOptLong >= 0) {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject111113 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111113.toString());
                                                a.a().a(jSONObject111113);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        } else {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject111114 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111114.toString());
                                                a.a().a(jSONObject111114);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        }
                                    }
                                }
                            } else if (isNull_Or_Exist(jSONObject3, "sessionConfig")) {
                                JSONObject jSONObject22 = jSONObject3.getJSONObject("sessionConfig");
                                log.a("parseHarvestConfigFromResult JSONArray sessionConfig : " + jSONObject22.toString());
                                NBSSessionConfig nBSSessionConfig4 = new NBSSessionConfig(jSONObject22);
                                log.a("NBSSessionConfig : " + nBSSessionConfig4.toString());
                                this.nbsSessionConfig = nBSSessionConfig4;
                                this.logTrackConfig.a(jSONObject3.toString());
                                if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                                    i2 = jSONObject3.getInt("stack_interval");
                                    if (i2 < 0) {
                                        i2 = 100;
                                    }
                                    this.stackInterval = i2;
                                    if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                        this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                        this.httpBodyMaxSize = jOptLong;
                                        if (jOptLong >= 0) {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject111115 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111115.toString());
                                                a.a().a(jSONObject111115);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        } else {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject111116 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111116.toString());
                                                a.a().a(jSONObject111116);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        }
                                    } else {
                                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                        this.httpBodyMaxSize = jOptLong;
                                        if (jOptLong >= 0) {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject111117 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111117.toString());
                                                a.a().a(jSONObject111117);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        } else {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject111118 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111118.toString());
                                                a.a().a(jSONObject111118);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        }
                                    }
                                } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                    this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                    jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                    this.httpBodyMaxSize = jOptLong;
                                    if (jOptLong >= 0) {
                                        this.httpBodyMaxSize = 10L;
                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                            JSONObject jSONObject111119 = jSONObject3.getJSONObject("taskConfig");
                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111119.toString());
                                            a.a().a(jSONObject111119);
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        } else {
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        }
                                    } else {
                                        this.httpBodyMaxSize = 10L;
                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                            JSONObject jSONObject1111110 = jSONObject3.getJSONObject("taskConfig");
                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111110.toString());
                                            a.a().a(jSONObject1111110);
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        } else {
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        }
                                    }
                                } else {
                                    jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                    this.httpBodyMaxSize = jOptLong;
                                    if (jOptLong >= 0) {
                                        this.httpBodyMaxSize = 10L;
                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                            JSONObject jSONObject1111111 = jSONObject3.getJSONObject("taskConfig");
                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111.toString());
                                            a.a().a(jSONObject1111111);
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        } else {
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        }
                                    } else {
                                        this.httpBodyMaxSize = 10L;
                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                            JSONObject jSONObject1111112 = jSONObject3.getJSONObject("taskConfig");
                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111112.toString());
                                            a.a().a(jSONObject1111112);
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        } else {
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        }
                                    }
                                }
                            } else {
                                this.logTrackConfig.a(jSONObject3.toString());
                                if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                                    i2 = jSONObject3.getInt("stack_interval");
                                    if (i2 < 0) {
                                        i2 = 100;
                                    }
                                    this.stackInterval = i2;
                                    if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                        this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                        this.httpBodyMaxSize = jOptLong;
                                        if (jOptLong >= 0) {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject1111113 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111113.toString());
                                                a.a().a(jSONObject1111113);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        } else {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject1111114 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111114.toString());
                                                a.a().a(jSONObject1111114);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        }
                                    } else {
                                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                        this.httpBodyMaxSize = jOptLong;
                                        if (jOptLong >= 0) {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject1111115 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111115.toString());
                                                a.a().a(jSONObject1111115);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        } else {
                                            this.httpBodyMaxSize = 10L;
                                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                                JSONObject jSONObject1111116 = jSONObject3.getJSONObject("taskConfig");
                                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111116.toString());
                                                a.a().a(jSONObject1111116);
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            } else {
                                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                            }
                                        }
                                    }
                                } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                    this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                    jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                    this.httpBodyMaxSize = jOptLong;
                                    if (jOptLong >= 0) {
                                        this.httpBodyMaxSize = 10L;
                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                            JSONObject jSONObject1111117 = jSONObject3.getJSONObject("taskConfig");
                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111117.toString());
                                            a.a().a(jSONObject1111117);
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        } else {
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        }
                                    } else {
                                        this.httpBodyMaxSize = 10L;
                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                            JSONObject jSONObject1111118 = jSONObject3.getJSONObject("taskConfig");
                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111118.toString());
                                            a.a().a(jSONObject1111118);
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        } else {
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        }
                                    }
                                } else {
                                    jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                    this.httpBodyMaxSize = jOptLong;
                                    if (jOptLong >= 0) {
                                        this.httpBodyMaxSize = 10L;
                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                            JSONObject jSONObject1111119 = jSONObject3.getJSONObject("taskConfig");
                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111119.toString());
                                            a.a().a(jSONObject1111119);
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        } else {
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        }
                                    } else {
                                        this.httpBodyMaxSize = 10L;
                                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                            JSONObject jSONObject11111110 = jSONObject3.getJSONObject("taskConfig");
                                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111110.toString());
                                            a.a().a(jSONObject11111110);
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        } else {
                                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                        }
                                    }
                                }
                            }
                        } catch (Throwable th16) {
                            log.a("Error while unpacking JSON response during connect" + th16.getMessage());
                        }
                        return this;
                    }
                }
            }
            str = str2;
        } catch (Throwable th17) {
            th = th17;
            str = str2;
        }
        if (jSONObject3.has("urlParamsBlacklist") && (jSONArray3 = jSONObject3.getJSONArray("urlParamsBlacklist")) != null) {
            while (i7 < jSONArray3.length()) {
                JSONObject jSONObject23 = (JSONObject) jSONArray3.get(i7);
                j.c urlParamsItem3 = getUrlParamsItem(jSONObject23);
                String string9 = jSONObject23.getString(str);
                log.a("urlparamBlack url:" + string9);
                this.urlParamBlackArray.put(getUrlFilterKey(string9), urlParamsItem3);
            }
        }
        try {
            if (jSONObject3.has(ConfigurationName.PROPAGATORS) && (jSONArray2 = jSONObject3.getJSONArray(ConfigurationName.PROPAGATORS)) != null && jSONArray2.length() > 0) {
                String string10 = jSONArray2.toString();
                r.u().aH().a(string10);
                setPropagators(string10);
            }
        } catch (Throwable unused15) {
        }
        try {
            if (jSONObject3.has(ConfigurationName.CPUCONFIG) && (jSONObject2 = jSONObject3.getJSONObject(ConfigurationName.CPUCONFIG)) != null) {
                String string11 = jSONObject2.toString();
                r.u().aI().a(string11);
                setCpuConfig(string11);
            }
        } catch (Throwable unused16) {
        }
        try {
            if (isNull_Or_Exist(jSONObject3, "ignoredErrRules") && (jSONArray = jSONObject3.getJSONArray("ignoredErrRules")) != null) {
                setIgnoreErrRules(jSONArray.toString());
            }
        } catch (Throwable unused17) {
        }
        try {
            if (isNull_Or_Exist(jSONObject3, "cdnHeaderName")) {
                setCdnHeaderName(jSONObject3.getString("cdnHeaderName"));
            }
        } catch (Throwable th18) {
            log.a("Error while unpacking Json response during connect " + th18.getMessage());
        }
        try {
            if (isNull_Or_Exist(jSONObject3, "actionFailureThreshold")) {
                setActionFailureThreshold(jSONObject3.getInt("actionFailureThreshold"));
            }
            if (isNull_Or_Exist(jSONObject3, "slowPageLoadThreshold")) {
                setSlowPageLoadThreshold(jSONObject3.getInt("slowPageLoadThreshold"));
            }
            if (isNull_Or_Exist(jSONObject3, "slowPageDurationThreshold")) {
                setSlowPageDurationThreshold(jSONObject3.getInt("slowPageDurationThreshold"));
            }
            if (isNull_Or_Exist(jSONObject3, "uiPages")) {
                setUiPages(jSONObject3.getInt("uiPages"));
            }
        } catch (Throwable th19) {
            log.a("Error while unpacking JSON response during connect" + th19.getMessage());
        }
        try {
            setControllerInterval(jSONObject.getJSONObject("ctl").getInt("interval"));
        } catch (Throwable th20) {
            log.a("Error while unpacking JSON response during connect" + th20.getMessage());
        }
        try {
            if (isNull_Or_Exist(jSONObject3, "brsAgent")) {
                string = jSONObject3.getString("brsAgent");
                setBrsAgent(string);
                if (r.u().ad()) {
                    JsPageUtil.setJSAgentCon(string);
                }
            } else {
                JsPageUtil.isUpdate = true;
            }
        } catch (Throwable th21) {
            g.o(" cfgObj, \"brsAgent\"  has error " + th21.getMessage());
        }
        try {
            if (isNull_Or_Exist(jSONObject3, "enableNdk")) {
                setEnableNdk(jSONObject3.getBoolean("enableNdk"));
                if (isNull_Or_Exist(jSONObject3, "apms")) {
                    JSONArray jSONArray7 = jSONObject3.getJSONArray("apms");
                    g.o("JSONArray apms : " + jSONArray7.toString());
                    this.apmsIssue = jSONArray7.toString();
                    r.u().a(this.apmsIssue);
                    if (isNull_Or_Exist(jSONObject3, "sessionConfig")) {
                        JSONObject jSONObject24 = jSONObject3.getJSONObject("sessionConfig");
                        log.a("parseHarvestConfigFromResult JSONArray sessionConfig : " + jSONObject24.toString());
                        NBSSessionConfig nBSSessionConfig5 = new NBSSessionConfig(jSONObject24);
                        log.a("NBSSessionConfig : " + nBSSessionConfig5.toString());
                        this.nbsSessionConfig = nBSSessionConfig5;
                        this.logTrackConfig.a(jSONObject3.toString());
                        if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                            i2 = jSONObject3.getInt("stack_interval");
                            if (i2 < 0) {
                                i2 = 100;
                            }
                            this.stackInterval = i2;
                            if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                this.httpBodyMaxSize = jOptLong;
                                if (jOptLong >= 0) {
                                    this.httpBodyMaxSize = 10L;
                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                        JSONObject jSONObject11111111 = jSONObject3.getJSONObject("taskConfig");
                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111.toString());
                                        a.a().a(jSONObject11111111);
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    } else {
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    }
                                } else {
                                    this.httpBodyMaxSize = 10L;
                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                        JSONObject jSONObject11111112 = jSONObject3.getJSONObject("taskConfig");
                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111112.toString());
                                        a.a().a(jSONObject11111112);
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    } else {
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    }
                                }
                            } else {
                                jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                this.httpBodyMaxSize = jOptLong;
                                if (jOptLong >= 0) {
                                    this.httpBodyMaxSize = 10L;
                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                        JSONObject jSONObject11111113 = jSONObject3.getJSONObject("taskConfig");
                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111113.toString());
                                        a.a().a(jSONObject11111113);
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    } else {
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    }
                                } else {
                                    this.httpBodyMaxSize = 10L;
                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                        JSONObject jSONObject11111114 = jSONObject3.getJSONObject("taskConfig");
                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111114.toString());
                                        a.a().a(jSONObject11111114);
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    } else {
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    }
                                }
                            }
                        } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                            this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0 || jOptLong > RealWebSocket.DEFAULT_MINIMUM_DEFLATE_SIZE) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject11111115 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111115.toString());
                                    a.a().a(jSONObject11111115);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject11111116 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111116.toString());
                                a.a().a(jSONObject11111116);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject11111117 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111117.toString());
                                    a.a().a(jSONObject11111117);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject11111118 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111118.toString());
                                    a.a().a(jSONObject11111118);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            }
                        }
                    } else {
                        this.logTrackConfig.a(jSONObject3.toString());
                        if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                            i2 = jSONObject3.getInt("stack_interval");
                            if (i2 < 0) {
                                i2 = 100;
                            }
                            this.stackInterval = i2;
                            if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                                this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                                jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                this.httpBodyMaxSize = jOptLong;
                                if (jOptLong >= 0) {
                                    this.httpBodyMaxSize = 10L;
                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                        JSONObject jSONObject11111119 = jSONObject3.getJSONObject("taskConfig");
                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111119.toString());
                                        a.a().a(jSONObject11111119);
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    } else {
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    }
                                } else {
                                    this.httpBodyMaxSize = 10L;
                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                        JSONObject jSONObject111111110 = jSONObject3.getJSONObject("taskConfig");
                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111110.toString());
                                        a.a().a(jSONObject111111110);
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    } else {
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    }
                                }
                            } else {
                                jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                                this.httpBodyMaxSize = jOptLong;
                                if (jOptLong >= 0) {
                                    this.httpBodyMaxSize = 10L;
                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                        JSONObject jSONObject111111111 = jSONObject3.getJSONObject("taskConfig");
                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111111.toString());
                                        a.a().a(jSONObject111111111);
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    } else {
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    }
                                } else {
                                    this.httpBodyMaxSize = 10L;
                                    if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                        JSONObject jSONObject111111112 = jSONObject3.getJSONObject("taskConfig");
                                        log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111112.toString());
                                        a.a().a(jSONObject111111112);
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    } else {
                                        this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                    }
                                }
                            }
                        } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                            this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject111111113 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111113.toString());
                                    a.a().a(jSONObject111111113);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject111111114 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111114.toString());
                                    a.a().a(jSONObject111111114);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            }
                        } else {
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject111111115 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111115.toString());
                                    a.a().a(jSONObject111111115);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject111111116 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111116.toString());
                                    a.a().a(jSONObject111111116);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            }
                        }
                    }
                } else if (isNull_Or_Exist(jSONObject3, "sessionConfig")) {
                    JSONObject jSONObject25 = jSONObject3.getJSONObject("sessionConfig");
                    log.a("parseHarvestConfigFromResult JSONArray sessionConfig : " + jSONObject25.toString());
                    NBSSessionConfig nBSSessionConfig6 = new NBSSessionConfig(jSONObject25);
                    log.a("NBSSessionConfig : " + nBSSessionConfig6.toString());
                    this.nbsSessionConfig = nBSSessionConfig6;
                    this.logTrackConfig.a(jSONObject3.toString());
                    if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                        i2 = jSONObject3.getInt("stack_interval");
                        if (i2 < 0) {
                            i2 = 100;
                        }
                        this.stackInterval = i2;
                        if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                            this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject111111117 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111117.toString());
                                    a.a().a(jSONObject111111117);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject111111118 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111118.toString());
                                    a.a().a(jSONObject111111118);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            }
                        } else {
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject111111119 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111119.toString());
                                    a.a().a(jSONObject111111119);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject1111111110 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111110.toString());
                                    a.a().a(jSONObject1111111110);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            }
                        }
                    } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                        this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject1111111111 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111111.toString());
                                a.a().a(jSONObject1111111111);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject1111111112 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111112.toString());
                                a.a().a(jSONObject1111111112);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    } else {
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject1111111113 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111113.toString());
                                a.a().a(jSONObject1111111113);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject1111111114 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111114.toString());
                                a.a().a(jSONObject1111111114);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    }
                } else {
                    this.logTrackConfig.a(jSONObject3.toString());
                    if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                        i2 = jSONObject3.getInt("stack_interval");
                        if (i2 < 0) {
                            i2 = 100;
                        }
                        this.stackInterval = i2;
                        if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                            this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject1111111115 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111115.toString());
                                    a.a().a(jSONObject1111111115);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject1111111116 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111116.toString());
                                    a.a().a(jSONObject1111111116);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            }
                        } else {
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject1111111117 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111117.toString());
                                    a.a().a(jSONObject1111111117);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject1111111118 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111118.toString());
                                    a.a().a(jSONObject1111111118);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            }
                        }
                    } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                        this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject1111111119 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111119.toString());
                                a.a().a(jSONObject1111111119);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject11111111110 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111110.toString());
                                a.a().a(jSONObject11111111110);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    } else {
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject11111111111 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111111.toString());
                                a.a().a(jSONObject11111111111);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject11111111112 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111112.toString());
                                a.a().a(jSONObject11111111112);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    }
                }
            } else if (isNull_Or_Exist(jSONObject3, "apms")) {
                JSONArray jSONArray8 = jSONObject3.getJSONArray("apms");
                g.o("JSONArray apms : " + jSONArray8.toString());
                this.apmsIssue = jSONArray8.toString();
                r.u().a(this.apmsIssue);
                if (isNull_Or_Exist(jSONObject3, "sessionConfig")) {
                    JSONObject jSONObject26 = jSONObject3.getJSONObject("sessionConfig");
                    log.a("parseHarvestConfigFromResult JSONArray sessionConfig : " + jSONObject26.toString());
                    NBSSessionConfig nBSSessionConfig7 = new NBSSessionConfig(jSONObject26);
                    log.a("NBSSessionConfig : " + nBSSessionConfig7.toString());
                    this.nbsSessionConfig = nBSSessionConfig7;
                    this.logTrackConfig.a(jSONObject3.toString());
                    if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                        i2 = jSONObject3.getInt("stack_interval");
                        if (i2 < 0) {
                            i2 = 100;
                        }
                        this.stackInterval = i2;
                        if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                            this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject11111111113 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111113.toString());
                                    a.a().a(jSONObject11111111113);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject11111111114 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111114.toString());
                                    a.a().a(jSONObject11111111114);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            }
                        } else {
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject11111111115 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111115.toString());
                                    a.a().a(jSONObject11111111115);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject11111111116 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111116.toString());
                                    a.a().a(jSONObject11111111116);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            }
                        }
                    } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                        this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject11111111117 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111117.toString());
                                a.a().a(jSONObject11111111117);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject11111111118 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111118.toString());
                                a.a().a(jSONObject11111111118);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    } else {
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject11111111119 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111119.toString());
                                a.a().a(jSONObject11111111119);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject111111111110 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111111110.toString());
                                a.a().a(jSONObject111111111110);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    }
                } else {
                    this.logTrackConfig.a(jSONObject3.toString());
                    if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                        i2 = jSONObject3.getInt("stack_interval");
                        if (i2 < 0) {
                            i2 = 100;
                        }
                        this.stackInterval = i2;
                        if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                            this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject111111111111 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111111111.toString());
                                    a.a().a(jSONObject111111111111);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject111111111112 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111111112.toString());
                                    a.a().a(jSONObject111111111112);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            }
                        } else {
                            jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                            this.httpBodyMaxSize = jOptLong;
                            if (jOptLong >= 0) {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject111111111113 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111111113.toString());
                                    a.a().a(jSONObject111111111113);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            } else {
                                this.httpBodyMaxSize = 10L;
                                if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                    JSONObject jSONObject111111111114 = jSONObject3.getJSONObject("taskConfig");
                                    log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111111114.toString());
                                    a.a().a(jSONObject111111111114);
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                } else {
                                    this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                                }
                            }
                        }
                    } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                        this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject111111111115 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111111115.toString());
                                a.a().a(jSONObject111111111115);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject111111111116 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111111116.toString());
                                a.a().a(jSONObject111111111116);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    } else {
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject111111111117 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111111117.toString());
                                a.a().a(jSONObject111111111117);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject111111111118 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111111118.toString());
                                a.a().a(jSONObject111111111118);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    }
                }
            } else if (isNull_Or_Exist(jSONObject3, "sessionConfig")) {
                JSONObject jSONObject27 = jSONObject3.getJSONObject("sessionConfig");
                log.a("parseHarvestConfigFromResult JSONArray sessionConfig : " + jSONObject27.toString());
                NBSSessionConfig nBSSessionConfig8 = new NBSSessionConfig(jSONObject27);
                log.a("NBSSessionConfig : " + nBSSessionConfig8.toString());
                this.nbsSessionConfig = nBSSessionConfig8;
                this.logTrackConfig.a(jSONObject3.toString());
                if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                    i2 = jSONObject3.getInt("stack_interval");
                    if (i2 < 0) {
                        i2 = 100;
                    }
                    this.stackInterval = i2;
                    if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                        this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject111111111119 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject111111111119.toString());
                                a.a().a(jSONObject111111111119);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject1111111111110 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111111110.toString());
                                a.a().a(jSONObject1111111111110);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    } else {
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject1111111111111 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111111111.toString());
                                a.a().a(jSONObject1111111111111);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject1111111111112 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111111112.toString());
                                a.a().a(jSONObject1111111111112);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    }
                } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                    this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                    jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                    this.httpBodyMaxSize = jOptLong;
                    if (jOptLong >= 0) {
                        this.httpBodyMaxSize = 10L;
                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                            JSONObject jSONObject1111111111113 = jSONObject3.getJSONObject("taskConfig");
                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111111113.toString());
                            a.a().a(jSONObject1111111111113);
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        } else {
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        }
                    } else {
                        this.httpBodyMaxSize = 10L;
                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                            JSONObject jSONObject1111111111114 = jSONObject3.getJSONObject("taskConfig");
                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111111114.toString());
                            a.a().a(jSONObject1111111111114);
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        } else {
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        }
                    }
                } else {
                    jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                    this.httpBodyMaxSize = jOptLong;
                    if (jOptLong >= 0) {
                        this.httpBodyMaxSize = 10L;
                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                            JSONObject jSONObject1111111111115 = jSONObject3.getJSONObject("taskConfig");
                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111111115.toString());
                            a.a().a(jSONObject1111111111115);
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        } else {
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        }
                    } else {
                        this.httpBodyMaxSize = 10L;
                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                            JSONObject jSONObject1111111111116 = jSONObject3.getJSONObject("taskConfig");
                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111111116.toString());
                            a.a().a(jSONObject1111111111116);
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        } else {
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        }
                    }
                }
            } else {
                this.logTrackConfig.a(jSONObject3.toString());
                if (!isNull_Or_Exist(jSONObject3, "stack_interval")) {
                    i2 = jSONObject3.getInt("stack_interval");
                    if (i2 < 0) {
                        i2 = 100;
                    }
                    this.stackInterval = i2;
                    if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                        this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject1111111111117 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111111117.toString());
                                a.a().a(jSONObject1111111111117);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject1111111111118 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111111118.toString());
                                a.a().a(jSONObject1111111111118);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    } else {
                        jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                        this.httpBodyMaxSize = jOptLong;
                        if (jOptLong >= 0) {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject1111111111119 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject1111111111119.toString());
                                a.a().a(jSONObject1111111111119);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        } else {
                            this.httpBodyMaxSize = 10L;
                            if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                                JSONObject jSONObject11111111111110 = jSONObject3.getJSONObject("taskConfig");
                                log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111111110.toString());
                                a.a().a(jSONObject11111111111110);
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            } else {
                                this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                            }
                        }
                    }
                } else if (isNull_Or_Exist(jSONObject3, ConfigurationName.BATTERYCONFIG)) {
                    this.batteryConfig = jSONObject3.getJSONObject(ConfigurationName.BATTERYCONFIG).toString();
                    jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                    this.httpBodyMaxSize = jOptLong;
                    if (jOptLong >= 0) {
                        this.httpBodyMaxSize = 10L;
                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                            JSONObject jSONObject11111111111111 = jSONObject3.getJSONObject("taskConfig");
                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111111111.toString());
                            a.a().a(jSONObject11111111111111);
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        } else {
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        }
                    } else {
                        this.httpBodyMaxSize = 10L;
                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                            JSONObject jSONObject11111111111112 = jSONObject3.getJSONObject("taskConfig");
                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111111112.toString());
                            a.a().a(jSONObject11111111111112);
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        } else {
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        }
                    }
                } else {
                    jOptLong = jSONObject3.optLong("httpBodyMaxSize", 10L);
                    this.httpBodyMaxSize = jOptLong;
                    if (jOptLong >= 0) {
                        this.httpBodyMaxSize = 10L;
                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                            JSONObject jSONObject11111111111113 = jSONObject3.getJSONObject("taskConfig");
                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111111113.toString());
                            a.a().a(jSONObject11111111111113);
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        } else {
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        }
                    } else {
                        this.httpBodyMaxSize = 10L;
                        if (isNull_Or_Exist(jSONObject3, "taskConfig")) {
                            JSONObject jSONObject11111111111114 = jSONObject3.getJSONObject("taskConfig");
                            log.a("parseHarvestConfigFromResult JSONArray taskConfig : " + jSONObject11111111111114.toString());
                            a.a().a(jSONObject11111111111114);
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        } else {
                            this.viewClassWhitelist = jSONObject3.optString("viewClassWhitelist", "[]");
                        }
                    }
                }
            }
        } catch (Throwable th22) {
            g.o(" cfgObj, \"enableNdk\"  has error " + th22.getMessage());
        }
        return this;
    }

    public void reconfigure(HarvestConfiguration harvestConfiguration) {
        this.deviceId = harvestConfiguration.getTingyunId();
        this.token = harvestConfiguration.getToken();
        this.interval = harvestConfiguration.getInterval();
        this.intervalOnIdle = harvestConfiguration.getIntervalOnIdle();
        this.actions = harvestConfiguration.getActions();
        this.actionAge = harvestConfiguration.getActionAge();
        this.enableErrTrace = harvestConfiguration.isEnableErrTrace();
        this.errs = harvestConfiguration.getErrs();
        this.errRspSize = harvestConfiguration.getErrRspSize();
        this.stackDepth = harvestConfiguration.getStackDepth();
        this.dnsconn = harvestConfiguration.isDnsconn();
        this.urlFilterMode = harvestConfiguration.getUrlFilterMode();
        if (harvestConfiguration.getUrlRules() != null) {
            this.urlRules = harvestConfiguration.getUrlRules();
        }
        if (harvestConfiguration.getIgnoreErrRules() != null) {
            this.ignoreErrRules = harvestConfiguration.getIgnoreErrRules();
        }
        this.uiTraceThreshold = harvestConfiguration.getUiTraceThreshold();
        this.uiTraces = harvestConfiguration.getUiTraces();
        this.uiTraceSize = harvestConfiguration.getUiTraceSize();
        this.uiTraceRetries = harvestConfiguration.getUiTraceRetries();
        this.ignoreErrRules = harvestConfiguration.getIgnoreErrRules();
        this.urlParamArray = harvestConfiguration.getUrlParamArray();
        this.urlParamBlackArray = harvestConfiguration.getUrlParamBlackArray();
        this.crashTrails = harvestConfiguration.getCrashTrails();
        this.betaonFlag = harvestConfiguration.getBetaonFlag();
        this.controllerInterval = harvestConfiguration.getControllerInterval();
        this.whiteList = harvestConfiguration.getWhiteList();
        this.cdnHeaderName = harvestConfiguration.getCdnHeaderName();
        this.slowDomThreshold = harvestConfiguration.getSlowDomThreshold();
        this.slowFirstScreenThreshold = harvestConfiguration.getSlowFirstScreenThreshold();
        this.slowFirstPaintThreshold = harvestConfiguration.getSlowFirstPaintThreshold();
        this.slowPageThreshold = harvestConfiguration.getSlowPageThreshold();
        this.hotStartThreshold = harvestConfiguration.getHotStartThreshold();
        this.slowStartThreshold = harvestConfiguration.getSlowStartThreshold();
        this.userActions = harvestConfiguration.getUserActions();
        this.slowUserActionThreshold = harvestConfiguration.getSlowUserActionThreshold();
        this.urlRulesToString = harvestConfiguration.getUrlRulesToString();
        this.ignoredErrorRulesToSting = harvestConfiguration.getIgnoredErrorRulestoString();
        this.actionFailureThreshold = harvestConfiguration.getActionFailureThreshold();
        this.enabled = harvestConfiguration.getEnabled();
        this.controllerEnable = harvestConfiguration.getControllerEnable();
        this.feature = harvestConfiguration.getFeature();
        this.anrThreshold = harvestConfiguration.getAnrThreshold();
        this.slowPageLoadThreshold = harvestConfiguration.getSlowPageLoadThreshold();
        this.slowPageDurationThreshold = harvestConfiguration.getSlowPageDurationThreshold();
        this.uiPages = harvestConfiguration.getUiPages();
        this.anrAction = harvestConfiguration.getAnrAction();
        this.pluginSwitch = harvestConfiguration.isPluginSwitch();
        this.brsAgent = harvestConfiguration.getBrsAgent();
        this.enableNdk = harvestConfiguration.isEnableNdk();
        this.tyId = harvestConfiguration.getTyId();
        this.tyIdNew = harvestConfiguration.getTyIdNew();
        this.tyPlatformValue = harvestConfiguration.getTyPlatformValue();
        this.apmsIssue = harvestConfiguration.getApmsIssue();
        this.nbsSessionConfig = harvestConfiguration.getNbsSessionConfig();
        log.a("nbsSessionConfig :  " + this.nbsSessionConfig.toString());
        this.logTrackConfig = harvestConfiguration.logTrackConfig;
        this.stackInterval = harvestConfiguration.stackInterval;
        this.batteryConfig = harvestConfiguration.getBatteryConfig();
        this.httpBodyMaxSize = harvestConfiguration.httpBodyMaxSize;
        this.propagators = harvestConfiguration.getPropagators();
        this.cpuConfig = harvestConfiguration.getCpuConfig();
        this.viewClassWhitelist = harvestConfiguration.viewClassWhitelist;
    }

    public void reconfigurePb(JSONObject jSONObject) throws Exception {
        reconfigure(new HarvestConfiguration().parseHarvestConfigFromResult(jSONObject));
    }

    public void setActionAge(int i2) {
        this.actionAge = i2;
    }

    public void setActionFailureThreshold(int i2) {
        this.actionFailureThreshold = i2;
    }

    public void setActions(int i2) {
        this.actions = i2;
    }

    public void setAnrAction(int i2) {
        this.anrAction = i2;
    }

    public void setAnrThreshold(int i2) {
        if (i2 > 10000) {
            i2 = 10000;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        this.anrThreshold = i2;
    }

    public void setApmsIssue(String str) {
        this.apmsIssue = str;
    }

    public void setBatteryConfig(String str) {
        this.batteryConfig = str;
    }

    public void setBetaonFlag(int i2) {
        this.betaonFlag = i2;
    }

    public void setBrsAgent(String str) {
        this.brsAgent = str;
    }

    public void setCdnHeaderName(String str) {
        if (str == null) {
            this.cdnHeaderName = "";
        }
        this.cdnHeaderName = str;
    }

    public void setControllerInterval(int i2) {
        this.controllerInterval = i2;
    }

    public void setCrashTrails(int i2) {
        this.crashTrails = i2;
    }

    public void setDefaultValues() {
        this.interval = 60L;
        this.intervalOnIdle = 20;
        this.actions = 1000;
        this.actionAge = 600;
        this.enableErrTrace = true;
        this.errs = 100;
        this.errRspSize = 2048;
        this.stackDepth = 10;
        this.dnsconn = false;
        this.urlFilterMode = 0;
        this.urlRules = new ArrayList<>();
        this.ignoreErrRules = new ArrayList<>();
        this.uiTraceThreshold = 300.0f;
        this.uiTraces = 1;
        this.uiTraceSize = Constants.CallType.HOST;
        this.uiTraceRetries = 1;
        this.crashTrails = 20;
        this.controllerInterval = 60;
        this.controllerEnable = false;
        this.cdnHeaderName = "";
        this.slowPageThreshold = 7000;
        this.slowFirstPaintThreshold = S_FIRSTPAINT_THR;
        this.slowFirstScreenThreshold = S_FIRSTSCREEN_THR;
        this.slowDomThreshold = S_DOM_THR;
        this.hotStartThreshold = HOT_START_THRESHOLD;
        this.slowStartThreshold = SLOW_USER_ACTION_THRESHOLD;
        this.slowUserActionThreshold = SLOW_USER_ACTION_THRESHOLD;
        this.actionFailureThreshold = 100;
        this.slowPageLoadThreshold = 1000;
        this.slowPageDurationThreshold = SLOW_START_THRESHOLD;
        this.uiPages = 100;
        this.pluginSwitch = false;
        this.anrAction = 20;
        this.tyId = "";
        this.tyIdNew = "";
        this.apmsIssue = "";
        this.nbsSessionConfig = new NBSSessionConfig();
        this.logTrackConfig = b.a();
        this.stackInterval = -1;
    }

    public void setDnsconn(boolean z) {
        this.dnsconn = z;
    }

    public void setEnableErrTrace(boolean z) {
        this.enableErrTrace = z;
    }

    public void setEnableNdk(boolean z) {
        this.enableNdk = z;
        r.u().a(z);
    }

    public void setEnabled(int i2) {
        this.enabled = i2;
    }

    public void setErrRspSize(int i2) {
        this.errRspSize = i2;
    }

    public void setErrs(int i2) {
        this.errs = i2;
    }

    public void setFeature(int i2) {
        this.feature = i2;
    }

    public void setHotStartThreshold(long j2) {
        this.hotStartThreshold = j2;
    }

    public void setHttpBodyMaxSize(long j2) {
        this.httpBodyMaxSize = j2;
    }

    public void setIgnoreErrRules(String str) {
        setIgnoredErrorRulesToString(str);
        ArrayList<j.a> arrayList = new ArrayList<>();
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                int i3 = jSONObject.getInt("matchMode");
                String string = jSONObject.getString("rule");
                String string2 = jSONObject.getString("errs");
                j.a aVar = new j.a();
                aVar.f36918a = i3;
                aVar.f36919b = string;
                aVar.f36920c = string2;
                arrayList.add(aVar);
            }
        } catch (JSONException e2) {
            log.a("set ignoreErrors info" + e2.toString());
        }
        this.ignoreErrRules = arrayList;
    }

    public void setIgnoredErrorRulesToString(String str) {
        if (str == null) {
            this.ignoredErrorRulesToSting = "";
        }
        this.ignoredErrorRulesToSting = str;
    }

    public void setInterval(long j2) {
        this.interval = j2;
    }

    public void setIntervalOnIdle(int i2) {
        this.intervalOnIdle = i2;
    }

    public void setLogTrackConfig(b bVar) {
        this.logTrackConfig = bVar;
    }

    public void setPluginSwitch(boolean z) {
        this.pluginSwitch = z;
    }

    public void setSlowDomThreshold(int i2) {
        this.slowDomThreshold = i2;
    }

    public void setSlowFirstPaintThreshold(int i2) {
        this.slowFirstPaintThreshold = i2;
    }

    public void setSlowFirstScreenThreshold(int i2) {
        this.slowFirstScreenThreshold = i2;
    }

    public void setSlowInteractionThreshold(int i2) {
        this.slowInteractionThreshold = i2;
        r.u().h(i2);
    }

    public void setSlowPageDurationThreshold(int i2) {
        this.slowPageDurationThreshold = i2;
    }

    public void setSlowPageLoadThreshold(int i2) {
        this.slowPageLoadThreshold = i2;
    }

    public void setSlowPageThreshold(int i2) {
        this.slowPageThreshold = i2;
    }

    public void setSlowStartThreshold(long j2) {
        this.slowStartThreshold = j2;
    }

    public void setSlowUserActionThreshold(long j2) {
        this.slowUserActionThreshold = j2;
    }

    public void setStackDepth(int i2) {
        this.stackDepth = i2;
        r.u().k(i2);
    }

    public void setStackInterval(int i2) {
        this.stackInterval = i2;
    }

    public void setTingyunId(String str) {
        this.deviceId = str;
        r.u().l(str);
    }

    public void setToken(String str) {
        this.token = str;
    }

    public void setTyId(String str) {
        this.tyId = str;
        r.u().m(str);
    }

    public HarvestConfiguration setTyPlatformValue(int i2) {
        this.tyPlatformValue = i2;
        return this;
    }

    public void setUiPages(int i2) {
        this.uiPages = i2;
    }

    public void setUiTraceRetries(int i2) {
        this.uiTraceRetries = i2;
    }

    public void setUiTraceSize(int i2) {
        this.uiTraceSize = i2;
    }

    public void setUiTraceThreshold(float f2) {
        this.uiTraceThreshold = f2;
    }

    public void setUiTraces(int i2) {
        this.uiTraces = i2;
    }

    public void setUrlFilterMode(int i2) {
        this.urlFilterMode = i2;
    }

    public void setUrlRules(String str) {
        setUrlRulesToString(str);
        ArrayList<j.b> arrayList = new ArrayList<>();
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i2);
                int i3 = jSONObject.getInt("matchMode");
                String string = jSONObject.getString("rule");
                j.b bVar = new j.b();
                bVar.f36921a = i3;
                bVar.f36922b = string;
                arrayList.add(bVar);
                this.urlRules = arrayList;
            }
        } catch (JSONException e2) {
            log.a("set UrlRules info" + e2.toString());
        }
    }

    public void setUrlRulesToString(String str) {
        this.urlRulesToString = str;
    }

    public void setUserActions(int i2) {
        this.userActions = i2;
    }

    public void setWhiteList(String str) {
        this.whiteList = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("did:" + this.deviceId + ",");
        sb.append("token:" + this.token + ",");
        sb.append("interval:" + this.interval + ",");
        sb.append("intervalOnIdle:" + this.intervalOnIdle + ",");
        sb.append("urlFilterMode:" + this.urlFilterMode + ",");
        sb.append("uiTraces:" + this.uiTraces + ",");
        sb.append("uiTraceSize:" + this.uiTraceSize + ",");
        sb.append("uiTraceRetries:" + this.uiTraceRetries + ",");
        sb.append("uiTraceThreshold:" + this.uiTraceThreshold + ",");
        sb.append("crashTrails:" + this.crashTrails + ",");
        sb.append("controllerInterval:" + this.controllerInterval + ",");
        sb.append("cdnHeaderName:" + this.cdnHeaderName + ",");
        StringBuilder sb2 = new StringBuilder("hotStartThreshold:");
        sb2.append(this.hotStartThreshold);
        sb.append(sb2.toString());
        sb.append("slowStartThreshold : " + this.slowStartThreshold);
        sb.append("slowUserActionThreshold :" + this.slowUserActionThreshold);
        sb.append("userActions : " + this.userActions);
        sb.append("features :" + this.feature);
        sb.append("apms  :  " + this.apmsIssue);
        sb.append("pluginSwitch : " + this.pluginSwitch);
        ArrayList<j.b> arrayList = this.urlRules;
        if (arrayList != null) {
            sb.append("urlRules:");
            for (j.b bVar : arrayList) {
                sb.append("matchMode:" + bVar.f36921a + ",");
                sb.append("rule:" + bVar.f36922b + ",");
            }
        }
        sb.append(this.nbsSessionConfig.toString());
        if (this.urlParamArray != null) {
            sb.append("urlParamArray:");
            for (Map.Entry<UrlFilter, j.c> entry : this.urlParamArray.entrySet()) {
                j.c value = entry.getValue();
                StringBuilder sbR = pq0.r(ConfigurationName.DOWNLOAD_PLUGIN_URL, entry.getKey().url, ", item:");
                sbR.append(value.toString());
                sbR.append(";");
                sb.append(sbR.toString());
            }
        }
        if (this.urlParamBlackArray != null) {
            sb.append("urlParamBlackArray");
            for (Map.Entry<UrlFilter, j.c> entry2 : this.urlParamBlackArray.entrySet()) {
                j.c value2 = entry2.getValue();
                StringBuilder sbR2 = pq0.r(ConfigurationName.DOWNLOAD_PLUGIN_URL, entry2.getKey().url, ", black item:");
                sbR2.append(value2.toString());
                sbR2.append(";");
                sb.append(sbR2.toString());
            }
        }
        if (this.ignoreErrRules != null) {
            sb.append("ignoreErrRules:");
            for (j.a aVar : this.ignoreErrRules) {
                sb.append("errorCode" + aVar.f36920c + ", rule:" + aVar.f36919b + ",matchMode:" + aVar.f36918a);
            }
        }
        return sb.toString();
    }
}
