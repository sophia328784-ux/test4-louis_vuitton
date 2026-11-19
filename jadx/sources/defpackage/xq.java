package defpackage;

import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.firebase.crashlytics.internal.CrashlyticsNativeComponent;
import com.google.firebase.crashlytics.internal.model.StaticSessionData;
import com.google.firebase.inject.Deferred;
import com.google.firebase.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xq implements Deferred.DeferredHandler, SynchronizationGuard.CriticalSection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f81177b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f81178c;
    public final /* synthetic */ Object d;

    public /* synthetic */ xq(Uploader uploader, TransportContext transportContext, long j2) {
        this.f81178c = uploader;
        this.d = transportContext;
        this.f81177b = j2;
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object execute() {
        Uploader uploader = (Uploader) this.f81178c;
        uploader.f28071c.q1(uploader.g.a() + this.f81177b, (TransportContext) this.d);
        return null;
    }

    @Override // com.google.firebase.inject.Deferred.DeferredHandler
    public void g(Provider provider) {
        ((CrashlyticsNativeComponent) provider.get()).c((String) this.f81178c, this.f81177b, (StaticSessionData) this.d);
    }

    public /* synthetic */ xq(String str, long j2, StaticSessionData staticSessionData) {
        this.f81178c = str;
        this.f81177b = j2;
        this.d = staticSessionData;
    }
}
