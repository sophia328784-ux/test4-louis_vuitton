package com.vuitton.android.domain.usecase.model3dasset;

import com.vuitton.android.domain.repository.Model3dAssetRepository;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/model3dasset/GetModel3dAssetUseCase;", "", "Lcom/vuitton/android/domain/repository/Model3dAssetRepository;", "model3dAssetRepository", "<init>", "(Lcom/vuitton/android/domain/repository/Model3dAssetRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetModel3dAssetUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Model3dAssetRepository f50148a;

    @Inject
    public GetModel3dAssetUseCase(Model3dAssetRepository model3dAssetRepository) {
        model3dAssetRepository.getClass();
        this.f50148a = model3dAssetRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        GetModel3dAssetUseCase$run$1 getModel3dAssetUseCase$run$1;
        if (continuationImpl instanceof GetModel3dAssetUseCase$run$1) {
            getModel3dAssetUseCase$run$1 = (GetModel3dAssetUseCase$run$1) continuationImpl;
            int i2 = getModel3dAssetUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getModel3dAssetUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                getModel3dAssetUseCase$run$1 = new GetModel3dAssetUseCase$run$1(this, continuationImpl);
            }
        } else {
            getModel3dAssetUseCase$run$1 = new GetModel3dAssetUseCase$run$1(this, continuationImpl);
        }
        Object obj = getModel3dAssetUseCase$run$1.f50149b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getModel3dAssetUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            getModel3dAssetUseCase$run$1.d = 1;
            Object objA = this.f50148a.a(str, getModel3dAssetUseCase$run$1);
            return objA == coroutineSingletons ? coroutineSingletons : objA;
        }
        if (i3 == 1) {
            ResultKt.b(obj);
            return ((Result) obj).f71708b;
        }
        md.k("call to 'resume' before 'invoke' with coroutine");
        return null;
    }
}
