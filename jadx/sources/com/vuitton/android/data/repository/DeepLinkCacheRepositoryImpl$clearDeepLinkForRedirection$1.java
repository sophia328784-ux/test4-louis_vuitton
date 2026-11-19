package com.vuitton.android.data.repository;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.DeepLinkCacheRepositoryImpl", f = "DeepLinkCacheRepositoryImpl.kt", l = {15}, m = "clearDeepLinkForRedirection-IoAF18A", v = 2)
final class DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f47642b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeepLinkCacheRepositoryImpl f47643c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkCacheRepositoryImpl$clearDeepLinkForRedirection$1(DeepLinkCacheRepositoryImpl deepLinkCacheRepositoryImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f47643c = deepLinkCacheRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f47642b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f47643c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
