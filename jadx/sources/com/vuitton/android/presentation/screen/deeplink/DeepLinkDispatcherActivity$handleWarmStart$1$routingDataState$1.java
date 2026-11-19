package com.vuitton.android.presentation.screen.deeplink;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lcom/vuitton/android/presentation/screen/deeplink/RoutingDataState;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.deeplink.DeepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1", f = "DeepLinkDispatcherActivity.kt", l = {}, m = "invokeSuspend", v = 2)
final class DeepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1 extends SuspendLambda implements Function2<RoutingDataState, Continuation<? super Boolean>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f56850b;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        DeepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1 deepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1 = new DeepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1(2, continuation);
        deepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1.f56850b = obj;
        return deepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DeepLinkDispatcherActivity$handleWarmStart$1$routingDataState$1) create((RoutingDataState) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        RoutingDataState routingDataState = (RoutingDataState) this.f56850b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        return Boolean.valueOf(!(routingDataState instanceof RoutingDataState.Loading));
    }
}
