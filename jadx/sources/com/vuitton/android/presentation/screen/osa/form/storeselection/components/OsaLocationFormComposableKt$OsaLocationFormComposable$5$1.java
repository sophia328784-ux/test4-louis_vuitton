package com.vuitton.android.presentation.screen.osa.form.storeselection.components;

import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import defpackage.md;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormComposableKt$OsaLocationFormComposable$5$1", f = "OsaLocationFormComposable.kt", l = {107}, m = "invokeSuspend", v = 2)
final class OsaLocationFormComposableKt$OsaLocationFormComposable$5$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f60819b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModel f60820c;
    public final /* synthetic */ Function1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaLocationFormComposableKt$OsaLocationFormComposable$5$1(OsaLocationFormViewModel osaLocationFormViewModel, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f60820c = osaLocationFormViewModel;
        this.d = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaLocationFormComposableKt$OsaLocationFormComposable$5$1(this.f60820c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaLocationFormComposableKt$OsaLocationFormComposable$5$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f60819b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowM9 = this.f60820c.M9();
            final Function1 function1 = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormComposableKt$OsaLocationFormComposable$5$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    function1.invoke(new OsaLocationFormBottomSheetScreen.OsaPreBookErrorBottomSheet((String) obj2));
                    return Unit.f71739a;
                }
            };
            this.f60819b = 1;
            if (flowM9.f(flowCollector, this) == coroutineSingletons) {
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
