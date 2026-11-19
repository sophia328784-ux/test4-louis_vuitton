package com.vuitton.android.presentation.screen.booking;

import android.content.Context;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.screen.booking.summary.PrebookNavigationEvent;
import com.vuitton.android.presentation.screen.booking.summary.PrebookSummaryViewModel;
import com.vuitton.android.presentation.screen.webview.WebViewActivity;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.SharedFlow;
import net.rtccloud.sdk.Sink;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$2$1", f = "BookingNavDisplay.kt", l = {Sink.ORIENTATION_90}, m = "invokeSuspend", v = 2)
final class BookingNavDisplayKt$BookingNavDisplay$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ PrebookSummaryViewModel f54296c;
    public final /* synthetic */ NavBackStack d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f54297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ManagedActivityResultLauncher f54298f;
    public final /* synthetic */ Context g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingNavDisplayKt$BookingNavDisplay$2$1(PrebookSummaryViewModel prebookSummaryViewModel, NavBackStack navBackStack, Function0 function0, ManagedActivityResultLauncher managedActivityResultLauncher, Context context, Continuation continuation) {
        super(2, continuation);
        this.f54296c = prebookSummaryViewModel;
        this.d = navBackStack;
        this.f54297e = function0;
        this.f54298f = managedActivityResultLauncher;
        this.g = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingNavDisplayKt$BookingNavDisplay$2$1(this.f54296c, this.d, this.f54297e, this.f54298f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingNavDisplayKt$BookingNavDisplay$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54295b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlow l = this.f54296c.getL();
            final ManagedActivityResultLauncher managedActivityResultLauncher = this.f54298f;
            final Context context = this.g;
            final NavBackStack navBackStack = this.d;
            final PrebookSummaryViewModel prebookSummaryViewModel = this.f54296c;
            final Function0 function0 = this.f54297e;
            FlowCollector flowCollector = new FlowCollector() { // from class: com.vuitton.android.presentation.screen.booking.BookingNavDisplayKt$BookingNavDisplay$2$1.1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj2, Continuation continuation) {
                    PrebookNavigationEvent prebookNavigationEvent = (PrebookNavigationEvent) obj2;
                    boolean zC = Intrinsics.c(prebookNavigationEvent, PrebookNavigationEvent.NavigateToBookingSummary.f54736a);
                    NavBackStack navBackStack2 = navBackStack;
                    if (zC) {
                        navBackStack2.f18396b.add(BookingRoutes.Summary.INSTANCE);
                    } else if (Intrinsics.c(prebookNavigationEvent, PrebookNavigationEvent.NavigateToPersonalInfo.f54739a)) {
                        prebookSummaryViewModel.q5();
                        navBackStack2.f18396b.add(BookingRoutes.PersonalInfo.INSTANCE);
                    } else if (Intrinsics.c(prebookNavigationEvent, PrebookNavigationEvent.NavigateToConfirmation.f54737a)) {
                        function0.mo47invoke();
                    } else {
                        if (!(prebookNavigationEvent instanceof PrebookNavigationEvent.NavigateToPayment)) {
                            v40.g();
                            return null;
                        }
                        managedActivityResultLauncher.a(WebViewActivity.Companion.a(WebViewActivity.v, context, ((PrebookNavigationEvent.NavigateToPayment) prebookNavigationEvent).f54738a, false, false, null, null, null, false, false, null, 1020));
                    }
                    return Unit.f71739a;
                }
            };
            this.f54295b = 1;
            if (l.f(flowCollector, this) == coroutineSingletons) {
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
