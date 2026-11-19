package com.vuitton.android.presentation.screen.cart;

import com.vuitton.android.presentation.screen.cart.models.AddToWishlistRequest;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
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
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.NativeCartViewModelImpl$requestAddToWishlist$1", f = "NativeCartViewModelImpl.kt", l = {295}, m = "invokeSuspend", v = 2)
final class NativeCartViewModelImpl$requestAddToWishlist$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54928b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ NativeCartViewModelImpl f54929c;
    public final /* synthetic */ CartItemUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartViewModelImpl$requestAddToWishlist$1(NativeCartViewModelImpl nativeCartViewModelImpl, CartItemUiModel cartItemUiModel, Continuation continuation) {
        super(2, continuation);
        this.f54929c = nativeCartViewModelImpl;
        this.d = cartItemUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartViewModelImpl$requestAddToWishlist$1(this.f54929c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartViewModelImpl$requestAddToWishlist$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54928b;
        if (i2 == 0) {
            ResultKt.b(obj);
            NativeCartViewModelImpl nativeCartViewModelImpl = this.f54929c;
            boolean zB = nativeCartViewModelImpl.g.b();
            SharedFlowImpl sharedFlowImpl = nativeCartViewModelImpl.G;
            AddToWishlistRequest addToWishlistRequest = new AddToWishlistRequest(zB, this.d);
            this.f54928b = 1;
            if (sharedFlowImpl.emit(addToWishlistRequest, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
