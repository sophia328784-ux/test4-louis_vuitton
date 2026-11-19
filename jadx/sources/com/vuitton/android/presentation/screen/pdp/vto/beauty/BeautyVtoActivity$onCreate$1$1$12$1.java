package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import androidx.compose.runtime.MutableState;
import com.perfectcorp.perfectlib.SkuInfo;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoMode;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import defpackage.ce;
import defpackage.w9;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$onCreate$1$1$12$1", f = "BeautyVtoActivity.kt", l = {}, m = "invokeSuspend", v = 2)
final class BeautyVtoActivity$onCreate$1$1$12$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoActivity f61800b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f61801c;
    public final /* synthetic */ CoroutineScope d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoActivity$onCreate$1$1$12$1(BeautyVtoActivity beautyVtoActivity, MutableState mutableState, CoroutineScope coroutineScope, Continuation continuation) {
        super(2, continuation);
        this.f61800b = beautyVtoActivity;
        this.f61801c = mutableState;
        this.d = coroutineScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoActivity$onCreate$1$1$12$1(this.f61800b, this.f61801c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoActivity$onCreate$1$1$12$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
        MutableState mutableState = this.f61801c;
        if (((BeautyVtoViewState) mutableState.getF10755b()).f62149a == BeautyVtoMode.DUAL) {
            SkuInfo skuInfo = ((BeautyVtoViewState) mutableState.getF10755b()).o;
            BeautyVtoActivity beautyVtoActivity = this.f61800b;
            if (skuInfo != null) {
                SkuInfo skuInfo2 = ((BeautyVtoViewState) mutableState.getF10755b()).o;
                if (skuInfo2 != null) {
                    beautyVtoActivity.I(this.d, skuInfo2, new ce(beautyVtoActivity, mutableState, 5));
                }
            } else {
                TryOnProductUiModel tryOnProductUiModel = ((BeautyVtoViewState) mutableState.getF10755b()).f62155i;
                beautyVtoActivity.J(tryOnProductUiModel != null ? tryOnProductUiModel.f62185c : null, new w9(19));
            }
        }
        return Unit.f71739a;
    }
}
