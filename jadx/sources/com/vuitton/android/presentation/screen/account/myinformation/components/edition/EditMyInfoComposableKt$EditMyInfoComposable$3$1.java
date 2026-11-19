package com.vuitton.android.presentation.screen.account.myinformation.components.edition;

import com.vuitton.android.presentation.screen.account.myinformation.MyInformationSideEffect;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
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
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoComposableKt$EditMyInfoComposable$3$1", f = "EditMyInfoComposable.kt", l = {48}, m = "invokeSuspend", v = 2)
final class EditMyInfoComposableKt$EditMyInfoComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModel f52622c;
    public final /* synthetic */ Function0 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditMyInfoComposableKt$EditMyInfoComposable$3$1(MyInformationViewModel myInformationViewModel, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f52622c = myInformationViewModel;
        this.d = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EditMyInfoComposableKt$EditMyInfoComposable$3$1(this.f52622c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditMyInfoComposableKt$EditMyInfoComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52621b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlow w = this.f52622c.getW();
            final Function0 function0 = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditMyInfoComposableKt$EditMyInfoComposable$3$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    MyInformationSideEffect myInformationSideEffect = (MyInformationSideEffect) obj2;
                    if (myInformationSideEffect instanceof MyInformationSideEffect.EditMyInfo) {
                        if (!((MyInformationSideEffect.EditMyInfo) myInformationSideEffect).equals(MyInformationSideEffect.EditMyInfo.EditionSuccess.f52523a)) {
                            v40.g();
                            return null;
                        }
                        function0.mo47invoke();
                    }
                    return Unit.f71739a;
                }
            };
            this.f52621b = 1;
            if (w.f(flowCollector, this) == coroutineSingletons) {
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
