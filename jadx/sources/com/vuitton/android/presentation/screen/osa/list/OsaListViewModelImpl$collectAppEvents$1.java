package com.vuitton.android.presentation.screen.osa.list;

import com.vuitton.android.core.events.AppEvent;
import defpackage.md;
import defpackage.os;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$collectAppEvents$1", f = "OsaListViewModelImpl.kt", l = {118}, m = "invokeSuspend", v = 2)
final class OsaListViewModelImpl$collectAppEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaListViewModelImpl f60859c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaListViewModelImpl$collectAppEvents$1(Continuation continuation, OsaListViewModelImpl osaListViewModelImpl) {
        super(2, continuation);
        this.f60859c = osaListViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaListViewModelImpl$collectAppEvents$1(continuation, this.f60859c);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaListViewModelImpl$collectAppEvents$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60858b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final OsaListViewModelImpl osaListViewModelImpl = this.f60859c;
            SharedFlow sharedFlow = osaListViewModelImpl.f60846b.f43512c;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl$collectAppEvents$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    if (((AppEvent) obj2) instanceof AppEvent.RefreshAppointmentsEvent) {
                        osaListViewModelImpl.Lb();
                    }
                    return Unit.f71739a;
                }
            };
            this.f60858b = 1;
            if (sharedFlow.f(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        os.d();
        return null;
    }
}
