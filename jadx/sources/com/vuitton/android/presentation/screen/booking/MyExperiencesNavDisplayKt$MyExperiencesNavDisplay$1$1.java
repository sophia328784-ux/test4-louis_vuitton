package com.vuitton.android.presentation.screen.booking;

import android.content.Context;
import androidx.compose.material3.SnackbarHostState;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.LVSnackbarVisuals;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.notification.NotificationUiModel;
import com.vuitton.android.presentation.screen.booking.list.BookingListViewModelImpl;
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
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$1$1", f = "MyExperiencesNavDisplay.kt", l = {177}, m = "invokeSuspend", v = 2)
final class MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54342b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingListViewModelImpl f54343c;
    public final /* synthetic */ SnackbarHostState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Context f54344e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$1$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "notification", "Lcom/vuitton/android/presentation/notification/NotificationUiModel;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$1$1$1", f = "MyExperiencesNavDisplay.kt", l = {55}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<NotificationUiModel, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f54345b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public /* synthetic */ Object f54346c;
        public final /* synthetic */ BookingListViewModelImpl d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final /* synthetic */ SnackbarHostState f54347e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final /* synthetic */ Context f54348f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(BookingListViewModelImpl bookingListViewModelImpl, SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
            super(2, continuation);
            this.d = bookingListViewModelImpl;
            this.f54347e = snackbarHostState;
            this.f54348f = context;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f54347e, this.f54348f, continuation);
            anonymousClass1.f54346c = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((NotificationUiModel) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            NotificationUiModel notificationUiModel = (NotificationUiModel) this.f54346c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            int i2 = this.f54345b;
            if (i2 == 0) {
                ResultKt.b(obj);
                if (this.d.u.getValue() == null) {
                    NotificationBuilder notificationBuilder = NotificationBuilderKt.f51837a;
                    LVSnackbarVisuals lVSnackbarVisualsB = NotificationBuilderKt.b(notificationUiModel, this.f54348f, LVColorScheme.DEFAULT);
                    this.f54346c = null;
                    this.f54345b = 1;
                    if (this.f54347e.a(lVSnackbarVisualsB, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$1$1(BookingListViewModelImpl bookingListViewModelImpl, SnackbarHostState snackbarHostState, Context context, Continuation continuation) {
        super(2, continuation);
        this.f54343c = bookingListViewModelImpl;
        this.d = snackbarHostState;
        this.f54344e = context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$1$1(this.f54343c, this.d, this.f54344e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyExperiencesNavDisplayKt$MyExperiencesNavDisplay$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54342b;
        if (i2 == 0) {
            ResultKt.b(obj);
            BookingListViewModelImpl bookingListViewModelImpl = this.f54343c;
            SharedFlow sharedFlow = bookingListViewModelImpl.o;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(bookingListViewModelImpl, this.d, this.f54344e, null);
            sharedFlow.getClass();
            this.f54342b = 1;
            if (FlowKt.g(sharedFlow, anonymousClass1, this) == coroutineSingletons) {
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
