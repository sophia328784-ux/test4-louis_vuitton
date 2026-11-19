package com.vuitton.android.presentation.screen.thankyou.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.thankyou.models.ThankYouViewState;
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
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt$ThankYouScreen$2$1", f = "ThankYouScreen.kt", l = {146}, m = "invokeSuspend", v = 2)
final class ThankYouScreenKt$ThankYouScreen$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f65247b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ThankYouViewState f65248c;
    public final /* synthetic */ MutableState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f65249e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThankYouScreenKt$ThankYouScreen$2$1(ThankYouViewState thankYouViewState, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f65248c = thankYouViewState;
        this.d = mutableState;
        this.f65249e = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThankYouScreenKt$ThankYouScreen$2$1(this.f65248c, this.d, this.f65249e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThankYouScreenKt$ThankYouScreen$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f65247b;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (!(this.f65248c instanceof ThankYouViewState.Loading)) {
                float f2 = ThankYouScreenKt.f65243a;
                this.d.setValue(Boolean.TRUE);
                this.f65247b = 1;
                if (DelayKt.b(1000L, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        float f3 = ThankYouScreenKt.f65243a;
        this.f65249e.setValue(Boolean.TRUE);
        return Unit.f71739a;
    }
}
