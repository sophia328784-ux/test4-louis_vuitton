package com.vuitton.android.presentation.screen.personalselections;

import android.content.Context;
import com.vuitton.android.presentation.screen.personalselections.detail.instore.PersonalSelectionsInStoreViewModel;
import com.vuitton.android.presentation.screen.wishlist.model.ShareUiModel;
import com.vuitton.android.presentation.utils.ShareUtilsKt;
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

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1", f = "PersonalSelectionsNavHost.kt", l = {173}, m = "invokeSuspend", v = 2)
final class PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62390b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PersonalSelectionsInStoreViewModel f62391c;
    public final /* synthetic */ Context d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1(PersonalSelectionsInStoreViewModel personalSelectionsInStoreViewModel, Context context, Continuation continuation) {
        super(2, continuation);
        this.f62391c = personalSelectionsInStoreViewModel;
        this.d = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1(this.f62391c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f62390b;
        if (i2 == 0) {
            ResultKt.b(obj);
            Flow flowF2 = this.f62391c.f2();
            final Context context = this.d;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.personalselections.PersonalSelectionsNavHostKt$PersonalSelectionsNavHost$5$1$3$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    ShareUiModel shareUiModel = (ShareUiModel) obj2;
                    ShareUtilsKt.c(context, shareUiModel.f65735b, shareUiModel.f65734a, 24);
                    return Unit.f71739a;
                }
            };
            this.f62390b = 1;
            if (flowF2.f(flowCollector, this) == coroutineSingletons) {
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
