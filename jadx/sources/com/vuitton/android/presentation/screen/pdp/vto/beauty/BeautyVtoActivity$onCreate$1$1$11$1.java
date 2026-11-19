package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import android.graphics.Bitmap;
import androidx.compose.runtime.MutableState;
import com.perfectcorp.perfectlib.LookInfo;
import com.perfectcorp.perfectlib.LookSetting;
import com.perfectcorp.perfectlib.VtoApplier;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyProductTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyVtoViewState;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.TryOnProductUiModel;
import com.vuitton.foundation.model.domain.extensions.CollectionExtKt;
import defpackage.be;
import defpackage.ce;
import defpackage.q;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$onCreate$1$1$11$1", f = "BeautyVtoActivity.kt", l = {}, m = "invokeSuspend", v = 2)
final class BeautyVtoActivity$onCreate$1$1$11$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoActivity f61797b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f61798c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f61799e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoActivity$onCreate$1$1$11$1(BeautyVtoActivity beautyVtoActivity, MutableState mutableState, MutableState mutableState2, CoroutineScope coroutineScope, Continuation continuation) {
        super(2, continuation);
        this.f61797b = beautyVtoActivity;
        this.f61798c = mutableState;
        this.d = mutableState2;
        this.f61799e = coroutineScope;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BeautyVtoActivity$onCreate$1$1$11$1(this.f61797b, this.f61798c, this.d, this.f61799e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoActivity$onCreate$1$1$11$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
        MutableState mutableState = this.f61798c;
        TryOnProductUiModel tryOnProductUiModel = ((BeautyVtoViewState) mutableState.getF10755b()).f62155i;
        this.d.setValue(tryOnProductUiModel != null ? tryOnProductUiModel.d : null);
        TryOnProductUiModel tryOnProductUiModel2 = ((BeautyVtoViewState) mutableState.getF10755b()).f62155i;
        BeautyProductTypeUiModel beautyProductTypeUiModel = tryOnProductUiModel2 != null ? tryOnProductUiModel2.f62185c : null;
        BeautyProductTypeUiModel beautyProductTypeUiModel2 = BeautyProductTypeUiModel.NONE;
        final BeautyVtoActivity beautyVtoActivity = this.f61797b;
        if (beautyProductTypeUiModel == beautyProductTypeUiModel2) {
            final be beVar = new be(beautyVtoActivity, 7);
            VtoApplier vtoApplier = beautyVtoActivity.t;
            if (vtoApplier != null) {
                vtoApplier.clearAllEffects(new VtoApplier.ApplyCallback() { // from class: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity$clearAll$1
                    @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
                    public final void onFailure(Throwable th) {
                        th.getClass();
                        beautyVtoActivity.L().c("BeautyVtoActivity", "[clearAll] onFailure", th);
                    }

                    @Override // com.perfectcorp.perfectlib.VtoApplier.ApplyCallback
                    public final void onSuccess(Bitmap bitmap) {
                        if (bitmap != null) {
                            bitmap.recycle();
                        }
                        beautyVtoActivity.L();
                        beVar.mo47invoke();
                    }
                });
            }
        } else {
            TryOnProductUiModel tryOnProductUiModel3 = ((BeautyVtoViewState) mutableState.getF10755b()).f62155i;
            boolean zA = CollectionExtKt.a(tryOnProductUiModel3 != null ? tryOnProductUiModel3.f62188h : null);
            CoroutineScope coroutineScope = this.f61799e;
            if (zA) {
                LookInfo lookInfo = ((BeautyVtoViewState) mutableState.getF10755b()).n;
                if (lookInfo != null) {
                    BuildersKt.c(coroutineScope, null, null, new BeautyVtoActivity$applyLook$2(beautyVtoActivity, LookSetting.create(lookInfo.getGuid()), new ce(beautyVtoActivity, mutableState, 3), null), 3);
                }
            } else {
                beautyVtoActivity.K(new q(mutableState, beautyVtoActivity, coroutineScope));
            }
        }
        return Unit.f71739a;
    }
}
