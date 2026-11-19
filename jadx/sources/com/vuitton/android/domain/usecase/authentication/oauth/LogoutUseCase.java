package com.vuitton.android.domain.usecase.authentication.oauth;

import com.vuitton.android.domain.repository.OrderRepository;
import com.vuitton.android.domain.repository.PassRepository;
import com.vuitton.android.domain.repository.SalesforceAuthRepository;
import com.vuitton.android.domain.repository.TwistAuthRepository;
import com.vuitton.android.domain.repository.WishlistRepository;
import com.vuitton.android.domain.usecase.automatedtest.ApplySavedSecurityCookieUseCase;
import com.vuitton.android.domain.usecase.config.IsFeatureAvailableUseCase;
import com.vuitton.foundation.model.domain.model.sync.Feature;
import defpackage.md;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001BI\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/domain/usecase/authentication/oauth/LogoutUseCase;", "", "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;", "isFeatureAvailableUseCase", "Lcom/vuitton/android/domain/usecase/authentication/oauth/ClearWebViewCookiesUseCase;", "clearWebViewCookiesUseCase", "Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;", "applySavedSecurityCookieUseCase", "Lcom/vuitton/android/domain/repository/OrderRepository;", "orderRepository", "Lcom/vuitton/android/domain/repository/WishlistRepository;", "wishlistRepository", "Lcom/vuitton/android/domain/repository/TwistAuthRepository;", "twistAuthRepository", "Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;", "salesforceAuthRepository", "Lcom/vuitton/android/domain/repository/PassRepository;", "passRepository", "<init>", "(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/authentication/oauth/ClearWebViewCookiesUseCase;Lcom/vuitton/android/domain/usecase/automatedtest/ApplySavedSecurityCookieUseCase;Lcom/vuitton/android/domain/repository/OrderRepository;Lcom/vuitton/android/domain/repository/WishlistRepository;Lcom/vuitton/android/domain/repository/TwistAuthRepository;Lcom/vuitton/android/domain/repository/SalesforceAuthRepository;Lcom/vuitton/android/domain/repository/PassRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LogoutUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final IsFeatureAvailableUseCase f49383a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ClearWebViewCookiesUseCase f49384b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ApplySavedSecurityCookieUseCase f49385c;
    public final OrderRepository d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final WishlistRepository f49386e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final TwistAuthRepository f49387f;
    public final SalesforceAuthRepository g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final PassRepository f49388h;

    @Inject
    public LogoutUseCase(IsFeatureAvailableUseCase isFeatureAvailableUseCase, ClearWebViewCookiesUseCase clearWebViewCookiesUseCase, ApplySavedSecurityCookieUseCase applySavedSecurityCookieUseCase, OrderRepository orderRepository, WishlistRepository wishlistRepository, TwistAuthRepository twistAuthRepository, SalesforceAuthRepository salesforceAuthRepository, PassRepository passRepository) {
        isFeatureAvailableUseCase.getClass();
        clearWebViewCookiesUseCase.getClass();
        applySavedSecurityCookieUseCase.getClass();
        orderRepository.getClass();
        wishlistRepository.getClass();
        twistAuthRepository.getClass();
        salesforceAuthRepository.getClass();
        passRepository.getClass();
        this.f49383a = isFeatureAvailableUseCase;
        this.f49384b = clearWebViewCookiesUseCase;
        this.f49385c = applySavedSecurityCookieUseCase;
        this.d = orderRepository;
        this.f49386e = wishlistRepository;
        this.f49387f = twistAuthRepository;
        this.g = salesforceAuthRepository;
        this.f49388h = passRepository;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x007c  */
    /* JADX WARN: Code duplicated, block: B:30:0x0088  */
    /* JADX WARN: Code duplicated, block: B:33:0x0094  */
    /* JADX WARN: Code duplicated, block: B:36:0x00a7 A[PHI: r5
      0x00a7: PHI (r5v21 java.lang.Object) = (r5v19 java.lang.Object), (r5v1 java.lang.Object) binds: [B:34:0x00a4, B:16:0x0038] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:38:0x00af  */
    /* JADX WARN: Code duplicated, block: B:41:0x00bb A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:45:0x00c8 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        LogoutUseCase$run$1 logoutUseCase$run$1;
        Object objA;
        Object objA2;
        if (continuationImpl instanceof LogoutUseCase$run$1) {
            logoutUseCase$run$1 = (LogoutUseCase$run$1) continuationImpl;
            int i2 = logoutUseCase$run$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                logoutUseCase$run$1.d = i2 - Integer.MIN_VALUE;
            } else {
                logoutUseCase$run$1 = new LogoutUseCase$run$1(this, continuationImpl);
            }
        } else {
            logoutUseCase$run$1 = new LogoutUseCase$run$1(this, continuationImpl);
        }
        Object objC = logoutUseCase$run$1.f49389b;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        switch (logoutUseCase$run$1.d) {
            case 0:
                ResultKt.b(objC);
                logoutUseCase$run$1.d = 1;
                if (this.d.a() != coroutineSingletons) {
                    this.f49386e.g();
                    logoutUseCase$run$1.d = 2;
                    if (this.f49384b.a(logoutUseCase$run$1) != coroutineSingletons) {
                        logoutUseCase$run$1.d = 3;
                        if (this.f49385c.a(logoutUseCase$run$1) != coroutineSingletons) {
                            logoutUseCase$run$1.d = 4;
                            if (this.f49388h.b(logoutUseCase$run$1) != coroutineSingletons) {
                                Feature[] featureArr = {Feature.TWIST};
                                logoutUseCase$run$1.d = 5;
                                objC = this.f49383a.c(featureArr, false, logoutUseCase$run$1);
                                if (objC != coroutineSingletons) {
                                    if (((Boolean) objC).booleanValue()) {
                                        logoutUseCase$run$1.d = 6;
                                        objA2 = this.f49387f.a(logoutUseCase$run$1);
                                        if (objA2 == coroutineSingletons) {
                                            return objA2;
                                        }
                                    } else {
                                        logoutUseCase$run$1.d = 7;
                                        objA = this.g.a(logoutUseCase$run$1);
                                        if (objA == coroutineSingletons) {
                                            return objA;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return coroutineSingletons;
            case 1:
                ResultKt.b(objC);
                this.f49386e.g();
                logoutUseCase$run$1.d = 2;
                if (this.f49384b.a(logoutUseCase$run$1) != coroutineSingletons) {
                    logoutUseCase$run$1.d = 3;
                    if (this.f49385c.a(logoutUseCase$run$1) != coroutineSingletons) {
                        logoutUseCase$run$1.d = 4;
                        if (this.f49388h.b(logoutUseCase$run$1) != coroutineSingletons) {
                            Feature[] featureArr2 = {Feature.TWIST};
                            logoutUseCase$run$1.d = 5;
                            objC = this.f49383a.c(featureArr2, false, logoutUseCase$run$1);
                            if (objC != coroutineSingletons) {
                                if (((Boolean) objC).booleanValue()) {
                                    logoutUseCase$run$1.d = 6;
                                    objA2 = this.f49387f.a(logoutUseCase$run$1);
                                    if (objA2 == coroutineSingletons) {
                                        return objA2;
                                    }
                                } else {
                                    logoutUseCase$run$1.d = 7;
                                    objA = this.g.a(logoutUseCase$run$1);
                                    if (objA == coroutineSingletons) {
                                        return objA;
                                    }
                                }
                            }
                        }
                    }
                }
                return coroutineSingletons;
            case 2:
                ResultKt.b(objC);
                ((Result) objC).getClass();
                logoutUseCase$run$1.d = 3;
                if (this.f49385c.a(logoutUseCase$run$1) != coroutineSingletons) {
                    logoutUseCase$run$1.d = 4;
                    if (this.f49388h.b(logoutUseCase$run$1) != coroutineSingletons) {
                        Feature[] featureArr3 = {Feature.TWIST};
                        logoutUseCase$run$1.d = 5;
                        objC = this.f49383a.c(featureArr3, false, logoutUseCase$run$1);
                        if (objC != coroutineSingletons) {
                            if (((Boolean) objC).booleanValue()) {
                                logoutUseCase$run$1.d = 6;
                                objA2 = this.f49387f.a(logoutUseCase$run$1);
                                if (objA2 == coroutineSingletons) {
                                    return objA2;
                                }
                            } else {
                                logoutUseCase$run$1.d = 7;
                                objA = this.g.a(logoutUseCase$run$1);
                                if (objA == coroutineSingletons) {
                                    return objA;
                                }
                            }
                        }
                    }
                }
                return coroutineSingletons;
            case 3:
                ResultKt.b(objC);
                ((Result) objC).getClass();
                logoutUseCase$run$1.d = 4;
                if (this.f49388h.b(logoutUseCase$run$1) != coroutineSingletons) {
                    Feature[] featureArr4 = {Feature.TWIST};
                    logoutUseCase$run$1.d = 5;
                    objC = this.f49383a.c(featureArr4, false, logoutUseCase$run$1);
                    if (objC != coroutineSingletons) {
                        if (((Boolean) objC).booleanValue()) {
                            logoutUseCase$run$1.d = 6;
                            objA2 = this.f49387f.a(logoutUseCase$run$1);
                            if (objA2 == coroutineSingletons) {
                                return objA2;
                            }
                        } else {
                            logoutUseCase$run$1.d = 7;
                            objA = this.g.a(logoutUseCase$run$1);
                            if (objA == coroutineSingletons) {
                                return objA;
                            }
                        }
                    }
                }
                return coroutineSingletons;
            case 4:
                ResultKt.b(objC);
                ((Result) objC).getClass();
                Feature[] featureArr5 = {Feature.TWIST};
                logoutUseCase$run$1.d = 5;
                objC = this.f49383a.c(featureArr5, false, logoutUseCase$run$1);
                if (objC != coroutineSingletons) {
                    if (((Boolean) objC).booleanValue()) {
                        logoutUseCase$run$1.d = 6;
                        objA2 = this.f49387f.a(logoutUseCase$run$1);
                        if (objA2 == coroutineSingletons) {
                            return objA2;
                        }
                    } else {
                        logoutUseCase$run$1.d = 7;
                        objA = this.g.a(logoutUseCase$run$1);
                        if (objA == coroutineSingletons) {
                            return objA;
                        }
                    }
                }
                return coroutineSingletons;
            case 5:
                ResultKt.b(objC);
                if (((Boolean) objC).booleanValue()) {
                    logoutUseCase$run$1.d = 6;
                    objA2 = this.f49387f.a(logoutUseCase$run$1);
                    if (objA2 == coroutineSingletons) {
                        return objA2;
                    }
                } else {
                    logoutUseCase$run$1.d = 7;
                    objA = this.g.a(logoutUseCase$run$1);
                    if (objA == coroutineSingletons) {
                        return objA;
                    }
                }
                return coroutineSingletons;
            case 6:
                ResultKt.b(objC);
                return ((Result) objC).f71708b;
            case 7:
                ResultKt.b(objC);
                return ((Result) objC).f71708b;
            default:
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
        }
    }
}
