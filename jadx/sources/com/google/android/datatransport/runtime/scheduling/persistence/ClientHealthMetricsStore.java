package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;

/* JADX INFO: loaded from: classes3.dex */
public interface ClientHealthMetricsStore {
    void h();

    ClientMetrics j();

    void k(long j2, LogEventDropped.Reason reason, String str);
}
