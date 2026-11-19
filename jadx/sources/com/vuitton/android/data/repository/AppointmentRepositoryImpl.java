package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.AppointmentApi;
import com.vuitton.android.data.dto.distantrepairs.AppointmentTypeDto;
import com.vuitton.android.data.dto.distantrepairs.DistantRepairsErrorCode;
import com.vuitton.android.data.dto.distantrepairs.DistantRepairsException;
import com.vuitton.android.data.dto.distantrepairs.PrebookAppointmentDtoRequest;
import com.vuitton.android.data.dto.distantrepairs.PrebookAppointmentDtoResponse;
import com.vuitton.android.data.dto.distantrepairs.PrebookContextDto;
import com.vuitton.android.data.dto.error.ErrorDetailsDto;
import com.vuitton.android.data.dto.error.ErrorDto;
import com.vuitton.android.data.dto.osa.mapper.AppointmentsMapperKt;
import com.vuitton.android.data.dto.osa.mapper.PrebookContextMapperKt$WhenMappings;
import com.vuitton.android.data.dto.osa.twist.AppointmentItemDto;
import com.vuitton.android.data.dto.osa.twist.OsaReasonDto;
import com.vuitton.android.data.dto.osa.twist.UpdateAppointmentDtoRequest;
import com.vuitton.android.data.dto.profile.PhoneNumberDtoMapperKt;
import com.vuitton.android.data.exception.NetworkExceptionMapperKt;
import com.vuitton.android.domain.repository.AppointmentRepository;
import com.vuitton.foundation.model.domain.model.account.PhoneNumber;
import com.vuitton.foundation.model.domain.model.appointment.PrebookContext;
import com.vuitton.foundation.model.domain.model.appointment.UpdateAppointmentRequest;
import com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller;
import com.vuitton.foundation.model.domain.model.osa.AppointmentType;
import com.vuitton.foundation.model.domain.model.osa.OsaReason;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.Json;
import okhttp3.ResponseBody;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/repository/AppointmentRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AppointmentRepository;", "Lcom/vuitton/android/data/api/bff/user/AppointmentApi;", "appointmentApi", "Lkotlinx/serialization/json/Json;", "json", "<init>", "(Lcom/vuitton/android/data/api/bff/user/AppointmentApi;Lkotlinx/serialization/json/Json;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AppointmentRepositoryImpl implements AppointmentRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AppointmentApi f47272a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f47273b;

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f47274a;

        static {
            int[] iArr = new int[AvailabilitiesCaller.values().length];
            try {
                iArr[AvailabilitiesCaller.APPOINTMENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AvailabilitiesCaller.DISTANT_REPAIRS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f47274a = iArr;
        }
    }

    @Inject
    public AppointmentRepositoryImpl(AppointmentApi appointmentApi, Json json) {
        appointmentApi.getClass();
        json.getClass();
        this.f47272a = appointmentApi;
        this.f47273b = json;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x007c A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:12:0x003d, B:24:0x00b6, B:18:0x0076, B:20:0x007c, B:25:0x00c5, B:17:0x0054), top: B:38:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x00b1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00b2 -> B:24:0x00b6). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // com.vuitton.android.domain.repository.AppointmentRepository
    public final java.lang.Object a(com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller r22, java.util.List r23, java.lang.String r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.AppointmentRepositoryImpl.a(com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller, java.util.List, java.lang.String, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:67:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppointmentRepository
    public final Object b(String str, AppointmentType appointmentType, boolean z, PrebookContext prebookContext, ContinuationImpl continuationImpl) {
        AppointmentRepositoryImpl$prebookAppointment$1 appointmentRepositoryImpl$prebookAppointment$1;
        Object failure;
        PrebookContextDto prebookContextDto;
        ErrorDetailsDto errorDetailsDto;
        Object failure2;
        List list;
        Object objB;
        Object obj;
        if (continuationImpl instanceof AppointmentRepositoryImpl$prebookAppointment$1) {
            appointmentRepositoryImpl$prebookAppointment$1 = (AppointmentRepositoryImpl$prebookAppointment$1) continuationImpl;
            int i2 = appointmentRepositoryImpl$prebookAppointment$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appointmentRepositoryImpl$prebookAppointment$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appointmentRepositoryImpl$prebookAppointment$1 = new AppointmentRepositoryImpl$prebookAppointment$1(this, continuationImpl);
            }
        } else {
            appointmentRepositoryImpl$prebookAppointment$1 = new AppointmentRepositoryImpl$prebookAppointment$1(this, continuationImpl);
        }
        Object objPrebookAppointmentGuest = appointmentRepositoryImpl$prebookAppointment$1.f47300b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appointmentRepositoryImpl$prebookAppointment$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objPrebookAppointmentGuest);
                AppointmentTypeDto appointmentTypeDtoD = AppointmentsMapperKt.d(appointmentType);
                prebookContext.getClass();
                int i4 = PrebookContextMapperKt$WhenMappings.f46135a[prebookContext.ordinal()];
                if (i4 == 1) {
                    prebookContextDto = PrebookContextDto.ONLINE_STORE_APPOINTMENT;
                } else {
                    if (i4 != 2) {
                        v40.g();
                        return null;
                    }
                    prebookContextDto = PrebookContextDto.CARE_SERVICE;
                }
                PrebookAppointmentDtoRequest prebookAppointmentDtoRequest = new PrebookAppointmentDtoRequest(str, appointmentTypeDtoD, prebookContextDto);
                Result.Companion companion = Result.INSTANCE;
                appointmentRepositoryImpl$prebookAppointment$1.d = 1;
                AppointmentApi appointmentApi = this.f47272a;
                objPrebookAppointmentGuest = z ? appointmentApi.prebookAppointmentGuest(prebookAppointmentDtoRequest, appointmentRepositoryImpl$prebookAppointment$1) : appointmentApi.prebookAppointment(prebookAppointmentDtoRequest, appointmentRepositoryImpl$prebookAppointment$1);
                if (objPrebookAppointmentGuest == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objPrebookAppointmentGuest);
            }
            Response response = (Response) objPrebookAppointmentGuest;
            if (!response.f79449a.r || (obj = response.f79450b) == null) {
                ResponseBody responseBody = response.f79451c;
                String strString = responseBody != null ? responseBody.string() : null;
                if (strString != null) {
                    Json json = this.f47273b;
                    try {
                        Result.Companion companion2 = Result.INSTANCE;
                        if (StringsKt.w(strString)) {
                            objB = null;
                        } else {
                            json.getClass();
                            objB = json.b(ErrorDto.INSTANCE.serializer(), strString);
                        }
                        failure2 = new Result(objB);
                    } catch (Throwable th) {
                        Result.Companion companion3 = Result.INSTANCE;
                        failure2 = new Result.Failure(th);
                    }
                    Throwable thA = Result.a(failure2);
                    if (thA != null) {
                        if (thA instanceof CancellationException) {
                            throw thA;
                        }
                        failure2 = new Result(new Result.Failure(thA));
                    }
                    Object obj2 = ((Result) failure2).f71708b;
                    if (obj2 instanceof Result.Failure) {
                        obj2 = null;
                    }
                    ErrorDto errorDto = (ErrorDto) obj2;
                    if (errorDto == null || (list = errorDto.f45747f) == null) {
                        errorDetailsDto = null;
                    } else {
                        errorDetailsDto = (ErrorDetailsDto) CollectionsKt.firstOrNull(list);
                    }
                } else {
                    errorDetailsDto = null;
                }
                if (!Intrinsics.c(errorDetailsDto != null ? errorDetailsDto.f45738a : null, DistantRepairsErrorCode.ALREADY_HAVE_APPOINTMENT.getCode())) {
                    throw new DistantRepairsException.GenericError();
                }
                String str2 = errorDetailsDto.f45739b;
                if (str2 == null) {
                    str2 = "";
                }
                throw new DistantRepairsException.AlreadyHaveAppointment(str2);
            }
            failure = new Result((PrebookAppointmentDtoResponse) obj);
        } catch (Throwable th2) {
            Result.Companion companion4 = Result.INSTANCE;
            failure = new Result.Failure(th2);
        }
        Throwable thA2 = Result.a(failure);
        if (thA2 != null) {
            if (thA2 instanceof CancellationException) {
                throw thA2;
            }
            failure = new Result(new Result.Failure(thA2));
        }
        Object obj3 = ((Result) failure).f71708b;
        if (obj3 instanceof Result.Failure) {
            return obj3;
        }
        try {
            PrebookAppointmentDtoResponse prebookAppointmentDtoResponse = (PrebookAppointmentDtoResponse) obj3;
            String str3 = prebookAppointmentDtoResponse != null ? prebookAppointmentDtoResponse.f45726a : null;
            if (str3 != null) {
                return str3;
            }
            throw new IllegalArgumentException("Required value was null.");
        } catch (Throwable th3) {
            Result.Companion companion5 = Result.INSTANCE;
            return new Result.Failure(th3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x007c A[Catch: all -> 0x00d7, TryCatch #0 {all -> 0x00d7, blocks: (B:12:0x003d, B:24:0x00b6, B:18:0x0076, B:20:0x007c, B:25:0x00c5, B:17:0x0054), top: B:38:0x0025 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x00b1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:23:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00b2 -> B:24:0x00b6). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // com.vuitton.android.domain.repository.AppointmentRepository
    public final java.lang.Object c(com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller r22, java.util.List r23, boolean r24, kotlin.coroutines.jvm.internal.ContinuationImpl r25) {
        /*
            Method dump skipped, instruction units count: 251
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.AppointmentRepositoryImpl.c(com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller, java.util.List, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppointmentRepository
    public final Object d(ContinuationImpl continuationImpl) {
        AppointmentRepositoryImpl$getAppointmentsReasons$1 appointmentRepositoryImpl$getAppointmentsReasons$1;
        Object failure;
        if (continuationImpl instanceof AppointmentRepositoryImpl$getAppointmentsReasons$1) {
            appointmentRepositoryImpl$getAppointmentsReasons$1 = (AppointmentRepositoryImpl$getAppointmentsReasons$1) continuationImpl;
            int i2 = appointmentRepositoryImpl$getAppointmentsReasons$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appointmentRepositoryImpl$getAppointmentsReasons$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appointmentRepositoryImpl$getAppointmentsReasons$1 = new AppointmentRepositoryImpl$getAppointmentsReasons$1(this, continuationImpl);
            }
        } else {
            appointmentRepositoryImpl$getAppointmentsReasons$1 = new AppointmentRepositoryImpl$getAppointmentsReasons$1(this, continuationImpl);
        }
        Object appointmentsReasons = appointmentRepositoryImpl$getAppointmentsReasons$1.f47280b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appointmentRepositoryImpl$getAppointmentsReasons$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(appointmentsReasons);
                Result.Companion companion = Result.INSTANCE;
                AppointmentApi appointmentApi = this.f47272a;
                appointmentRepositoryImpl$getAppointmentsReasons$1.d = 1;
                appointmentsReasons = appointmentApi.getAppointmentsReasons(appointmentRepositoryImpl$getAppointmentsReasons$1);
                if (appointmentsReasons == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(appointmentsReasons);
            }
            List list = (List) appointmentsReasons;
            list.getClass();
            List<OsaReasonDto> list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            for (OsaReasonDto osaReasonDto : list2) {
                osaReasonDto.getClass();
                arrayList.add(new OsaReason(osaReasonDto.f46160a, osaReasonDto.f46161b));
            }
            failure = new Result(arrayList);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        Object obj = ((Result) failure).f71708b;
        if (obj instanceof Result.Failure) {
            return obj;
        }
        try {
            return (List) obj;
        } catch (Throwable th2) {
            Result.Companion companion3 = Result.INSTANCE;
            return new Result.Failure(th2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005c, code lost:
    
        if (r8 == r1) goto L28;
     */
    @Override // com.vuitton.android.domain.repository.AppointmentRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object e(com.vuitton.foundation.model.domain.model.distantrepairs.Appointment r6, boolean r7, kotlin.coroutines.jvm.internal.ContinuationImpl r8) {
        /*
            r5 = this;
            boolean r0 = r8 instanceof com.vuitton.android.data.repository.AppointmentRepositoryImpl$confirmAppointment$1
            if (r0 == 0) goto L13
            r0 = r8
            com.vuitton.android.data.repository.AppointmentRepositoryImpl$confirmAppointment$1 r0 = (com.vuitton.android.data.repository.AppointmentRepositoryImpl$confirmAppointment$1) r0
            int r1 = r0.d
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.d = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.AppointmentRepositoryImpl$confirmAppointment$1 r0 = new com.vuitton.android.data.repository.AppointmentRepositoryImpl$confirmAppointment$1
            r0.<init>(r5, r8)
        L18:
            java.lang.Object r8 = r0.f47275b
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.d
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L35
            if (r2 == r4) goto L31
            if (r2 != r3) goto L2a
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L6b
            goto L5f
        L2a:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r5)
            r5 = 0
            return r5
        L31:
            kotlin.ResultKt.b(r8)     // Catch: java.lang.Throwable -> L6b
            goto L4b
        L35:
            kotlin.ResultKt.b(r8)
            kotlin.Result$Companion r8 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L6b
            com.vuitton.android.data.api.bff.user.AppointmentApi r5 = r5.f47272a
            if (r7 == 0) goto L52
            com.vuitton.android.data.dto.distantrepairs.ConfirmAppointmentDtoRequest r6 = com.vuitton.android.data.dto.osa.mapper.AppointmentsMapperKt.e(r6)     // Catch: java.lang.Throwable -> L6b
            r0.d = r4     // Catch: java.lang.Throwable -> L6b
            java.lang.Object r8 = r5.confirmAppointmentGuest(r6, r0)     // Catch: java.lang.Throwable -> L6b
            if (r8 != r1) goto L4b
            goto L5e
        L4b:
            com.vuitton.android.data.dto.osa.twist.AppointmentItemDto r8 = (com.vuitton.android.data.dto.osa.twist.AppointmentItemDto) r8     // Catch: java.lang.Throwable -> L6b
            com.vuitton.foundation.model.domain.model.osa.OsaItem r5 = com.vuitton.android.data.dto.osa.mapper.AppointmentsMapperKt.b(r8)     // Catch: java.lang.Throwable -> L6b
            goto L65
        L52:
            com.vuitton.android.data.dto.distantrepairs.ConfirmAppointmentDtoRequest r6 = com.vuitton.android.data.dto.osa.mapper.AppointmentsMapperKt.e(r6)     // Catch: java.lang.Throwable -> L6b
            r0.d = r3     // Catch: java.lang.Throwable -> L6b
            java.lang.Object r8 = r5.confirmAppointment(r6, r0)     // Catch: java.lang.Throwable -> L6b
            if (r8 != r1) goto L5f
        L5e:
            return r1
        L5f:
            com.vuitton.android.data.dto.osa.twist.AppointmentItemDto r8 = (com.vuitton.android.data.dto.osa.twist.AppointmentItemDto) r8     // Catch: java.lang.Throwable -> L6b
            com.vuitton.foundation.model.domain.model.osa.OsaItem r5 = com.vuitton.android.data.dto.osa.mapper.AppointmentsMapperKt.b(r8)     // Catch: java.lang.Throwable -> L6b
        L65:
            kotlin.Result r6 = new kotlin.Result     // Catch: java.lang.Throwable -> L6b
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L6b
            goto L73
        L6b:
            r5 = move-exception
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
        L73:
            java.lang.Throwable r5 = kotlin.Result.a(r6)
            if (r5 != 0) goto L7a
            goto L89
        L7a:
            boolean r6 = r5 instanceof java.util.concurrent.CancellationException
            if (r6 != 0) goto L8e
            kotlin.Result$Failure r6 = new kotlin.Result$Failure
            r6.<init>(r5)
            kotlin.Result r5 = new kotlin.Result
            r5.<init>(r6)
            r6 = r5
        L89:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r5 = r6.f71708b
            return r5
        L8e:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.AppointmentRepositoryImpl.e(com.vuitton.foundation.model.domain.model.distantrepairs.Appointment, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AppointmentRepository
    public final Object f(UpdateAppointmentRequest updateAppointmentRequest, ContinuationImpl continuationImpl) {
        AppointmentRepositoryImpl$modifyAppointment$1 appointmentRepositoryImpl$modifyAppointment$1;
        Object failure;
        if (continuationImpl instanceof AppointmentRepositoryImpl$modifyAppointment$1) {
            appointmentRepositoryImpl$modifyAppointment$1 = (AppointmentRepositoryImpl$modifyAppointment$1) continuationImpl;
            int i2 = appointmentRepositoryImpl$modifyAppointment$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                appointmentRepositoryImpl$modifyAppointment$1.d = i2 - Integer.MIN_VALUE;
            } else {
                appointmentRepositoryImpl$modifyAppointment$1 = new AppointmentRepositoryImpl$modifyAppointment$1(this, continuationImpl);
            }
        } else {
            appointmentRepositoryImpl$modifyAppointment$1 = new AppointmentRepositoryImpl$modifyAppointment$1(this, continuationImpl);
        }
        Object objUpdateAppointment = appointmentRepositoryImpl$modifyAppointment$1.f47298b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = appointmentRepositoryImpl$modifyAppointment$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objUpdateAppointment);
                Result.Companion companion = Result.INSTANCE;
                AppointmentApi appointmentApi = this.f47272a;
                List list = AppointmentsMapperKt.f46132a;
                updateAppointmentRequest.getClass();
                String str = updateAppointmentRequest.f66544a;
                String str2 = updateAppointmentRequest.f66545b;
                AppointmentTypeDto appointmentTypeDtoD = AppointmentsMapperKt.d(updateAppointmentRequest.f66546c);
                String str3 = updateAppointmentRequest.d;
                PhoneNumber phoneNumber = updateAppointmentRequest.f66547e;
                UpdateAppointmentDtoRequest updateAppointmentDtoRequest = new UpdateAppointmentDtoRequest(str, str2, appointmentTypeDtoD, str3, phoneNumber != null ? PhoneNumberDtoMapperKt.a(phoneNumber) : null);
                appointmentRepositoryImpl$modifyAppointment$1.d = 1;
                objUpdateAppointment = appointmentApi.updateAppointment(updateAppointmentDtoRequest, appointmentRepositoryImpl$modifyAppointment$1);
                if (objUpdateAppointment == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objUpdateAppointment);
            }
            failure = new Result(AppointmentsMapperKt.b((AppointmentItemDto) objUpdateAppointment));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
        Throwable thA = Result.a(failure);
        if (thA != null) {
            if (thA instanceof CancellationException) {
                throw thA;
            }
            failure = new Result(new Result.Failure(thA));
        }
        return NetworkExceptionMapperKt.a(((Result) failure).f71708b, null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0061, code lost:
    
        if (r11 == r1) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0088, code lost:
    
        if (r11 == r1) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object g(com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller r7, java.lang.String r8, java.lang.String r9, boolean r10, kotlin.coroutines.jvm.internal.ContinuationImpl r11) {
        /*
            Method dump skipped, instruction units count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.AppointmentRepositoryImpl.g(com.vuitton.foundation.model.domain.model.distantrepairs.AvailabilitiesCaller, java.lang.String, java.lang.String, boolean, kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
