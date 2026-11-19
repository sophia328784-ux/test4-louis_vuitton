package com.dynatrace.agent.di;

import com.dynatrace.android.agent.mixed.SecondGenMetricsProviderImpl;
import com.dynatrace.android.agent.mixed.SessionInformationProviderImpl;
import defpackage.ct0;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b`\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/dynatrace/agent/di/SecondGenServiceLocator;", "", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public interface SecondGenServiceLocator {
    SessionInformationProviderImpl a();

    ct0 b();

    SecondGenMetricsProviderImpl c();
}
