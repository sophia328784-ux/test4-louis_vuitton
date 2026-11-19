package com.vuitton.android.presentation.screen.pdp;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.PdpNavDisplayKt$PdpNavDisplay$1$1$1$1", f = "PdpNavDisplay.kt", l = {}, m = "invokeSuspend", v = 2)
final class PdpNavDisplayKt$PdpNavDisplay$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MutableState f61125b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PdpViewModel f61126c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PdpNavDisplayKt$PdpNavDisplay$1$1$1$1(MutableState mutableState, PdpViewModel pdpViewModel, Continuation continuation) {
        super(2, continuation);
        this.f61125b = mutableState;
        this.f61126c = pdpViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PdpNavDisplayKt$PdpNavDisplay$1$1$1$1(this.f61125b, this.f61126c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PdpNavDisplayKt$PdpNavDisplay$1$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        MutableState mutableState = this.f61125b;
        SkuIdUiModel skuIdUiModel = (SkuIdUiModel) mutableState.getF10755b();
        String str = skuIdUiModel != null ? skuIdUiModel.f61764b : null;
        if (str != null) {
            PdpViewModel.Db(this.f61126c, str, null, 6);
            mutableState.setValue(null);
        }
        return Unit.f71739a;
    }
}
