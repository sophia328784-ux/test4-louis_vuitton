package com.vuitton.android.presentation.screen.maintenance;

import defpackage.md;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.maintenance.MaintenanceComposableKt$MaintenanceComposable$1$1", f = "MaintenanceComposable.kt", l = {48}, m = "invokeSuspend", v = 2)
final class MaintenanceComposableKt$MaintenanceComposable$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MaintenanceViewModelImpl f59205c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f59206e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MaintenanceComposableKt$MaintenanceComposable$1$1(MaintenanceViewModelImpl maintenanceViewModelImpl, Function1 function1, Function1 function2, Continuation continuation) {
        super(2, continuation);
        this.f59205c = maintenanceViewModelImpl;
        this.d = function1;
        this.f59206e = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MaintenanceComposableKt$MaintenanceComposable$1$1(this.f59205c, this.d, this.f59206e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MaintenanceComposableKt$MaintenanceComposable$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59204b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flow = this.f59205c.f59216f;
            final Function1 function1 = this.d;
            final Function1 function2 = this.f59206e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.maintenance.MaintenanceComposableKt$MaintenanceComposable$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    MaintenanceViewModel.Navigation navigation = (MaintenanceViewModel.Navigation) obj2;
                    if (navigation instanceof MaintenanceViewModel.Navigation.GoToContactUs) {
                        function1.invoke(((MaintenanceViewModel.Navigation.GoToContactUs) navigation).f59211a);
                    } else {
                        if (!(navigation instanceof MaintenanceViewModel.Navigation.GoToClientServices)) {
                            v40.g();
                            return null;
                        }
                        function2.invoke(((MaintenanceViewModel.Navigation.GoToClientServices) navigation).f59210a);
                    }
                    return Unit.f71739a;
                }
            };
            this.f59204b = 1;
            if (flow.f(flowCollector, this) == coroutineSingletons) {
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
