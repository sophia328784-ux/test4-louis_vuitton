package com.vuitton.android.presentation.screen.booking.personalinfo;

import com.vuitton.android.presentation.screen.dynamicform.model.field.section.FormSectionTypeUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$loadForm$1", f = "BookingPersonalInfoViewModelImpl.kt", l = {136, 138, 162}, m = "invokeSuspend", v = 2)
public final class BookingPersonalInfoViewModelImpl$loadForm$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f54679b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f54680c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f54681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f54682f;
    public final /* synthetic */ BookingPersonalInfoViewModelImpl g;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f54683a;

        static {
            int[] iArr = new int[FormSectionTypeUiModel.values().length];
            try {
                iArr[FormSectionTypeUiModel.BOOKING_MARKETING_EMAILS_CONSENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FormSectionTypeUiModel.COUNTRY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FormSectionTypeUiModel.EMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f54683a = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BookingPersonalInfoViewModelImpl$loadForm$1(BookingPersonalInfoViewModelImpl bookingPersonalInfoViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.g = bookingPersonalInfoViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BookingPersonalInfoViewModelImpl$loadForm$1 bookingPersonalInfoViewModelImpl$loadForm$1 = new BookingPersonalInfoViewModelImpl$loadForm$1(this.g, continuation);
        bookingPersonalInfoViewModelImpl$loadForm$1.f54682f = obj;
        return bookingPersonalInfoViewModelImpl$loadForm$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BookingPersonalInfoViewModelImpl$loadForm$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x00b0  */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006a, code lost:
    
        if (r15 == r4) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008e, code lost:
    
        if (r0.Ac(r10, r11, r15, r14) == r4) goto L24;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r15v11, types: [int] */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v16 */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r15) {
        /*
            r14 = this;
            com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl r0 = r14.g
            kotlinx.coroutines.flow.MutableStateFlow r1 = r0.o
            kotlinx.coroutines.flow.MutableStateFlow r2 = r0.n
            java.lang.Object r3 = r14.f54682f
            kotlinx.coroutines.CoroutineScope r3 = (kotlinx.coroutines.CoroutineScope) r3
            kotlin.coroutines.intrinsics.CoroutineSingletons r4 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r5 = r14.f54681e
            r6 = 3
            r7 = 2
            r8 = 1
            r9 = 0
            if (r5 == 0) goto L3b
            if (r5 == r8) goto L31
            if (r5 == r7) goto L27
            if (r5 != r6) goto L21
            int r14 = r14.d
            kotlin.ResultKt.b(r15)
            goto La6
        L21:
            java.lang.String r14 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r14)
            return r9
        L27:
            boolean r3 = r14.f54680c
            java.lang.Object r5 = r14.f54679b
            kotlinx.coroutines.Deferred r5 = (kotlinx.coroutines.Deferred) r5
            kotlin.ResultKt.b(r15)
            goto L91
        L31:
            boolean r3 = r14.f54680c
            java.lang.Object r5 = r14.f54679b
            kotlinx.coroutines.Deferred r5 = (kotlinx.coroutines.Deferred) r5
            kotlin.ResultKt.b(r15)
            goto L6d
        L3b:
            kotlin.ResultKt.b(r15)
            java.lang.Boolean r15 = java.lang.Boolean.TRUE
            r2.setValue(r15)
            java.lang.Boolean r15 = java.lang.Boolean.FALSE
            r1.setValue(r15)
            com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$loadForm$1$bookingPolicyResult$1 r15 = new com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$loadForm$1$bookingPolicyResult$1
            r15.<init>(r0, r9)
            kotlinx.coroutines.Deferred r5 = kotlinx.coroutines.BuildersKt.a(r3, r9, r15, r6)
            com.vuitton.android.domain.service.authentication.UserSessionService r15 = r0.f54672j
            boolean r3 = r15.b()
            x4 r15 = new x4
            r15.<init>(r3, r8)
            if (r3 == 0) goto L74
            r14.f54682f = r9
            r14.f54679b = r5
            r14.f54680c = r3
            r14.f54681e = r8
            java.lang.Object r15 = com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl.zc(r0, r15, r14)
            if (r15 != r4) goto L6d
            goto La2
        L6d:
            java.lang.Boolean r15 = (java.lang.Boolean) r15
            boolean r15 = r15.booleanValue()
            goto L92
        L74:
            c1 r10 = new c1
            r11 = 24
            r10.<init>(r0, r11)
            c r11 = new c
            r12 = 10
            r11.<init>(r0, r12)
            r14.f54682f = r9
            r14.f54679b = r5
            r14.f54680c = r3
            r14.f54681e = r7
            java.lang.Object r15 = r0.Ac(r10, r11, r15, r14)
            if (r15 != r4) goto L91
            goto La2
        L91:
            r15 = r8
        L92:
            r14.f54682f = r9
            r14.f54679b = r9
            r14.f54680c = r3
            r14.d = r15
            r14.f54681e = r6
            java.lang.Object r14 = r5.k(r14)
            if (r14 != r4) goto La3
        La2:
            return r4
        La3:
            r13 = r15
            r15 = r14
            r14 = r13
        La6:
            com.vuitton.foundation.model.domain.model.booking.BookingExternalContent r15 = (com.vuitton.foundation.model.domain.model.booking.BookingExternalContent) r15
            java.lang.Boolean r3 = java.lang.Boolean.FALSE
            r2.setValue(r3)
            if (r14 != 0) goto Lb0
            goto Lb1
        Lb0:
            r8 = 0
        Lb1:
            java.lang.Boolean r14 = java.lang.Boolean.valueOf(r8)
            r1.setValue(r14)
            kotlinx.coroutines.flow.MutableStateFlow r14 = r0.q
            r14.setValue(r15)
            kotlin.Unit r14 = kotlin.Unit.f71739a
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.booking.personalinfo.BookingPersonalInfoViewModelImpl$loadForm$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
