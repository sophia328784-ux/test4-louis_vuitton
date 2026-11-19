package com.vuitton.android.data.datasource.deeplink;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.deeplink.DeepLinkCacheLocalDataSourceImpl", f = "DeepLinkCacheLocalDataSourceImpl.kt", l = {EACTags.DYNAMIC_EXTERNAL_AUTHENTIFICATION}, m = "clearDeepLinkForRedirection-IoAF18A", v = 2)
final class DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f44059b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeepLinkCacheLocalDataSourceImpl f44060c;
    public int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkCacheLocalDataSourceImpl$clearDeepLinkForRedirection$1(DeepLinkCacheLocalDataSourceImpl deepLinkCacheLocalDataSourceImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f44060c = deepLinkCacheLocalDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f44059b = obj;
        this.d |= Integer.MIN_VALUE;
        Object objA = this.f44060c.a(this);
        return objA == CoroutineSingletons.COROUTINE_SUSPENDED ? objA : new Result(objA);
    }
}
