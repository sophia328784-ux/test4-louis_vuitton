package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotStateKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.RecommendationUiModel;
import defpackage.md;
import defpackage.u2;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1", f = "ShadeFinderResultScreen.kt", l = {96}, m = "invokeSuspend", v = 2)
final class ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62093b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PagerState f62094c;
    public final /* synthetic */ List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableIntState f62095e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function1 f62096f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1(PagerState pagerState, List list, MutableIntState mutableIntState, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f62094c = pagerState;
        this.d = list;
        this.f62095e = mutableIntState;
        this.f62096f = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1(this.f62094c, this.d, this.f62095e, this.f62096f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62093b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowK = FlowKt.k(SnapshotStateKt.m(new u2(this.f62094c, 16)));
            final MutableIntState mutableIntState = this.f62095e;
            final Function1 function1 = this.f62096f;
            final List list = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultScreenKt$ShadeFinderResultScreen$1$1$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    int iIntValue = ((Number) obj2).intValue();
                    MutableIntState mutableIntState2 = mutableIntState;
                    if (iIntValue != mutableIntState2.f()) {
                        RecommendationUiModel recommendationUiModel = (RecommendationUiModel) CollectionsKt.G(iIntValue, list);
                        if (recommendationUiModel != null) {
                            function1.invoke(recommendationUiModel.f62170a.f51791b);
                        }
                        mutableIntState2.i(iIntValue);
                    }
                    return Unit.f71739a;
                }
            };
            this.f62093b = 1;
            if (flowK.f(flowCollector, this) == coroutineSingletons) {
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
