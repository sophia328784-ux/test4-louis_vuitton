package com.dynatrace.android.internal.api;

import com.dynatrace.android.agent.AdkSettings;
import com.dynatrace.android.agent.Core;
import com.dynatrace.android.agent.Dynatrace;
import com.dynatrace.android.agent.Global;
import com.dynatrace.android.agent.SelfMonitoringSegment;
import com.dynatrace.android.agent.conf.AgentMode;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;

/* JADX INFO: loaded from: classes2.dex */
public class SelfMonitoring {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f27640a = 0;

    static {
        boolean z = Global.f27307a;
    }

    public static void a(String str, String str2) {
        if (!str.isEmpty() && Dynatrace.c()) {
            AdkSettings adkSettings = AdkSettings.f27249k;
            if (adkSettings.g.f27410b && adkSettings.f27254f.d != AgentMode.APP_MON) {
                Session session = Session.n;
                if (session.f27479f >= 20) {
                    return;
                }
                int i2 = adkSettings.f27252c;
                if (Global.f27307a) {
                    Utility.n("Handle self monitoring event name=\"" + str + "\" payload=\"" + str2 + "\"");
                }
                SelfMonitoringSegment selfMonitoringSegment = new SelfMonitoringSegment(str, str2, session, i2);
                Core.f27287j.b();
                Core.g(selfMonitoringSegment, selfMonitoringSegment.p);
                session.f27479f++;
            }
        }
    }
}
