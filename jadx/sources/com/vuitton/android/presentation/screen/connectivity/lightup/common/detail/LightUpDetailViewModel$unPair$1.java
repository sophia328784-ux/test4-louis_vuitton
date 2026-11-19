package com.vuitton.android.presentation.screen.connectivity.lightup.common.detail;

import defpackage.kp;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\n"}, d2 = {"<anonymous>", "", "error", "Ljava/lang/Exception;", "Lkotlin/Exception;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.LightUpDetailViewModel$unPair$1", f = "LightUpDetailViewModel.kt", l = {26}, m = "invokeSuspend", v = 2)
final class LightUpDetailViewModel$unPair$1 extends SuspendLambda implements Function2<Exception, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56134b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f56135c;
    public final /* synthetic */ LightUpDetailViewModel d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightUpDetailViewModel$unPair$1(LightUpDetailViewModel lightUpDetailViewModel, Continuation continuation) {
        super(2, continuation);
        this.d = lightUpDetailViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        LightUpDetailViewModel$unPair$1 lightUpDetailViewModel$unPair$1 = new LightUpDetailViewModel$unPair$1(this.d, continuation);
        lightUpDetailViewModel$unPair$1.f56135c = obj;
        return lightUpDetailViewModel$unPair$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LightUpDetailViewModel$unPair$1) create((Exception) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Exception exc = (Exception) this.f56135c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56134b;
        if (i2 == 0) {
            ResultKt.b(obj);
            kp kpVar = new kp(4, exc);
            this.f56135c = null;
            this.f56134b = 1;
            int i3 = LightUpDetailViewModel.g;
            if (this.d.zc(this, kpVar) == coroutineSingletons) {
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
