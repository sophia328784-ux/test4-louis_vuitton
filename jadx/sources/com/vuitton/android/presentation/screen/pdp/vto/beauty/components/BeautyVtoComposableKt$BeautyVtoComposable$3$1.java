package com.vuitton.android.presentation.screen.pdp.vto.beauty.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlowImpl;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoComposableKt$BeautyVtoComposable$3$1", f = "BeautyVtoComposable.kt", l = {122}, m = "invokeSuspend", v = 2)
final class BeautyVtoComposableKt$BeautyVtoComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62026b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PermissionsViewModel f62027c;
    public final /* synthetic */ BeautyVtoViewModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f62028e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoComposableKt$BeautyVtoComposable$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyVtoComposableKt$BeautyVtoComposable$3$1$1", f = "BeautyVtoComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ BeautyVtoViewModel f62029b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ MutableState f62030c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(BeautyVtoViewModel beautyVtoViewModel, MutableState mutableState, Continuation continuation) {
            super(2, continuation);
            this.f62029b = beautyVtoViewModel;
            this.f62030c = mutableState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.f62029b, this.f62030c, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            Boolean bool = (Boolean) obj;
            bool.booleanValue();
            return ((AnonymousClass1) create(bool, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            BeautyVtoViewModel beautyVtoViewModel = this.f62029b;
            beautyVtoViewModel.ta(null, false);
            MutableState mutableState = this.f62030c;
            SkuIdUiModel skuIdUiModel = (SkuIdUiModel) mutableState.getF10755b();
            String str = skuIdUiModel != null ? skuIdUiModel.f61764b : null;
            if (str != null) {
                beautyVtoViewModel.Ob(str);
            }
            mutableState.setValue(null);
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoComposableKt$BeautyVtoComposable$3$1(PermissionsViewModel permissionsViewModel, BeautyVtoViewModel beautyVtoViewModel, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f62027c = permissionsViewModel;
        this.d = beautyVtoViewModel;
        this.f62028e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoComposableKt$BeautyVtoComposable$3$1(this.f62027c, this.d, this.f62028e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoComposableKt$BeautyVtoComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62026b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlowImpl t = this.f62027c.getT();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f62028e, null);
            this.f62026b = 1;
            if (FlowKt.g(t, anonymousClass1, this) == coroutineSingletons) {
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
