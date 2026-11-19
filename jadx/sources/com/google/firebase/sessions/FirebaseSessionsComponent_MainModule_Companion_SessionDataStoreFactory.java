package com.google.firebase.sessions;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import com.google.firebase.sessions.dagger.internal.Factory;
import com.google.firebase.sessions.dagger.internal.Provider;
import defpackage.ck;
import defpackage.je;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: loaded from: classes2.dex */
public final class FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory implements Factory<DataStore<SessionData>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Provider f35433a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Provider f35434b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Provider f35435c;

    public FirebaseSessionsComponent_MainModule_Companion_SessionDataStoreFactory(Provider provider, Provider provider2, Provider provider3) {
        this.f35433a = provider;
        this.f35434b = provider2;
        this.f35435c = provider3;
    }

    @Override // javax.inject.Provider
    public final Object get() {
        Context context = (Context) this.f35433a.get();
        CoroutineContext coroutineContext = (CoroutineContext) this.f35434b.get();
        SessionDataSerializer sessionDataSerializer = (SessionDataSerializer) this.f35435c.get();
        context.getClass();
        coroutineContext.getClass();
        sessionDataSerializer.getClass();
        return FirebaseSessionsComponent.MainModule.Companion.a(sessionDataSerializer, new ReplaceFileCorruptionHandler(new ck(sessionDataSerializer, 25)), CoroutineScopeKt.a(coroutineContext), new je(context, 11));
    }
}
