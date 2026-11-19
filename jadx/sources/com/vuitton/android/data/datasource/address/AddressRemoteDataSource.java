package com.vuitton.android.data.datasource.address;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.account.address.model.mapper.AddressHttpErrorMapper;
import com.vuitton.android.data.api.bff.user.AddressesApi;
import com.vuitton.android.data.dto.address.AddressCreationDto;
import com.vuitton.android.data.dto.address.AddressesResponseDto;
import com.vuitton.android.data.exception.HttpResponseBody;
import com.vuitton.android.data.exception.HttpStatusCode;
import com.vuitton.android.data.exception.NetworkExceptionMapperKt;
import com.vuitton.foundation.exception.NetworkException;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.util.ResultExtKt;
import defpackage.md;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\nB!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;", "", "Lcom/vuitton/android/data/api/bff/user/AddressesApi;", "addressesApi", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;", "addressHttpErrorMapper", "<init>", "(Lcom/vuitton/android/data/api/bff/user/AddressesApi;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/account/address/model/mapper/AddressHttpErrorMapper;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddressRemoteDataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AddressesApi f43672a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Logger f43673b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AddressHttpErrorMapper f43674c;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public AddressRemoteDataSource(AddressesApi addressesApi, Logger logger, AddressHttpErrorMapper addressHttpErrorMapper) {
        addressesApi.getClass();
        logger.getClass();
        addressHttpErrorMapper.getClass();
        this.f43672a = addressesApi;
        this.f43673b = logger;
        this.f43674c = addressHttpErrorMapper;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(AddressCreationDto addressCreationDto, ContinuationImpl continuationImpl) {
        AddressRemoteDataSource$addAddress$1 addressRemoteDataSource$addAddress$1;
        Object failure;
        if (continuationImpl instanceof AddressRemoteDataSource$addAddress$1) {
            addressRemoteDataSource$addAddress$1 = (AddressRemoteDataSource$addAddress$1) continuationImpl;
            int i2 = addressRemoteDataSource$addAddress$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addressRemoteDataSource$addAddress$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addressRemoteDataSource$addAddress$1 = new AddressRemoteDataSource$addAddress$1(this, continuationImpl);
            }
        } else {
            addressRemoteDataSource$addAddress$1 = new AddressRemoteDataSource$addAddress$1(this, continuationImpl);
        }
        Object obj = addressRemoteDataSource$addAddress$1.f43675b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addressRemoteDataSource$addAddress$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                AddressesApi addressesApi = this.f43672a;
                addressRemoteDataSource$addAddress$1.d = 1;
                if (addressesApi.addAddress(addressCreationDto, addressRemoteDataSource$addAddress$1) == coroutineSingletons) {
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
        return NetworkExceptionMapperKt.a(ResultExtKt.a(((Result) failure).f71708b), new Function2<HttpStatusCode, HttpResponseBody, NetworkException.CustomException>() { // from class: com.vuitton.android.data.datasource.address.AddressRemoteDataSource$addAddress$3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj2, Object obj3) {
                int i4 = ((HttpStatusCode) obj2).f46966a;
                String str = ((HttpResponseBody) obj3).f46965a;
                AddressRemoteDataSource addressRemoteDataSource = this.f43677b;
                Logger logger = addressRemoteDataSource.f43673b;
                String.valueOf(i4);
                logger.getClass();
                addressRemoteDataSource.f43674c.getClass();
                return AddressHttpErrorMapper.a(str);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(String str, ContinuationImpl continuationImpl) {
        AddressRemoteDataSource$deleteAddress$1 addressRemoteDataSource$deleteAddress$1;
        Object failure;
        if (continuationImpl instanceof AddressRemoteDataSource$deleteAddress$1) {
            addressRemoteDataSource$deleteAddress$1 = (AddressRemoteDataSource$deleteAddress$1) continuationImpl;
            int i2 = addressRemoteDataSource$deleteAddress$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addressRemoteDataSource$deleteAddress$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addressRemoteDataSource$deleteAddress$1 = new AddressRemoteDataSource$deleteAddress$1(this, continuationImpl);
            }
        } else {
            addressRemoteDataSource$deleteAddress$1 = new AddressRemoteDataSource$deleteAddress$1(this, continuationImpl);
        }
        Object obj = addressRemoteDataSource$deleteAddress$1.f43678b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addressRemoteDataSource$deleteAddress$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                AddressesApi addressesApi = this.f43672a;
                addressRemoteDataSource$deleteAddress$1.d = 1;
                if (addressesApi.deleteAddress(str, addressRemoteDataSource$deleteAddress$1) == coroutineSingletons) {
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
        return NetworkExceptionMapperKt.a(ResultExtKt.a(((Result) failure).f71708b), new Function2<HttpStatusCode, HttpResponseBody, NetworkException.CustomException>() { // from class: com.vuitton.android.data.datasource.address.AddressRemoteDataSource$deleteAddress$3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj2, Object obj3) {
                int i4 = ((HttpStatusCode) obj2).f46966a;
                String str2 = ((HttpResponseBody) obj3).f46965a;
                AddressRemoteDataSource addressRemoteDataSource = this.f43680b;
                Logger logger = addressRemoteDataSource.f43673b;
                String.valueOf(i4);
                logger.getClass();
                addressRemoteDataSource.f43674c.getClass();
                return AddressHttpErrorMapper.a(str2);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(String str, AddressCreationDto addressCreationDto, ContinuationImpl continuationImpl) {
        AddressRemoteDataSource$editAddress$1 addressRemoteDataSource$editAddress$1;
        Object failure;
        if (continuationImpl instanceof AddressRemoteDataSource$editAddress$1) {
            addressRemoteDataSource$editAddress$1 = (AddressRemoteDataSource$editAddress$1) continuationImpl;
            int i2 = addressRemoteDataSource$editAddress$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addressRemoteDataSource$editAddress$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addressRemoteDataSource$editAddress$1 = new AddressRemoteDataSource$editAddress$1(this, continuationImpl);
            }
        } else {
            addressRemoteDataSource$editAddress$1 = new AddressRemoteDataSource$editAddress$1(this, continuationImpl);
        }
        Object obj = addressRemoteDataSource$editAddress$1.f43681b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addressRemoteDataSource$editAddress$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(obj);
                Result.Companion companion = Result.INSTANCE;
                AddressesApi addressesApi = this.f43672a;
                addressRemoteDataSource$editAddress$1.d = 1;
                if (addressesApi.updateAddress(addressCreationDto, str, addressRemoteDataSource$editAddress$1) == coroutineSingletons) {
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
        return NetworkExceptionMapperKt.a(ResultExtKt.a(((Result) failure).f71708b), new Function2<HttpStatusCode, HttpResponseBody, NetworkException.CustomException>() { // from class: com.vuitton.android.data.datasource.address.AddressRemoteDataSource$editAddress$3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj2, Object obj3) {
                int i4 = ((HttpStatusCode) obj2).f46966a;
                String str2 = ((HttpResponseBody) obj3).f46965a;
                AddressRemoteDataSource addressRemoteDataSource = this.f43683b;
                Logger logger = addressRemoteDataSource.f43673b;
                String.valueOf(i4);
                logger.getClass();
                addressRemoteDataSource.f43674c.getClass();
                return AddressHttpErrorMapper.a(str2);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(ContinuationImpl continuationImpl) {
        AddressRemoteDataSource$getAddressList$1 addressRemoteDataSource$getAddressList$1;
        Object failure;
        if (continuationImpl instanceof AddressRemoteDataSource$getAddressList$1) {
            addressRemoteDataSource$getAddressList$1 = (AddressRemoteDataSource$getAddressList$1) continuationImpl;
            int i2 = addressRemoteDataSource$getAddressList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addressRemoteDataSource$getAddressList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addressRemoteDataSource$getAddressList$1 = new AddressRemoteDataSource$getAddressList$1(this, continuationImpl);
            }
        } else {
            addressRemoteDataSource$getAddressList$1 = new AddressRemoteDataSource$getAddressList$1(this, continuationImpl);
        }
        Object addressList = addressRemoteDataSource$getAddressList$1.f43684b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addressRemoteDataSource$getAddressList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(addressList);
                Result.Companion companion = Result.INSTANCE;
                AddressesApi addressesApi = this.f43672a;
                addressRemoteDataSource$getAddressList$1.d = 1;
                addressList = addressesApi.getAddressList(addressRemoteDataSource$getAddressList$1);
                if (addressList == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(addressList);
            }
            failure = new Result(((AddressesResponseDto) addressList).f44471a);
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
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(String str, ContinuationImpl continuationImpl) {
        AddressRemoteDataSource$getCNCityList$1 addressRemoteDataSource$getCNCityList$1;
        Object failure;
        if (continuationImpl instanceof AddressRemoteDataSource$getCNCityList$1) {
            addressRemoteDataSource$getCNCityList$1 = (AddressRemoteDataSource$getCNCityList$1) continuationImpl;
            int i2 = addressRemoteDataSource$getCNCityList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addressRemoteDataSource$getCNCityList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addressRemoteDataSource$getCNCityList$1 = new AddressRemoteDataSource$getCNCityList$1(this, continuationImpl);
            }
        } else {
            addressRemoteDataSource$getCNCityList$1 = new AddressRemoteDataSource$getCNCityList$1(this, continuationImpl);
        }
        Object cNCityList = addressRemoteDataSource$getCNCityList$1.f43686b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addressRemoteDataSource$getCNCityList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(cNCityList);
                Result.Companion companion = Result.INSTANCE;
                AddressesApi addressesApi = this.f43672a;
                addressRemoteDataSource$getCNCityList$1.d = 1;
                cNCityList = addressesApi.getCNCityList(str, addressRemoteDataSource$getCNCityList$1);
                if (cNCityList == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(cNCityList);
            }
            failure = new Result((ArrayList) cNCityList);
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
        return ((Result) failure).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object f(String str, String str2, ContinuationImpl continuationImpl) {
        AddressRemoteDataSource$getCNCountyList$1 addressRemoteDataSource$getCNCountyList$1;
        Object failure;
        if (continuationImpl instanceof AddressRemoteDataSource$getCNCountyList$1) {
            addressRemoteDataSource$getCNCountyList$1 = (AddressRemoteDataSource$getCNCountyList$1) continuationImpl;
            int i2 = addressRemoteDataSource$getCNCountyList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addressRemoteDataSource$getCNCountyList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addressRemoteDataSource$getCNCountyList$1 = new AddressRemoteDataSource$getCNCountyList$1(this, continuationImpl);
            }
        } else {
            addressRemoteDataSource$getCNCountyList$1 = new AddressRemoteDataSource$getCNCountyList$1(this, continuationImpl);
        }
        Object cNCountyList = addressRemoteDataSource$getCNCountyList$1.f43688b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addressRemoteDataSource$getCNCountyList$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(cNCountyList);
                Result.Companion companion = Result.INSTANCE;
                AddressesApi addressesApi = this.f43672a;
                addressRemoteDataSource$getCNCountyList$1.d = 1;
                cNCountyList = addressesApi.getCNCountyList(str, str2, addressRemoteDataSource$getCNCountyList$1);
                if (cNCountyList == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(cNCountyList);
            }
            failure = new Result((ArrayList) cNCountyList);
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
        return ((Result) failure).f71708b;
    }
}
