package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.user.Model3dApi;
import com.vuitton.android.data.dto.model3dasset.Model3dAssetDto;
import com.vuitton.android.data.dto.model3dasset.mapper.Model3dAssetMapperKt;
import com.vuitton.android.domain.repository.Model3dAssetRepository;
import com.vuitton.foundation.logger.Logger;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.DefaultConstructorMarker;
import retrofit2.Response;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0019\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/android/data/repository/Model3dAssetRepositoryImpl;", "Lcom/vuitton/android/domain/repository/Model3dAssetRepository;", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/data/api/bff/user/Model3dApi;", "model3dApi", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/data/api/bff/user/Model3dApi;)V", "Companion", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Model3dAssetRepositoryImpl implements Model3dAssetRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f47794a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Model3dApi f47795b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/repository/Model3dAssetRepositoryImpl$Companion;", "", "", "TAG", "Ljava/lang/String;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    @Inject
    public Model3dAssetRepositoryImpl(Logger logger, Model3dApi model3dApi) {
        logger.getClass();
        model3dApi.getClass();
        this.f47794a = logger;
        this.f47795b = model3dApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    @Override // com.vuitton.android.domain.repository.Model3dAssetRepository
    public final Object a(String str, ContinuationImpl continuationImpl) {
        Model3dAssetRepositoryImpl$get3dIdAsset$1 model3dAssetRepositoryImpl$get3dIdAsset$1;
        Object failure;
        Object obj;
        if (continuationImpl instanceof Model3dAssetRepositoryImpl$get3dIdAsset$1) {
            model3dAssetRepositoryImpl$get3dIdAsset$1 = (Model3dAssetRepositoryImpl$get3dIdAsset$1) continuationImpl;
            int i2 = model3dAssetRepositoryImpl$get3dIdAsset$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                model3dAssetRepositoryImpl$get3dIdAsset$1.d = i2 - Integer.MIN_VALUE;
            } else {
                model3dAssetRepositoryImpl$get3dIdAsset$1 = new Model3dAssetRepositoryImpl$get3dIdAsset$1(this, continuationImpl);
            }
        } else {
            model3dAssetRepositoryImpl$get3dIdAsset$1 = new Model3dAssetRepositoryImpl$get3dIdAsset$1(this, continuationImpl);
        }
        Object objM84get3dIdAssethd8RJmg = model3dAssetRepositoryImpl$get3dIdAsset$1.f47796b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = model3dAssetRepositoryImpl$get3dIdAsset$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(objM84get3dIdAssethd8RJmg);
                Result.Companion companion = Result.INSTANCE;
                Model3dApi model3dApi = this.f47795b;
                model3dAssetRepositoryImpl$get3dIdAsset$1.d = 1;
                objM84get3dIdAssethd8RJmg = model3dApi.m84get3dIdAssethd8RJmg(str, model3dAssetRepositoryImpl$get3dIdAsset$1);
                if (objM84get3dIdAssethd8RJmg == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(objM84get3dIdAssethd8RJmg);
            }
            Response response = (Response) objM84get3dIdAssethd8RJmg;
            if (!response.f79449a.r || (obj = response.f79450b) == null) {
                this.f47794a.c("Model3dAssetRepositoryImpl", "Failed to get 3dIdAsset", null);
                throw new Exception("Failed to get 3dIdAsset");
            }
            Iterable iterable = (Iterable) obj;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(Model3dAssetMapperKt.a((Model3dAssetDto) it.next()));
            }
            failure = new Result(arrayList);
            Throwable thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
