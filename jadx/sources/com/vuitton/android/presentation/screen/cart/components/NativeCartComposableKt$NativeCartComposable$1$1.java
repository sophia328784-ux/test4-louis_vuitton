package com.vuitton.android.presentation.screen.cart.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.reinsurance.ReinsuranceViewModel;
import com.vuitton.foundation.model.domain.model.product.ReinsurancePageType;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.cart.components.NativeCartComposableKt$NativeCartComposable$1$1", f = "NativeCartComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class NativeCartComposableKt$NativeCartComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ReinsuranceViewModel f54998b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f54999c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NativeCartComposableKt$NativeCartComposable$1$1(ReinsuranceViewModel reinsuranceViewModel, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f54998b = reinsuranceViewModel;
        this.f54999c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new NativeCartComposableKt$NativeCartComposable$1$1(this.f54998b, this.f54999c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((NativeCartComposableKt$NativeCartComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        List list;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CartUiModel cartUiModel = ((NativeCartViewState) this.f54999c.getF10755b()).f55204a;
        boolean z = false;
        if (cartUiModel != null && (list = cartUiModel.f55183c) != null) {
            List list2 = list;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                z = true;
            } else {
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    if (!((CartItemUiModel) it.next()).s) {
                    }
                }
                z = true;
            }
        }
        this.f54998b.w5(z, ReinsurancePageType.CART);
        return Unit.f71739a;
    }
}
