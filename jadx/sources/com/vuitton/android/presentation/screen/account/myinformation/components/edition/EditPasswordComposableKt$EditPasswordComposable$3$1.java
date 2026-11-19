package com.vuitton.android.presentation.screen.account.myinformation.components.edition;

import com.vuitton.android.presentation.screen.account.myinformation.MyInformationSideEffect;
import com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModel;
import defpackage.md;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditPasswordComposableKt$EditPasswordComposable$3$1", f = "EditPasswordComposable.kt", l = {235}, m = "invokeSuspend", v = 2)
final class EditPasswordComposableKt$EditPasswordComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f52632b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MyInformationViewModel f52633c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditPasswordComposableKt$EditPasswordComposable$3$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "sideEffect", "Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.account.myinformation.components.edition.EditPasswordComposableKt$EditPasswordComposable$3$1$1", f = "EditPasswordComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<MyInformationSideEffect, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f52634b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function0 f52635c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Function0 function0, Continuation continuation) {
            super(2, continuation);
            this.f52635c = function0;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f52635c, continuation);
            anonymousClass1.f52634b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((MyInformationSideEffect) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            MyInformationSideEffect myInformationSideEffect = (MyInformationSideEffect) this.f52634b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            if (myInformationSideEffect instanceof MyInformationSideEffect.EditPassword) {
                if (!((MyInformationSideEffect.EditPassword) myInformationSideEffect).equals(MyInformationSideEffect.EditPassword.PasswordChangeSuccess.f52524a)) {
                    v40.g();
                    return null;
                }
                this.f52635c.mo47invoke();
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EditPasswordComposableKt$EditPasswordComposable$3$1(MyInformationViewModel myInformationViewModel, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.f52633c = myInformationViewModel;
        this.d = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new EditPasswordComposableKt$EditPasswordComposable$3$1(this.f52633c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((EditPasswordComposableKt$EditPasswordComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52632b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlow w = this.f52633c.getW();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, null);
            w.getClass();
            this.f52632b = 1;
            if (FlowKt.g(w, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        md.k("SharedFlow never completes, this call should never return.");
        return null;
    }
}
