package com.networkbench.agent.impl.instrumentation;

import android.text.TextUtils;
import android.view.View;
import com.networkbench.agent.impl.asyncaction.a.b;
import com.networkbench.agent.impl.background.NBSApplicationStateMonitor;
import com.networkbench.agent.impl.data.d.h;
import com.networkbench.agent.impl.data.type.j;
import com.networkbench.agent.impl.data.type.m;
import com.networkbench.agent.impl.data.type.p;
import com.networkbench.agent.impl.data.type.q;
import com.networkbench.agent.impl.fragmentadapt.FragmentTrackHelper;
import com.networkbench.agent.impl.fragmentadapt.e;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.networkbench.agent.impl.harvest.Harvest;
import com.networkbench.agent.impl.n.g;
import com.networkbench.agent.impl.session.screen.NBSScreenRecordTimer;
import com.networkbench.agent.impl.util.Logger;
import com.networkbench.agent.impl.util.ag;
import com.networkbench.agent.impl.util.ak;
import com.networkbench.agent.impl.util.r;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class NBSFragmentSession {
    private static final String TAG = "NBSFragmentSession";
    public static String custPageName;
    private static ConcurrentHashMap<String, h> storeFragmentPageData = new ConcurrentHashMap<>();
    private static String beforeFragmentInstanceName = "";
    private static ConcurrentHashMap<String, q> fragmentTraces = new ConcurrentHashMap<>();
    private static ConcurrentHashMap<String, g> fragmentPageSpans = new ConcurrentHashMap<>();

    public static void fragmentOnCreateViewBegin(Object obj, Object obj2) {
        try {
            if (r.u().ai() && e.d(obj)) {
                String name = obj.getClass().getName();
                String instrumentClassName = getInstrumentClassName();
                Logger.debug(TAG, "onCreateViewBegin real class:" + name + ", instrument class:" + instrumentClassName);
                j jVar = (j) fragmentTraces.get(name);
                if (jVar != null) {
                    jVar.d.f36983a++;
                    return;
                }
                j jVar2 = new j();
                jVar2.f36975a.a(name, instrumentClassName);
                if (obj2 != null && (obj2 instanceof View)) {
                    ((View) obj2).setTag(ConfigurationName.FRAGMENT_TAG, name);
                }
                jVar2.a(name, "#onCreateView", com.networkbench.agent.impl.data.type.r.FRAGMENT_ONCREATEVIEW);
                fragmentTraces.put(name, jVar2);
                if (h.f36878a == null) {
                    Logger.debug(TAG, "NBSPageData.lastPageData == null");
                }
                jVar2.d.f36983a++;
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("fragmentOnCreateViewBegin has an error : ", th);
        }
    }

    public static void fragmentOnCreateViewEnd(Object obj) {
        try {
            if (r.u().ai() && e.d(obj)) {
                String name = obj.getClass().getName();
                String instrumentClassName = getInstrumentClassName();
                Logger.debug(TAG, "onCreateViewEnd real class:" + name + ", instrument class:" + instrumentClassName);
                j fragmentTrace = getFragmentTrace(name);
                if (fragmentTrace == null) {
                    return;
                }
                fragmentTrace.f36975a.a(name, instrumentClassName);
                m mVar = fragmentTrace.d;
                int i2 = mVar.f36983a - 1;
                mVar.f36983a = i2;
                if (i2 == 0) {
                    fragmentTrace.b();
                }
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("fragmentOnCreateViewEnd has an error : ", th);
        }
    }

    public static void fragmentPause(Object obj) {
        try {
            if (Harvest.isUser_action_enabled()) {
                String name = obj.getClass().getName();
                Logger.debug(TAG, "fragmentSessionPause fragmentName:".concat(obj.getClass().getName()));
                if (TextUtils.isEmpty(name)) {
                    return;
                }
                j fragmentTrace = getFragmentTrace(name);
                if (fragmentTrace != null) {
                    fragmentTrace.a(false);
                }
                g gVar = fragmentPageSpans.get(name + obj.hashCode());
                if (gVar == null) {
                    return;
                }
                gVar.b(System.currentTimeMillis());
                NBSApplicationStateMonitor.getPageSpanStack().add(gVar);
                fragmentPageSpans.remove(name + obj.hashCode());
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("fragmentSessionPause has an error : ", th);
        }
    }

    public static void fragmentResumeBegin(Object obj) {
        try {
            if (r.u().ai() && e.d(obj)) {
                FragmentTrackHelper.trackFragmentResume(obj);
                String name = obj.getClass().getName();
                String instrumentClassName = getInstrumentClassName();
                Logger.debug(TAG, "resumeBegin real class:" + name + ", instrument class:" + instrumentClassName);
                j fragmentTrace = getFragmentTrace(name);
                if (fragmentTrace == null) {
                    return;
                }
                fragmentTrace.f36977c.a(name, instrumentClassName);
                if (fragmentTrace.d.f36985c == 0) {
                    fragmentTrace.a(name, com.networkbench.agent.impl.data.type.r.FRAGMENT_ONRESUME);
                }
                fragmentTrace.d.f36985c++;
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("fragmentSessionResumeBegin has an error : ", th);
        }
    }

    public static void fragmentResumeEnd(Object obj) {
        try {
            if (r.u().ai() && e.d(obj)) {
                String name = obj.getClass().getName();
                String instrumentClassName = getInstrumentClassName();
                Logger.debug(TAG, "resumeEnd real class:" + name + ", instrument class:" + instrumentClassName);
                j fragmentTrace = getFragmentTrace(name);
                if (fragmentTrace == null) {
                    return;
                }
                fragmentTrace.f36977c.a(name, instrumentClassName);
                m mVar = fragmentTrace.d;
                int i2 = mVar.f36985c - 1;
                mVar.f36985c = i2;
                if (i2 == 0) {
                    p pVarA = fragmentTrace.a();
                    String str = custPageName;
                    if (str != null && pVarA != null) {
                        pVarA.f36990h = str;
                        custPageName = null;
                    }
                    if (pVarA != null) {
                        h hVar = new h(0, name, pVarA);
                        if (!ak.r(name)) {
                            storeFragmentPageData.put(name, hVar);
                        }
                        if (!hVar.o()) {
                            Logger.debug(TAG, "add data in harvest data ");
                            b.f36406a.a(hVar);
                            com.networkbench.agent.impl.data.d.j.a(hVar, com.networkbench.agent.impl.data.d.b.a().b().a());
                        }
                    }
                    NBSScreenRecordTimer.storeBitmapDelay(100L);
                }
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("fragmentSessionResumeEnd has an error : ", th);
        }
    }

    public static void fragmentStartBegin(Object obj) {
        try {
            if (r.u().af() && e.d(obj)) {
                String name = obj.getClass().getName();
                String instrumentClassName = getInstrumentClassName();
                Logger.debug(TAG, "startBegin real class:" + name + ", instrument class:" + instrumentClassName);
                if (ak.r(name)) {
                    return;
                }
                if (r.u().ai()) {
                    j fragmentTrace = getFragmentTrace(name);
                    if (fragmentTrace == null) {
                        return;
                    }
                    fragmentTrace.f36976b.a(name, instrumentClassName);
                    if (fragmentTrace.d.f36984b == 0) {
                        fragmentTrace.b(name, com.networkbench.agent.impl.data.type.r.FRAGMENT_ONSTART);
                    }
                    fragmentTrace.d.f36984b++;
                }
                if (Harvest.isUser_action_enabled()) {
                    g gVar = new g();
                    gVar.a(System.currentTimeMillis());
                    gVar.a(name);
                    fragmentPageSpans.put(name + obj.hashCode(), gVar);
                }
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("fragmentSessionStarted has an error : ", th);
        }
    }

    public static void fragmentStartEnd(Object obj) {
        try {
            if (r.u().ai() && e.d(obj)) {
                String name = obj.getClass().getName();
                String instrumentClassName = getInstrumentClassName();
                Logger.debug(TAG, "startEnd real class:" + name + ", instrument class:" + instrumentClassName);
                j fragmentTrace = getFragmentTrace(name);
                if (fragmentTrace == null) {
                    return;
                }
                fragmentTrace.f36976b.a(name, instrumentClassName);
                m mVar = fragmentTrace.d;
                int i2 = mVar.f36984b - 1;
                mVar.f36984b = i2;
                if (i2 == 0) {
                    fragmentTrace.c();
                }
            }
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("fragmentStartEnd has an error : ", th);
        }
    }

    public static ConcurrentHashMap<String, g> getFragmentPageSpans() {
        return fragmentPageSpans;
    }

    private static j getFragmentTrace(String str) {
        if (ak.r(str)) {
            return null;
        }
        return (j) fragmentTraces.get(str);
    }

    private static String getInstrumentClassName() {
        return ag.a(4);
    }

    public static ConcurrentHashMap<String, h> getStoreFragmentPageData() {
        return storeFragmentPageData;
    }

    public static void setUserVisibleHint(boolean z, String str) {
        try {
            Logger.debug(TAG, "isVisible:" + z + ", fragmentInstanceName:" + str);
            r.u().ai();
        } catch (Throwable th) {
            com.networkbench.agent.impl.c.g.b("setUserVisibleHint has an error : ", th);
        }
    }
}
