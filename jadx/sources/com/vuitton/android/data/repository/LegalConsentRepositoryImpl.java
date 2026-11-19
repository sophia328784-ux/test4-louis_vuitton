package com.vuitton.android.data.repository;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.data.api.bff.publication.LegalConsentApi;
import com.vuitton.android.data.dto.legal.LegalConsentDto;
import com.vuitton.android.data.dto.legal.mapper.LegalConsentMapperKt;
import com.vuitton.android.domain.repository.LegalConsentRepository;
import com.vuitton.foundation.model.domain.model.legal.LegalConsentContext;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/repository/LegalConsentRepositoryImpl;", "Lcom/vuitton/android/domain/repository/LegalConsentRepository;", "Lcom/vuitton/android/data/api/bff/publication/LegalConsentApi;", "legalConsentApi", "<init>", "(Lcom/vuitton/android/data/api/bff/publication/LegalConsentApi;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LegalConsentRepositoryImpl implements LegalConsentRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LegalConsentApi f47767a;

    @Inject
    public LegalConsentRepositoryImpl(LegalConsentApi legalConsentApi) {
        legalConsentApi.getClass();
        this.f47767a = legalConsentApi;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // com.vuitton.android.domain.repository.LegalConsentRepository
    public final Object a(LegalConsentContext legalConsentContext, ContinuationImpl continuationImpl) {
        LegalConsentRepositoryImpl$getLegalConsent$1 legalConsentRepositoryImpl$getLegalConsent$1;
        Object failure;
        if (continuationImpl instanceof LegalConsentRepositoryImpl$getLegalConsent$1) {
            legalConsentRepositoryImpl$getLegalConsent$1 = (LegalConsentRepositoryImpl$getLegalConsent$1) continuationImpl;
            int i2 = legalConsentRepositoryImpl$getLegalConsent$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                legalConsentRepositoryImpl$getLegalConsent$1.d = i2 - Integer.MIN_VALUE;
            } else {
                legalConsentRepositoryImpl$getLegalConsent$1 = new LegalConsentRepositoryImpl$getLegalConsent$1(this, continuationImpl);
            }
        } else {
            legalConsentRepositoryImpl$getLegalConsent$1 = new LegalConsentRepositoryImpl$getLegalConsent$1(this, continuationImpl);
        }
        Object legalConsent = legalConsentRepositoryImpl$getLegalConsent$1.f47768b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = legalConsentRepositoryImpl$getLegalConsent$1.d;
        try {
            if (i3 == 0) {
                ResultKt.b(legalConsent);
                Result.Companion companion = Result.INSTANCE;
                LegalConsentApi legalConsentApi = this.f47767a;
                String value = legalConsentContext.getValue();
                legalConsentRepositoryImpl$getLegalConsent$1.d = 1;
                legalConsent = legalConsentApi.getLegalConsent(value, legalConsentRepositoryImpl$getLegalConsent$1);
                if (legalConsent == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                if (i3 != 1) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(legalConsent);
            }
            failure = new Result(LegalConsentMapperKt.a((LegalConsentDto) legalConsent));
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
