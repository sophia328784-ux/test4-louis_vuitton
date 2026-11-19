package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.core.type.SystemIcons;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartNavHostKt$NativeCartNavHost$7$1$4$1$1", f = "NativeCartNavHost.kt", l = {}, m = "invokeSuspend", v = 2)
final class NativeCartNavHostKt$NativeCartNavHost$7$1$4$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ boolean f54860b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function2 f54861c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartNavHostKt$NativeCartNavHost$7$1$4$1$1(boolean z, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f54860b = z;
        this.f54861c = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartNavHostKt$NativeCartNavHost$7$1$4$1$1(this.f54860b, this.f54861c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartNavHostKt$NativeCartNavHost$7$1$4$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (!this.f54860b) {
            SystemIcons.f43533b.getClass();
            boolean z = SystemIcons.f43534c;
            this.f54861c.invoke(new SystemIcons(z), new SystemIcons(z));
        }
        return Unit.f71739a;
    }
}
