package com.google.android.gms.auth.api.signin.internal;

import androidx.loader.app.LoaderManager;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
final class zbw implements LoaderManager.LoaderCallbacks {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SignInHubActivity f28848a;

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        SignInHubActivity signInHubActivity = this.f28848a;
        signInHubActivity.setResult(signInHubActivity.f28836k, signInHubActivity.l);
        signInHubActivity.finish();
    }

    @Override // androidx.loader.app.LoaderManager.LoaderCallbacks
    public final zbc b() {
        SignInHubActivity signInHubActivity = this.f28848a;
        Set set = GoogleApiClient.f29001a;
        synchronized (set) {
        }
        return new zbc(signInHubActivity, set);
    }
}
