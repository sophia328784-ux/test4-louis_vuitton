package com.vuitton.android.presentation.screen.storemode.components.plp;

import androidx.compose.runtime.State;
import com.vuitton.android.presentation.screen.storemode.filters.ProductFilterViewModel;
import com.vuitton.android.presentation.screen.storemode.filters.model.StoreModePLPFiltersViewState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.storemode.components.plp.PLPStoreModeComposableKt$PLPStoreModeComposable$1$1", f = "PLPStoreModeComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class PLPStoreModeComposableKt$PLPStoreModeComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ProductFilterViewModel f64898b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ State f64899c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPStoreModeComposableKt$PLPStoreModeComposable$1$1(ProductFilterViewModel productFilterViewModel, State state, Continuation continuation) {
        super(2, continuation);
        this.f64898b = productFilterViewModel;
        this.f64899c = state;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPStoreModeComposableKt$PLPStoreModeComposable$1$1(this.f64898b, this.f64899c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPStoreModeComposableKt$PLPStoreModeComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String str = ((StoreModePLPFiltersViewState) this.f64899c.getF10755b()).f65032a;
        MutableStateFlow mutableStateFlow = this.f64898b.l;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.i(value, str));
        return Unit.f71739a;
    }
}
