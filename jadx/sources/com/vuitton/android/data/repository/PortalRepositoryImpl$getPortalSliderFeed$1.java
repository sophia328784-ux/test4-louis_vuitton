package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.PortalRepositoryImpl", f = "PortalRepositoryImpl.kt", l = {14}, m = "getPortalSliderFeed-gIAlu-s", v = 2)
final class PortalRepositoryImpl$getPortalSliderFeed$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47900b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PortalRepositoryImpl f47901c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PortalRepositoryImpl$getPortalSliderFeed$1(PortalRepositoryImpl portalRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47901c = portalRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47900b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47901c.a(null, this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
