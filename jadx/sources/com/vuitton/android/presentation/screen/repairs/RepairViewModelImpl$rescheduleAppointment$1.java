package com.vuitton.android.presentation.screen.repairs;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.repairs.models.CareServiceDetailUiModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$rescheduleAppointment$1", f = "RepairViewModelImpl.kt", l = {512, 520, 532, 534, 543}, m = "invokeSuspend", v = 2)
final class RepairViewModelImpl$rescheduleAppointment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CareServiceDetailUiModel f63553b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MonitorAction f63554c;
    public Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RepairViewModelImpl f63555e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Throwable f63556f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f63557h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ RepairViewModelImpl f63558i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ TimeSlotUiModel f63559j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepairViewModelImpl$rescheduleAppointment$1(RepairViewModelImpl repairViewModelImpl, TimeSlotUiModel timeSlotUiModel, Continuation continuation) {
        super(2, continuation);
        this.f63558i = repairViewModelImpl;
        this.f63559j = timeSlotUiModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new RepairViewModelImpl$rescheduleAppointment$1(this.f63558i, this.f63559j, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((RepairViewModelImpl$rescheduleAppointment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:42:0x0133 A[PHI: r4 r13
      0x0133: PHI (r4v9 com.vuitton.android.domain.monitoring.MonitorAction) = (r4v6 com.vuitton.android.domain.monitoring.MonitorAction), (r4v11 com.vuitton.android.domain.monitoring.MonitorAction) binds: [B:33:0x00cf, B:41:0x0131] A[DONT_GENERATE, DONT_INLINE]
      0x0133: PHI (r13v4 java.lang.Object) = (r13v2 java.lang.Object), (r13v5 java.lang.Object) binds: [B:33:0x00cf, B:41:0x0131] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:44:0x0139  */
    /* JADX WARN: Code duplicated, block: B:47:0x0157  */
    /* JADX WARN: Code duplicated, block: B:49:0x0161  */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x012d, code lost:
    
        if (r10.u(r9, r23) == r3) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0195, code lost:
    
        if (com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl.Ac(r1, r23) == r3) goto L57;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r24) {
        /*
            Method dump skipped, instruction units count: 411
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.repairs.RepairViewModelImpl$rescheduleAppointment$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
