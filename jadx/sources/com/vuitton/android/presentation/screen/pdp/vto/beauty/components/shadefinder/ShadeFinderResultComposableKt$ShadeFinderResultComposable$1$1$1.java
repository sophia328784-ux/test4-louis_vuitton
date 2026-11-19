package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModelKt;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$1$1", f = "ShadeFinderResultComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ShadeFinderTracker f62068b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f62069c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$1$1(ShadeFinderTracker shadeFinderTracker, List list, Continuation continuation) {
        super(2, continuation);
        this.f62068b = shadeFinderTracker;
        this.f62069c = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$1$1(this.f62068b, this.f62069c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        ShadeFinderTracker shadeFinderTracker = this.f62068b;
        shadeFinderTracker.getClass();
        List list = this.f62069c;
        list.getClass();
        shadeFinderTracker.f62294a.a(ShadeFinderTrackingUiModelKt.a(new ShadeFinderTrackingUiModel.ShadeFinderRecommendationScreen(list)));
        return Unit.f71739a;
    }
}
