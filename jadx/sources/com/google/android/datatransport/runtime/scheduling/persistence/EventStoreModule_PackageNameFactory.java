package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.Context;
import com.google.android.datatransport.runtime.dagger.internal.Factory;
import defpackage.r81;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class EventStoreModule_PackageNameFactory implements Factory<String> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f28102a;

    public EventStoreModule_PackageNameFactory(Provider<Context> provider) {
        this.f28102a = provider;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        String packageName = ((Context) this.f28102a.get()).getPackageName();
        if (packageName != null) {
            return packageName;
        }
        r81.d("Cannot return null from a non-@Nullable @Provides method");
        return null;
    }
}
