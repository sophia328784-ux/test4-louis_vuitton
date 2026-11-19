package com.vuitton.android.presentation.screen.pdp.contextualsizing.components;

import androidx.compose.foundation.pager.PagerState;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import defpackage.md;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeSliderKt$ModelSizeSlider$3$2$1$2$1$1", f = "ModelSizeSlider.kt", l = {171}, m = "invokeSuspend", v = 2)
final class ModelSizeSliderKt$ModelSizeSlider$3$2$1$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f61518b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f61519c;
    public final /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ModelSizeVariationUiModel f61520e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModelSizeSliderKt$ModelSizeSlider$3$2$1$2$1$1(PagerState pagerState, List list, ModelSizeVariationUiModel modelSizeVariationUiModel, Continuation continuation) {
        super(2, continuation);
        this.f61519c = pagerState;
        this.d = list;
        this.f61520e = modelSizeVariationUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ModelSizeSliderKt$ModelSizeSlider$3$2$1$2$1$1(this.f61519c, this.d, this.f61520e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ModelSizeSliderKt$ModelSizeSlider$3$2$1$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f61518b;
        if (i2 == 0) {
            ResultKt.b(obj);
            int iIndexOf = this.d.indexOf(this.f61520e);
            this.f61518b = 1;
            if (PagerState.g(this.f61519c, iIndexOf, null, this, 6) == coroutineSingletons) {
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
