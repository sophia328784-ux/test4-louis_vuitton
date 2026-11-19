package com.vuitton.android.presentation.screen.distantrepairs.form;

import com.vuitton.android.presentation.screen.repairs.models.DistantRepairsConfigUiModelKt;
import java.util.concurrent.CancellationException;
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
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$initConfig$1", f = "DistantRepairFormBffViewModelImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class DistantRepairFormBffViewModelImpl$initConfig$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DistantRepairFormBffViewModelImpl f57113b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DistantRepairFormBffViewModelImpl$initConfig$1(Continuation continuation, DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl) {
        super(2, continuation);
        this.f57113b = distantRepairFormBffViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new DistantRepairFormBffViewModelImpl$initConfig$1(continuation, this.f57113b);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((DistantRepairFormBffViewModelImpl$initConfig$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object failure;
        Object value;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        DistantRepairFormBffViewModelImpl distantRepairFormBffViewModelImpl = this.f57113b;
        try {
            Result.Companion companion = Result.INSTANCE;
            MutableStateFlow mutableStateFlow = distantRepairFormBffViewModelImpl.C;
            do {
                value = mutableStateFlow.getValue();
            } while (!mutableStateFlow.i(value, DistantRepairsConfigUiModelKt.a(distantRepairFormBffViewModelImpl.s.a().Q)));
            failure = new Result(Unit.f71739a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return Unit.f71739a;
    }
}
