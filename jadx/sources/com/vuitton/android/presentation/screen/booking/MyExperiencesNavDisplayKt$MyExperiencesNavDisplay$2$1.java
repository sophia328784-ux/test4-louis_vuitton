package com.vuitton.android.presentation.screen.booking;

import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.extensions.Nav3ExtKt;
import com.vuitton.android.presentation.screen.booking.list.BookingListNavigationEvent;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
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
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1", f = "MyExperiencesNavDisplay.kt", l = {61}, m = "invokeSuspend", v = 2)
final class MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingListViewModelImpl f54350c;
    public final /* synthetic */ NavBackStack d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f54351e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1(BookingListViewModelImpl bookingListViewModelImpl, NavBackStack navBackStack, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f54350c = bookingListViewModelImpl;
        this.d = navBackStack;
        this.f54351e = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1(this.f54350c, this.d, this.f54351e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54349b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlow sharedFlow = this.f54350c.s;
            final NavBackStack navBackStack = this.d;
            final Function1 function1 = this.f54351e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    BookingListNavigationEvent bookingListNavigationEvent = (BookingListNavigationEvent) obj2;
                    boolean zC = Intrinsics.c(bookingListNavigationEvent, BookingListNavigationEvent.BookingUpdated.f54569a);
                    NavBackStack navBackStack2 = navBackStack;
                    if (zC) {
                        Nav3ExtKt.c(navBackStack2, MyBookingsRoutes.List.INSTANCE, false);
                    } else if (Intrinsics.c(bookingListNavigationEvent, BookingListNavigationEvent.BookingDeleted.f54568a)) {
                        Nav3ExtKt.b(navBackStack2);
                    } else {
                        if (!Intrinsics.c(bookingListNavigationEvent, BookingListNavigationEvent.ToOSAForm.f54570a)) {
                            v40.g();
                            return null;
                        }
                        function1.invoke(new ContributionLinkUiModel.Osa(null));
                    }
                    return Unit.f71739a;
                }
            };
            this.f54349b = 1;
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
