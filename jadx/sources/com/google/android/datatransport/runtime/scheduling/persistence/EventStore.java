package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import java.io.Closeable;

/* JADX INFO: loaded from: classes2.dex */
public interface EventStore extends Closeable {
    boolean B0(TransportContext transportContext);

    void C0(Iterable iterable);

    PersistedEvent D1(TransportContext transportContext, EventInternal eventInternal);

    int M();

    Iterable U();

    Iterable U0(TransportContext transportContext);

    void i(Iterable iterable);

    void q1(long j2, TransportContext transportContext);

    long z0(TransportContext transportContext);
}
