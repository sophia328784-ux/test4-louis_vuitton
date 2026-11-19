package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.R;
import com.vuitton.android.core.extensions.SerializationExtKt;
import com.vuitton.android.core.utils.FormatHelper;
import com.vuitton.android.data.account.address.exception.AddressException;
import com.vuitton.android.data.database.entity.address.CountryEntity;
import com.vuitton.android.data.datasource.address.AddressLocalDataSource;
import com.vuitton.android.data.datasource.address.AddressRemoteDataSource;
import com.vuitton.android.data.datasource.profile.ProfileLocalDataSource;
import com.vuitton.android.data.dto.address.AddressCreationDto;
import com.vuitton.android.data.dto.address.mapper.AddressDtoMapperKt;
import com.vuitton.android.domain.repository.AddressRepository;
import com.vuitton.foundation.model.domain.model.account.address.AddressRequestBody;
import com.vuitton.foundation.model.domain.model.profile.Country;
import defpackage.md;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/data/repository/AddressRepositoryImpl;", "Lcom/vuitton/android/domain/repository/AddressRepository;", "Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;", "addressLocalDataSource", "Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;", "addressRemoteDataSource", "Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;", "profileLocalDataSource", "<init>", "(Lcom/vuitton/android/data/datasource/address/AddressLocalDataSource;Lcom/vuitton/android/data/datasource/address/AddressRemoteDataSource;Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddressRepositoryImpl implements AddressRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AddressLocalDataSource f47191a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AddressRemoteDataSource f47192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ProfileLocalDataSource f47193c;

    @Inject
    public AddressRepositoryImpl(AddressLocalDataSource addressLocalDataSource, AddressRemoteDataSource addressRemoteDataSource, ProfileLocalDataSource profileLocalDataSource) {
        addressLocalDataSource.getClass();
        addressRemoteDataSource.getClass();
        profileLocalDataSource.getClass();
        this.f47191a = addressLocalDataSource;
        this.f47192b = addressRemoteDataSource;
        this.f47193c = profileLocalDataSource;
    }

    @Override // com.vuitton.android.domain.repository.AddressRepository
    public final Object a() throws Throwable {
        Object failure;
        AddressLocalDataSource addressLocalDataSource = this.f47191a;
        addressLocalDataSource.getClass();
        try {
            Result.Companion companion = Result.INSTANCE;
            InputStream inputStreamOpenRawResource = addressLocalDataSource.f43670a.getResources().openRawResource(R.raw.countries);
            inputStreamOpenRawResource.getClass();
            String strA = SerializationExtKt.a(inputStreamOpenRawResource);
            Json json = addressLocalDataSource.f43671b;
            json.getClass();
            ArrayList arrayList = (ArrayList) json.b(new ArrayListSerializer(CountryEntity.INSTANCE.serializer()), strA);
            if (arrayList.size() > 1) {
                CollectionsKt.m0(new Comparator() { // from class: com.vuitton.android.data.datasource.address.AddressLocalDataSource$getCountryListFromLocale_d1pmJ48$lambda$0$$inlined$sortBy$1
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return Integer.valueOf(FormatHelper.a(((CountryEntity) obj).f43588c)).compareTo(Integer.valueOf(FormatHelper.a(((CountryEntity) obj2).f43588c)));
                    }
                }, arrayList);
            }
            failure = new Result(new ArrayList(arrayList));
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
        List<CountryEntity> list = (List) obj;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.t(list, 10));
        for (CountryEntity countryEntity : list) {
            countryEntity.getClass();
            arrayList2.add(new Country(countryEntity.f43586a, countryEntity.f43587b, countryEntity.f43588c));
        }
        return arrayList2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AddressRepository
    public final Object b(String str, ContinuationImpl continuationImpl) {
        AddressRepositoryImpl$getCNCityList$1 addressRepositoryImpl$getCNCityList$1;
        Object objE;
        if (continuationImpl instanceof AddressRepositoryImpl$getCNCityList$1) {
            addressRepositoryImpl$getCNCityList$1 = (AddressRepositoryImpl$getCNCityList$1) continuationImpl;
            int i2 = addressRepositoryImpl$getCNCityList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addressRepositoryImpl$getCNCityList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addressRepositoryImpl$getCNCityList$1 = new AddressRepositoryImpl$getCNCityList$1(this, continuationImpl);
            }
        } else {
            addressRepositoryImpl$getCNCityList$1 = new AddressRepositoryImpl$getCNCityList$1(this, continuationImpl);
        }
        Object obj = addressRepositoryImpl$getCNCityList$1.f47203b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addressRepositoryImpl$getCNCityList$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            addressRepositoryImpl$getCNCityList$1.d = 1;
            objE = this.f47192b.e(str, addressRepositoryImpl$getCNCityList$1);
            if (objE == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objE = ((Result) obj).f71708b;
        }
        return Result.a(objE) == null ? (List) objE : new Result.Failure(new AddressException.NoChinaAddressException());
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0087 A[PHI: r8
      0x0087: PHI (r8v11 java.lang.Object) = (r8v10 java.lang.Object), (r8v10 java.lang.Object), (r8v17 java.lang.Object) binds: [B:30:0x0077, B:32:0x0084, B:18:0x003e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:37:0x008e A[Catch: all -> 0x00ac, TRY_ENTER, TryCatch #1 {all -> 0x00ac, blocks: (B:14:0x0030, B:40:0x0099, B:44:0x00a1, B:46:0x00a5, B:48:0x00a9, B:37:0x008e), top: B:55:0x0024 }] */
    /* JADX WARN: Code duplicated, block: B:58:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0096, code lost:
    
        if (r8 == r1) goto L39;
     */
    @Override // com.vuitton.android.domain.repository.AddressRepository
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object c(kotlin.coroutines.jvm.internal.ContinuationImpl r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.vuitton.android.data.repository.AddressRepositoryImpl$getAddressList$1
            if (r0 == 0) goto L13
            r0 = r9
            com.vuitton.android.data.repository.AddressRepositoryImpl$getAddressList$1 r0 = (com.vuitton.android.data.repository.AddressRepositoryImpl$getAddressList$1) r0
            int r1 = r0.f47202e
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f47202e = r1
            goto L18
        L13:
            com.vuitton.android.data.repository.AddressRepositoryImpl$getAddressList$1 r0 = new com.vuitton.android.data.repository.AddressRepositoryImpl$getAddressList$1
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.f47201c
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r2 = r0.f47202e
            com.vuitton.android.data.datasource.profile.ProfileLocalDataSource r3 = r8.f47193c
            r4 = 3
            r5 = 2
            r6 = 1
            r7 = 0
            if (r2 == 0) goto L51
            if (r2 == r6) goto L49
            if (r2 == r5) goto L3e
            if (r2 != r4) goto L38
            java.lang.Object r8 = r0.f47200b
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> Lac
            kotlin.Result r9 = (kotlin.Result) r9     // Catch: java.lang.Throwable -> Lac
            java.lang.Object r8 = r9.f71708b     // Catch: java.lang.Throwable -> Lac
            goto L99
        L38:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r7
        L3e:
            java.lang.Object r8 = r0.f47200b
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            r9.getClass()
            goto L87
        L49:
            kotlin.ResultKt.b(r9)
            kotlin.Result r9 = (kotlin.Result) r9
            java.lang.Object r8 = r9.f71708b
            goto L5f
        L51:
            kotlin.ResultKt.b(r9)
            r0.f47202e = r6
            com.vuitton.android.data.datasource.address.AddressRemoteDataSource r8 = r8.f47192b
            java.lang.Object r8 = r8.d(r0)
            if (r8 != r1) goto L5f
            goto L98
        L5f:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            boolean r9 = r8 instanceof kotlin.Result.Failure
            if (r9 != 0) goto L75
            java.util.List r8 = (java.util.List) r8     // Catch: java.lang.Throwable -> L6c
            java.util.ArrayList r8 = com.vuitton.android.data.dto.address.mapper.AddressDtoMapperKt.c(r8)     // Catch: java.lang.Throwable -> L6c
            goto L75
        L6c:
            r8 = move-exception
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
            r8 = r9
        L75:
            boolean r9 = r8 instanceof kotlin.Result.Failure
            if (r9 != 0) goto L87
            r9 = r8
            java.util.List r9 = (java.util.List) r9
            r0.f47200b = r8
            r0.f47202e = r5
            java.lang.Object r9 = r3.d(r9, r0)
            if (r9 != r1) goto L87
            goto L98
        L87:
            java.lang.Throwable r9 = kotlin.Result.a(r8)
            if (r9 != 0) goto L8e
            goto Lb5
        L8e:
            r0.f47200b = r7     // Catch: java.lang.Throwable -> Lac
            r0.f47202e = r4     // Catch: java.lang.Throwable -> Lac
            java.lang.Object r8 = r3.b(r0)     // Catch: java.lang.Throwable -> Lac
            if (r8 != r1) goto L99
        L98:
            return r1
        L99:
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> Lac
            boolean r9 = r8 instanceof kotlin.Result.Failure     // Catch: java.lang.Throwable -> Lac
            if (r9 == 0) goto La0
            goto La1
        La0:
            r7 = r8
        La1:
            com.vuitton.foundation.model.domain.model.profile.Profile r7 = (com.vuitton.foundation.model.domain.model.profile.Profile) r7     // Catch: java.lang.Throwable -> Lac
            if (r7 == 0) goto La9
            java.util.List r8 = r7.f68170i     // Catch: java.lang.Throwable -> Lac
            if (r8 != 0) goto Lb5
        La9:
            kotlin.collections.EmptyList r8 = kotlin.collections.EmptyList.f71768b     // Catch: java.lang.Throwable -> Lac
            goto Lb5
        Lac:
            r8 = move-exception
            kotlin.Result$Companion r9 = kotlin.Result.INSTANCE
            kotlin.Result$Failure r9 = new kotlin.Result$Failure
            r9.<init>(r8)
            r8 = r9
        Lb5:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.AddressRepositoryImpl.c(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AddressRepository
    public final Object d(String str, String str2, ContinuationImpl continuationImpl) {
        AddressRepositoryImpl$getCNCountyList$1 addressRepositoryImpl$getCNCountyList$1;
        Object objF;
        if (continuationImpl instanceof AddressRepositoryImpl$getCNCountyList$1) {
            addressRepositoryImpl$getCNCountyList$1 = (AddressRepositoryImpl$getCNCountyList$1) continuationImpl;
            int i2 = addressRepositoryImpl$getCNCountyList$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addressRepositoryImpl$getCNCountyList$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addressRepositoryImpl$getCNCountyList$1 = new AddressRepositoryImpl$getCNCountyList$1(this, continuationImpl);
            }
        } else {
            addressRepositoryImpl$getCNCountyList$1 = new AddressRepositoryImpl$getCNCountyList$1(this, continuationImpl);
        }
        Object obj = addressRepositoryImpl$getCNCountyList$1.f47205b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addressRepositoryImpl$getCNCountyList$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            addressRepositoryImpl$getCNCountyList$1.d = 1;
            objF = this.f47192b.f(str, str2, addressRepositoryImpl$getCNCountyList$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objF = ((Result) obj).f71708b;
        }
        return Result.a(objF) == null ? (List) objF : new Result.Failure(new AddressException.NoChinaAddressException());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AddressRepository
    public final Object e(AddressRequestBody addressRequestBody, ContinuationImpl continuationImpl) {
        AddressRepositoryImpl$editAddress$1 addressRepositoryImpl$editAddress$1;
        if (continuationImpl instanceof AddressRepositoryImpl$editAddress$1) {
            addressRepositoryImpl$editAddress$1 = (AddressRepositoryImpl$editAddress$1) continuationImpl;
            int i2 = addressRepositoryImpl$editAddress$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addressRepositoryImpl$editAddress$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addressRepositoryImpl$editAddress$1 = new AddressRepositoryImpl$editAddress$1(this, continuationImpl);
            }
        } else {
            addressRepositoryImpl$editAddress$1 = new AddressRepositoryImpl$editAddress$1(this, continuationImpl);
        }
        Object obj = addressRepositoryImpl$editAddress$1.f47198b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addressRepositoryImpl$editAddress$1.d;
        if (i3 != 0) {
            if (i3 == 1) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        String str = addressRequestBody.f66251a;
        String str2 = str != null ? str : null;
        if (str2 == null) {
            str2 = "";
        }
        AddressCreationDto addressCreationDtoD = AddressDtoMapperKt.d(addressRequestBody);
        addressRepositoryImpl$editAddress$1.d = 1;
        Object objC = this.f47192b.c(str2, addressCreationDtoD, addressRepositoryImpl$editAddress$1);
        return objC == coroutineSingletons ? coroutineSingletons : objC;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AddressRepository
    public final Object f(AddressRequestBody addressRequestBody, ContinuationImpl continuationImpl) {
        AddressRepositoryImpl$addAddress$1 addressRepositoryImpl$addAddress$1;
        Object objA;
        if (continuationImpl instanceof AddressRepositoryImpl$addAddress$1) {
            addressRepositoryImpl$addAddress$1 = (AddressRepositoryImpl$addAddress$1) continuationImpl;
            int i2 = addressRepositoryImpl$addAddress$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addressRepositoryImpl$addAddress$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addressRepositoryImpl$addAddress$1 = new AddressRepositoryImpl$addAddress$1(this, continuationImpl);
            }
        } else {
            addressRepositoryImpl$addAddress$1 = new AddressRepositoryImpl$addAddress$1(this, continuationImpl);
        }
        Object obj = addressRepositoryImpl$addAddress$1.f47194b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addressRepositoryImpl$addAddress$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            AddressCreationDto addressCreationDtoD = AddressDtoMapperKt.d(addressRequestBody);
            addressRepositoryImpl$addAddress$1.d = 1;
            objA = this.f47192b.a(addressCreationDtoD, addressRepositoryImpl$addAddress$1);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (objA instanceof Result.Failure) {
            return objA;
        }
        try {
            return null;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            return new Result.Failure(th);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.AddressRepository
    public final Object g(String str, ContinuationImpl continuationImpl) {
        AddressRepositoryImpl$deleteAddress$1 addressRepositoryImpl$deleteAddress$1;
        if (continuationImpl instanceof AddressRepositoryImpl$deleteAddress$1) {
            addressRepositoryImpl$deleteAddress$1 = (AddressRepositoryImpl$deleteAddress$1) continuationImpl;
            int i2 = addressRepositoryImpl$deleteAddress$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                addressRepositoryImpl$deleteAddress$1.d = i2 - Integer.MIN_VALUE;
            } else {
                addressRepositoryImpl$deleteAddress$1 = new AddressRepositoryImpl$deleteAddress$1(this, continuationImpl);
            }
        } else {
            addressRepositoryImpl$deleteAddress$1 = new AddressRepositoryImpl$deleteAddress$1(this, continuationImpl);
        }
        Object obj = addressRepositoryImpl$deleteAddress$1.f47196b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = addressRepositoryImpl$deleteAddress$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            addressRepositoryImpl$deleteAddress$1.d = 1;
            Object objB = this.f47192b.b(str, addressRepositoryImpl$deleteAddress$1);
            return objB == coroutineSingletons ? coroutineSingletons : objB;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
