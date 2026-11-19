package com.dynatrace.android.agent;

import com.dynatrace.android.agent.conf.AgentMode;
import com.dynatrace.android.agent.conf.Configuration;
import com.dynatrace.android.agent.data.RandomFactory;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;
import com.dynatrace.android.lifecycle.ActivityLifecycleMonitor;
import java.util.NoSuchElementException;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public abstract class AgentUtil {
    public static WebReqTag a() {
        DTXActionImpl dTXActionImpl;
        Session sessionB;
        WebReqTag webReqTag;
        int i2;
        long j2;
        long j3;
        if (!Core.f27288k.f27270k.get()) {
            return null;
        }
        ActionThreadLocal.a();
        try {
            dTXActionImpl = (DTXActionImpl) ((Vector) ActionThreadLocal.f27245a.get()).lastElement();
        } catch (NoSuchElementException unused) {
            dTXActionImpl = null;
        }
        if (dTXActionImpl == null) {
            dTXActionImpl = DTXAutoAction.N;
        }
        if (dTXActionImpl != null) {
            j2 = dTXActionImpl.q;
            sessionB = dTXActionImpl.f27297h;
            i2 = dTXActionImpl.f27298i;
            webReqTag = dTXActionImpl.s();
        } else {
            sessionB = null;
            webReqTag = null;
            i2 = 0;
            j2 = 0;
        }
        if (webReqTag == null) {
            RandomFactory randomFactory = Session.m;
            sessionB = Session.b(TimeLineProvider.f27311c.a(), false);
            i2 = AdkSettings.f27249k.f27252c;
            webReqTag = new WebReqTag(0L, i2, sessionB);
            j3 = 0;
        } else {
            j3 = j2;
        }
        int i3 = i2;
        if (!sessionB.f27481i.a(EventType.WEB_REQUEST)) {
            return null;
        }
        CustomSegment customSegment = new CustomSegment(webReqTag.toString(), 100, EventType.PLACEHOLDER, j3, sessionB, i3, true);
        if (j3 == 0) {
            ConcurrentHashMap concurrentHashMap = DTXActionImpl.y;
            Configuration configuration = AdkSettings.f27249k.f27254f;
            if (configuration == null || configuration.d != AgentMode.SAAS) {
                ConcurrentHashMap concurrentHashMap2 = DTXActionImpl.y;
                Vector vector = (Vector) concurrentHashMap2.get(Long.valueOf(Utility.e()));
                if (vector == null) {
                    vector = new Vector();
                    concurrentHashMap2.put(Long.valueOf(Utility.e()), vector);
                }
                vector.add(customSegment);
            }
        } else {
            dTXActionImpl.o(customSegment);
        }
        if (Global.f27307a) {
            ActivityLifecycleMonitor activityLifecycleMonitor = Core.f27280a;
            Utility.n(String.format("Added an event %s id=%d pid=%d", customSegment.o, Long.valueOf(customSegment.q), Long.valueOf(customSegment.d)));
        }
        return webReqTag;
    }
}
