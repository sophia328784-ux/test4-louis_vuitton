package com.vuitton.android.domain.usecase.dynamicyield;

import com.vuitton.android.domain.repository.DynamicYieldRepository;
import com.vuitton.android.domain.repository.InAppDispatchRepository;
import com.vuitton.android.domain.usecase.account.GetProfileUseCase;
import com.vuitton.android.domain.usecase.config.GetDynamicYieldCampaignUseCase;
import com.vuitton.android.domain.usecase.config.GetDynamicYieldPreferredServerUseCase;
import com.vuitton.android.domain.usecase.privacy.GetConsentForCustomizationUseCase;
import com.vuitton.foundation.logger.Logger;
import javax.inject.Inject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BA\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/domain/usecase/dynamicyield/InitializeDynamicYieldUseCase;", "", "Lcom/vuitton/foundation/logger/Logger;", "logger", "Lcom/vuitton/android/domain/repository/DynamicYieldRepository;", "dynamicYieldRepository", "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;", "inAppDispatchRepository", "Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;", "getProfileUseCase", "Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;", "getDynamicYieldCampaignUseCase", "Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;", "getConsentForCustomizationUseCase", "Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldPreferredServerUseCase;", "getDynamicYieldPreferredServerUseCase", "<init>", "(Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/domain/repository/DynamicYieldRepository;Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldCampaignUseCase;Lcom/vuitton/android/domain/usecase/privacy/GetConsentForCustomizationUseCase;Lcom/vuitton/android/domain/usecase/config/GetDynamicYieldPreferredServerUseCase;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InitializeDynamicYieldUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Logger f49938a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DynamicYieldRepository f49939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final InAppDispatchRepository f49940c;
    public final GetProfileUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final GetDynamicYieldCampaignUseCase f49941e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final GetConsentForCustomizationUseCase f49942f;
    public final GetDynamicYieldPreferredServerUseCase g;

    @Inject
    public InitializeDynamicYieldUseCase(Logger logger, DynamicYieldRepository dynamicYieldRepository, InAppDispatchRepository inAppDispatchRepository, GetProfileUseCase getProfileUseCase, GetDynamicYieldCampaignUseCase getDynamicYieldCampaignUseCase, GetConsentForCustomizationUseCase getConsentForCustomizationUseCase, GetDynamicYieldPreferredServerUseCase getDynamicYieldPreferredServerUseCase) {
        logger.getClass();
        dynamicYieldRepository.getClass();
        inAppDispatchRepository.getClass();
        getProfileUseCase.getClass();
        getDynamicYieldCampaignUseCase.getClass();
        getConsentForCustomizationUseCase.getClass();
        getDynamicYieldPreferredServerUseCase.getClass();
        this.f49938a = logger;
        this.f49939b = dynamicYieldRepository;
        this.f49940c = inAppDispatchRepository;
        this.d = getProfileUseCase;
        this.f49941e = getDynamicYieldCampaignUseCase;
        this.f49942f = getConsentForCustomizationUseCase;
        this.g = getDynamicYieldPreferredServerUseCase;
    }

    /* JADX WARN: Code duplicated, block: B:46:0x0118  */
    /* JADX WARN: Code duplicated, block: B:47:0x0119  */
    /* JADX WARN: Code duplicated, block: B:50:0x0122  */
    /* JADX WARN: Code duplicated, block: B:53:0x0127 A[Catch: all -> 0x0173, TryCatch #0 {all -> 0x0173, blocks: (B:15:0x0038, B:63:0x0152, B:65:0x0158, B:67:0x015f, B:69:0x0165, B:70:0x016b, B:20:0x0055, B:48:0x011c, B:51:0x0123, B:53:0x0127, B:55:0x012b, B:57:0x0131, B:60:0x0139, B:23:0x006e, B:44:0x0100, B:26:0x0083, B:38:0x00d8, B:40:0x00de, B:29:0x0093, B:31:0x00b8, B:34:0x00be), top: B:83:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:58:0x0136  */
    /* JADX WARN: Code duplicated, block: B:60:0x0139 A[Catch: all -> 0x0173, TryCatch #0 {all -> 0x0173, blocks: (B:15:0x0038, B:63:0x0152, B:65:0x0158, B:67:0x015f, B:69:0x0165, B:70:0x016b, B:20:0x0055, B:48:0x011c, B:51:0x0123, B:53:0x0127, B:55:0x012b, B:57:0x0131, B:60:0x0139, B:23:0x006e, B:44:0x0100, B:26:0x0083, B:38:0x00d8, B:40:0x00de, B:29:0x0093, B:31:0x00b8, B:34:0x00be), top: B:83:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:69:0x0165 A[Catch: all -> 0x0173, TryCatch #0 {all -> 0x0173, blocks: (B:15:0x0038, B:63:0x0152, B:65:0x0158, B:67:0x015f, B:69:0x0165, B:70:0x016b, B:20:0x0055, B:48:0x011c, B:51:0x0123, B:53:0x0127, B:55:0x012b, B:57:0x0131, B:60:0x0139, B:23:0x006e, B:44:0x0100, B:26:0x0083, B:38:0x00d8, B:40:0x00de, B:29:0x0093, B:31:0x00b8, B:34:0x00be), top: B:83:0x002c }] */
    /* JADX WARN: Code duplicated, block: B:77:0x0182  */
    /* JADX WARN: Code duplicated, block: B:79:0x0186  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Code duplicated, block: B:82:0x0196  */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x014f, code lost:
    
        if (r1 == r3) goto L62;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(kotlin.coroutines.jvm.internal.ContinuationImpl r19) {
        /*
            Method dump skipped, instruction units count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.domain.usecase.dynamicyield.InitializeDynamicYieldUseCase.a(kotlin.coroutines.jvm.internal.ContinuationImpl):java.lang.Object");
    }
}
