package com.vuitton.android.presentation.screen.connectivity.home;

import com.vuitton.android.domain.usecase.connectivity.lightup.DeleteLightUpProductUseCase;
import com.vuitton.android.presentation.screen.connectivity.LVViewModel;
import com.vuitton.android.presentation.screen.connectivity.LightUpProductUiModel;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "it", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.home.ConnectivityViewModel$removeLightUpProduct$2", f = "ConnectivityViewModel.kt", l = {167}, m = "invokeSuspend", v = 2)
final class ConnectivityViewModel$removeLightUpProduct$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56099b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivityViewModel f56100c;
    public final /* synthetic */ LightUpProductUiModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivityViewModel$removeLightUpProduct$2(ConnectivityViewModel connectivityViewModel, LightUpProductUiModel lightUpProductUiModel, Continuation continuation) {
        super(2, continuation);
        this.f56100c = connectivityViewModel;
        this.d = lightUpProductUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConnectivityViewModel$removeLightUpProduct$2(this.f56100c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivityViewModel$removeLightUpProduct$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56099b;
        ConnectivityViewModel connectivityViewModel = this.f56100c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DeleteLightUpProductUseCase deleteLightUpProductUseCase = connectivityViewModel.d;
            String str = this.d.f55960b;
            this.f56099b = 1;
            Object objF = deleteLightUpProductUseCase.f49792a.f(str, this);
            if (objF != coroutineSingletons) {
                objF = Unit.f71739a;
            }
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        LVViewModel.Bc(connectivityViewModel, null, new ConnectivityViewModel$getConnectedObjects$1(connectivityViewModel, true, null), 3);
        return Unit.f71739a;
    }
}
