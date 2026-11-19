package com.dynatrace.android.agent;

import com.dynatrace.agent.events.error.ErrorEvent;
import com.dynatrace.android.agent.conf.AgentMode;
import com.dynatrace.android.agent.conf.Configuration;
import com.dynatrace.android.agent.conf.PrivacyRules;
import com.dynatrace.android.agent.crash.JavaStacktraceProcessor;
import com.dynatrace.android.agent.crash.PlatformType;
import com.dynatrace.android.agent.crash.StacktraceData;
import com.dynatrace.android.agent.data.RandomFactory;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.mixed.SessionInformationGenerator;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.internal.api.SelfMonitoring;
import com.linkplay.medialib.ContentTree;
import defpackage.d21;
import defpackage.n00;
import java.util.Locale;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DTXActionImpl extends CustomSegment implements DTXAction {
    public static final ConcurrentHashMap y;
    public int u;
    public final Vector v;
    public final boolean w;
    public int x;

    static {
        boolean z = Global.f27307a;
        y = new ConcurrentHashMap();
    }

    public DTXActionImpl(String str, EventType eventType, long j2, Session session, int i2, boolean z, DTXActionImpl dTXActionImpl) {
        super(str, 5, eventType, j2, session, i2, z);
        this.u = -1;
        this.v = new Vector();
        this.x = 0;
        this.f27300k = dTXActionImpl;
        if (dTXActionImpl == null) {
            this.l = this;
        } else {
            this.l = dTXActionImpl.l;
        }
        this.w = z;
        if (Global.f27307a) {
            Utility.n("New action " + str);
        }
        String str2 = this.o;
        if (str2 == null || str2.isEmpty()) {
            if (Global.f27307a) {
                Utility.n("The action name is null or empty hence this action will be deactivated");
            }
            this.f27296f = false;
            this.f27295e = true;
        }
    }

    public static DTXActionImpl q(String str, DTXAction dTXAction) {
        Session sessionB;
        int i2;
        long j2;
        DTXActionImpl dTXActionImpl = dTXAction instanceof DTXActionImpl ? (DTXActionImpl) dTXAction : null;
        if (dTXActionImpl != null) {
            long j3 = dTXActionImpl.q;
            sessionB = dTXActionImpl.f27297h;
            i2 = dTXActionImpl.f27298i;
            j2 = j3;
        } else {
            RandomFactory randomFactory = Session.m;
            sessionB = Session.b(TimeLineProvider.f27311c.a(), false);
            i2 = AdkSettings.f27249k.f27252c;
            j2 = 0;
        }
        Session session = sessionB;
        int i3 = i2;
        DTXActionImpl dTXActionImpl2 = new DTXActionImpl(str, EventType.ACTION_MANUAL, j2, session, i3, true, dTXActionImpl);
        if (dTXActionImpl != null && dTXActionImpl.f27295e) {
            dTXActionImpl2.f27296f = false;
            dTXActionImpl2.f27295e = true;
        }
        if (j2 != 0) {
            int i4 = dTXActionImpl.x + 1;
            dTXActionImpl2.x = i4;
            if (i4 >= 10) {
                if (Global.f27307a) {
                    Utility.g();
                }
                return dTXActionImpl2;
            }
            if (dTXActionImpl2.l()) {
                int iIncrementAndGet = dTXActionImpl2.l.m.incrementAndGet();
                if (Global.f27307a) {
                    Utility.n("Limit of actions is reached for user actions, dropped events: " + iIncrementAndGet);
                }
                dTXActionImpl2.f27296f = false;
                dTXActionImpl2.f27295e = true;
                return dTXActionImpl2;
            }
            dTXActionImpl.o(dTXActionImpl2);
        }
        ActionThreadLocal.a();
        if (!dTXActionImpl2.f27295e) {
            ((Vector) ActionThreadLocal.f27245a.get()).add(dTXActionImpl2);
        }
        Core.a(str, 1, j2, dTXActionImpl2, session, i3, new String[0]);
        return dTXActionImpl2;
    }

    @Override // com.dynatrace.android.agent.DTXAction
    public void a() {
        v(true);
        if (this.f27300k == null) {
            AtomicInteger atomicInteger = this.m;
            if (atomicInteger.get() != 0) {
                Locale locale = Locale.US;
                SelfMonitoring.a("EventThrottlingActionTreeSizeLimit", "The root action with id " + this.q + " has exceeded child limitation of " + CustomSegment.t + ", discarded " + atomicInteger.get() + " child events");
            }
        }
    }

    @Override // com.dynatrace.android.agent.DTXAction
    public final void b(String str, double d) {
        p(str, new String[]{String.valueOf(d)}, 7);
    }

    @Override // com.dynatrace.android.agent.DTXAction
    public final void c(String str, Throwable th) {
        JSONObject jSONObject;
        Utility.b("reportError within action context, errorName: " + str + ", throwable: " + th);
        if (str != null && t()) {
            Session session = this.f27297h;
            if (th == null || !session.f27483k) {
                StringBuilder sb = new StringBuilder("reportError can't be executed: Grail events should be captured: ");
                sb.append(session.f27483k);
                sb.append(" or throwable is null: ");
                sb.append(th == null);
                Utility.b(sb.toString());
            } else {
                PrivacyRules privacyRules = session.f27481i;
                EventType eventType = EventType.EVENT_API;
                if (privacyRules.a(eventType)) {
                    try {
                        JSONObject jSONObjectA = ErrorEvent.a(th, true);
                        jSONObjectA.put("error.name", str);
                        jSONObjectA.put("error.has_custom_name", true);
                        jSONObjectA.put("characteristics.has_exception", true);
                        jSONObjectA.put("dt.support.is_legacy_api_reported", true);
                        Utility.b("error event: " + jSONObjectA);
                        jSONObject = jSONObjectA;
                    } catch (JSONException unused) {
                        Utility.b("error event can't be generated");
                        jSONObject = null;
                    }
                    if (jSONObject != null) {
                        Core.l.a(TimeLineProvider.f27311c.a(), SessionInformationGenerator.a(session), jSONObject, true);
                    }
                } else {
                    Utility.b("action reportError eventType shouldn't be collected, because of data collection level: " + eventType);
                }
            }
            StacktraceData stacktraceData = th == null ? new StacktraceData(null, null, null, PlatformType.JAVA) : new JavaStacktraceProcessor(th, AdkSettings.f27249k.f27254f.d == AgentMode.APP_MON ? 10 : Integer.MAX_VALUE).a();
            p(str, new String[]{stacktraceData.f27451a, stacktraceData.f27452b, stacktraceData.f27453c, stacktraceData.d.a()}, 10);
        }
    }

    @Override // com.dynatrace.android.agent.DTXAction
    public final void d(String str, String str2) {
        p(str, new String[]{str2}, 8);
    }

    @Override // com.dynatrace.android.agent.DTXAction
    public final void e(int i2, String str) {
        p(str, new String[]{String.valueOf(i2)}, 6);
    }

    @Override // com.dynatrace.android.agent.DTXAction
    public final void f(long j2, String str) {
        p(str, new String[]{String.valueOf(j2)}, 6);
    }

    @Override // com.dynatrace.android.agent.CustomSegment
    public StringBuilder h() {
        StringBuilder sbT = n00.t("et=");
        sbT.append(this.f27299j.b());
        sbT.append("&na=");
        sbT.append(Utility.m(this.o));
        sbT.append("&it=");
        sbT.append(Utility.e());
        sbT.append("&ca=");
        sbT.append(this.q);
        sbT.append("&pa=");
        sbT.append(this.d);
        sbT.append("&s0=");
        sbT.append(this.g);
        sbT.append("&t0=");
        sbT.append(this.f27293b);
        sbT.append("&s1=");
        sbT.append(this.u);
        sbT.append("&t1=");
        sbT.append(this.f27294c - this.f27293b);
        sbT.append("&fw=");
        sbT.append(this.w ? "1" : ContentTree.ROOT_ID);
        return sbT;
    }

    public final void o(CustomSegment customSegment) {
        if (customSegment.f27296f) {
            this.l.n.incrementAndGet();
            this.v.add(customSegment);
            x(customSegment);
        }
    }

    public final void p(String str, String[] strArr, int i2) {
        if (t()) {
            if (l()) {
                int iIncrementAndGet = this.l.m.incrementAndGet();
                if (Global.f27307a) {
                    Utility.n("Limit of actions is reached for reporting values, dropped events: " + iIncrementAndGet);
                    return;
                }
                return;
            }
            CustomSegment customSegmentA = Core.a(str, i2, this.q, null, this.f27297h, this.f27298i, strArr);
            if (customSegmentA != null) {
                o(customSegmentA);
            }
        }
    }

    public final Vector r() {
        Vector vector;
        synchronized (this.v) {
            vector = new Vector(this.v);
        }
        return vector;
    }

    public WebReqTag s() {
        if (!t()) {
            return null;
        }
        Session session = this.f27297h;
        if (!session.f27481i.a(EventType.WEB_REQUEST)) {
            return null;
        }
        if (!l()) {
            return new WebReqTag(this.q, this.f27298i, session);
        }
        int iIncrementAndGet = this.l.m.incrementAndGet();
        if (!Global.f27307a) {
            return null;
        }
        Utility.n("Limit of actions is reached for web requests, dropped events: " + iIncrementAndGet);
        return null;
    }

    public boolean t() {
        if (this.f27295e) {
            return false;
        }
        if (this.x < 10) {
            return Dynatrace.c();
        }
        if (Global.f27307a) {
            StringBuilder sb = new StringBuilder("Maximum depth of actions reached (10). Discarding creation of '");
            sb.append(this.o);
            sb.append("'");
            Utility.g();
        }
        return false;
    }

    public final WebReqTag u() {
        WebReqTag webReqTagS = s();
        if (webReqTagS == null) {
            return null;
        }
        o(new CustomSegment(webReqTagS.toString(), 110, EventType.PLACEHOLDER, this.q, this.f27297h, this.f27298i, this.w));
        return webReqTagS;
    }

    public void v(boolean z) {
        DTXActionImpl dTXActionImpl;
        if (this.f27295e) {
            if (Global.f27307a) {
                Utility.n("Action " + this.o + " is already closed");
                return;
            }
            return;
        }
        if (Global.f27307a) {
            Utility.n("Action " + this.o + " closing ... saving=" + z);
        }
        ((Vector) ActionThreadLocal.f27245a.get()).remove(this);
        ActionThreadLocal.a();
        boolean zT = t();
        if (zT) {
            this.f27294c = this.f27297h.c();
            Configuration configuration = AdkSettings.f27249k.f27254f;
            Vector<CustomSegment> vector = (configuration == null || configuration.d != AgentMode.SAAS) ? (Vector) y.remove(Long.valueOf(Utility.e())) : null;
            if (vector != null) {
                for (CustomSegment customSegment : vector) {
                    long j2 = customSegment.f27293b;
                    long j3 = customSegment.q;
                    if (j2 > this.f27293b && j2 < this.f27294c) {
                        if (Global.f27307a) {
                            Utility.n(this.o + " adopting " + customSegment.o + " tagId=" + j3);
                        }
                        customSegment.d = this.q;
                        o(customSegment);
                    } else if (Global.f27307a) {
                        Utility.n(this.o + " not adopting " + customSegment.o + " tagId=" + j3);
                    }
                }
            }
            w(z);
            this.u = Utility.f27585a.getAndIncrement();
            if (z) {
                dTXActionImpl = this;
                Core.a(this.o, 2, this.d, dTXActionImpl, this.f27297h, this.f27298i, new String[0]);
            } else {
                dTXActionImpl = this;
                dTXActionImpl.m();
                Core.f27287j.e(dTXActionImpl);
            }
        } else {
            dTXActionImpl = this;
            dTXActionImpl.w(false);
            dTXActionImpl.m();
            Core.f27287j.e(dTXActionImpl);
        }
        DTXActionImpl dTXActionImpl2 = dTXActionImpl.f27300k;
        if (dTXActionImpl2 != null && (dTXActionImpl2 instanceof DTXAutoAction)) {
            DTXAutoAction dTXAutoAction = (DTXAutoAction) dTXActionImpl2;
            if (dTXAutoAction.r().contains(dTXActionImpl)) {
                if (Global.f27307a) {
                    String str = DTXAutoAction.J;
                    Utility.n("onUA: child " + dTXActionImpl.o + " of " + dTXAutoAction.o + " done");
                }
                dTXAutoAction.D();
                dTXAutoAction.B--;
            }
        }
        if (Global.f27307a) {
            StringBuilder sbS = d21.s("Action ", dTXActionImpl.o, " closed: shouldSave=", " rc=", z);
            sbS.append(zT);
            Utility.n(sbS.toString());
            if (zT) {
                return;
            }
            String.format("Discard %s tagId=%d capture state=%b", dTXActionImpl.o, Long.valueOf(dTXActionImpl.q), Boolean.valueOf(zT));
            Utility.g();
        }
    }

    public final void w(boolean z) {
        Vector vector = this.v;
        if (vector == null) {
            return;
        }
        synchronized (vector) {
            try {
                for (int size = this.v.size() - 1; size >= 0; size--) {
                    CustomSegment customSegment = (CustomSegment) this.v.get(size);
                    if (customSegment.k() == 5) {
                        ((DTXActionImpl) customSegment).v(z);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void x(CustomSegment customSegment) {
    }
}
