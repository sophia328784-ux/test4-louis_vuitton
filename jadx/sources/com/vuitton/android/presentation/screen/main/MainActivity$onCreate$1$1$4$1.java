package com.vuitton.android.presentation.screen.main;

import android.content.Context;
import com.vuitton.android.presentation.LVApplication;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivity$onCreate$1$1$4$1", f = "MainActivity.kt", l = {363}, m = "invokeSuspend", v = 2)
final class MainActivity$onCreate$1$1$4$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59012b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f59013c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$onCreate$1$1$4$1(MainActivity mainActivity, Continuation continuation) {
        super(2, continuation);
        this.f59013c = mainActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MainActivity$onCreate$1$1$4$1(this.f59013c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MainActivity$onCreate$1$1$4$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59012b;
        if (i2 == 0) {
            ResultKt.b(obj);
            MainActivity.Companion companion = MainActivity.L;
            final MainActivity mainActivity = this.f59013c;
            SharedFlow f2 = mainActivity.J().getF();
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.main.MainActivity$onCreate$1$1$4$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    Context applicationContext = mainActivity.getApplicationContext();
                    applicationContext.getClass();
                    ((LVApplication) applicationContext).h();
                    return Unit.f71739a;
                }
            };
            this.f59012b = 1;
            if (f2.f(flowCollector, this) == coroutineSingletons) {
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
