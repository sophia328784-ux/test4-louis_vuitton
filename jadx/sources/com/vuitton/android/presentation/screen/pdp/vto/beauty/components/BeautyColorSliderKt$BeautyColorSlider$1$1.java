package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.State;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyColorSliderKt$BeautyColorSlider$1$1", f = "BeautyColorSlider.kt", l = {}, m = "invokeSuspend", v = 2)
final class BeautyColorSliderKt$BeautyColorSlider$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ LazyListState f61984b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f61985c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ State f61986e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f61987f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyColorSliderKt$BeautyColorSlider$1$1(LazyListState lazyListState, List list, MutableState mutableState, State state, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f61984b = lazyListState;
        this.f61985c = list;
        this.d = mutableState;
        this.f61986e = state;
        this.f61987f = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyColorSliderKt$BeautyColorSlider$1$1(this.f61984b, this.f61985c, this.d, this.f61986e, this.f61987f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyColorSliderKt$BeautyColorSlider$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (!((Boolean) this.d.getF10755b()).booleanValue() || !this.f61984b.f5239j.a()) {
            int iIntValue = ((Number) this.f61986e.getF10755b()).intValue();
            if (iIntValue < 1) {
                iIntValue = 1;
            }
            TryOnProductUiModel tryOnProductUiModel = (TryOnProductUiModel) CollectionsKt.G(iIntValue - 1, this.f61985c);
            if (tryOnProductUiModel != null) {
                this.f61987f.invoke(tryOnProductUiModel);
            }
        }
        return Unit.f71739a;
    }
}
