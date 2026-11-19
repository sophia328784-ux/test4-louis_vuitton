package com.vuitton.android.presentation.screen.options.components;

import com.vuitton.android.presentation.screen.options.OptionsSideEffect;
import defpackage.md;
import defpackage.os;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.options.components.OptionsComposableKt$ListenSideEffects$1$1", f = "OptionsComposable.kt", l = {192}, m = "invokeSuspend", v = 2)
final class OptionsComposableKt$ListenSideEffects$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59757b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SharedFlow f59758c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f59759e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Function0 f59760f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OptionsComposableKt$ListenSideEffects$1$1(SharedFlow sharedFlow, Function1 function1, Function1 function2, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f59758c = sharedFlow;
        this.d = function1;
        this.f59759e = function2;
        this.f59760f = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OptionsComposableKt$ListenSideEffects$1$1(this.f59758c, this.d, this.f59759e, this.f59760f, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OptionsComposableKt$ListenSideEffects$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59757b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final Function1 function1 = this.f59759e;
            final Function0 function0 = this.f59760f;
            final Function1 function2 = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.options.components.OptionsComposableKt$ListenSideEffects$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    OptionsSideEffect optionsSideEffect = (OptionsSideEffect) obj2;
                    if (optionsSideEffect instanceof OptionsSideEffect.Navigation.ToContact) {
                        function2.invoke(((OptionsSideEffect.Navigation.ToContact) optionsSideEffect).f59640a);
                    } else if (optionsSideEffect instanceof OptionsSideEffect.Navigation.ToConsumerRights) {
                        function1.invoke(((OptionsSideEffect.Navigation.ToConsumerRights) optionsSideEffect).f59639a);
                    } else {
                        if (!(optionsSideEffect instanceof OptionsSideEffect.Navigation.LogoutSuccess)) {
                            v40.g();
                            return null;
                        }
                        function0.mo47invoke();
                    }
                    return Unit.f71739a;
                }
            };
            this.f59757b = 1;
            if (this.f59758c.f(flowCollector, this) == coroutineSingletons) {
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
