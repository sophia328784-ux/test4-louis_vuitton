package com.vuitton.android.domain.usecase.storemode;

import com.vuitton.android.domain.repository.StoreModeRepository;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import com.vuitton.foundation.model.domain.model.common.Asset;
import com.vuitton.foundation.model.domain.model.common.ResultStrategy;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import com.vuitton.foundation.model.domain.model.storemode.StoreModeInfo;
import defpackage.md;
import defpackage.v40;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/domain/usecase/storemode/GetStoreModeInfoUseCase;", "", "Lcom/vuitton/android/domain/repository/StoreModeRepository;", "storeModeRepository", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "<init>", "(Lcom/vuitton/android/domain/repository/StoreModeRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetStoreModeInfoUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final StoreModeRepository f50395a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final GetProfileUseCase f50396b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f50397a;

        static {
            int[] iArr = new int[LoginState.values().length];
            try {
                iArr[LoginState.LOGGED_IN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoginState.LOGGED_OUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f50397a = iArr;
        }
    }

    @Inject
    public GetStoreModeInfoUseCase(StoreModeRepository storeModeRepository, GetProfileUseCase getProfileUseCase) {
        storeModeRepository.getClass();
        getProfileUseCase.getClass();
        this.f50395a = storeModeRepository;
        this.f50396b = getProfileUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0084  */
    /* JADX WARN: Code duplicated, block: B:38:0x0096  */
    /* JADX WARN: Code duplicated, block: B:41:0x009d  */
    /* JADX WARN: Code duplicated, block: B:43:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:46:0x00b8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(LoginState loginState, String str, ContinuationImpl continuationImpl) {
        GetStoreModeInfoUseCase$run$1 getStoreModeInfoUseCase$run$1;
        String str2;
        Profile profile;
        Object obj;
        Object objF;
        Profile profile2;
        if (continuationImpl instanceof GetStoreModeInfoUseCase$run$1) {
            getStoreModeInfoUseCase$run$1 = (GetStoreModeInfoUseCase$run$1) continuationImpl;
            int i2 = getStoreModeInfoUseCase$run$1.f50401f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getStoreModeInfoUseCase$run$1.f50401f = i2 - Integer.MIN_VALUE;
            } else {
                getStoreModeInfoUseCase$run$1 = new GetStoreModeInfoUseCase$run$1(this, continuationImpl);
            }
        } else {
            getStoreModeInfoUseCase$run$1 = new GetStoreModeInfoUseCase$run$1(this, continuationImpl);
        }
        Object objA = getStoreModeInfoUseCase$run$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getStoreModeInfoUseCase$run$1.f50401f;
        if (i3 == 0) {
            ResultKt.b(objA);
            int i4 = WhenMappings.f50397a[loginState.ordinal()];
            if (i4 == 1) {
                getStoreModeInfoUseCase$run$1.f50398b = str;
                getStoreModeInfoUseCase$run$1.f50401f = 1;
                objA = this.f50396b.a(getStoreModeInfoUseCase$run$1);
                if (objA != coroutineSingletons) {
                }
            } else {
                if (i4 != 2) {
                    v40.g();
                    return null;
                }
                str2 = str;
                profile = null;
                getStoreModeInfoUseCase$run$1.f50398b = null;
                getStoreModeInfoUseCase$run$1.f50399c = profile;
                getStoreModeInfoUseCase$run$1.f50401f = 3;
                objF = this.f50395a.f(str2, getStoreModeInfoUseCase$run$1);
                if (objF != coroutineSingletons) {
                    profile2 = profile;
                    Result.Companion companion = Result.INSTANCE;
                    if (objF instanceof Result.Failure) {
                        return objF;
                    }
                    StoreModeInfo storeModeInfo = (StoreModeInfo) objF;
                    if (profile2 != null) {
                    }
                    String str3 = storeModeInfo.f68262b;
                    Asset asset = storeModeInfo.f68263c;
                    List list = storeModeInfo.d;
                    List list2 = storeModeInfo.f68264e;
                    list.getClass();
                    list2.getClass();
                    return new StoreModeInfo(str, str3, asset, list, list2);
                }
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            str = getStoreModeInfoUseCase$run$1.f50398b;
            ResultKt.b(objA);
        } else {
            if (i3 == 2) {
                str2 = getStoreModeInfoUseCase$run$1.f50398b;
                ResultKt.b(objA);
                obj = ((Result) objA).f71708b;
                Result.Companion companion2 = Result.INSTANCE;
                if (obj instanceof Result.Failure) {
                    obj = null;
                }
                profile = (Profile) obj;
                getStoreModeInfoUseCase$run$1.f50398b = null;
                getStoreModeInfoUseCase$run$1.f50399c = profile;
                getStoreModeInfoUseCase$run$1.f50401f = 3;
                objF = this.f50395a.f(str2, getStoreModeInfoUseCase$run$1);
                if (objF != coroutineSingletons) {
                    profile2 = profile;
                }
                return coroutineSingletons;
            }
            if (i3 != 3) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            profile2 = getStoreModeInfoUseCase$run$1.f50399c;
            ResultKt.b(objA);
            objF = ((Result) objA).f71708b;
        }
        Result.Companion companion3 = Result.INSTANCE;
        if (objF instanceof Result.Failure) {
            return objF;
        }
        StoreModeInfo storeModeInfo2 = (StoreModeInfo) objF;
        String str4 = profile2 != null ? profile2.s : null;
        String str5 = storeModeInfo2.f68262b;
        Asset asset2 = storeModeInfo2.f68263c;
        List list3 = storeModeInfo2.d;
        List list4 = storeModeInfo2.f68264e;
        list3.getClass();
        list4.getClass();
        return new StoreModeInfo(str4, str5, asset2, list3, list4);
        getStoreModeInfoUseCase$run$1.f50398b = str;
        getStoreModeInfoUseCase$run$1.f50401f = 2;
        Object objC = ((ResultStrategy) objA).c(getStoreModeInfoUseCase$run$1);
        if (objC != coroutineSingletons) {
            String str6 = str;
            obj = objC;
            str2 = str6;
            Result.Companion companion4 = Result.INSTANCE;
            if (obj instanceof Result.Failure) {
                obj = null;
            }
            profile = (Profile) obj;
            getStoreModeInfoUseCase$run$1.f50398b = null;
            getStoreModeInfoUseCase$run$1.f50399c = profile;
            getStoreModeInfoUseCase$run$1.f50401f = 3;
            objF = this.f50395a.f(str2, getStoreModeInfoUseCase$run$1);
            if (objF != coroutineSingletons) {
                profile2 = profile;
                Result.Companion companion5 = Result.INSTANCE;
                if (objF instanceof Result.Failure) {
                    return objF;
                }
                StoreModeInfo storeModeInfo3 = (StoreModeInfo) objF;
                if (profile2 != null) {
                }
                String str7 = storeModeInfo3.f68262b;
                Asset asset3 = storeModeInfo3.f68263c;
                List list5 = storeModeInfo3.d;
                List list6 = storeModeInfo3.f68264e;
                list5.getClass();
                list6.getClass();
                return new StoreModeInfo(str4, str7, asset3, list5, list6);
            }
        }
        return coroutineSingletons;
    }
}
