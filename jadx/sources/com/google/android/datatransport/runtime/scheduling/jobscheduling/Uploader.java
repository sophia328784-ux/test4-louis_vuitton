package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.ProtoEncoderDoNotUse;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import defpackage.gy0;
import defpackage.ln0;
import defpackage.xq;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;
import javax.inject.Inject;

/* JADX INFO: loaded from: classes2.dex */
public class Uploader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f28069a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BackendRegistry f28070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EventStore f28071c;
    public final WorkScheduler d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Executor f28072e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final SynchronizationGuard f28073f;
    public final Clock g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Clock f28074h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final ClientHealthMetricsStore f28075i;

    @Inject
    public Uploader(Context context, BackendRegistry backendRegistry, EventStore eventStore, WorkScheduler workScheduler, Executor executor, SynchronizationGuard synchronizationGuard, Clock clock, Clock clock2, ClientHealthMetricsStore clientHealthMetricsStore) {
        this.f28069a = context;
        this.f28070b = backendRegistry;
        this.f28071c = eventStore;
        this.d = workScheduler;
        this.f28072e = executor;
        this.f28073f = synchronizationGuard;
        this.g = clock;
        this.f28074h = clock2;
        this.f28075i = clientHealthMetricsStore;
    }

    public final void a(final TransportContext transportContext, int i2) {
        BackendResponse backendResponseB;
        TransportBackend transportBackend = this.f28070b.get(transportContext.b());
        BackendResponse.e(0L);
        final long j2 = 0;
        while (true) {
            final int i3 = 0;
            SynchronizationGuard.CriticalSection criticalSection = new SynchronizationGuard.CriticalSection(this) { // from class: g51

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Uploader f69301c;

                {
                    this.f69301c = this;
                }

                @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                public final Object execute() {
                    int i4 = i3;
                    TransportContext transportContext2 = transportContext;
                    Uploader uploader = this.f69301c;
                    switch (i4) {
                        case 0:
                            return Boolean.valueOf(uploader.f28071c.B0(transportContext2));
                        default:
                            return uploader.f28071c.U0(transportContext2);
                    }
                }
            };
            SynchronizationGuard synchronizationGuard = this.f28073f;
            if (!((Boolean) synchronizationGuard.c(criticalSection)).booleanValue()) {
                synchronizationGuard.c(new xq(this, transportContext, j2));
                return;
            }
            final int i4 = 1;
            final Iterable iterable = (Iterable) synchronizationGuard.c(new SynchronizationGuard.CriticalSection(this) { // from class: g51

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ Uploader f69301c;

                {
                    this.f69301c = this;
                }

                @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                public final Object execute() {
                    int i5 = i4;
                    TransportContext transportContext2 = transportContext;
                    Uploader uploader = this.f69301c;
                    switch (i5) {
                        case 0:
                            return Boolean.valueOf(uploader.f28071c.B0(transportContext2));
                        default:
                            return uploader.f28071c.U0(transportContext2);
                    }
                }
            });
            if (!iterable.iterator().hasNext()) {
                return;
            }
            if (transportBackend == null) {
                Logging.a("Uploader", transportContext, "Unknown backend for %s, deleting event batch for it...");
                backendResponseB = BackendResponse.a();
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((PersistedEvent) it.next()).a());
                }
                if (transportContext.c() != null) {
                    ClientHealthMetricsStore clientHealthMetricsStore = this.f28075i;
                    Objects.requireNonNull(clientHealthMetricsStore);
                    ClientMetrics clientMetrics = (ClientMetrics) synchronizationGuard.c(new ln0(clientHealthMetricsStore, 20));
                    EventInternal.Builder builderA = EventInternal.a();
                    builderA.f(this.g.a());
                    builderA.l(this.f28074h.a());
                    builderA.k("GDT_CLIENT_METRICS");
                    Encoding encoding = new Encoding("proto");
                    clientMetrics.getClass();
                    ProtobufEncoder protobufEncoder = ProtoEncoderDoNotUse.f27973a;
                    protobufEncoder.getClass();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        protobufEncoder.a(clientMetrics, byteArrayOutputStream);
                    } catch (IOException unused) {
                    }
                    builderA.e(new EncodedPayload(encoding, byteArrayOutputStream.toByteArray()));
                    arrayList.add(transportBackend.a(builderA.b()));
                }
                BackendRequest.Builder builderA2 = BackendRequest.a();
                builderA2.b(arrayList);
                builderA2.c(transportContext.c());
                backendResponseB = transportBackend.b(builderA2.a());
            }
            if (backendResponseB.c() == BackendResponse.Status.TRANSIENT_ERROR) {
                final Uploader uploader = this;
                final TransportContext transportContext2 = transportContext;
                synchronizationGuard.c(new SynchronizationGuard.CriticalSection() { // from class: h51
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object execute() {
                        Uploader uploader2 = this.f69613b;
                        EventStore eventStore = uploader2.f28071c;
                        eventStore.C0(iterable);
                        eventStore.q1(uploader2.g.a() + j2, transportContext2);
                        return null;
                    }
                });
                uploader.d.b(transportContext2, i2 + 1, true);
                return;
            }
            Uploader uploader2 = this;
            TransportContext transportContext3 = transportContext;
            synchronizationGuard.c(new gy0(uploader2, iterable, 6));
            if (backendResponseB.c() == BackendResponse.Status.OK) {
                long jMax = Math.max(j2, backendResponseB.b());
                if (transportContext3.c() != null) {
                    synchronizationGuard.c(new ln0(uploader2, 22));
                }
                j2 = jMax;
            } else if (backendResponseB.c() == BackendResponse.Status.INVALID_PAYLOAD) {
                HashMap map = new HashMap();
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    String strL = ((PersistedEvent) it2.next()).a().l();
                    if (map.containsKey(strL)) {
                        map.put(strL, Integer.valueOf(((Integer) map.get(strL)).intValue() + 1));
                    } else {
                        map.put(strL, 1);
                    }
                }
                synchronizationGuard.c(new gy0(uploader2, map, 7));
            }
            this = uploader2;
            transportContext = transportContext3;
        }
    }
}
