package com.vuitton.android.data.datasource.deeplink;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.deeplink.DeepLinkCacheLocalDataSourceImpl", f = "DeepLinkCacheLocalDataSourceImpl.kt", l = {27}, m = "saveDeepLinkForRedirection-gIAlu-s", v = 2)
final class DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeepLinkCacheLocalDataSourceImpl f44071c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkCacheLocalDataSourceImpl$saveDeepLinkForRedirection$1(DeepLinkCacheLocalDataSourceImpl deepLinkCacheLocalDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44071c = deepLinkCacheLocalDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        this.f44070b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objB = this.f44071c.b(null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
