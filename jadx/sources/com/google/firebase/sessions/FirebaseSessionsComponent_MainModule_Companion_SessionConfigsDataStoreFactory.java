package com.google.firebase.sessions;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import com.google.firebase.sessions.settings.SessionConfigs;
import com.google.firebase.sessions.settings.SessionConfigsSerializer;
import defpackage.dy;
import defpackage.je;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes2.dex */
public final class FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory implements Factory<DataStore<SessionConfigs>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35431a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f35432b;

    public FirebaseSessionsComponent_MainModule_Companion_SessionConfigsDataStoreFactory(Provider provider, Provider provider2) {
        this.f35431a = provider;
        this.f35432b = provider2;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        Context context = (Context) this.f35431a.get();
        CoroutineContext coroutineContext = (CoroutineContext) this.f35432b.get();
        context.getClass();
        coroutineContext.getClass();
        return FirebaseSessionsComponent.MainModule.Companion.a(SessionConfigsSerializer.f35592a, new ReplaceFileCorruptionHandler(new dy(7)), CoroutineScopeKt.a(coroutineContext), new je(context, 10));
    }
}
