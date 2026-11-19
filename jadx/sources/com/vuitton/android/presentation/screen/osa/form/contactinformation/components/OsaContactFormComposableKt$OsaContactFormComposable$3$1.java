package com.vuitton.android.presentation.screen.osa.form.contactinformation.components;

import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import defpackage.k40;
import defpackage.md;
import defpackage.os;
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
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormComposableKt$OsaContactFormComposable$3$1", f = "OsaContactFormComposable.kt", l = {95}, m = "invokeSuspend", v = 2)
final class OsaContactFormComposableKt$OsaContactFormComposable$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60722b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaContactFormViewModel f60723c;
    public final /* synthetic */ Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ LVModalBottomSheetState f60724e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaContactFormComposableKt$OsaContactFormComposable$3$1(OsaContactFormViewModel osaContactFormViewModel, Function1 function1, LVModalBottomSheetState lVModalBottomSheetState, Continuation continuation) {
        super(2, continuation);
        this.f60723c = osaContactFormViewModel;
        this.d = function1;
        this.f60724e = lVModalBottomSheetState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaContactFormComposableKt$OsaContactFormComposable$3$1(this.f60723c, this.d, this.f60724e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaContactFormComposableKt$OsaContactFormComposable$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60722b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlow b2 = this.f60723c.getB();
            final Function1 function1 = this.d;
            final LVModalBottomSheetState lVModalBottomSheetState = this.f60724e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormComposableKt$OsaContactFormComposable$3$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    OsaContactFormBottomSheetScreen osaContactFormBottomSheetScreen = (OsaContactFormBottomSheetScreen) obj2;
                    if (osaContactFormBottomSheetScreen != null) {
                        function1.invoke(osaContactFormBottomSheetScreen);
                    } else {
                        lVModalBottomSheetState.b(new k40(28));
                    }
                    return Unit.f71739a;
                }
            };
            this.f60722b = 1;
            if (b2.f(flowCollector, this) == coroutineSingletons) {
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
