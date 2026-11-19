package com.google.firebase.sessions;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "com.google.firebase.sessions.SharedSessionRepositoryImpl", f = "SharedSessionRepository.kt", l = {206}, m = "notifySubscribers")
final class SharedSessionRepositoryImpl$notifySubscribers$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f35528b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SharedSessionRepositoryImpl.NotificationType f35529c;
    public /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SharedSessionRepositoryImpl f35530e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f35531f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SharedSessionRepositoryImpl$notifySubscribers$1(SharedSessionRepositoryImpl sharedSessionRepositoryImpl, Continuation continuation) {
        super(continuation);
        this.f35530e = sharedSessionRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.d = obj;
        this.f35531f |= Integer.MIN_VALUE;
        return SharedSessionRepositoryImpl.d(this.f35530e, null, null, this);
    }
}
