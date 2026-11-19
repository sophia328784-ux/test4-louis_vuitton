package com.google.android.datatransport.runtime;

import android.content.Context;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.TransportFactory;
import com.google.android.datatransport.runtime.scheduling.Scheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkInitializer;
import com.google.android.datatransport.runtime.time.Clock;
import defpackage.f31;
import defpackage.md;
import java.util.Collections;
import java.util.Set;
import javax.inject.Singleton;

/* JADX INFO: loaded from: classes2.dex */
@Singleton
public class TransportRuntime implements TransportInternal {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static volatile TransportRuntimeComponent f27982e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Clock f27983a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Clock f27984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Scheduler f27985c;
    public final Uploader d;

    public TransportRuntime(Clock clock, Clock clock2, Scheduler scheduler, Uploader uploader, WorkInitializer workInitializer) {
        this.f27983a = clock;
        this.f27984b = clock2;
        this.f27985c = scheduler;
        this.d = uploader;
        workInitializer.f28083a.execute(new f31(workInitializer, 10));
    }

    public static TransportRuntime a() {
        TransportRuntimeComponent transportRuntimeComponent = f27982e;
        if (transportRuntimeComponent != null) {
            return (TransportRuntime) ((DaggerTransportRuntimeComponent$TransportRuntimeComponentImpl) transportRuntimeComponent).l.get();
        }
        md.k("Not initialized!");
        return null;
    }

    public static void b(Context context) {
        if (f27982e == null) {
            synchronized (TransportRuntime.class) {
                try {
                    if (f27982e == null) {
                        DaggerTransportRuntimeComponent$Builder daggerTransportRuntimeComponent$Builder = new DaggerTransportRuntimeComponent$Builder();
                        context.getClass();
                        daggerTransportRuntimeComponent$Builder.f27961a = context;
                        f27982e = daggerTransportRuntimeComponent$Builder.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final TransportFactory c(Destination destination) {
        Set setUnmodifiableSet = destination instanceof EncodedDestination ? Collections.unmodifiableSet(((EncodedDestination) destination).a()) : Collections.singleton(new Encoding("proto"));
        TransportContext.Builder builderA = TransportContext.a();
        destination.getClass();
        ((AutoValue_TransportContext.Builder) builderA).f27958a = "cct";
        ((AutoValue_TransportContext.Builder) builderA).f27959b = destination.getExtras();
        return new TransportFactoryImpl(setUnmodifiableSet, builderA.a(), this);
    }
}
