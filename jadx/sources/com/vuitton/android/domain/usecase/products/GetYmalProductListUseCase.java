package com.vuitton.android.domain.usecase.products;

import com.vuitton.android.domain.repository.AnalyticsWrapperRepository;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.ProductRepository;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/products/GetYmalProductListUseCase;", "", "Lcom/vuitton/android/domain/repository/ProductRepository;", "productRepository", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;", "analyticsWrapperRepository", "<init>", "(Lcom/vuitton/android/domain/repository/ProductRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/repository/AnalyticsWrapperRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetYmalProductListUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ProductRepository f50334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AuthTokenRepository f50335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AnalyticsWrapperRepository f50336c;

    @Inject
    public GetYmalProductListUseCase(ProductRepository productRepository, AuthTokenRepository authTokenRepository, AnalyticsWrapperRepository analyticsWrapperRepository) {
        productRepository.getClass();
        authTokenRepository.getClass();
        analyticsWrapperRepository.getClass();
        this.f50334a = productRepository;
        this.f50335b = authTokenRepository;
        this.f50336c = analyticsWrapperRepository;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x007c A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(String str, ContinuationImpl continuationImpl) {
        GetYmalProductListUseCase$run$1 getYmalProductListUseCase$run$1;
        String str2;
        String str3;
        Object objF;
        if (continuationImpl instanceof GetYmalProductListUseCase$run$1) {
            getYmalProductListUseCase$run$1 = (GetYmalProductListUseCase$run$1) continuationImpl;
            int i2 = getYmalProductListUseCase$run$1.f50340f;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                getYmalProductListUseCase$run$1.f50340f = i2 - Integer.MIN_VALUE;
            } else {
                getYmalProductListUseCase$run$1 = new GetYmalProductListUseCase$run$1(this, continuationImpl);
            }
        } else {
            getYmalProductListUseCase$run$1 = new GetYmalProductListUseCase$run$1(this, continuationImpl);
        }
        Object objF2 = getYmalProductListUseCase$run$1.d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = getYmalProductListUseCase$run$1.f50340f;
        if (i3 == 0) {
            ResultKt.b(objF2);
            getYmalProductListUseCase$run$1.f50337b = str;
            getYmalProductListUseCase$run$1.f50340f = 1;
            objF2 = this.f50336c.f(getYmalProductListUseCase$run$1);
            if (objF2 != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i3 == 1) {
            str = getYmalProductListUseCase$run$1.f50337b;
            ResultKt.b(objF2);
        } else {
            if (i3 != 2) {
                if (i3 == 3) {
                    ResultKt.b(objF2);
                    return ((Result) objF2).f71708b;
                }
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            str3 = getYmalProductListUseCase$run$1.f50338c;
            str2 = getYmalProductListUseCase$run$1.f50337b;
            ResultKt.b(objF2);
        }
        getYmalProductListUseCase$run$1.f50337b = null;
        getYmalProductListUseCase$run$1.f50338c = null;
        getYmalProductListUseCase$run$1.f50340f = 3;
        objF = this.f50334a.f(str2, str3, (AuthToken) objF2, getYmalProductListUseCase$run$1);
        if (objF != coroutineSingletons) {
            return coroutineSingletons;
        }
        return objF;
        String str4 = (String) objF2;
        getYmalProductListUseCase$run$1.f50337b = str;
        getYmalProductListUseCase$run$1.f50338c = str4;
        getYmalProductListUseCase$run$1.f50340f = 2;
        Object objD = this.f50335b.d(getYmalProductListUseCase$run$1);
        if (objD != coroutineSingletons) {
            str2 = str;
            str3 = str4;
            objF2 = objD;
            getYmalProductListUseCase$run$1.f50337b = null;
            getYmalProductListUseCase$run$1.f50338c = null;
            getYmalProductListUseCase$run$1.f50340f = 3;
            objF = this.f50334a.f(str2, str3, (AuthToken) objF2, getYmalProductListUseCase$run$1);
            if (objF != coroutineSingletons) {
                return objF;
            }
        }
        return coroutineSingletons;
    }
}
