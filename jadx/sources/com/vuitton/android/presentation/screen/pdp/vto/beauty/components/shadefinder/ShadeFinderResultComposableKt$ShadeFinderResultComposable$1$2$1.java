package com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.shadefinder.ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$2$1", f = "ShadeFinderResultComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModel f62070b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f62071c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$2$1(BeautyVtoViewModel beautyVtoViewModel, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f62070b = beautyVtoViewModel;
        this.f62071c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$2$1(this.f62070b, this.f62071c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ShadeFinderResultComposableKt$ShadeFinderResultComposable$1$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableState mutableState = this.f62071c;
        if (!Intrinsics.c(((PermissionsUiModel) mutableState.getF10755b()).f62372a, PermissionsBottomSheet.None.f62367f)) {
            this.f62070b.ta(new BeautyBottomSheet.Permissions(((PermissionsUiModel) mutableState.getF10755b()).f62372a), false);
        }
        return Unit.f71739a;
    }
}
