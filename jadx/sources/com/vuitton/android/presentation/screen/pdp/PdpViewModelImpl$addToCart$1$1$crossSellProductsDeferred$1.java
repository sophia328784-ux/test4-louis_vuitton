package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.presentation.common.editorial.models.CarouselSItemUiModel;
import com.vuitton.android.presentation.screen.pdp.models.PdpFeatureFlags;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.collections.immutable.ImmutableList;
import kotlinx.collections.immutable.implementations.immutableList.UtilsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlinx/collections/immutable/ImmutableList;", "Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpViewModelImpl$addToCart$1$1$crossSellProductsDeferred$1", f = "PdpViewModelImpl.kt", l = {706}, m = "invokeSuspend", v = 2)
final class PdpViewModelImpl$addToCart$1$1$crossSellProductsDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ImmutableList<? extends CarouselSItemUiModel>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModelImpl f61163c;
    public final /* synthetic */ ProductUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpViewModelImpl$addToCart$1$1$crossSellProductsDeferred$1(PdpViewModelImpl pdpViewModelImpl, ProductUiModel productUiModel, Continuation continuation) {
        super(2, continuation);
        this.f61163c = pdpViewModelImpl;
        this.d = productUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpViewModelImpl$addToCart$1$1$crossSellProductsDeferred$1(this.f61163c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpViewModelImpl$addToCart$1$1$crossSellProductsDeferred$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61162b;
        if (i2 == 0) {
            ResultKt.b(obj);
            PdpViewModelImpl pdpViewModelImpl = this.f61163c;
            if (!((PdpFeatureFlags) pdpViewModelImpl.e0.getValue()).m) {
                return UtilsKt.b();
            }
            String str = this.d.f61735b;
            this.f61162b = 1;
            obj = PdpViewModelImpl.zc(pdpViewModelImpl, str, this);
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
        return (ImmutableList) obj;
    }
}
