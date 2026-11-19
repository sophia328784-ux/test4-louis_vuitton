package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.ShadeFinderViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTracker;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.tracking.ShadeFinderTrackingUiModelKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$3$1", f = "ShadeFinderScanComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ShadeFinderTracker f62102b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Function0 f62103c;
    public final /* synthetic */ MutableState d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$3$1(ShadeFinderTracker shadeFinderTracker, Function0 function0, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f62102b = shadeFinderTracker;
        this.f62103c = function0;
        this.d = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$3$1(this.f62102b, this.f62103c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ShadeFinderScanComposableKt$ShadeFinderScanComposable$1$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableState mutableState = this.d;
        if (((ShadeFinderViewState) mutableState.getF10755b()).f62180c.f62175a && ((ShadeFinderViewState) mutableState.getF10755b()).f62180c.f62177c && ((ShadeFinderViewState) mutableState.getF10755b()).f62180c.f62176b) {
            this.f62102b.f62294a.a(ShadeFinderTrackingUiModelKt.a(ShadeFinderTrackingUiModel.OnValidCheckEvent.f62309a));
            this.f62103c.mo47invoke();
        }
        return Unit.f71739a;
    }
}
