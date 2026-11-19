package com.vuitton.android.presentation.screen.account.myinformation;

import com.vuitton.android.presentation.screen.authentication.AuthenticationSideEffect;
import com.vuitton.android.presentation.screen.authentication.AuthenticationViewModel;
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
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationActivity$onCreate$1$1$1$1", f = "MyInformationActivity.kt", l = {EACTags.DATE_OF_BIRTH}, m = "invokeSuspend", v = 2)
final class MyInformationActivity$onCreate$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyInformationActivity f52496c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyInformationActivity$onCreate$1$1$1$1(MyInformationActivity myInformationActivity, Continuation continuation) {
        super(2, continuation);
        this.f52496c = myInformationActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyInformationActivity$onCreate$1$1$1$1(this.f52496c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyInformationActivity$onCreate$1$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52495b;
        if (i2 == 0) {
            ResultKt.b(obj);
            final MyInformationActivity myInformationActivity = this.f52496c;
            Flow i3 = ((AuthenticationViewModel) myInformationActivity.q.getF71699b()).getI();
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.account.myinformation.MyInformationActivity$onCreate$1$1$1$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    if (((AuthenticationSideEffect) obj2) instanceof AuthenticationSideEffect.Event.LogoutSuccess) {
                        myInformationActivity.finish();
                    }
                    return Unit.f71739a;
                }
            };
            this.f52495b = 1;
            if (i3.f(flowCollector, this) == coroutineSingletons) {
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
