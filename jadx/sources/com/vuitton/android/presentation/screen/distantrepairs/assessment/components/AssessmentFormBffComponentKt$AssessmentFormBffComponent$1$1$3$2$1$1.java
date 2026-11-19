package com.vuitton.android.presentation.screen.distantrepairs.assessment.components;

import androidx.compose.foundation.lazy.LazyListState;
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
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.components.AssessmentFormBffComponentKt$AssessmentFormBffComponent$1$1$3$2$1$1", f = "AssessmentFormBffComponent.kt", l = {106}, m = "invokeSuspend", v = 2)
final class AssessmentFormBffComponentKt$AssessmentFormBffComponent$1$1$3$2$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f57048b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyListState f57049c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AssessmentFormBffComponentKt$AssessmentFormBffComponent$1$1$3$2$1$1(LazyListState lazyListState, Continuation continuation) {
        super(2, continuation);
        this.f57049c = lazyListState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AssessmentFormBffComponentKt$AssessmentFormBffComponent$1$1$3$2$1$1(this.f57049c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AssessmentFormBffComponentKt$AssessmentFormBffComponent$1$1$3$2$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f57048b;
        if (i2 == 0) {
            ResultKt.b(obj);
            this.f57048b = 1;
            LazyListState.Companion companion = LazyListState.y;
            if (this.f57049c.f(3, 0, this) == coroutineSingletons) {
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
