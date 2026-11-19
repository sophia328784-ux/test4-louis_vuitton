package com.dynatrace.android.callback;

import com.dynatrace.agent.OneAgentFacade;
import com.dynatrace.agent.events.enrichment.WebContext;
import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.agent.useraction.SignificantEvent;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.DTXAutoAction;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.WebReqSegment;
import com.dynatrace.android.agent.WebReqTag;
import com.dynatrace.android.agent.WebRequestUtils;
import com.dynatrace.android.agent.conf.PrivacyRules;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.mixed.AutoWebRequestEventGenerator;
import com.dynatrace.android.agent.mixed.SessionInformationGenerator;
import com.dynatrace.android.agent.mixed.WebRequestTraceContext;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.ActivityLifecycleMonitor;
import java.net.HttpURLConnection;
import java.util.AbstractMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
final class CbWebReqTracker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Session f27596a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DTXAutoAction f27597b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f27598c;
    public OkRequestStateParms d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public WebReqTag f27599e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f27600f;
    public long g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f27601h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f27602i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f27603j = -1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public AbstractMap f27604k = null;
    public AbstractMap l = null;
    public WebRequestTraceContext m = null;

    /* JADX INFO: renamed from: com.dynatrace.android.callback.CbWebReqTracker$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f27605a;

        static {
            int[] iArr = new int[CbConstants$WrStates.values().length];
            f27605a = iArr;
            try {
                iArr[CbConstants$WrStates.PRE_EXEC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f27605a[CbConstants$WrStates.POST_EXEC_ERR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f27605a[CbConstants$WrStates.POST_EXEC_OK.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f27605a[CbConstants$WrStates.POST_EXEC_FINALIZE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    static {
        boolean z = Global.f27307a;
    }

    public CbWebReqTracker(DTXAutoAction dTXAutoAction, Session session) {
        this.f27597b = dTXAutoAction;
        this.f27596a = session;
    }

    public final boolean a(String str, String str2) {
        WebReqTag webReqTag = this.f27599e;
        if (webReqTag != null) {
            boolean zEquals = str == null ? false : webReqTag.toString().equals(str);
            DTXAutoAction dTXAutoAction = this.f27597b;
            if (!zEquals) {
                if (Global.f27307a) {
                    Utility.n("AutoTag " + this.f27599e.toString() + " != ManualTag '" + str + "'");
                }
                if (dTXAutoAction != null) {
                    dTXAutoAction.G(this.f27599e.toString());
                }
                this.f27599e = null;
                return false;
            }
            if (str2 != null) {
                if (Global.f27307a) {
                    Utility.n("ManualTag x-dtc exists: '" + str2 + "'");
                }
                if (dTXAutoAction != null) {
                    dTXAutoAction.G(this.f27599e.toString());
                }
                this.f27599e = null;
                return true;
            }
        } else if (Global.f27307a) {
            Utility.n("ManualTag '" + str + "' is used");
            return false;
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:124:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:127:0x0205  */
    /* JADX WARN: Code duplicated, block: B:130:0x020b  */
    /* JADX WARN: Code duplicated, block: B:146:? A[RETURN, SYNTHETIC] */
    public final void b(WebReqStateParms webReqStateParms) {
        long j2;
        long j3;
        AbstractMap abstractMap;
        AbstractMap abstractMap2;
        OneAgentFacade oneAgentFacade;
        if (this.f27601h == null) {
            this.f27601h = webReqStateParms.d();
        }
        if (Global.f27307a) {
            Utility.n(webReqStateParms.e() + "/" + webReqStateParms.f27615b + "/" + webReqStateParms.f27616c);
        }
        int[] iArr = AnonymousClass1.f27605a;
        CbConstants$WrStates cbConstants$WrStates = webReqStateParms.f27616c;
        CbConstants$WrMethod cbConstants$WrMethod = webReqStateParms.f27615b;
        int i2 = iArr[cbConstants$WrStates.ordinal()];
        Session session = this.f27596a;
        long j4 = 0;
        if (i2 != 1) {
            if (i2 == 2) {
                long j5 = webReqStateParms.g;
                if (j5 >= 0) {
                    this.f27602i = j5;
                }
                long j6 = webReqStateParms.f27619h;
                if (j6 >= 0) {
                    this.f27603j = j6;
                }
                AbstractMap abstractMap3 = webReqStateParms.l;
                if (abstractMap3 != null) {
                    this.l = abstractMap3;
                }
                AbstractMap abstractMap4 = webReqStateParms.f27622k;
                if (abstractMap4 != null) {
                    this.f27604k = abstractMap4;
                }
                if (cbConstants$WrMethod == CbConstants$WrMethod.getOutputStream && this.g > 0) {
                    this.g = 0L;
                    return;
                } else {
                    this.f27598c = true;
                    this.g = session.c();
                    return;
                }
            }
            if (i2 != 3) {
                if (i2 != 4) {
                    return;
                }
                this.f27598c = true;
                if (this.g <= 0) {
                    this.g = session.c();
                    return;
                }
                return;
            }
            if ((webReqStateParms instanceof ConnStateParms) && cbConstants$WrMethod != CbConstants$WrMethod.getOutputStream) {
                ConnStateParms connStateParms = (ConnStateParms) webReqStateParms;
                HttpURLConnection httpURLConnection = connStateParms.m;
                if (connStateParms.f27619h < 0) {
                    try {
                        connStateParms.f27619h = ConnStateParms.i(httpURLConnection.getHeaderFields()) + 2;
                    } catch (Exception unused) {
                        if (Global.f27307a) {
                            Utility.g();
                        }
                        connStateParms.f27619h = -1L;
                    }
                }
                connStateParms.a(httpURLConnection.getHeaderFields().get("Server-Timing"));
            }
            long j7 = webReqStateParms.g;
            if (j7 >= 0) {
                this.f27602i = j7;
            }
            long j8 = webReqStateParms.f27619h;
            if (j8 >= 0) {
                this.f27603j = j8;
            }
            AbstractMap abstractMap5 = webReqStateParms.l;
            if (abstractMap5 != null) {
                this.l = abstractMap5;
            }
            AbstractMap abstractMap6 = webReqStateParms.f27622k;
            if (abstractMap6 != null) {
                this.f27604k = abstractMap6;
            }
            if (cbConstants$WrMethod == CbConstants$WrMethod.getOutputStream) {
                this.g = session.c();
                return;
            }
            this.f27598c = true;
            if (this.g <= 0) {
                this.g = session.c();
                return;
            }
            return;
        }
        if (this.f27600f <= 0) {
            this.f27600f = session.c();
            if (session.f27483k && (oneAgentFacade = Core.l) != null) {
                oneAgentFacade.d.c(SignificantEvent.WebRequest.f27071a);
            }
        }
        long j9 = this.f27602i;
        if (j9 < 0) {
            if (webReqStateParms instanceof ConnStateParms) {
                ConnStateParms connStateParms2 = (ConnStateParms) webReqStateParms;
                boolean z = cbConstants$WrMethod == CbConstants$WrMethod.getOutputStream;
                HttpURLConnection httpURLConnection2 = connStateParms2.m;
                if (connStateParms2.g < 0) {
                    try {
                        String requestMethod = httpURLConnection2.getRequestMethod();
                        String file = httpURLConnection2.getURL().getFile();
                        int length = requestMethod.length();
                        connStateParms2.g = (file == null || file.length() < 1) ? length + 13 : file.length() + length + 12;
                        Map<String, List<String>> requestProperties = httpURLConnection2.getRequestProperties();
                        connStateParms2.g = ConnStateParms.i(requestProperties) + 2 + connStateParms2.g;
                        for (Map.Entry entry : ConnStateParms.n.entrySet()) {
                            if (requestProperties.containsKey(entry.getKey())) {
                                j2 = j4;
                            } else {
                                j2 = j4;
                                try {
                                    connStateParms2.g += (long) (((Integer) entry.getValue()).intValue() + 2);
                                } catch (Exception unused2) {
                                    if (Global.f27307a) {
                                        Utility.g();
                                    }
                                    connStateParms2.g = -1L;
                                    j3 = this.f27603j;
                                    if (j3 >= j2) {
                                        webReqStateParms.f27619h = j3;
                                    }
                                    abstractMap = this.f27604k;
                                    if (abstractMap != null) {
                                        webReqStateParms.f27622k = abstractMap;
                                    }
                                    abstractMap2 = this.l;
                                    if (abstractMap2 != null) {
                                        webReqStateParms.l = abstractMap2;
                                    }
                                }
                            }
                            j4 = j2;
                        }
                        j2 = j4;
                        if (!requestProperties.containsKey("Host")) {
                            connStateParms2.g += (long) (httpURLConnection2.getURL().toURI().getAuthority().length() + 8);
                        }
                        if (z && !requestProperties.containsKey("Content-Type")) {
                            connStateParms2.g += (long) ConnStateParms.o;
                        }
                    } catch (Exception unused3) {
                        j2 = j4;
                    }
                }
            }
            j3 = this.f27603j;
            if (j3 >= j2) {
                webReqStateParms.f27619h = j3;
            }
            abstractMap = this.f27604k;
            if (abstractMap != null) {
                webReqStateParms.f27622k = abstractMap;
            }
            abstractMap2 = this.l;
            if (abstractMap2 != null) {
                webReqStateParms.l = abstractMap2;
            }
        }
        webReqStateParms.g = j9;
        j2 = 0;
        j3 = this.f27603j;
        if (j3 >= j2) {
            webReqStateParms.f27619h = j3;
        }
        abstractMap = this.f27604k;
        if (abstractMap != null) {
            webReqStateParms.f27622k = abstractMap;
        }
        abstractMap2 = this.l;
        if (abstractMap2 != null) {
            webReqStateParms.l = abstractMap2;
        }
    }

    /* JADX WARN: Code duplicated, block: B:28:0x010e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0128  */
    /* JADX WARN: Code duplicated, block: B:31:0x0148  */
    /* JADX WARN: Code duplicated, block: B:32:0x015a  */
    /* JADX WARN: Instruction removed from duplicated block: B:28:0x010e, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:31:0x0148, please report this as an issue */
    public final void c(WebReqStateParms webReqStateParms) {
        WebReqTag webReqTag;
        JSONObject jSONObject;
        long j2;
        long j3;
        OneAgentFacade oneAgentFacade;
        SessionInformationMetrics sessionInformationMetricsA;
        WebContext webContextG;
        String str;
        boolean z = Global.f27307a;
        if (Dynatrace.c() && this.f27599e != null) {
            WebReqTag webReqTag2 = this.f27599e;
            long j4 = webReqTag2.d;
            int i2 = webReqTag2.f27317f;
            long j5 = this.f27600f;
            long j6 = this.g;
            int i3 = webReqStateParms.d;
            String str2 = webReqStateParms.f27617e;
            String strC = webReqStateParms.c();
            long j7 = webReqStateParms.g;
            long j8 = webReqStateParms.f27619h;
            int i4 = this.f27599e.f27313a;
            String str3 = webReqStateParms.f27620i;
            Session session = this.f27596a;
            WebReqSegment webReqSegment = new WebReqSegment(j4, i2, j5, j6, i3, str2, strC, j7, j8, session, i4, str3, !session.f27483k);
            if (session.f27483k) {
                PrivacyRules privacyRules = session.f27481i;
                EventType eventType = EventType.EVENT_API;
                if (!privacyRules.a(eventType)) {
                    Utility.b("auto web request event shouldn't be collected, because of data collection level: " + eventType);
                    return;
                }
                if (webReqStateParms.h()) {
                    WebRequestUtils.FormattedUrl formattedUrlA = WebRequestUtils.a(webReqStateParms.f().toString());
                    AutoWebRequestEventGenerator autoWebRequestEventGenerator = new AutoWebRequestEventGenerator();
                    autoWebRequestEventGenerator.f27572a = formattedUrlA.f27318a;
                    autoWebRequestEventGenerator.f27569f = webReqStateParms.f27621j;
                    autoWebRequestEventGenerator.f27573b = webReqStateParms.f().getProtocol();
                    autoWebRequestEventGenerator.f27568e = webReqStateParms.e();
                    autoWebRequestEventGenerator.f27574c = webReqStateParms.d;
                    autoWebRequestEventGenerator.d = webReqStateParms.f27618f;
                    autoWebRequestEventGenerator.g = this.f27604k;
                    autoWebRequestEventGenerator.f27570h = this.l;
                    autoWebRequestEventGenerator.f27571i = this.m;
                    if (autoWebRequestEventGenerator.f27572a == null || (str = autoWebRequestEventGenerator.f27573b) == null || str.isEmpty()) {
                        Utility.b("auto generateRumRequestEvent failed for, url: " + autoWebRequestEventGenerator.f27572a + ", networkProtocolName: " + autoWebRequestEventGenerator.f27573b);
                    } else {
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("characteristics.has_request", true);
                            jSONObject2.put("url.full", autoWebRequestEventGenerator.f27572a);
                            autoWebRequestEventGenerator.a(jSONObject2);
                            jSONObject = jSONObject2;
                        } catch (JSONException unused) {
                            Utility.b("auto generateRumRequestEvent failed with exception");
                            jSONObject = null;
                        }
                        Utility.b("auto web request event is generated: " + jSONObject);
                        if (jSONObject == null) {
                            Utility.b("invalid RUM Request event for url " + webReqStateParms.f().toString());
                        } else {
                            long j9 = session.f27475a;
                            long j10 = this.f27600f;
                            j2 = j9 + j10;
                            j3 = this.g - j10;
                            oneAgentFacade = Core.l;
                            sessionInformationMetricsA = SessionInformationGenerator.a(session);
                            webContextG = webReqStateParms.g();
                            oneAgentFacade.getClass();
                            sessionInformationMetricsA.getClass();
                            if (sessionInformationMetricsA.a()) {
                                oneAgentFacade.f26467c.c(jSONObject, j2, j3, sessionInformationMetricsA, webContextG);
                            } else {
                                Utility.b("dispatchEvent: event cannot be sent on this session, sessionInfo: " + sessionInformationMetricsA);
                            }
                        }
                    }
                    jSONObject = null;
                    Utility.b("auto web request event is generated: " + jSONObject);
                    if (jSONObject == null) {
                        Utility.b("invalid RUM Request event for url " + webReqStateParms.f().toString());
                    } else {
                        long j11 = session.f27475a;
                        long j12 = this.f27600f;
                        j2 = j11 + j12;
                        j3 = this.g - j12;
                        oneAgentFacade = Core.l;
                        sessionInformationMetricsA = SessionInformationGenerator.a(session);
                        webContextG = webReqStateParms.g();
                        oneAgentFacade.getClass();
                        sessionInformationMetricsA.getClass();
                        if (sessionInformationMetricsA.a()) {
                            Utility.b("dispatchEvent: event cannot be sent on this session, sessionInfo: " + sessionInformationMetricsA);
                        } else {
                            oneAgentFacade.f26467c.c(jSONObject, j2, j3, sessionInformationMetricsA, webContextG);
                        }
                    }
                } else {
                    Utility.b("auto web request event not supported by: ".concat(webReqStateParms.getClass().getName()));
                }
            } else {
                Utility.b("web event can't be generated: Grail is disabled");
            }
            AtomicBoolean atomicBoolean = CallbackCore.f27589a;
            ActivityLifecycleMonitor activityLifecycleMonitor = Core.f27280a;
            Core.g(webReqSegment, webReqSegment.p);
        }
        DTXAutoAction dTXAutoAction = this.f27597b;
        if (dTXAutoAction == null || (webReqTag = this.f27599e) == null) {
            return;
        }
        dTXAutoAction.F(webReqTag.d);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(String.valueOf(this.f27598c));
        sb.append("&&");
        sb.append(String.valueOf(this.f27600f));
        sb.append("&&");
        sb.append(String.valueOf(this.g));
        sb.append("&&");
        sb.append(String.valueOf(this.f27601h));
        sb.append("&&");
        WebReqTag webReqTag = this.f27599e;
        if (webReqTag != null) {
            sb.append(webReqTag.toString());
            sb.append("&&");
        } else {
            sb.append("NA&&");
        }
        DTXAutoAction dTXAutoAction = this.f27597b;
        if (dTXAutoAction != null) {
            sb.append(dTXAutoAction.h().toString());
            sb.append("&&");
        } else {
            sb.append("NA&&");
        }
        sb.append("NA");
        return sb.toString();
    }
}
