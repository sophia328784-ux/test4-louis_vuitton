package com.vuitton.android.data.datasource.careservice;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.CareServicesBffApi;
import com.vuitton.android.data.dto.careservices.bff.CareServiceAcceptBodyDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceAddressDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceAppointmentDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceCancellationBodyDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceConfirmAddressBodyDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceCreationDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceCreationResponseDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto;
import com.vuitton.android.data.exception.NetworkExceptionMapperKt;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceId;
import defpackage.md;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSourceImpl;", "Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;", "Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;", "careServicesApi", "<init>", "(Lcom/vuitton/android/data/api/bff/user/CareServicesBffApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CareServicesBffRemoteDataSourceImpl implements CareServicesBffRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CareServicesBffApi f43867a;

    @Inject
    public CareServicesBffRemoteDataSourceImpl(CareServicesBffApi careServicesBffApi) {
        careServicesBffApi.getClass();
        this.f43867a = careServicesBffApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSource
    public final Object a(String str, CareServiceAddressDto careServiceAddressDto, ContinuationImpl continuationImpl) {
        CareServicesBffRemoteDataSourceImpl$updateAddress$1 careServicesBffRemoteDataSourceImpl$updateAddress$1;
        Object failure;
        if (continuationImpl instanceof CareServicesBffRemoteDataSourceImpl$updateAddress$1) {
            careServicesBffRemoteDataSourceImpl$updateAddress$1 = (CareServicesBffRemoteDataSourceImpl$updateAddress$1) continuationImpl;
            int i2 = careServicesBffRemoteDataSourceImpl$updateAddress$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRemoteDataSourceImpl$updateAddress$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRemoteDataSourceImpl$updateAddress$1 = new CareServicesBffRemoteDataSourceImpl$updateAddress$1(this, continuationImpl);
            }
        } else {
            careServicesBffRemoteDataSourceImpl$updateAddress$1 = new CareServicesBffRemoteDataSourceImpl$updateAddress$1(this, continuationImpl);
        }
        Object obj = careServicesBffRemoteDataSourceImpl$updateAddress$1.f43880b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRemoteDataSourceImpl$updateAddress$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                CareServicesBffApi careServicesBffApi = this.f43867a;
                CareServiceAcceptBodyDto careServiceAcceptBodyDto = careServiceAddressDto != null ? new CareServiceAcceptBodyDto(careServiceAddressDto) : null;
                careServicesBffRemoteDataSourceImpl$updateAddress$1.d = 1;
                if (careServicesBffApi.updateRepairAddress(str, careServiceAcceptBodyDto, careServicesBffRemoteDataSourceImpl$updateAddress$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
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
    @Override // com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSource
    public final Object b(String str, ContinuationImpl continuationImpl) {
        CareServicesBffRemoteDataSourceImpl$get$1 careServicesBffRemoteDataSourceImpl$get$1;
        Object failure;
        if (continuationImpl instanceof CareServicesBffRemoteDataSourceImpl$get$1) {
            careServicesBffRemoteDataSourceImpl$get$1 = (CareServicesBffRemoteDataSourceImpl$get$1) continuationImpl;
            int i2 = careServicesBffRemoteDataSourceImpl$get$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRemoteDataSourceImpl$get$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRemoteDataSourceImpl$get$1 = new CareServicesBffRemoteDataSourceImpl$get$1(this, continuationImpl);
            }
        } else {
            careServicesBffRemoteDataSourceImpl$get$1 = new CareServicesBffRemoteDataSourceImpl$get$1(this, continuationImpl);
        }
        Object repairDetail = careServicesBffRemoteDataSourceImpl$get$1.f43876b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRemoteDataSourceImpl$get$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(repairDetail);
                Result.Companion companion = Result.INSTANCE;
                CareServicesBffApi careServicesBffApi = this.f43867a;
                careServicesBffRemoteDataSourceImpl$get$1.d = 1;
                repairDetail = careServicesBffApi.getRepairDetail(str, careServicesBffRemoteDataSourceImpl$get$1);
                if (repairDetail == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(repairDetail);
            }
            failure = new Result((CareServiceDetailDto) repairDetail);
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
    @Override // com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSource
    public final Object c(String str, CareServiceAppointmentDto careServiceAppointmentDto, ContinuationImpl continuationImpl) {
        CareServicesBffRemoteDataSourceImpl$updateAppointment$1 careServicesBffRemoteDataSourceImpl$updateAppointment$1;
        Object failure;
        if (continuationImpl instanceof CareServicesBffRemoteDataSourceImpl$updateAppointment$1) {
            careServicesBffRemoteDataSourceImpl$updateAppointment$1 = (CareServicesBffRemoteDataSourceImpl$updateAppointment$1) continuationImpl;
            int i2 = careServicesBffRemoteDataSourceImpl$updateAppointment$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRemoteDataSourceImpl$updateAppointment$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRemoteDataSourceImpl$updateAppointment$1 = new CareServicesBffRemoteDataSourceImpl$updateAppointment$1(this, continuationImpl);
            }
        } else {
            careServicesBffRemoteDataSourceImpl$updateAppointment$1 = new CareServicesBffRemoteDataSourceImpl$updateAppointment$1(this, continuationImpl);
        }
        Object obj = careServicesBffRemoteDataSourceImpl$updateAppointment$1.f43882b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRemoteDataSourceImpl$updateAppointment$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                CareServicesBffApi careServicesBffApi = this.f43867a;
                careServicesBffRemoteDataSourceImpl$updateAppointment$1.d = 1;
                if (careServicesBffApi.updateRepairAppointment(str, careServiceAppointmentDto, careServicesBffRemoteDataSourceImpl$updateAppointment$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
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
    @Override // com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSource
    public final Object d(String str, CareServiceAddressDto careServiceAddressDto, CareServiceAddressDto careServiceAddressDto2, ContinuationImpl continuationImpl) {
        CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1 careServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1;
        Object failure;
        if (continuationImpl instanceof CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1) {
            careServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1 = (CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1) continuationImpl;
            int i2 = careServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1 = new CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1(this, continuationImpl);
            }
        } else {
            careServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1 = new CareServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1(this, continuationImpl);
        }
        Object obj = careServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1.f43872b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                CareServicesBffApi careServicesBffApi = this.f43867a;
                CareServiceConfirmAddressBodyDto careServiceConfirmAddressBodyDto = new CareServiceConfirmAddressBodyDto(careServiceAddressDto, careServiceAddressDto2);
                careServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1.d = 1;
                if (careServicesBffApi.confirmRepairAddresses(str, careServiceConfirmAddressBodyDto, careServicesBffRemoteDataSourceImpl$confirmRepairAddresses$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
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
    @Override // com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSource
    public final Object e(String str, String str2, ContinuationImpl continuationImpl) {
        CareServicesBffRemoteDataSourceImpl$cancel$1 careServicesBffRemoteDataSourceImpl$cancel$1;
        Object failure;
        if (continuationImpl instanceof CareServicesBffRemoteDataSourceImpl$cancel$1) {
            careServicesBffRemoteDataSourceImpl$cancel$1 = (CareServicesBffRemoteDataSourceImpl$cancel$1) continuationImpl;
            int i2 = careServicesBffRemoteDataSourceImpl$cancel$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRemoteDataSourceImpl$cancel$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRemoteDataSourceImpl$cancel$1 = new CareServicesBffRemoteDataSourceImpl$cancel$1(this, continuationImpl);
            }
        } else {
            careServicesBffRemoteDataSourceImpl$cancel$1 = new CareServicesBffRemoteDataSourceImpl$cancel$1(this, continuationImpl);
        }
        Object obj = careServicesBffRemoteDataSourceImpl$cancel$1.f43870b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRemoteDataSourceImpl$cancel$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                CareServicesBffApi careServicesBffApi = this.f43867a;
                CareServiceCancellationBodyDto careServiceCancellationBodyDto = str2 != null ? new CareServiceCancellationBodyDto(str2) : null;
                careServicesBffRemoteDataSourceImpl$cancel$1.d = 1;
                if (careServicesBffApi.cancelRepair(str, careServiceCancellationBodyDto, careServicesBffRemoteDataSourceImpl$cancel$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
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
    @Override // com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSource
    public final Object f(String str, CareServiceAddressDto careServiceAddressDto, ContinuationImpl continuationImpl) {
        CareServicesBffRemoteDataSourceImpl$accept$1 careServicesBffRemoteDataSourceImpl$accept$1;
        Object failure;
        if (continuationImpl instanceof CareServicesBffRemoteDataSourceImpl$accept$1) {
            careServicesBffRemoteDataSourceImpl$accept$1 = (CareServicesBffRemoteDataSourceImpl$accept$1) continuationImpl;
            int i2 = careServicesBffRemoteDataSourceImpl$accept$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRemoteDataSourceImpl$accept$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRemoteDataSourceImpl$accept$1 = new CareServicesBffRemoteDataSourceImpl$accept$1(this, continuationImpl);
            }
        } else {
            careServicesBffRemoteDataSourceImpl$accept$1 = new CareServicesBffRemoteDataSourceImpl$accept$1(this, continuationImpl);
        }
        Object obj = careServicesBffRemoteDataSourceImpl$accept$1.f43868b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRemoteDataSourceImpl$accept$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                CareServicesBffApi careServicesBffApi = this.f43867a;
                CareServiceAcceptBodyDto careServiceAcceptBodyDto = careServiceAddressDto != null ? new CareServiceAcceptBodyDto(careServiceAddressDto) : null;
                careServicesBffRemoteDataSourceImpl$accept$1.d = 1;
                if (careServicesBffApi.acceptRepair(str, careServiceAcceptBodyDto, careServicesBffRemoteDataSourceImpl$accept$1) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
            }
            failure = new Result(Unit.f71739a);
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
    @Override // com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSource
    public final Object g(ContinuationImpl continuationImpl) {
        CareServicesBffRemoteDataSourceImpl$getAll$1 careServicesBffRemoteDataSourceImpl$getAll$1;
        Object failure;
        if (continuationImpl instanceof CareServicesBffRemoteDataSourceImpl$getAll$1) {
            careServicesBffRemoteDataSourceImpl$getAll$1 = (CareServicesBffRemoteDataSourceImpl$getAll$1) continuationImpl;
            int i2 = careServicesBffRemoteDataSourceImpl$getAll$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRemoteDataSourceImpl$getAll$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRemoteDataSourceImpl$getAll$1 = new CareServicesBffRemoteDataSourceImpl$getAll$1(this, continuationImpl);
            }
        } else {
            careServicesBffRemoteDataSourceImpl$getAll$1 = new CareServicesBffRemoteDataSourceImpl$getAll$1(this, continuationImpl);
        }
        Object repairs = careServicesBffRemoteDataSourceImpl$getAll$1.f43878b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRemoteDataSourceImpl$getAll$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(repairs);
                Result.Companion companion = Result.INSTANCE;
                CareServicesBffApi careServicesBffApi = this.f43867a;
                careServicesBffRemoteDataSourceImpl$getAll$1.d = 1;
                repairs = careServicesBffApi.getRepairs(careServicesBffRemoteDataSourceImpl$getAll$1);
                if (repairs == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(repairs);
            }
            failure = new Result((List) repairs);
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
    @Override // com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSource
    public final Object h(CareServiceCreationDto careServiceCreationDto, ContinuationImpl continuationImpl) {
        CareServicesBffRemoteDataSourceImpl$create$1 careServicesBffRemoteDataSourceImpl$create$1;
        Object failure;
        if (continuationImpl instanceof CareServicesBffRemoteDataSourceImpl$create$1) {
            careServicesBffRemoteDataSourceImpl$create$1 = (CareServicesBffRemoteDataSourceImpl$create$1) continuationImpl;
            int i2 = careServicesBffRemoteDataSourceImpl$create$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRemoteDataSourceImpl$create$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRemoteDataSourceImpl$create$1 = new CareServicesBffRemoteDataSourceImpl$create$1(this, continuationImpl);
            }
        } else {
            careServicesBffRemoteDataSourceImpl$create$1 = new CareServicesBffRemoteDataSourceImpl$create$1(this, continuationImpl);
        }
        Object objCreateRepair = careServicesBffRemoteDataSourceImpl$create$1.f43874b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRemoteDataSourceImpl$create$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objCreateRepair);
                Result.Companion companion = Result.INSTANCE;
                CareServicesBffApi careServicesBffApi = this.f43867a;
                careServicesBffRemoteDataSourceImpl$create$1.d = 1;
                objCreateRepair = careServicesBffApi.createRepair(careServiceCreationDto, careServicesBffRemoteDataSourceImpl$create$1);
                if (objCreateRepair == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objCreateRepair);
            }
            failure = new Result((CareServiceCreationResponseDto) objCreateRepair);
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
        Object careServiceId = ((Result) failure).f71708b;
        if (!(careServiceId instanceof Result.Failure)) {
            String str = ((CareServiceCreationResponseDto) careServiceId).f44885a;
            CareServiceId.Companion companion3 = CareServiceId.INSTANCE;
            str.getClass();
            careServiceId = new CareServiceId(str);
        }
        return NetworkExceptionMapperKt.a(careServiceId, null);
    }
}
