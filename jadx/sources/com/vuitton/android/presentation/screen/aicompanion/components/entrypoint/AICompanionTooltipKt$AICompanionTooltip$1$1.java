package com.vuitton.android.presentation.screen.aicompanion.components.entrypoint;

import androidx.compose.runtime.MutableState;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt$AICompanionTooltip$1$1", f = "AICompanionTooltip.kt", l = {103}, m = "invokeSuspend", v = 2)
final class AICompanionTooltipKt$AICompanionTooltip$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f52840c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionTooltipKt$AICompanionTooltip$1$1(MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f52840c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AICompanionTooltipKt$AICompanionTooltip$1$1(this.f52840c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionTooltipKt$AICompanionTooltip$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52839b;
        if (i2 == 0) {
            ResultKt.b(obj);
            long j2 = AICompanionTooltipKt.f52837b;
            this.f52839b = 1;
            if (DelayKt.c(j2, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        float f2 = AICompanionTooltipKt.f52836a;
        this.f52840c.setValue(Boolean.FALSE);
        return Unit.f71739a;
    }
}
