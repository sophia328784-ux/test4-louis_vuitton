package com.dynatrace.android.agent.mixed;

import com.dynatrace.agent.metrics.SessionInformationMetrics;
import com.dynatrace.android.agent.EventType;
import com.dynatrace.android.agent.conf.DataCollectionLevel;
import com.dynatrace.android.agent.conf.PrivacyRules;
import com.dynatrace.android.agent.data.Session;
import com.dynatrace.android.agent.util.Utility;

/* JADX INFO: loaded from: classes2.dex */
public final class SessionInformationGenerator {
    public static SessionInformationMetrics a(Session session) {
        boolean zA;
        if (session == null) {
            Utility.b("SessionInformationGenerator.generate: session is null, returning NO_SESSION");
            return SessionInformationMetrics.f26882h;
        }
        DataCollectionLevel dataCollectionLevel = DataCollectionLevel.OFF;
        PrivacyRules privacyRules = session.f27481i;
        if (privacyRules != null) {
            zA = privacyRules.a(EventType.CRASH);
            dataCollectionLevel = privacyRules.f27384a.f27436a;
        } else {
            Utility.b("SessionInformationGenerator.generate: privacyRules is null, returning session with event and crash reporting turned off");
            zA = false;
        }
        return new SessionInformationMetrics(session.f27476b, session.f27477c, 0, session.f27483k, zA, session.e(), dataCollectionLevel.a());
    }
}
