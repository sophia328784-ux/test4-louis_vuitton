package com.vuitton.android.presentation.screen.aicompanion.components.entrypoint;

import androidx.compose.ui.focus.FocusRequester;
import defpackage.md;
import kotlin.Metadata;
import kotlin.Result;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt$AICompanionTooltip$2$1", f = "AICompanionTooltip.kt", l = {109}, m = "invokeSuspend", v = 2)
final class AICompanionTooltipKt$AICompanionTooltip$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52841b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f52842c;
    public final /* synthetic */ FocusRequester d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AICompanionTooltipKt$AICompanionTooltip$2$1(FocusRequester focusRequester, Continuation continuation) {
        super(2, continuation);
        this.d = focusRequester;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        AICompanionTooltipKt$AICompanionTooltip$2$1 aICompanionTooltipKt$AICompanionTooltip$2$1 = new AICompanionTooltipKt$AICompanionTooltip$2$1(this.d, continuation);
        aICompanionTooltipKt$AICompanionTooltip$2$1.f52842c = obj;
        return aICompanionTooltipKt$AICompanionTooltip$2$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AICompanionTooltipKt$AICompanionTooltip$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.f52842c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52841b;
        if (i2 == 0) {
            ResultKt.b(obj);
            long j2 = AICompanionTooltipKt.d;
            this.f52842c = coroutineScope;
            this.f52841b = 1;
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
        FocusRequester focusRequester = this.d;
        try {
            Result.Companion companion = Result.INSTANCE;
            FocusRequester.a(focusRequester);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            new Result.Failure(th);
        }
        return Unit.f71739a;
    }
}
