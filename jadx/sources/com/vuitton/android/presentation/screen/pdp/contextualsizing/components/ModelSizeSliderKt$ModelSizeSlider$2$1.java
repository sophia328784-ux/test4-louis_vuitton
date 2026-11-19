package com.vuitton.android.presentation.screen.pdp.contextualsizing.components;

import android.content.Context;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTracker;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ContextualSizingTrackingUiModelKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import com.vuitton.android.presentation.utils.AccessibilityUtils;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeSliderKt$ModelSizeSlider$2$1", f = "ModelSizeSlider.kt", l = {}, m = "invokeSuspend", v = 2)
final class ModelSizeSliderKt$ModelSizeSlider$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ List f61513b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f61514c;
    public final /* synthetic */ String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f61515e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f61516f;
    public final /* synthetic */ MutableState g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ContextualSizingTracker f61517h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ModelSizeSliderKt$ModelSizeSlider$2$1(List list, PagerState pagerState, String str, Context context, MutableState mutableState, MutableState mutableState2, ContextualSizingTracker contextualSizingTracker, Continuation continuation) {
        super(2, continuation);
        this.f61513b = list;
        this.f61514c = pagerState;
        this.d = str;
        this.f61515e = context;
        this.f61516f = mutableState;
        this.g = mutableState2;
        this.f61517h = contextualSizingTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ModelSizeSliderKt$ModelSizeSlider$2$1(this.f61513b, this.f61514c, this.d, this.f61515e, this.f61516f, this.g, this.f61517h, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ModelSizeSliderKt$ModelSizeSlider$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        float f2 = ModelSizeSliderKt.f61508a;
        MutableState mutableState = this.f61516f;
        if (((Boolean) mutableState.getF10755b()).booleanValue()) {
            mutableState.setValue(Boolean.FALSE);
            return Unit.f71739a;
        }
        MutableState mutableState2 = this.g;
        boolean zBooleanValue = ((Boolean) mutableState2.getF10755b()).booleanValue();
        ContextualSizingTracker contextualSizingTracker = this.f61517h;
        PagerState pagerState = this.f61514c;
        List list = this.f61513b;
        if (zBooleanValue) {
            ModelSizeVariationUiModel modelSizeVariationUiModel = (ModelSizeVariationUiModel) CollectionsKt.G(pagerState.r(), list);
            if (modelSizeVariationUiModel != null) {
                String str = modelSizeVariationUiModel.f61533b;
                contextualSizingTracker.getClass();
                contextualSizingTracker.f61526a.a(ContextualSizingTrackingUiModelKt.a(new ContextualSizingTrackingUiModel.OnClickOnModelSize(str, null)));
            }
            mutableState2.setValue(Boolean.FALSE);
        } else {
            ModelSizeVariationUiModel modelSizeVariationUiModel2 = (ModelSizeVariationUiModel) CollectionsKt.G(pagerState.r(), list);
            if (modelSizeVariationUiModel2 != null) {
                String str2 = modelSizeVariationUiModel2.f61533b;
                contextualSizingTracker.getClass();
                contextualSizingTracker.f61526a.a(ContextualSizingTrackingUiModelKt.a(new ContextualSizingTrackingUiModel.OnSwipeOnModelSize(str2, null)));
            }
        }
        AccessibilityUtils.a(this.f61515e, this.d);
        return Unit.f71739a;
    }
}
