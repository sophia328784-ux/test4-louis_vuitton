package com.vuitton.android.presentation.screen.booking.personalinfo.loginstatus.components;

import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetState;
import com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModel;
import com.vuitton.android.presentation.screen.booking.personalinfo.models.BookingPersonalInfoNavigationEvent;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharedFlow;
import org.bouncycastle.asn1.eac.EACTags;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.personalinfo.loginstatus.components.BookingAccountStatusComposableKt$BookingAccountStatusComposable$2$1", f = "BookingAccountStatusComposable.kt", l = {EACTags.HISTORICAL_BYTES}, m = "invokeSuspend", v = 2)
final class BookingAccountStatusComposableKt$BookingAccountStatusComposable$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f54714b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingPersonalInfoViewModel f54715c;
    public final /* synthetic */ Function0 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SocialLoginBottomSheetState f54716e;

    /* JADX INFO: renamed from: com.vuitton.android.presentation.screen.booking.personalinfo.loginstatus.components.BookingAccountStatusComposableKt$BookingAccountStatusComposable$2$1$1, reason: invalid class name */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", MvelScriptManager.VAR_EVENT, "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoNavigationEvent;"}, k = 3, mv = {2, 3, 0}, xi = 48)
    @DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.personalinfo.loginstatus.components.BookingAccountStatusComposableKt$BookingAccountStatusComposable$2$1$1", f = "BookingAccountStatusComposable.kt", l = {}, m = "invokeSuspend", v = 2)
    final class AnonymousClass1 extends SuspendLambda implements Function2<BookingPersonalInfoNavigationEvent, Continuation<? super Unit>, Object> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public /* synthetic */ Object f54717b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ Function0 f54718c;
        public final /* synthetic */ SocialLoginBottomSheetState d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Function0 function0, SocialLoginBottomSheetState socialLoginBottomSheetState, Continuation continuation) {
            super(2, continuation);
            this.f54718c = function0;
            this.d = socialLoginBottomSheetState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f54718c, this.d, continuation);
            anonymousClass1.f54717b = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Object obj, Object obj2) {
            return ((AnonymousClass1) create((BookingPersonalInfoNavigationEvent) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            BookingPersonalInfoNavigationEvent bookingPersonalInfoNavigationEvent = (BookingPersonalInfoNavigationEvent) this.f54717b;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
            ResultKt.b(obj);
            if (Intrinsics.c(bookingPersonalInfoNavigationEvent, BookingPersonalInfoNavigationEvent.NavigateToInfoForm.f54725a)) {
                this.f54718c.mo47invoke();
            } else {
                if (!Intrinsics.c(bookingPersonalInfoNavigationEvent, BookingPersonalInfoNavigationEvent.NavigateToLogin.f54726a)) {
                    v40.g();
                    return null;
                }
                this.d.f54159i.mo47invoke();
            }
            return Unit.f71739a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingAccountStatusComposableKt$BookingAccountStatusComposable$2$1(BookingPersonalInfoViewModel bookingPersonalInfoViewModel, Function0 function0, SocialLoginBottomSheetState socialLoginBottomSheetState, Continuation continuation) {
        super(2, continuation);
        this.f54715c = bookingPersonalInfoViewModel;
        this.d = function0;
        this.f54716e = socialLoginBottomSheetState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new BookingAccountStatusComposableKt$BookingAccountStatusComposable$2$1(this.f54715c, this.d, this.f54716e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingAccountStatusComposableKt$BookingAccountStatusComposable$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f54714b;
        if (i2 == 0) {
            ResultKt.b(obj);
            SharedFlow s = this.f54715c.getS();
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f54716e, null);
            s.getClass();
            this.f54714b = 1;
            if (FlowKt.g(s, anonymousClass1, this) == coroutineSingletons) {
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
