package com.vuitton.android.data.datasource.deeplink;

import defpackage.md;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.datasource.deeplink.DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1", f = "DeepLinkCacheLocalDataSourceImpl.kt", l = {41}, m = "invokeSuspend", v = 2)
final class DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f44065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DeepLinkCacheLocalDataSourceImpl f44066c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1(DeepLinkCacheLocalDataSourceImpl deepLinkCacheLocalDataSourceImpl, Continuation continuation) {
        super(2, continuation);
        this.f44066c = deepLinkCacheLocalDataSourceImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1(this.f44066c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeepLinkCacheLocalDataSourceImpl$getSavedDeepLinkForRedirection$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f44065b;
        DeepLinkCacheLocalDataSourceImpl deepLinkCacheLocalDataSourceImpl = this.f44066c;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f44065b = 1;
            obj = DeepLinkCacheLocalDataSourceImpl.d(deepLinkCacheLocalDataSourceImpl, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            return deepLinkCacheLocalDataSourceImpl.f44057b.getString("deep_link_for_redirection", null);
        }
        md.k("Deep link for redirection is not within the valid time range");
        return null;
    }
}
