package com.google.firebase.sessions.settings;

import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.sessions.ApplicationInfo;
import com.google.firebase.sessions.TimeProvider;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;

/* JADX INFO: loaded from: classes2.dex */
public final class RemoteSettings_Factory implements Factory<RemoteSettings> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35583a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f35584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f35585c;
    public final Provider d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Provider f35586e;

    public RemoteSettings_Factory(Provider provider, Provider provider2, Provider provider3, Provider provider4, Provider provider5) {
        this.f35583a = provider;
        this.f35584b = provider2;
        this.f35585c = provider3;
        this.d = provider4;
        this.f35586e = provider5;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        return new RemoteSettings((TimeProvider) this.f35583a.get(), (FirebaseInstallationsApi) this.f35584b.get(), (ApplicationInfo) this.f35585c.get(), (CrashlyticsSettingsFetcher) this.d.get(), (SettingsCache) this.f35586e.get());
    }
}
