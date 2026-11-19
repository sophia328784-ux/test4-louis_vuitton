package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.datasource.careservice.CareServicesBffRemoteDataSource;
import com.vuitton.android.data.dto.careservices.bff.CareServiceAddressDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceAppointmentDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceBaseMapperKt;
import com.vuitton.android.data.dto.careservices.bff.CareServiceContactMethodDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceCreationDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceDetailDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceDetailMapperKt;
import com.vuitton.android.data.dto.careservices.bff.CareServiceHotContentDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceProductDto;
import com.vuitton.android.data.dto.careservices.bff.CareServiceShortDto;
import com.vuitton.android.data.dto.careservices.mapper.CareServiceCreationMapperKt$WhenMappings;
import com.vuitton.android.data.dto.common.AssetImageDto;
import com.vuitton.android.data.dto.common.mapper.AssetMapperKt;
import com.vuitton.android.data.dto.pdp.PriceDto;
import com.vuitton.android.data.dto.pdp.mapper.PriceMapperKt;
import com.vuitton.android.data.dto.profile.PhoneNumberDto;
import com.vuitton.android.data.dto.profile.PhoneNumberDtoMapperKt;
import com.vuitton.android.data.exception.MappingException;
import com.vuitton.android.domain.repository.CareServicesBffRepository;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAction;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAddress;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceAppointment;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCategory;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceCreationParam;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceDetail;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceHotContent;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceProduct;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceShort;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceType;
import com.vuitton.foundation.model.domain.model.product.universal.Price;
import com.vuitton.foundation.util.StringKtExtKt;
import defpackage.md;
import defpackage.v40;
import java.util.ArrayList;
import java.util.Iterator;
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
import kotlinx.datetime.Instant;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/CareServicesBffRepositoryImpl;", "Lcom/vuitton/android/domain/repository/CareServicesBffRepository;", "Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;", "careServicesBffRemoteDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/careservice/CareServicesBffRemoteDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CareServicesBffRepositoryImpl implements CareServicesBffRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CareServicesBffRemoteDataSource f47432a;

    @Inject
    public CareServicesBffRepositoryImpl(CareServicesBffRemoteDataSource careServicesBffRemoteDataSource) {
        careServicesBffRemoteDataSource.getClass();
        this.f47432a = careServicesBffRemoteDataSource;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CareServicesBffRepository
    public final Object a(String str, CareServiceAddress careServiceAddress, ContinuationImpl continuationImpl) {
        CareServicesBffRepositoryImpl$acceptCareService$1 careServicesBffRepositoryImpl$acceptCareService$1;
        if (continuationImpl instanceof CareServicesBffRepositoryImpl$acceptCareService$1) {
            careServicesBffRepositoryImpl$acceptCareService$1 = (CareServicesBffRepositoryImpl$acceptCareService$1) continuationImpl;
            int i2 = careServicesBffRepositoryImpl$acceptCareService$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRepositoryImpl$acceptCareService$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRepositoryImpl$acceptCareService$1 = new CareServicesBffRepositoryImpl$acceptCareService$1(this, continuationImpl);
            }
        } else {
            careServicesBffRepositoryImpl$acceptCareService$1 = new CareServicesBffRepositoryImpl$acceptCareService$1(this, continuationImpl);
        }
        Object obj = careServicesBffRepositoryImpl$acceptCareService$1.f47433b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRepositoryImpl$acceptCareService$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        CareServiceAddressDto careServiceAddressDtoA = careServiceAddress != null ? CareServiceDetailMapperKt.a(careServiceAddress) : null;
        careServicesBffRepositoryImpl$acceptCareService$1.d = 1;
        Object objF = this.f47432a.f(str, careServiceAddressDtoA, careServicesBffRepositoryImpl$acceptCareService$1);
        return objF == coroutineSingletons ? coroutineSingletons : objF;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vuitton.android.domain.repository.CareServicesBffRepository
    public final Object b(ContinuationImpl continuationImpl) {
        CareServicesBffRepositoryImpl$getCareServiceList$1 careServicesBffRepositoryImpl$getCareServiceList$1;
        Object objG;
        Iterator it;
        Object failure;
        CareServiceProduct careServiceProduct;
        CareServiceProduct careServiceProduct2;
        CareServiceHotContent careServiceHotContent;
        if (continuationImpl instanceof CareServicesBffRepositoryImpl$getCareServiceList$1) {
            careServicesBffRepositoryImpl$getCareServiceList$1 = (CareServicesBffRepositoryImpl$getCareServiceList$1) continuationImpl;
            int i2 = careServicesBffRepositoryImpl$getCareServiceList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRepositoryImpl$getCareServiceList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRepositoryImpl$getCareServiceList$1 = new CareServicesBffRepositoryImpl$getCareServiceList$1(this, continuationImpl);
            }
        } else {
            careServicesBffRepositoryImpl$getCareServiceList$1 = new CareServicesBffRepositoryImpl$getCareServiceList$1(this, continuationImpl);
        }
        Object obj = careServicesBffRepositoryImpl$getCareServiceList$1.f47443b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRepositoryImpl$getCareServiceList$1.d;
        CareServiceProduct careServiceProduct3 = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            careServicesBffRepositoryImpl$getCareServiceList$1.d = 1;
            objG = this.f47432a.g(careServicesBffRepositoryImpl$getCareServiceList$1);
            if (objG == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objG = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (objG instanceof Result.Failure) {
            return objG;
        }
        ArrayList arrayList = new ArrayList();
        for (Iterator it2 = ((List) objG).iterator(); it2.hasNext(); it2 = it) {
            CareServiceShortDto careServiceShortDto = (CareServiceShortDto) it2.next();
            careServiceShortDto.getClass();
            try {
                Result.Companion companion2 = Result.INSTANCE;
                String str = careServiceShortDto.f44947a;
                String str2 = careServiceShortDto.f44954j;
                CareServiceProductDto careServiceProductDto = careServiceShortDto.f44952h;
                String str3 = careServiceShortDto.f44948b;
                if (str3 == null) {
                    str3 = "null from BFF";
                }
                String str4 = careServiceShortDto.f44949c;
                String str5 = careServiceShortDto.d;
                str5.getClass();
                CareServiceType careServiceType = (!Intrinsics.c(str5, "inStore") && Intrinsics.c(str5, "distant")) ? CareServiceType.Distant : CareServiceType.InStore;
                String str6 = careServiceShortDto.f44950e;
                str6.getClass();
                CareServiceCategory careServiceCategory = Intrinsics.c(str6, "onGoing") ? CareServiceCategory.OnGoing : Intrinsics.c(str6, "history") ? CareServiceCategory.History : CareServiceCategory.History;
                String str7 = careServiceShortDto.f44951f;
                CareServiceAction careServiceActionA = CareServiceBaseMapperKt.a(careServiceShortDto.g);
                if (careServiceProductDto != null) {
                    try {
                        try {
                            String str8 = careServiceProductDto.f44943a;
                            it = it2;
                            try {
                                String str9 = careServiceProductDto.f44944b;
                                AssetImageDto assetImageDto = careServiceProductDto.f44945c;
                                arrayList = arrayList;
                                careServiceProduct2 = null;
                                try {
                                    careServiceProduct = new CareServiceProduct(str8, str9, assetImageDto != null ? AssetMapperKt.b(assetImageDto) : null, null);
                                } catch (Throwable th) {
                                    th = th;
                                    Result.Companion companion3 = Result.INSTANCE;
                                    failure = new Result.Failure(th);
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                Result.Companion companion4 = Result.INSTANCE;
                                failure = new Result.Failure(th);
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            it = it2;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        arrayList = arrayList;
                        it = it2;
                    }
                } else {
                    arrayList = arrayList;
                    it = it2;
                    careServiceProduct2 = careServiceProduct3;
                    careServiceProduct = careServiceProduct2;
                }
                String str10 = careServiceShortDto.f44953i;
                Instant instantE = StringKtExtKt.e(str2);
                if (instantE == null) {
                    throw new MappingException("'creationDate' must be Iso8601: " + str2);
                }
                String str11 = careServiceShortDto.f44955k;
                Instant instantE2 = str11 != null ? StringKtExtKt.e(str11) : careServiceProduct2;
                String str12 = careServiceShortDto.l;
                Instant instantE3 = str12 != null ? StringKtExtKt.e(str12) : careServiceProduct2;
                String str13 = careServiceShortDto.m;
                Instant instantE4 = str13 != null ? StringKtExtKt.e(str13) : careServiceProduct2;
                CareServiceHotContentDto careServiceHotContentDto = careServiceShortDto.n;
                if (careServiceHotContentDto != null) {
                    String str14 = careServiceShortDto.f44947a;
                    AssetImageDto assetImageDto2 = careServiceProductDto != null ? careServiceProductDto.f44945c : careServiceProduct2;
                    str14.getClass();
                    careServiceHotContent = new CareServiceHotContent(str14, careServiceHotContentDto.f44938a, careServiceHotContentDto.f44939b, careServiceHotContentDto.f44940c, careServiceHotContentDto.d, CareServiceBaseMapperKt.a(careServiceHotContentDto.f44941e), assetImageDto2 != 0 ? AssetMapperKt.b(assetImageDto2) : null, null);
                } else {
                    careServiceHotContent = null;
                }
                failure = new Result(new CareServiceShort(str, str3, str4, careServiceType, careServiceCategory, str7, careServiceActionA, careServiceProduct, str10, instantE, instantE2, instantE3, instantE4, careServiceHotContent, null));
                Throwable thA = Result.a(failure);
                if (thA != null) {
                    if (thA instanceof CancellationException) {
                        throw thA;
                    }
                    failure = new Result(new Result.Failure(thA));
                }
                Object obj2 = ((Result) failure).f71708b;
                if (obj2 instanceof Result.Failure) {
                    obj2 = null;
                }
                CareServiceShort careServiceShort = (CareServiceShort) obj2;
                ArrayList arrayList2 = arrayList;
                if (careServiceShort != null) {
                    arrayList2.add(careServiceShort);
                }
                arrayList = arrayList2;
                careServiceProduct3 = null;
            } catch (Throwable th5) {
                th = th5;
                arrayList = arrayList;
                it = it2;
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CareServicesBffRepository
    public final Object c(CareServiceCreationParam careServiceCreationParam, ContinuationImpl continuationImpl) {
        CareServicesBffRepositoryImpl$createCareService$1 careServicesBffRepositoryImpl$createCareService$1;
        CareServiceContactMethodDto careServiceContactMethodDto;
        if (continuationImpl instanceof CareServicesBffRepositoryImpl$createCareService$1) {
            careServicesBffRepositoryImpl$createCareService$1 = (CareServicesBffRepositoryImpl$createCareService$1) continuationImpl;
            int i2 = careServicesBffRepositoryImpl$createCareService$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRepositoryImpl$createCareService$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRepositoryImpl$createCareService$1 = new CareServicesBffRepositoryImpl$createCareService$1(this, continuationImpl);
            }
        } else {
            careServicesBffRepositoryImpl$createCareService$1 = new CareServicesBffRepositoryImpl$createCareService$1(this, continuationImpl);
        }
        Object obj = careServicesBffRepositoryImpl$createCareService$1.f47439b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRepositoryImpl$createCareService$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        careServiceCreationParam.getClass();
        CareServiceAppointment careServiceAppointment = careServiceCreationParam.f66837a;
        CareServiceAppointmentDto careServiceAppointmentDto = careServiceAppointment != null ? new CareServiceAppointmentDto(careServiceAppointment.f66834a, careServiceAppointment.f66835b, careServiceAppointment.f66836c) : null;
        PhoneNumberDto phoneNumberDtoA = PhoneNumberDtoMapperKt.a(careServiceCreationParam.f66838b);
        String str = careServiceCreationParam.f66839c;
        String str2 = careServiceCreationParam.d;
        int i4 = CareServiceCreationMapperKt$WhenMappings.f44957a[careServiceCreationParam.f66840e.ordinal()];
        if (i4 == 1) {
            careServiceContactMethodDto = CareServiceContactMethodDto.EMAIL;
        } else if (i4 == 2) {
            careServiceContactMethodDto = CareServiceContactMethodDto.PHONE_CALL;
        } else {
            if (i4 != 3) {
                v40.g();
                return null;
            }
            careServiceContactMethodDto = CareServiceContactMethodDto.VIDEO_CALL;
        }
        CareServiceCreationDto careServiceCreationDto = new CareServiceCreationDto(careServiceAppointmentDto, phoneNumberDtoA, str, str2, careServiceContactMethodDto, careServiceCreationParam.f66841f, careServiceCreationParam.g);
        careServicesBffRepositoryImpl$createCareService$1.d = 1;
        Object objH = this.f47432a.h(careServiceCreationDto, careServicesBffRepositoryImpl$createCareService$1);
        return objH == coroutineSingletons ? coroutineSingletons : objH;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CareServicesBffRepository
    public final Object d(String str, String str2, ContinuationImpl continuationImpl) {
        CareServicesBffRepositoryImpl$cancelCareService$1 careServicesBffRepositoryImpl$cancelCareService$1;
        if (continuationImpl instanceof CareServicesBffRepositoryImpl$cancelCareService$1) {
            careServicesBffRepositoryImpl$cancelCareService$1 = (CareServicesBffRepositoryImpl$cancelCareService$1) continuationImpl;
            int i2 = careServicesBffRepositoryImpl$cancelCareService$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRepositoryImpl$cancelCareService$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRepositoryImpl$cancelCareService$1 = new CareServicesBffRepositoryImpl$cancelCareService$1(this, continuationImpl);
            }
        } else {
            careServicesBffRepositoryImpl$cancelCareService$1 = new CareServicesBffRepositoryImpl$cancelCareService$1(this, continuationImpl);
        }
        Object obj = careServicesBffRepositoryImpl$cancelCareService$1.f47435b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRepositoryImpl$cancelCareService$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            careServicesBffRepositoryImpl$cancelCareService$1.d = 1;
            Object objE = this.f47432a.e(str, str2, careServicesBffRepositoryImpl$cancelCareService$1);
            return objE == coroutineSingletons ? coroutineSingletons : objE;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CareServicesBffRepository
    public final Object e(String str, CareServiceAddress careServiceAddress, CareServiceAddress careServiceAddress2, ContinuationImpl continuationImpl) {
        CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1 careServicesBffRepositoryImpl$confirmCareServiceAddresses$1;
        if (continuationImpl instanceof CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1) {
            careServicesBffRepositoryImpl$confirmCareServiceAddresses$1 = (CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1) continuationImpl;
            int i2 = careServicesBffRepositoryImpl$confirmCareServiceAddresses$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRepositoryImpl$confirmCareServiceAddresses$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRepositoryImpl$confirmCareServiceAddresses$1 = new CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1(this, continuationImpl);
            }
        } else {
            careServicesBffRepositoryImpl$confirmCareServiceAddresses$1 = new CareServicesBffRepositoryImpl$confirmCareServiceAddresses$1(this, continuationImpl);
        }
        Object obj = careServicesBffRepositoryImpl$confirmCareServiceAddresses$1.f47437b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRepositoryImpl$confirmCareServiceAddresses$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        CareServiceAddressDto careServiceAddressDtoA = CareServiceDetailMapperKt.a(careServiceAddress);
        CareServiceAddressDto careServiceAddressDtoA2 = CareServiceDetailMapperKt.a(careServiceAddress2);
        careServicesBffRepositoryImpl$confirmCareServiceAddresses$1.d = 1;
        Object objD = this.f47432a.d(str, careServiceAddressDtoA, careServiceAddressDtoA2, careServicesBffRepositoryImpl$confirmCareServiceAddresses$1);
        return objD == coroutineSingletons ? coroutineSingletons : objD;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CareServicesBffRepository
    public final Object f(String str, CareServiceAppointment careServiceAppointment, ContinuationImpl continuationImpl) {
        CareServicesBffRepositoryImpl$updateCareServiceAppointment$1 careServicesBffRepositoryImpl$updateCareServiceAppointment$1;
        if (continuationImpl instanceof CareServicesBffRepositoryImpl$updateCareServiceAppointment$1) {
            careServicesBffRepositoryImpl$updateCareServiceAppointment$1 = (CareServicesBffRepositoryImpl$updateCareServiceAppointment$1) continuationImpl;
            int i2 = careServicesBffRepositoryImpl$updateCareServiceAppointment$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRepositoryImpl$updateCareServiceAppointment$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRepositoryImpl$updateCareServiceAppointment$1 = new CareServicesBffRepositoryImpl$updateCareServiceAppointment$1(this, continuationImpl);
            }
        } else {
            careServicesBffRepositoryImpl$updateCareServiceAppointment$1 = new CareServicesBffRepositoryImpl$updateCareServiceAppointment$1(this, continuationImpl);
        }
        Object obj = careServicesBffRepositoryImpl$updateCareServiceAppointment$1.f47447b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRepositoryImpl$updateCareServiceAppointment$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        careServiceAppointment.getClass();
        CareServiceAppointmentDto careServiceAppointmentDto = new CareServiceAppointmentDto(careServiceAppointment.f66834a, careServiceAppointment.f66835b, careServiceAppointment.f66836c);
        careServicesBffRepositoryImpl$updateCareServiceAppointment$1.d = 1;
        Object objC = this.f47432a.c(str, careServiceAppointmentDto, careServicesBffRepositoryImpl$updateCareServiceAppointment$1);
        return objC == coroutineSingletons ? coroutineSingletons : objC;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.CareServicesBffRepository
    public final Object g(String str, CareServiceAddress careServiceAddress, ContinuationImpl continuationImpl) {
        CareServicesBffRepositoryImpl$updateCareServiceAddress$1 careServicesBffRepositoryImpl$updateCareServiceAddress$1;
        if (continuationImpl instanceof CareServicesBffRepositoryImpl$updateCareServiceAddress$1) {
            careServicesBffRepositoryImpl$updateCareServiceAddress$1 = (CareServicesBffRepositoryImpl$updateCareServiceAddress$1) continuationImpl;
            int i2 = careServicesBffRepositoryImpl$updateCareServiceAddress$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRepositoryImpl$updateCareServiceAddress$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRepositoryImpl$updateCareServiceAddress$1 = new CareServicesBffRepositoryImpl$updateCareServiceAddress$1(this, continuationImpl);
            }
        } else {
            careServicesBffRepositoryImpl$updateCareServiceAddress$1 = new CareServicesBffRepositoryImpl$updateCareServiceAddress$1(this, continuationImpl);
        }
        Object obj = careServicesBffRepositoryImpl$updateCareServiceAddress$1.f47445b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRepositoryImpl$updateCareServiceAddress$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        CareServiceAddressDto careServiceAddressDtoA = careServiceAddress != null ? CareServiceDetailMapperKt.a(careServiceAddress) : null;
        careServicesBffRepositoryImpl$updateCareServiceAddress$1.d = 1;
        Object objA = this.f47432a.a(str, careServiceAddressDtoA, careServicesBffRepositoryImpl$updateCareServiceAddress$1);
        return objA == coroutineSingletons ? coroutineSingletons : objA;
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.vuitton.android.domain.repository.CareServicesBffRepository
    public final Object h(String str, ContinuationImpl continuationImpl) {
        CareServicesBffRepositoryImpl$getCareServiceDetail$1 careServicesBffRepositoryImpl$getCareServiceDetail$1;
        Object objB;
        CareServiceProduct careServiceProduct;
        CareServiceDetail.Assessment assessment;
        CareServiceDetail.AppointmentInformation appointmentInformation;
        CareServiceAddress careServiceAddress;
        CareServiceDetail.StepStatus stepStatus;
        if (continuationImpl instanceof CareServicesBffRepositoryImpl$getCareServiceDetail$1) {
            careServicesBffRepositoryImpl$getCareServiceDetail$1 = (CareServicesBffRepositoryImpl$getCareServiceDetail$1) continuationImpl;
            int i2 = careServicesBffRepositoryImpl$getCareServiceDetail$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                careServicesBffRepositoryImpl$getCareServiceDetail$1.d = i2 - Integer.MIN_VALUE;
            } else {
                careServicesBffRepositoryImpl$getCareServiceDetail$1 = new CareServicesBffRepositoryImpl$getCareServiceDetail$1(this, continuationImpl);
            }
        } else {
            careServicesBffRepositoryImpl$getCareServiceDetail$1 = new CareServicesBffRepositoryImpl$getCareServiceDetail$1(this, continuationImpl);
        }
        Object obj = careServicesBffRepositoryImpl$getCareServiceDetail$1.f47441b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = careServicesBffRepositoryImpl$getCareServiceDetail$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            careServicesBffRepositoryImpl$getCareServiceDetail$1.d = 1;
            objB = this.f47432a.b(str, careServicesBffRepositoryImpl$getCareServiceDetail$1);
            if (objB == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objB = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (objB instanceof Result.Failure) {
            return objB;
        }
        CareServiceDetailDto careServiceDetailDto = (CareServiceDetailDto) objB;
        careServiceDetailDto.getClass();
        String str2 = careServiceDetailDto.f44887a;
        String str3 = careServiceDetailDto.n;
        String str4 = careServiceDetailDto.f44889c;
        String str5 = careServiceDetailDto.d;
        String str6 = careServiceDetailDto.g;
        str6.getClass();
        CareServiceType careServiceType = (!Intrinsics.c(str6, "inStore") && Intrinsics.c(str6, "distant")) ? CareServiceType.Distant : CareServiceType.InStore;
        CareServiceType careServiceType2 = careServiceType;
        String str7 = careServiceDetailDto.f44892h;
        str7.getClass();
        CareServiceCategory careServiceCategory = Intrinsics.c(str7, "onGoing") ? CareServiceCategory.OnGoing : Intrinsics.c(str7, "history") ? CareServiceCategory.History : CareServiceCategory.History;
        List<CareServiceDetailDto.Step> list = careServiceDetailDto.f44893i;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list, 10));
        for (CareServiceDetailDto.Step step : list) {
            step.getClass();
            String str8 = step.f44931a;
            String str9 = step.f44932b;
            String str10 = step.f44933c;
            int iHashCode = str10.hashCode();
            if (iHashCode != -1263170109) {
                if (iHashCode != 3433490) {
                    if (iHashCode == 1126940025 && str10.equals("current")) {
                        stepStatus = CareServiceDetail.StepStatus.CURRENT;
                    } else {
                        stepStatus = CareServiceDetail.StepStatus.FUTURE;
                    }
                } else if (str10.equals("past")) {
                    stepStatus = CareServiceDetail.StepStatus.PAST;
                } else {
                    stepStatus = CareServiceDetail.StepStatus.FUTURE;
                }
            } else if (str10.equals("future")) {
                stepStatus = CareServiceDetail.StepStatus.FUTURE;
            } else {
                stepStatus = CareServiceDetail.StepStatus.FUTURE;
            }
            arrayList.add(new CareServiceDetail.Step(str8, str9, stepStatus));
        }
        CareServiceAction careServiceActionA = CareServiceBaseMapperKt.a(careServiceDetailDto.f44894j);
        CareServiceDetailDto.Store store = careServiceDetailDto.f44895k;
        CareServiceDetail.Store store2 = store != null ? new CareServiceDetail.Store(store.f44935a) : null;
        CareServiceProductDto careServiceProductDto = careServiceDetailDto.l;
        if (careServiceProductDto != null) {
            String str11 = careServiceProductDto.f44943a;
            String str12 = careServiceProductDto.f44944b;
            AssetImageDto assetImageDto = careServiceProductDto.f44945c;
            careServiceProduct = new CareServiceProduct(str11, str12, assetImageDto != null ? AssetMapperKt.b(assetImageDto) : null, null);
        } else {
            careServiceProduct = null;
        }
        String str13 = careServiceDetailDto.m;
        Instant instantE = StringKtExtKt.e(str3);
        if (instantE == null) {
            throw new MappingException("'creationDate' must be Iso8601: ".concat(str3));
        }
        String str14 = careServiceDetailDto.r;
        String str15 = careServiceDetailDto.s;
        CareServiceDetailDto.Assessment assessment2 = careServiceDetailDto.t;
        if (assessment2 != null) {
            String str16 = assessment2.f44904a;
            String str17 = assessment2.f44905b;
            Price priceA = PriceMapperKt.a(assessment2.d);
            CareServiceAddressDto careServiceAddressDto = assessment2.f44907e;
            if (careServiceAddressDto != null) {
                String str18 = careServiceAddressDto.f44859a;
                careServiceAddress = new CareServiceAddress(str18 != null ? str18 : null, careServiceAddressDto.f44860b, careServiceAddressDto.f44861c, careServiceAddressDto.d, careServiceAddressDto.f44862e, careServiceAddressDto.f44863f, careServiceAddressDto.g, careServiceAddressDto.f44864h, careServiceAddressDto.f44865i, careServiceAddressDto.f44866j, careServiceAddressDto.f44867k, careServiceAddressDto.l, careServiceAddressDto.m, null);
            } else {
                careServiceAddress = null;
            }
            List list2 = assessment2.g;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                CareServiceDetailDto.AssessmentItem assessmentItem = (CareServiceDetailDto.AssessmentItem) it.next();
                assessmentItem.getClass();
                Iterator it2 = it;
                String str19 = assessmentItem.f44912a;
                PriceDto priceDto = assessmentItem.f44913b;
                arrayList2.add(new CareServiceDetail.AssessmentItem(str19, priceDto != null ? PriceMapperKt.a(priceDto) : null));
                it = it2;
            }
            assessment = new CareServiceDetail.Assessment(str16, str17, priceA, careServiceAddress, arrayList2, assessment2.f44909h, assessment2.f44910i);
        } else {
            assessment = null;
        }
        String str20 = careServiceDetailDto.u;
        List<CareServiceDetailDto.CancellationReason> list3 = careServiceDetailDto.v;
        ArrayList arrayList3 = new ArrayList(CollectionsKt.t(list3, 10));
        for (CareServiceDetailDto.CancellationReason cancellationReason : list3) {
            cancellationReason.getClass();
            arrayList3.add(new CareServiceDetail.CancellationReason(cancellationReason.f44915a, cancellationReason.f44916b));
        }
        CareServiceDetailDto.AppointmentInformation appointmentInformation2 = careServiceDetailDto.x;
        if (appointmentInformation2 != null) {
            CareServiceDetailDto.ContactInformation contactInformation = appointmentInformation2.f44900a;
            CareServiceDetail.ContactInformation contactInformation2 = contactInformation != null ? new CareServiceDetail.ContactInformation(contactInformation.f44919b, contactInformation.f44920c) : null;
            CareServiceDetailDto.AppointmentDetail appointmentDetail = appointmentInformation2.f44901b;
            appointmentInformation = new CareServiceDetail.AppointmentInformation(contactInformation2, appointmentDetail != null ? new CareServiceDetail.AppointmentDetail(StringKtExtKt.e(appointmentDetail.f44897a), appointmentDetail.f44898b) : null);
        } else {
            str20 = str20;
            appointmentInformation = null;
        }
        CareServiceDetailDto.ShippingInformation shippingInformation = careServiceDetailDto.y;
        return new CareServiceDetail(str2, str4, str5, careServiceType2, careServiceCategory, arrayList, careServiceActionA, store2, careServiceProduct, str13, instantE, str14, str15, assessment, str20, arrayList3, appointmentInformation, shippingInformation != null ? new CareServiceDetail.ShippingInformation(shippingInformation.f44927a, shippingInformation.f44928b, shippingInformation.f44929c, shippingInformation.d) : null, null);
    }
}
