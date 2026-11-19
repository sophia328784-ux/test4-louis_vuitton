package com.vuitton.android.data.datasource.profile;

import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.core.Preferences;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.profile.Profile;
import defpackage.md;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.serialization.json.Json;

/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\rB/\b\u0007\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource;", "", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "dataStore", "Lkotlinx/serialization/json/Json;", "json", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutinesDispatchers", "Lcom/vuitton/foundation/logger/Logger;", "logger", "<init>", "(Landroidx/datastore/core/DataStore;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/foundation/logger/Logger;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProfileLocalDataSource {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Preferences.Key f44237e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DataStore f44238a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f44239b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineDispatchers f44240c;
    public final Logger d;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/data/datasource/profile/ProfileLocalDataSource$Companion;", "", "", "TAG", "Ljava/lang/String;", "Landroidx/datastore/preferences/core/Preferences$Key;", "PROFILE_DATASTORE_KEY", "Landroidx/datastore/preferences/core/Preferences$Key;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        f44237e = new Preferences.Key("data_store_profile_key");
    }

    @Inject
    public ProfileLocalDataSource(DataStore<Preferences> dataStore, Json json, CoroutineDispatchers coroutineDispatchers, Logger logger) {
        dataStore.getClass();
        json.getClass();
        coroutineDispatchers.getClass();
        logger.getClass();
        this.f44238a = dataStore;
        this.f44239b = json;
        this.f44240c = coroutineDispatchers;
        this.d = logger;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) throws Throwable {
        ProfileLocalDataSource$clearProfile$1 profileLocalDataSource$clearProfile$1;
        if (continuationImpl instanceof ProfileLocalDataSource$clearProfile$1) {
            profileLocalDataSource$clearProfile$1 = (ProfileLocalDataSource$clearProfile$1) continuationImpl;
            int i2 = profileLocalDataSource$clearProfile$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                profileLocalDataSource$clearProfile$1.d = i2 - Integer.MIN_VALUE;
            } else {
                profileLocalDataSource$clearProfile$1 = new ProfileLocalDataSource$clearProfile$1(this, continuationImpl);
            }
        } else {
            profileLocalDataSource$clearProfile$1 = new ProfileLocalDataSource$clearProfile$1(this, continuationImpl);
        }
        Object objF = profileLocalDataSource$clearProfile$1.f44241b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = profileLocalDataSource$clearProfile$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f44240c.getF43530b();
            ProfileLocalDataSource$clearProfile$2 profileLocalDataSource$clearProfile$2 = new ProfileLocalDataSource$clearProfile$2(this, null);
            profileLocalDataSource$clearProfile$1.d = 1;
            objF = BuildersKt.f(f43530b, profileLocalDataSource$clearProfile$2, profileLocalDataSource$clearProfile$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object b(ContinuationImpl continuationImpl) throws Throwable {
        ProfileLocalDataSource$getProfile$1 profileLocalDataSource$getProfile$1;
        if (continuationImpl instanceof ProfileLocalDataSource$getProfile$1) {
            profileLocalDataSource$getProfile$1 = (ProfileLocalDataSource$getProfile$1) continuationImpl;
            int i2 = profileLocalDataSource$getProfile$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                profileLocalDataSource$getProfile$1.d = i2 - Integer.MIN_VALUE;
            } else {
                profileLocalDataSource$getProfile$1 = new ProfileLocalDataSource$getProfile$1(this, continuationImpl);
            }
        } else {
            profileLocalDataSource$getProfile$1 = new ProfileLocalDataSource$getProfile$1(this, continuationImpl);
        }
        Object objF = profileLocalDataSource$getProfile$1.f44246b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = profileLocalDataSource$getProfile$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f44240c.getF43530b();
            ProfileLocalDataSource$getProfile$2 profileLocalDataSource$getProfile$2 = new ProfileLocalDataSource$getProfile$2(this, null);
            profileLocalDataSource$getProfile$1.d = 1;
            objF = BuildersKt.f(f43530b, profileLocalDataSource$getProfile$2, profileLocalDataSource$getProfile$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(Profile profile, ContinuationImpl continuationImpl) throws Throwable {
        ProfileLocalDataSource$saveProfile$1 profileLocalDataSource$saveProfile$1;
        if (continuationImpl instanceof ProfileLocalDataSource$saveProfile$1) {
            profileLocalDataSource$saveProfile$1 = (ProfileLocalDataSource$saveProfile$1) continuationImpl;
            int i2 = profileLocalDataSource$saveProfile$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                profileLocalDataSource$saveProfile$1.d = i2 - Integer.MIN_VALUE;
            } else {
                profileLocalDataSource$saveProfile$1 = new ProfileLocalDataSource$saveProfile$1(this, continuationImpl);
            }
        } else {
            profileLocalDataSource$saveProfile$1 = new ProfileLocalDataSource$saveProfile$1(this, continuationImpl);
        }
        Object objF = profileLocalDataSource$saveProfile$1.f44256b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = profileLocalDataSource$saveProfile$1.d;
        if (i3 == 0) {
            ResultKt.b(objF);
            DefaultIoScheduler f43530b = this.f44240c.getF43530b();
            ProfileLocalDataSource$saveProfile$2 profileLocalDataSource$saveProfile$2 = new ProfileLocalDataSource$saveProfile$2(this, profile, null);
            profileLocalDataSource$saveProfile$1.d = 1;
            objF = BuildersKt.f(f43530b, profileLocalDataSource$saveProfile$2, profileLocalDataSource$saveProfile$1);
            if (objF == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(objF);
        }
        return ((Result) objF).f71708b;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object d(List list, ContinuationImpl continuationImpl) throws Throwable {
        ProfileLocalDataSource$updateAddressList$1 profileLocalDataSource$updateAddressList$1;
        Object objB;
        if (continuationImpl instanceof ProfileLocalDataSource$updateAddressList$1) {
            profileLocalDataSource$updateAddressList$1 = (ProfileLocalDataSource$updateAddressList$1) continuationImpl;
            int i2 = profileLocalDataSource$updateAddressList$1.f44264e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                profileLocalDataSource$updateAddressList$1.f44264e = i2 - Integer.MIN_VALUE;
            } else {
                profileLocalDataSource$updateAddressList$1 = new ProfileLocalDataSource$updateAddressList$1(this, continuationImpl);
            }
        } else {
            profileLocalDataSource$updateAddressList$1 = new ProfileLocalDataSource$updateAddressList$1(this, continuationImpl);
        }
        Object obj = profileLocalDataSource$updateAddressList$1.f44263c;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = profileLocalDataSource$updateAddressList$1.f44264e;
        if (i3 == 0) {
            ResultKt.b(obj);
            profileLocalDataSource$updateAddressList$1.f44262b = list;
            profileLocalDataSource$updateAddressList$1.f44264e = 1;
            objB = b(profileLocalDataSource$updateAddressList$1);
            if (objB != obj2) {
            }
        }
        if (i3 != 1) {
            if (i3 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            List list2 = profileLocalDataSource$updateAddressList$1.f44262b;
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        list = profileLocalDataSource$updateAddressList$1.f44262b;
        ResultKt.b(obj);
        objB = ((Result) obj).f71708b;
        Throwable thA = Result.a(objB);
        if (thA != null) {
            return new Result.Failure(thA);
        }
        ResultKt.b(objB);
        Profile profileA = Profile.a((Profile) objB, list, null, 524031);
        profileLocalDataSource$updateAddressList$1.f44262b = null;
        profileLocalDataSource$updateAddressList$1.f44264e = 2;
        Object objC = c(profileA, profileLocalDataSource$updateAddressList$1);
        return objC == obj2 ? obj2 : objC;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object e(Boolean bool, ContinuationImpl continuationImpl) throws Throwable {
        ProfileLocalDataSource$updateKisaConsent$1 profileLocalDataSource$updateKisaConsent$1;
        Object objB;
        if (continuationImpl instanceof ProfileLocalDataSource$updateKisaConsent$1) {
            profileLocalDataSource$updateKisaConsent$1 = (ProfileLocalDataSource$updateKisaConsent$1) continuationImpl;
            int i2 = profileLocalDataSource$updateKisaConsent$1.f44267e;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                profileLocalDataSource$updateKisaConsent$1.f44267e = i2 - Integer.MIN_VALUE;
            } else {
                profileLocalDataSource$updateKisaConsent$1 = new ProfileLocalDataSource$updateKisaConsent$1(this, continuationImpl);
            }
        } else {
            profileLocalDataSource$updateKisaConsent$1 = new ProfileLocalDataSource$updateKisaConsent$1(this, continuationImpl);
        }
        Object obj = profileLocalDataSource$updateKisaConsent$1.f44266c;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = profileLocalDataSource$updateKisaConsent$1.f44267e;
        if (i3 == 0) {
            ResultKt.b(obj);
            profileLocalDataSource$updateKisaConsent$1.f44265b = bool;
            profileLocalDataSource$updateKisaConsent$1.f44267e = 1;
            objB = b(profileLocalDataSource$updateKisaConsent$1);
            if (objB != obj2) {
            }
        }
        if (i3 != 1) {
            if (i3 == 2) {
                ResultKt.b(obj);
                return ((Result) obj).f71708b;
            }
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        bool = profileLocalDataSource$updateKisaConsent$1.f44265b;
        ResultKt.b(obj);
        objB = ((Result) obj).f71708b;
        Throwable thA = Result.a(objB);
        if (thA != null) {
            return new Result.Failure(thA);
        }
        ResultKt.b(objB);
        Profile profileA = Profile.a((Profile) objB, null, bool, 507903);
        profileLocalDataSource$updateKisaConsent$1.f44265b = null;
        profileLocalDataSource$updateKisaConsent$1.f44267e = 2;
        Object objC = c(profileA, profileLocalDataSource$updateKisaConsent$1);
        return objC == obj2 ? obj2 : objC;
    }
}
