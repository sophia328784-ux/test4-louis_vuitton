package com.vuitton.android.domain.usecase.analytics.tools;

import com.vuitton.android.domain.repository.PrivacyRelatedToolRepository;
import com.vuitton.android.domain.repository.PrivacyRelatedToolRequirements;
import com.vuitton.android.domain.usecase.analytics.UpdateContactIdUseCase;
import com.vuitton.android.domain.usecase.privacy.GetConsentForCustomizationUseCase;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/domain/usecase/analytics/tools/InitializeNotificationsManagerUseCase;", "", "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;", "getConsentForCustomizationUseCase", "Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;", "updateContactIdUseCase", "Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;", "notificationsManagerRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/usecase/analytics/UpdateContactIdUseCase;Lcom/vuitton/android/domain/repository/PrivacyRelatedToolRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InitializeNotificationsManagerUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final GetConsentForCustomizationUseCase f49203a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final UpdateContactIdUseCase f49204b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final PrivacyRelatedToolRepository f49205c;

    @Inject
    public InitializeNotificationsManagerUseCase(GetConsentForCustomizationUseCase getConsentForCustomizationUseCase, UpdateContactIdUseCase updateContactIdUseCase, PrivacyRelatedToolRepository privacyRelatedToolRepository) {
        getConsentForCustomizationUseCase.getClass();
        updateContactIdUseCase.getClass();
        privacyRelatedToolRepository.getClass();
        this.f49203a = getConsentForCustomizationUseCase;
        this.f49204b = updateContactIdUseCase;
        this.f49205c = privacyRelatedToolRepository;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        InitializeNotificationsManagerUseCase$run$1 initializeNotificationsManagerUseCase$run$1;
        if (continuationImpl instanceof InitializeNotificationsManagerUseCase$run$1) {
            initializeNotificationsManagerUseCase$run$1 = (InitializeNotificationsManagerUseCase$run$1) continuationImpl;
            int i2 = initializeNotificationsManagerUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                initializeNotificationsManagerUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                initializeNotificationsManagerUseCase$run$1 = new InitializeNotificationsManagerUseCase$run$1(this, continuationImpl);
            }
        } else {
            initializeNotificationsManagerUseCase$run$1 = new InitializeNotificationsManagerUseCase$run$1(this, continuationImpl);
        }
        Object obj = initializeNotificationsManagerUseCase$run$1.f49206b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = initializeNotificationsManagerUseCase$run$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            initializeNotificationsManagerUseCase$run$1.d = 1;
            if (this.f49204b.a(initializeNotificationsManagerUseCase$run$1) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        this.f49205c.a(new PrivacyRelatedToolRequirements.NotificationsManagerRequirements(this.f49203a.a()));
        return Unit.f71739a;
    }
}
