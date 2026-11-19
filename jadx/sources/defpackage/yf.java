package defpackage;

import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class yf implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81354b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BookingFormModuleDataUiModel f81355c;
    public final /* synthetic */ Function2 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BookingFormModuleUiModel f81356e;

    public /* synthetic */ yf(BookingFormModuleDataUiModel bookingFormModuleDataUiModel, Function2 function2, BookingFormModuleUiModel bookingFormModuleUiModel, int i2) {
        this.f81354b = i2;
        this.f81355c = bookingFormModuleDataUiModel;
        this.d = function2;
        this.f81356e = bookingFormModuleUiModel;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0068  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r4v8 java.lang.Object, still in use, count: 2, list:
          (r4v8 java.lang.Object) from 0x0064: PHI (r4 I:??) = (r4v5 java.lang.Object), (r4v8 java.lang.Object) binds: [B:16:0x0063, B:31:0x0064] A[DONT_GENERATE, DONT_INLINE]
          (r4v8 java.lang.Object) from 0x0058: CHECK_CAST (com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$TimeSlot) (r4v8 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // kotlin.jvm.functions.Function1
    public final java.lang.Object invoke(java.lang.Object r7) {
        /*
            r6 = this;
            int r0 = r6.f81354b
            r1 = 0
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel r2 = r6.f81355c
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel r3 = r6.f81356e
            kotlin.jvm.functions.Function2 r6 = r6.d
            switch(r0) {
                case 0: goto L78;
                case 1: goto L32;
                case 2: goto L1f;
                default: goto Lc;
            }
        Lc:
            java.lang.String r7 = (java.lang.String) r7
            r7.getClass()
            java.lang.String r0 = r3.f54536a
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$SingleChoice r2 = (com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel.SingleChoice) r2
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$SingleChoice r7 = com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel.SingleChoice.b(r2, r7)
            r6.invoke(r0, r7)
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        L1f:
            java.lang.String r7 = (java.lang.String) r7
            r7.getClass()
            java.lang.String r0 = r3.f54536a
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$SingleChoice r2 = (com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel.SingleChoice) r2
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$SingleChoice r7 = com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel.SingleChoice.b(r2, r7)
            r6.invoke(r0, r7)
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        L32:
            java.lang.String r7 = (java.lang.String) r7
            r7.getClass()
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$Slot r2 = (com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel.Slot) r2
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$SlotDate r0 = r2.f54528b
            if (r0 == 0) goto L75
            java.util.List r4 = r0.f54531b
            java.util.Collection r4 = (java.util.Collection) r4
            java.util.List r0 = r0.f54532c
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.ArrayList r0 = kotlin.collections.CollectionsKt.Y(r4, r0)
            java.util.Iterator r0 = r0.iterator()
        L4d:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L63
            java.lang.Object r4 = r0.next()
            r5 = r4
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$TimeSlot r5 = (com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel.TimeSlot) r5
            java.lang.String r5 = r5.f54533a
            boolean r5 = kotlin.jvm.internal.Intrinsics.c(r5, r7)
            if (r5 == 0) goto L4d
            goto L64
        L63:
            r4 = r1
        L64:
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$TimeSlot r4 = (com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel.TimeSlot) r4
            if (r4 == 0) goto L75
            java.lang.String r7 = r3.f54536a
            r0 = 3
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$Slot r0 = com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel.Slot.b(r2, r1, r4, r0)
            r6.invoke(r7, r0)
            kotlin.Unit r6 = kotlin.Unit.f71739a
            goto L77
        L75:
            kotlin.Unit r6 = kotlin.Unit.f71739a
        L77:
            return r6
        L78:
            java.time.LocalDate r7 = (java.time.LocalDate) r7
            r7.getClass()
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$Calendar r2 = (com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel.Calendar) r2
            java.util.List r0 = r2.f54507a
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Iterator r0 = r0.iterator()
        L87:
            boolean r4 = r0.hasNext()
            if (r4 == 0) goto L9f
            java.lang.Object r4 = r0.next()
            r5 = r4
            java.time.LocalDateTime r5 = (java.time.LocalDateTime) r5
            java.time.LocalDate r5 = r5.toLocalDate()
            boolean r5 = kotlin.jvm.internal.Intrinsics.c(r5, r7)
            if (r5 == 0) goto L87
            r1 = r4
        L9f:
            java.time.LocalDateTime r1 = (java.time.LocalDateTime) r1
            java.lang.String r7 = r3.f54536a
            com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel$Calendar r0 = com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel.Calendar.b(r2, r1)
            r6.invoke(r7, r0)
            kotlin.Unit r6 = kotlin.Unit.f71739a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.yf.invoke(java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ yf(Function2 function2, BookingFormModuleUiModel bookingFormModuleUiModel, BookingFormModuleDataUiModel bookingFormModuleDataUiModel, int i2) {
        this.f81354b = i2;
        this.d = function2;
        this.f81356e = bookingFormModuleUiModel;
        this.f81355c = bookingFormModuleDataUiModel;
    }
}
