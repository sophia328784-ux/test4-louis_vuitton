package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.ConnectedObjectsConfigRepositoryImpl", f = "ConnectedObjectsConfigRepositoryImpl.kt", l = {41}, m = "getConnectedObjectsConfigFromCache-IoAF18A", v = 2)
final class ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectedObjectsConfigRepositoryImpl f47622c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectedObjectsConfigRepositoryImpl$getConnectedObjectsConfigFromCache$1(ConnectedObjectsConfigRepositoryImpl connectedObjectsConfigRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47622c = connectedObjectsConfigRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f47621b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47622c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
