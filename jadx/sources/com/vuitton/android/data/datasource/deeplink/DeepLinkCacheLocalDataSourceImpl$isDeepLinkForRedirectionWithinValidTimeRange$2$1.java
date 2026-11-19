package com.vuitton.android.data.datasource.deeplink;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.deeplink.DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$2$1", f = "DeepLinkCacheLocalDataSourceImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DeepLinkCacheLocalDataSourceImpl f44069b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$2$1(DeepLinkCacheLocalDataSourceImpl deepLinkCacheLocalDataSourceImpl, Continuation continuation) {
        super(2, continuation);
        this.f44069b = deepLinkCacheLocalDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$2$1(this.f44069b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeepLinkCacheLocalDataSourceImpl$isDeepLinkForRedirectionWithinValidTimeRange$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        DeepLinkCacheLocalDataSourceImpl deepLinkCacheLocalDataSourceImpl = this.f44069b;
        return Boolean.valueOf(deepLinkCacheLocalDataSourceImpl.f44058c.a() - deepLinkCacheLocalDataSourceImpl.f44057b.getLong("deep_link_for_redirection_creation_timestamp", 0L) <= 86400000);
    }
}
