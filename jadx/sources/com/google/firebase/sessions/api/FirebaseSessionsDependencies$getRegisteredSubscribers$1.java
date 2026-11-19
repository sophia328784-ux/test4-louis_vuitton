package com.google.firebase.sessions.api;

import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.google.firebase.sessions.api.FirebaseSessionsDependencies", f = "FirebaseSessionsDependencies.kt", l = {76}, m = "getRegisteredSubscribers$com_google_firebase_firebase_sessions")
final class FirebaseSessionsDependencies$getRegisteredSubscribers$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Map f35548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Iterator f35549c;
    public SessionSubscriber.Name d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map f35550e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Object f35551f;
    public /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ FirebaseSessionsDependencies f35552h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f35553i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FirebaseSessionsDependencies$getRegisteredSubscribers$1(FirebaseSessionsDependencies firebaseSessionsDependencies, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f35552h = firebaseSessionsDependencies;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.g = obj;
        this.f35553i |= Integer.MIN_VALUE;
        return this.f35552h.c(this);
    }
}
