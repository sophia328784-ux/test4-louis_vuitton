package com.vuitton.android.data.datasource.deeplink;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.deeplink.DeepLinkCacheLocalDataSourceImpl", f = "DeepLinkCacheLocalDataSourceImpl.kt", l = {40, 46}, m = "getSavedDeepLinkForRedirection", v = 2)
final class DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f44062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f44063c;
    public final /* synthetic */ DeepLinkCacheLocalDataSourceImpl d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f44064e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$1(DeepLinkCacheLocalDataSourceImpl deepLinkCacheLocalDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.d = deepLinkCacheLocalDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44063c = obj;
        this.f44064e |= Integer.MIN_VALUE;
        return this.d.c(this);
    }
}
