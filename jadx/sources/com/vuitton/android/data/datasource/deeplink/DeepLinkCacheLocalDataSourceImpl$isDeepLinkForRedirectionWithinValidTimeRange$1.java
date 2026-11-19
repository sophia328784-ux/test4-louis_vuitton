package com.vuitton.android.data.datasource.deeplink;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.deeplink.DeepLinkCacheLocalDataSourceImpl", f = "DeepLinkCacheLocalDataSourceImpl.kt", l = {50}, m = "isDeepLinkForRedirectionWithinValidTimeRange", v = 2)
final class DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeepLinkCacheLocalDataSourceImpl f44068c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$1(DeepLinkCacheLocalDataSourceImpl deepLinkCacheLocalDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44068c = deepLinkCacheLocalDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44067b = obj;
        this.d |= Integer.MIN_VALUE;
        return DeepLinkCacheLocalDataSourceImpl.d(this.f44068c, this);
    }
}
