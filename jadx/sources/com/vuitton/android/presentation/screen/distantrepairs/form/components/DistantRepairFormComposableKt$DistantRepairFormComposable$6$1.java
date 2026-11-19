package com.vuitton.android.presentation.screen.distantrepairs.form.components;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModel;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairFormComposableKt$DistantRepairFormComposable$6$1", f = "DistantRepairFormComposable.kt", l = {}, m = "invokeSuspend", v = 2)
final class DistantRepairFormComposableKt$DistantRepairFormComposable$6$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormViewModel f57274b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f57275c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormComposableKt$DistantRepairFormComposable$6$1(DistantRepairFormViewModel distantRepairFormViewModel, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f57274b = distantRepairFormViewModel;
        this.f57275c = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairFormComposableKt$DistantRepairFormComposable$6$1(this.f57274b, this.f57275c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairFormComposableKt$DistantRepairFormComposable$6$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        if (((DistantRepairCalendarViewState) this.f57275c.getF10755b()).f57378f.f57365a != null) {
            this.f57274b.b0();
        }
        return Unit.f71739a;
    }
}
