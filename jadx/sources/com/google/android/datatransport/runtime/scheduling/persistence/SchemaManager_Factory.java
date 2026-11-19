package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class SchemaManager_Factory implements Factory<SchemaManager> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f28119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f28120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f28121c;

    public SchemaManager_Factory(Provider<Context> provider, Provider<String> provider2, Provider<Integer> provider3) {
        this.f28119a = provider;
        this.f28120b = provider2;
        this.f28121c = provider3;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new SchemaManager((Context) this.f28119a.get(), (String) this.f28120b.get(), ((Integer) this.f28121c.get()).intValue());
    }
}
