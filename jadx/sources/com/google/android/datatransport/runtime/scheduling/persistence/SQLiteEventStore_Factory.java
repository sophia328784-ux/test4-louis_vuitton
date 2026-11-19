package com.google.android.datatransport.runtime.scheduling.persistence;

import com.google.android.datatransport.runtime.dagger.internal.Factory;
import com.google.android.datatransport.runtime.time.Clock;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SQLiteEventStore_Factory implements Factory<SQLiteEventStore> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f28111a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f28112b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f28113c;
    public final Provider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Provider f28114e;

    public SQLiteEventStore_Factory(Provider<Clock> provider, Provider<Clock> provider2, Provider<EventStoreConfig> provider3, Provider<SchemaManager> provider4, Provider<String> provider5) {
        this.f28111a = provider;
        this.f28112b = provider2;
        this.f28113c = provider3;
        this.d = provider4;
        this.f28114e = provider5;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SQLiteEventStore((Clock) this.f28111a.get(), (Clock) this.f28112b.get(), (EventStoreConfig) this.f28113c.get(), (SchemaManager) this.d.get(), this.f28114e);
    }
}
