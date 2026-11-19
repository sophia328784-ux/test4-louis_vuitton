package com.vuitton.android.presentation.screen.osa.form.storeselection;

import com.vuitton.android.data.dto.distantrepairs.DistantRepairsException;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.osa.OSAMonitoring;
import com.vuitton.android.domain.usecase.appointment.PrebookAppointmentUseCase;
import com.vuitton.android.presentation.screen.distantrepairs.models.TimeSlotUiModel;
import com.vuitton.android.presentation.screen.osa.models.AppointmentTypeUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaFormItemUiModel;
import com.vuitton.android.presentation.screen.osa.models.OsaMapperKt;
import com.vuitton.android.presentation.screen.osa.models.OsaPrebookResult;
import com.vuitton.foundation.model.domain.model.appointment.PrebookContext;
import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import defpackage.md;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl$prebookAppointment$1", f = "OsaLocationFormViewModelImpl.kt", l = {381, 391, 410, 418}, m = "invokeSuspend", v = 2)
final class OsaLocationFormViewModelImpl$prebookAppointment$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f60782b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public OsaLocationFormViewModelImpl f60783c;
    public AppointmentTypeUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Object f60784e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public OsaPrebookResult f60785f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f60786h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f60787i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ OsaLocationFormViewModelImpl f60788j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OsaLocationFormViewModelImpl$prebookAppointment$1(Continuation continuation, OsaLocationFormViewModelImpl osaLocationFormViewModelImpl) {
        super(2, continuation);
        this.f60788j = osaLocationFormViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new OsaLocationFormViewModelImpl$prebookAppointment$1(continuation, this.f60788j);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((OsaLocationFormViewModelImpl$prebookAppointment$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00da  */
    /* JADX WARN: Code duplicated, block: B:46:0x011c  */
    /* JADX WARN: Code duplicated, block: B:49:0x0128  */
    /* JADX WARN: Code duplicated, block: B:51:0x013f  */
    /* JADX WARN: Code duplicated, block: B:72:0x01a7 A[PHI: r0 r1 r3 r4 r6
      0x01a7: PHI (r0v14 int) = (r0v13 int), (r0v13 int), (r0v13 int), (r0v13 int), (r0v16 int) binds: [B:48:0x0126, B:50:0x013d, B:52:0x0141, B:66:0x017c, B:71:0x01a5] A[DONT_GENERATE, DONT_INLINE]
      0x01a7: PHI (r1v10 int) = (r1v9 int), (r1v9 int), (r1v9 int), (r1v9 int), (r1v14 int) binds: [B:48:0x0126, B:50:0x013d, B:52:0x0141, B:66:0x017c, B:71:0x01a5] A[DONT_GENERATE, DONT_INLINE]
      0x01a7: PHI (r3v5 java.lang.Object) = 
      (r3v4 java.lang.Object)
      (r3v4 java.lang.Object)
      (r3v4 java.lang.Object)
      (r3v4 java.lang.Object)
      (r3v6 java.lang.Object)
     binds: [B:48:0x0126, B:50:0x013d, B:52:0x0141, B:66:0x017c, B:71:0x01a5] A[DONT_GENERATE, DONT_INLINE]
      0x01a7: PHI (r4v8 com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl) = 
      (r4v7 com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl)
      (r4v7 com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl)
      (r4v7 com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl)
      (r4v7 com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl)
      (r4v12 com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModelImpl)
     binds: [B:48:0x0126, B:50:0x013d, B:52:0x0141, B:66:0x017c, B:71:0x01a5] A[DONT_GENERATE, DONT_INLINE]
      0x01a7: PHI (r6v3 com.vuitton.android.domain.monitoring.MonitorAction) = 
      (r6v2 com.vuitton.android.domain.monitoring.MonitorAction)
      (r6v2 com.vuitton.android.domain.monitoring.MonitorAction)
      (r6v2 com.vuitton.android.domain.monitoring.MonitorAction)
      (r6v2 com.vuitton.android.domain.monitoring.MonitorAction)
      (r6v4 com.vuitton.android.domain.monitoring.MonitorAction)
     binds: [B:48:0x0126, B:50:0x013d, B:52:0x0141, B:66:0x017c, B:71:0x01a5] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:74:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:76:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:79:0x01da  */
    /* JADX WARN: Code duplicated, block: B:81:0x01dd  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object value;
        Object value2;
        Object value3;
        AppointmentTypeUiModel appointmentTypeUiModel;
        Object objA;
        Object obj2;
        OsaLocationFormViewModelImpl osaLocationFormViewModelImpl;
        MonitorAction monitorAction;
        int i2;
        int i3;
        AppointmentTypeUiModel appointmentTypeUiModel2;
        Object value4;
        MonitorAction monitorAction2;
        String str;
        Object obj3;
        Object obj4;
        Object next;
        OsaPrebookResult osaPrebookResult;
        String str2;
        TimeSlotUiModel timeSlotUiModel;
        int i4;
        int i5;
        OsaLocationFormViewModelImpl osaLocationFormViewModelImpl2;
        Throwable thA;
        BufferedChannel bufferedChannel;
        String str3;
        MonitorAction monitorAction3;
        MutableStateFlow mutableStateFlow;
        Object value5;
        OsaLocationFormViewModelImpl osaLocationFormViewModelImpl3 = this.f60788j;
        MutableStateFlow mutableStateFlow2 = osaLocationFormViewModelImpl3.y;
        MutableStateFlow mutableStateFlow3 = osaLocationFormViewModelImpl3.J;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i6 = this.f60787i;
        if (i6 == 0) {
            ResultKt.b(obj);
            DynatraceMonitorAction dynatraceMonitorActionA = osaLocationFormViewModelImpl3.f60746a.a(osaLocationFormViewModelImpl3.p, OSAMonitoring.Action.PrebookAppointment.f48963a);
            TimeSlotUiModel timeSlotUiModel2 = (TimeSlotUiModel) mutableStateFlow3.getValue();
            if (timeSlotUiModel2 != null && (str = timeSlotUiModel2.f57416b) != null) {
                dynatraceMonitorActionA.c(str, "availabilityId");
            }
            do {
                value = mutableStateFlow2.getValue();
                ((Boolean) value).getClass();
            } while (!mutableStateFlow2.i(value, Boolean.TRUE));
            OsaPrebookResult osaPrebookResult2 = osaLocationFormViewModelImpl3.s;
            if (osaPrebookResult2 != null) {
                String str4 = osaPrebookResult2.d;
                TimeSlotUiModel timeSlotUiModel3 = (TimeSlotUiModel) mutableStateFlow3.getValue();
                if (Intrinsics.c(str4, timeSlotUiModel3 != null ? timeSlotUiModel3.f57418e : null)) {
                    do {
                        value4 = mutableStateFlow2.getValue();
                        ((Boolean) value4).getClass();
                    } while (!mutableStateFlow2.i(value4, Boolean.FALSE));
                    OsaPrebookResult osaPrebookResult3 = osaLocationFormViewModelImpl3.s;
                    if (osaPrebookResult3 == null) {
                        Intrinsics.h("previousPrebookResult");
                        throw null;
                    }
                    BufferedChannel bufferedChannel2 = osaLocationFormViewModelImpl3.v;
                    this.f60782b = dynatraceMonitorActionA;
                    this.g = 0;
                    this.f60787i = 1;
                    if (bufferedChannel2.u(osaPrebookResult3, this) != coroutineSingletons) {
                        monitorAction2 = dynatraceMonitorActionA;
                        monitorAction2.b();
                        Result.Companion companion = Result.INSTANCE;
                    }
                } else {
                    value2 = mutableStateFlow3.getValue();
                    value3 = osaLocationFormViewModelImpl3.I.getValue();
                    if (value2 != null && value3 != null) {
                        appointmentTypeUiModel = (AppointmentTypeUiModel) value3;
                        PrebookAppointmentUseCase prebookAppointmentUseCase = osaLocationFormViewModelImpl3.f60753j;
                        String str5 = ((TimeSlotUiModel) value2).f57416b;
                        AppointmentType appointmentTypeA = OsaMapperKt.a(appointmentTypeUiModel);
                        boolean zBooleanValue = ((Boolean) osaLocationFormViewModelImpl3.M.getValue()).booleanValue();
                        PrebookContext prebookContext = PrebookContext.ONLINE_STORE_APPOINTMENT;
                        this.f60782b = dynatraceMonitorActionA;
                        this.f60783c = osaLocationFormViewModelImpl3;
                        this.d = appointmentTypeUiModel;
                        this.g = 0;
                        this.f60786h = 0;
                        this.f60787i = 2;
                        objA = prebookAppointmentUseCase.a(str5, appointmentTypeA, zBooleanValue, prebookContext, this);
                        if (objA != coroutineSingletons) {
                            obj2 = objA;
                            osaLocationFormViewModelImpl = osaLocationFormViewModelImpl3;
                            monitorAction = dynatraceMonitorActionA;
                            i2 = 0;
                            i3 = 0;
                            appointmentTypeUiModel2 = appointmentTypeUiModel;
                            Result.Companion companion2 = Result.INSTANCE;
                            if (obj2 instanceof Result.Failure) {
                                i4 = i3;
                                i5 = i2;
                                osaLocationFormViewModelImpl2 = osaLocationFormViewModelImpl;
                                thA = Result.a(obj2);
                                if (thA != null) {
                                    monitorAction.d(new OSAMonitoring.Error.PrebookAppointmentError(thA));
                                    if (thA instanceof DistantRepairsException.AlreadyHaveAppointment) {
                                        bufferedChannel = osaLocationFormViewModelImpl2.T;
                                        str3 = ((DistantRepairsException.AlreadyHaveAppointment) thA).f45721b;
                                        this.f60782b = monitorAction;
                                        this.f60783c = osaLocationFormViewModelImpl2;
                                        this.d = null;
                                        this.f60784e = obj2;
                                        this.f60785f = null;
                                        this.g = i4;
                                        this.f60786h = i5;
                                        this.f60787i = 4;
                                        if (bufferedChannel.u(str3, this) != coroutineSingletons) {
                                            monitorAction3 = monitorAction;
                                            monitorAction = monitorAction3;
                                        }
                                    } else {
                                        OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl2, null);
                                    }
                                }
                                mutableStateFlow = osaLocationFormViewModelImpl2.y;
                                do {
                                    value5 = mutableStateFlow.getValue();
                                    ((Boolean) value5).getClass();
                                } while (!mutableStateFlow.i(value5, Boolean.FALSE));
                                monitorAction.b();
                            } else {
                                String str6 = (String) obj2;
                                monitorAction.c(str6, "appointmentId");
                                Pair pair = new Pair(osaLocationFormViewModelImpl.K.getValue(), appointmentTypeUiModel2);
                                obj3 = pair.f71705b;
                                if (obj3 == null) {
                                    i4 = i3;
                                    i5 = i2;
                                    osaLocationFormViewModelImpl2 = osaLocationFormViewModelImpl;
                                    thA = Result.a(obj2);
                                    if (thA != null) {
                                        monitorAction.d(new OSAMonitoring.Error.PrebookAppointmentError(thA));
                                        if (thA instanceof DistantRepairsException.AlreadyHaveAppointment) {
                                            bufferedChannel = osaLocationFormViewModelImpl2.T;
                                            str3 = ((DistantRepairsException.AlreadyHaveAppointment) thA).f45721b;
                                            this.f60782b = monitorAction;
                                            this.f60783c = osaLocationFormViewModelImpl2;
                                            this.d = null;
                                            this.f60784e = obj2;
                                            this.f60785f = null;
                                            this.g = i4;
                                            this.f60786h = i5;
                                            this.f60787i = 4;
                                            if (bufferedChannel.u(str3, this) != coroutineSingletons) {
                                                monitorAction3 = monitorAction;
                                                monitorAction = monitorAction3;
                                            }
                                        } else {
                                            OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl2, null);
                                        }
                                    }
                                    mutableStateFlow = osaLocationFormViewModelImpl2.y;
                                    do {
                                        value5 = mutableStateFlow.getValue();
                                        ((Boolean) value5).getClass();
                                    } while (!mutableStateFlow.i(value5, Boolean.FALSE));
                                    monitorAction.b();
                                } else {
                                    i4 = i3;
                                    i5 = i2;
                                    osaLocationFormViewModelImpl2 = osaLocationFormViewModelImpl;
                                    thA = Result.a(obj2);
                                    if (thA != null) {
                                        monitorAction.d(new OSAMonitoring.Error.PrebookAppointmentError(thA));
                                        if (thA instanceof DistantRepairsException.AlreadyHaveAppointment) {
                                            bufferedChannel = osaLocationFormViewModelImpl2.T;
                                            str3 = ((DistantRepairsException.AlreadyHaveAppointment) thA).f45721b;
                                            this.f60782b = monitorAction;
                                            this.f60783c = osaLocationFormViewModelImpl2;
                                            this.d = null;
                                            this.f60784e = obj2;
                                            this.f60785f = null;
                                            this.g = i4;
                                            this.f60786h = i5;
                                            this.f60787i = 4;
                                            if (bufferedChannel.u(str3, this) != coroutineSingletons) {
                                                monitorAction3 = monitorAction;
                                                monitorAction = monitorAction3;
                                            }
                                        } else {
                                            OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl2, null);
                                        }
                                    }
                                    mutableStateFlow = osaLocationFormViewModelImpl2.y;
                                    do {
                                        value5 = mutableStateFlow.getValue();
                                        ((Boolean) value5).getClass();
                                    } while (!mutableStateFlow.i(value5, Boolean.FALSE));
                                    monitorAction.b();
                                }
                            }
                        }
                    }
                }
                return coroutineSingletons;
            }
            value2 = mutableStateFlow3.getValue();
            value3 = osaLocationFormViewModelImpl3.I.getValue();
            if (value2 != null) {
                appointmentTypeUiModel = (AppointmentTypeUiModel) value3;
                PrebookAppointmentUseCase prebookAppointmentUseCase2 = osaLocationFormViewModelImpl3.f60753j;
                String str7 = ((TimeSlotUiModel) value2).f57416b;
                AppointmentType appointmentTypeA2 = OsaMapperKt.a(appointmentTypeUiModel);
                boolean zBooleanValue2 = ((Boolean) osaLocationFormViewModelImpl3.M.getValue()).booleanValue();
                PrebookContext prebookContext2 = PrebookContext.ONLINE_STORE_APPOINTMENT;
                this.f60782b = dynatraceMonitorActionA;
                this.f60783c = osaLocationFormViewModelImpl3;
                this.d = appointmentTypeUiModel;
                this.g = 0;
                this.f60786h = 0;
                this.f60787i = 2;
                objA = prebookAppointmentUseCase2.a(str7, appointmentTypeA2, zBooleanValue2, prebookContext2, this);
                if (objA != coroutineSingletons) {
                    obj2 = objA;
                    osaLocationFormViewModelImpl = osaLocationFormViewModelImpl3;
                    monitorAction = dynatraceMonitorActionA;
                    i2 = 0;
                    i3 = 0;
                    appointmentTypeUiModel2 = appointmentTypeUiModel;
                    Result.Companion companion3 = Result.INSTANCE;
                    if (obj2 instanceof Result.Failure) {
                        String str8 = (String) obj2;
                        monitorAction.c(str8, "appointmentId");
                        Pair pair2 = new Pair(osaLocationFormViewModelImpl.K.getValue(), appointmentTypeUiModel2);
                        obj3 = pair2.f71705b;
                        if (obj3 == null) {
                            i4 = i3;
                            i5 = i2;
                            osaLocationFormViewModelImpl2 = osaLocationFormViewModelImpl;
                            thA = Result.a(obj2);
                            if (thA != null) {
                                monitorAction.d(new OSAMonitoring.Error.PrebookAppointmentError(thA));
                                if (thA instanceof DistantRepairsException.AlreadyHaveAppointment) {
                                    bufferedChannel = osaLocationFormViewModelImpl2.T;
                                    str3 = ((DistantRepairsException.AlreadyHaveAppointment) thA).f45721b;
                                    this.f60782b = monitorAction;
                                    this.f60783c = osaLocationFormViewModelImpl2;
                                    this.d = null;
                                    this.f60784e = obj2;
                                    this.f60785f = null;
                                    this.g = i4;
                                    this.f60786h = i5;
                                    this.f60787i = 4;
                                    if (bufferedChannel.u(str3, this) != coroutineSingletons) {
                                        monitorAction3 = monitorAction;
                                        monitorAction = monitorAction3;
                                    }
                                } else {
                                    OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl2, null);
                                }
                            }
                            mutableStateFlow = osaLocationFormViewModelImpl2.y;
                            do {
                                value5 = mutableStateFlow.getValue();
                                ((Boolean) value5).getClass();
                            } while (!mutableStateFlow.i(value5, Boolean.FALSE));
                            monitorAction.b();
                        } else {
                            i4 = i3;
                            i5 = i2;
                            osaLocationFormViewModelImpl2 = osaLocationFormViewModelImpl;
                            thA = Result.a(obj2);
                            if (thA != null) {
                                monitorAction.d(new OSAMonitoring.Error.PrebookAppointmentError(thA));
                                if (thA instanceof DistantRepairsException.AlreadyHaveAppointment) {
                                    bufferedChannel = osaLocationFormViewModelImpl2.T;
                                    str3 = ((DistantRepairsException.AlreadyHaveAppointment) thA).f45721b;
                                    this.f60782b = monitorAction;
                                    this.f60783c = osaLocationFormViewModelImpl2;
                                    this.d = null;
                                    this.f60784e = obj2;
                                    this.f60785f = null;
                                    this.g = i4;
                                    this.f60786h = i5;
                                    this.f60787i = 4;
                                    if (bufferedChannel.u(str3, this) != coroutineSingletons) {
                                        monitorAction3 = monitorAction;
                                        monitorAction = monitorAction3;
                                    }
                                } else {
                                    OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl2, null);
                                }
                            }
                            mutableStateFlow = osaLocationFormViewModelImpl2.y;
                            do {
                                value5 = mutableStateFlow.getValue();
                                ((Boolean) value5).getClass();
                            } while (!mutableStateFlow.i(value5, Boolean.FALSE));
                            monitorAction.b();
                        }
                    } else {
                        i4 = i3;
                        i5 = i2;
                        osaLocationFormViewModelImpl2 = osaLocationFormViewModelImpl;
                        thA = Result.a(obj2);
                        if (thA != null) {
                            monitorAction.d(new OSAMonitoring.Error.PrebookAppointmentError(thA));
                            if (thA instanceof DistantRepairsException.AlreadyHaveAppointment) {
                                bufferedChannel = osaLocationFormViewModelImpl2.T;
                                str3 = ((DistantRepairsException.AlreadyHaveAppointment) thA).f45721b;
                                this.f60782b = monitorAction;
                                this.f60783c = osaLocationFormViewModelImpl2;
                                this.d = null;
                                this.f60784e = obj2;
                                this.f60785f = null;
                                this.g = i4;
                                this.f60786h = i5;
                                this.f60787i = 4;
                                if (bufferedChannel.u(str3, this) != coroutineSingletons) {
                                    monitorAction3 = monitorAction;
                                    monitorAction = monitorAction3;
                                }
                            } else {
                                OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl2, null);
                            }
                        }
                        mutableStateFlow = osaLocationFormViewModelImpl2.y;
                        do {
                            value5 = mutableStateFlow.getValue();
                            ((Boolean) value5).getClass();
                        } while (!mutableStateFlow.i(value5, Boolean.FALSE));
                        monitorAction.b();
                    }
                }
                return coroutineSingletons;
            }
        } else if (i6 != 1) {
            if (i6 == 2) {
                i2 = this.f60786h;
                i3 = this.g;
                appointmentTypeUiModel2 = this.d;
                OsaLocationFormViewModelImpl osaLocationFormViewModelImpl4 = this.f60783c;
                MonitorAction monitorAction4 = this.f60782b;
                ResultKt.b(obj);
                monitorAction = monitorAction4;
                obj2 = ((Result) obj).f71708b;
                osaLocationFormViewModelImpl = osaLocationFormViewModelImpl4;
                Result.Companion companion4 = Result.INSTANCE;
                if (obj2 instanceof Result.Failure) {
                    String str9 = (String) obj2;
                    monitorAction.c(str9, "appointmentId");
                    Pair pair3 = new Pair(osaLocationFormViewModelImpl.K.getValue(), appointmentTypeUiModel2);
                    obj3 = pair3.f71705b;
                    if (obj3 == null && (obj4 = pair3.f71706c) != null) {
                        AppointmentTypeUiModel appointmentTypeUiModel3 = (AppointmentTypeUiModel) obj4;
                        OsaFormItemUiModel osaFormItemUiModel = (OsaFormItemUiModel) obj3;
                        Iterator it = osaFormItemUiModel.a(appointmentTypeUiModel3).iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                            str2 = ((TimeSlotUiModel) next).f57416b;
                            timeSlotUiModel = (TimeSlotUiModel) osaLocationFormViewModelImpl.J.getValue();
                        } while (!Intrinsics.c(str2, timeSlotUiModel != null ? timeSlotUiModel.f57416b : null));
                        TimeSlotUiModel timeSlotUiModel4 = (TimeSlotUiModel) next;
                        if (timeSlotUiModel4 != null) {
                            timeSlotUiModel4.f57418e = str9;
                            OsaPrebookResult osaPrebookResult4 = new OsaPrebookResult(osaFormItemUiModel, appointmentTypeUiModel3, str9, null, 8, null);
                            BufferedChannel bufferedChannel3 = osaLocationFormViewModelImpl.v;
                            this.f60782b = monitorAction;
                            this.f60783c = osaLocationFormViewModelImpl;
                            this.d = null;
                            this.f60784e = obj2;
                            this.f60785f = osaPrebookResult4;
                            this.g = i3;
                            this.f60786h = i2;
                            this.f60787i = 3;
                            if (bufferedChannel3.u(osaPrebookResult4, this) != coroutineSingletons) {
                                osaPrebookResult = osaPrebookResult4;
                                osaLocationFormViewModelImpl.s = osaPrebookResult;
                                i4 = i3;
                                i5 = i2;
                                osaLocationFormViewModelImpl2 = osaLocationFormViewModelImpl;
                                thA = Result.a(obj2);
                                if (thA != null) {
                                    monitorAction.d(new OSAMonitoring.Error.PrebookAppointmentError(thA));
                                    if (thA instanceof DistantRepairsException.AlreadyHaveAppointment) {
                                        bufferedChannel = osaLocationFormViewModelImpl2.T;
                                        str3 = ((DistantRepairsException.AlreadyHaveAppointment) thA).f45721b;
                                        this.f60782b = monitorAction;
                                        this.f60783c = osaLocationFormViewModelImpl2;
                                        this.d = null;
                                        this.f60784e = obj2;
                                        this.f60785f = null;
                                        this.g = i4;
                                        this.f60786h = i5;
                                        this.f60787i = 4;
                                        if (bufferedChannel.u(str3, this) != coroutineSingletons) {
                                            monitorAction3 = monitorAction;
                                        }
                                    } else {
                                        OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl2, null);
                                    }
                                }
                                mutableStateFlow = osaLocationFormViewModelImpl2.y;
                                do {
                                    value5 = mutableStateFlow.getValue();
                                    ((Boolean) value5).getClass();
                                } while (!mutableStateFlow.i(value5, Boolean.FALSE));
                                monitorAction.b();
                            }
                        } else {
                            i4 = i3;
                            i5 = i2;
                            osaLocationFormViewModelImpl2 = osaLocationFormViewModelImpl;
                            thA = Result.a(obj2);
                            if (thA != null) {
                                monitorAction.d(new OSAMonitoring.Error.PrebookAppointmentError(thA));
                                if (thA instanceof DistantRepairsException.AlreadyHaveAppointment) {
                                    bufferedChannel = osaLocationFormViewModelImpl2.T;
                                    str3 = ((DistantRepairsException.AlreadyHaveAppointment) thA).f45721b;
                                    this.f60782b = monitorAction;
                                    this.f60783c = osaLocationFormViewModelImpl2;
                                    this.d = null;
                                    this.f60784e = obj2;
                                    this.f60785f = null;
                                    this.g = i4;
                                    this.f60786h = i5;
                                    this.f60787i = 4;
                                    if (bufferedChannel.u(str3, this) != coroutineSingletons) {
                                        monitorAction3 = monitorAction;
                                    }
                                } else {
                                    OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl2, null);
                                }
                            }
                            mutableStateFlow = osaLocationFormViewModelImpl2.y;
                            do {
                                value5 = mutableStateFlow.getValue();
                                ((Boolean) value5).getClass();
                            } while (!mutableStateFlow.i(value5, Boolean.FALSE));
                            monitorAction.b();
                        }
                        return coroutineSingletons;
                    }
                    i4 = i3;
                    i5 = i2;
                    osaLocationFormViewModelImpl2 = osaLocationFormViewModelImpl;
                    thA = Result.a(obj2);
                    if (thA != null) {
                        monitorAction.d(new OSAMonitoring.Error.PrebookAppointmentError(thA));
                        if (thA instanceof DistantRepairsException.AlreadyHaveAppointment) {
                            bufferedChannel = osaLocationFormViewModelImpl2.T;
                            str3 = ((DistantRepairsException.AlreadyHaveAppointment) thA).f45721b;
                            this.f60782b = monitorAction;
                            this.f60783c = osaLocationFormViewModelImpl2;
                            this.d = null;
                            this.f60784e = obj2;
                            this.f60785f = null;
                            this.g = i4;
                            this.f60786h = i5;
                            this.f60787i = 4;
                            if (bufferedChannel.u(str3, this) != coroutineSingletons) {
                                monitorAction3 = monitorAction;
                            }
                            return coroutineSingletons;
                        }
                        OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl2, null);
                    }
                    mutableStateFlow = osaLocationFormViewModelImpl2.y;
                    do {
                        value5 = mutableStateFlow.getValue();
                        ((Boolean) value5).getClass();
                    } while (!mutableStateFlow.i(value5, Boolean.FALSE));
                    monitorAction.b();
                } else {
                    i4 = i3;
                    i5 = i2;
                    osaLocationFormViewModelImpl2 = osaLocationFormViewModelImpl;
                    thA = Result.a(obj2);
                    if (thA != null) {
                        monitorAction.d(new OSAMonitoring.Error.PrebookAppointmentError(thA));
                        if (thA instanceof DistantRepairsException.AlreadyHaveAppointment) {
                            bufferedChannel = osaLocationFormViewModelImpl2.T;
                            str3 = ((DistantRepairsException.AlreadyHaveAppointment) thA).f45721b;
                            this.f60782b = monitorAction;
                            this.f60783c = osaLocationFormViewModelImpl2;
                            this.d = null;
                            this.f60784e = obj2;
                            this.f60785f = null;
                            this.g = i4;
                            this.f60786h = i5;
                            this.f60787i = 4;
                            if (bufferedChannel.u(str3, this) != coroutineSingletons) {
                                monitorAction3 = monitorAction;
                            }
                            return coroutineSingletons;
                        }
                        OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl2, null);
                    }
                    mutableStateFlow = osaLocationFormViewModelImpl2.y;
                    do {
                        value5 = mutableStateFlow.getValue();
                        ((Boolean) value5).getClass();
                    } while (!mutableStateFlow.i(value5, Boolean.FALSE));
                    monitorAction.b();
                }
            } else if (i6 == 3) {
                i2 = this.f60786h;
                i3 = this.g;
                osaPrebookResult = this.f60785f;
                obj2 = this.f60784e;
                osaLocationFormViewModelImpl = this.f60783c;
                monitorAction = this.f60782b;
                ResultKt.b(obj);
                osaLocationFormViewModelImpl.s = osaPrebookResult;
                i4 = i3;
                i5 = i2;
                osaLocationFormViewModelImpl2 = osaLocationFormViewModelImpl;
                thA = Result.a(obj2);
                if (thA != null) {
                    monitorAction.d(new OSAMonitoring.Error.PrebookAppointmentError(thA));
                    if (thA instanceof DistantRepairsException.AlreadyHaveAppointment) {
                        bufferedChannel = osaLocationFormViewModelImpl2.T;
                        str3 = ((DistantRepairsException.AlreadyHaveAppointment) thA).f45721b;
                        this.f60782b = monitorAction;
                        this.f60783c = osaLocationFormViewModelImpl2;
                        this.d = null;
                        this.f60784e = obj2;
                        this.f60785f = null;
                        this.g = i4;
                        this.f60786h = i5;
                        this.f60787i = 4;
                        if (bufferedChannel.u(str3, this) != coroutineSingletons) {
                            monitorAction3 = monitorAction;
                        }
                        return coroutineSingletons;
                    }
                    OsaLocationFormViewModelImpl.yc(osaLocationFormViewModelImpl2, null);
                }
                mutableStateFlow = osaLocationFormViewModelImpl2.y;
                do {
                    value5 = mutableStateFlow.getValue();
                    ((Boolean) value5).getClass();
                } while (!mutableStateFlow.i(value5, Boolean.FALSE));
                monitorAction.b();
            } else {
                if (i6 != 4) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                osaLocationFormViewModelImpl2 = this.f60783c;
                monitorAction3 = this.f60782b;
                ResultKt.b(obj);
            }
            monitorAction = monitorAction3;
            mutableStateFlow = osaLocationFormViewModelImpl2.y;
            do {
                value5 = mutableStateFlow.getValue();
                ((Boolean) value5).getClass();
            } while (!mutableStateFlow.i(value5, Boolean.FALSE));
            monitorAction.b();
        } else {
            monitorAction2 = this.f60782b;
            ResultKt.b(obj);
            monitorAction2.b();
            Result.Companion companion5 = Result.INSTANCE;
        }
        return Unit.f71739a;
    }
}
