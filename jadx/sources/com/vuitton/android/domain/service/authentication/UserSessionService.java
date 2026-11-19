package com.vuitton.android.domain.service.authentication;

import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.domain.repository.AuthTokenRepository;
import com.vuitton.android.domain.repository.LocalCacheRepository;
import com.vuitton.android.domain.repository.LoginStateRepository;
import com.vuitton.android.domain.service.feature.TwistFeature;
import com.vuitton.foundation.model.domain.model.authentication.AuthToken;
import com.vuitton.foundation.model.domain.model.authentication.LoginState;
import defpackage.md;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.internal.ContextScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/domain/service/authentication/UserSessionService;", "", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "dispatcher", "Lcom/vuitton/android/domain/repository/LocalCacheRepository;", "localCacheRepository", "Lcom/vuitton/android/domain/repository/LoginStateRepository;", "loginStateRepository", "Lcom/vuitton/android/domain/repository/AuthTokenRepository;", "authTokenRepository", "Lcom/vuitton/android/domain/service/feature/TwistFeature;", "twist", "<init>", "(Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;Lcom/vuitton/android/domain/repository/LocalCacheRepository;Lcom/vuitton/android/domain/repository/LoginStateRepository;Lcom/vuitton/android/domain/repository/AuthTokenRepository;Lcom/vuitton/android/domain/service/feature/TwistFeature;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UserSessionService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LocalCacheRepository f49007a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LoginStateRepository f49008b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AuthTokenRepository f49009c;
    public final TwistFeature d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContextScope f49010e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public LoginState f49011f;
    public final StateFlow g;

    @Inject
    public UserSessionService(CoroutineDispatchers coroutineDispatchers, LocalCacheRepository localCacheRepository, LoginStateRepository loginStateRepository, AuthTokenRepository authTokenRepository, TwistFeature twistFeature) {
        coroutineDispatchers.getClass();
        localCacheRepository.getClass();
        loginStateRepository.getClass();
        authTokenRepository.getClass();
        twistFeature.getClass();
        this.f49007a = localCacheRepository;
        this.f49008b = loginStateRepository;
        this.f49009c = authTokenRepository;
        this.d = twistFeature;
        ContextScope contextScopeA = CoroutineScopeKt.a(coroutineDispatchers.getF43531c().plus(SupervisorKt.b()));
        this.f49010e = contextScopeA;
        FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1 flowKt__TransformKt$onEach$$inlined$unsafeTransform$1 = new FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1(loginStateRepository.a(), new UserSessionService$loginState$1(2, this, UserSessionService.class, "onLoginStateChanged", "onLoginStateChanged(Lcom/vuitton/foundation/model/domain/model/authentication/LoginState;)V", 4));
        SharingStarted.f74985a.getClass();
        this.g = FlowKt.A(flowKt__TransformKt$onEach$$inlined$unsafeTransform$1, contextScopeA, SharingStarted.Companion.f74987b, loginStateRepository.a().getValue());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object a(ContinuationImpl continuationImpl) {
        UserSessionService$init$1 userSessionService$init$1;
        if (continuationImpl instanceof UserSessionService$init$1) {
            userSessionService$init$1 = (UserSessionService$init$1) continuationImpl;
            int i2 = userSessionService$init$1.d;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                userSessionService$init$1.d = i2 - Integer.MIN_VALUE;
            } else {
                userSessionService$init$1 = new UserSessionService$init$1(this, continuationImpl);
            }
        } else {
            userSessionService$init$1 = new UserSessionService$init$1(this, continuationImpl);
        }
        Object obj = userSessionService$init$1.f49014b;
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = userSessionService$init$1.d;
        if (i3 == 0) {
            ResultKt.b(obj);
            userSessionService$init$1.d = 1;
            if (c(userSessionService$init$1) == obj2) {
                return obj2;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            ((Result) obj).getClass();
        }
        return Unit.f71739a;
    }

    public final boolean b() {
        return ((LoginState) this.g.getValue()).a();
    }

    /* JADX WARN: Code duplicated, block: B:61:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:69:0x0104  */
    /* JADX WARN: Code duplicated, block: B:71:0x0108  */
    /* JADX WARN: Code duplicated, block: B:74:0x0118  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object c(ContinuationImpl continuationImpl) throws Throwable {
        UserSessionService$refreshLoadingState$1 userSessionService$refreshLoadingState$1;
        Object failure;
        Throwable thA;
        int i2;
        int i3;
        int i4;
        LoginState loginState;
        Object objB;
        int i5;
        int i6;
        Object objA;
        Object objB2;
        Object obj;
        LoginState loginState2;
        if (continuationImpl instanceof UserSessionService$refreshLoadingState$1) {
            userSessionService$refreshLoadingState$1 = (UserSessionService$refreshLoadingState$1) continuationImpl;
            int i7 = userSessionService$refreshLoadingState$1.f49020h;
            if ((i7 & Integer.MIN_VALUE) != 0) {
                userSessionService$refreshLoadingState$1.f49020h = i7 - Integer.MIN_VALUE;
            } else {
                userSessionService$refreshLoadingState$1 = new UserSessionService$refreshLoadingState$1(this, continuationImpl);
            }
        } else {
            userSessionService$refreshLoadingState$1 = new UserSessionService$refreshLoadingState$1(this, continuationImpl);
        }
        Object obj2 = userSessionService$refreshLoadingState$1.f49019f;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i8 = userSessionService$refreshLoadingState$1.f49020h;
        AuthTokenRepository authTokenRepository = this.f49009c;
        try {
            if (i8 == 0) {
                ResultKt.b(obj2);
                Result.Companion companion = Result.INSTANCE;
                userSessionService$refreshLoadingState$1.f49016b = 0;
                userSessionService$refreshLoadingState$1.f49017c = 0;
                userSessionService$refreshLoadingState$1.d = 0;
                userSessionService$refreshLoadingState$1.f49020h = 1;
                Object objD = authTokenRepository.d(userSessionService$refreshLoadingState$1);
                if (objD != coroutineSingletons) {
                    i2 = 0;
                    i3 = 0;
                    obj2 = objD;
                    i4 = 0;
                }
                return coroutineSingletons;
            }
            if (i8 == 1) {
                i4 = userSessionService$refreshLoadingState$1.d;
                i2 = userSessionService$refreshLoadingState$1.f49017c;
                i3 = userSessionService$refreshLoadingState$1.f49016b;
                ResultKt.b(obj2);
            } else {
                if (i8 == 2) {
                    i4 = userSessionService$refreshLoadingState$1.d;
                    i5 = userSessionService$refreshLoadingState$1.f49017c;
                    i6 = userSessionService$refreshLoadingState$1.f49016b;
                    ResultKt.b(obj2);
                    objA = ((Result) obj2).f71708b;
                    ResultKt.b(objA);
                    loginState = LoginState.LOGGED_OUT;
                    i2 = i5;
                    i3 = i6;
                    LoginStateRepository loginStateRepository = this.f49008b;
                    userSessionService$refreshLoadingState$1.f49018e = loginState;
                    userSessionService$refreshLoadingState$1.f49016b = i3;
                    userSessionService$refreshLoadingState$1.f49017c = i2;
                    userSessionService$refreshLoadingState$1.d = i4;
                    userSessionService$refreshLoadingState$1.f49020h = 4;
                    objB2 = loginStateRepository.b(loginState);
                    if (objB2 != coroutineSingletons) {
                        LoginState loginState3 = loginState;
                        obj = objB2;
                        loginState2 = loginState3;
                    }
                    return coroutineSingletons;
                }
                if (i8 == 3) {
                    i4 = userSessionService$refreshLoadingState$1.d;
                    i5 = userSessionService$refreshLoadingState$1.f49017c;
                    i6 = userSessionService$refreshLoadingState$1.f49016b;
                    ResultKt.b(obj2);
                    objB = ((Result) obj2).f71708b;
                    ResultKt.b(objB);
                    loginState = LoginState.LOGGED_OUT;
                    i2 = i5;
                    i3 = i6;
                    LoginStateRepository loginStateRepository2 = this.f49008b;
                    userSessionService$refreshLoadingState$1.f49018e = loginState;
                    userSessionService$refreshLoadingState$1.f49016b = i3;
                    userSessionService$refreshLoadingState$1.f49017c = i2;
                    userSessionService$refreshLoadingState$1.d = i4;
                    userSessionService$refreshLoadingState$1.f49020h = 4;
                    objB2 = loginStateRepository2.b(loginState);
                    if (objB2 != coroutineSingletons) {
                        LoginState loginState4 = loginState;
                        obj = objB2;
                        loginState2 = loginState4;
                    }
                    return coroutineSingletons;
                }
                if (i8 != 4) {
                    md.k("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                loginState2 = userSessionService$refreshLoadingState$1.f49018e;
                ResultKt.b(obj2);
                obj = ((Result) obj2).f71708b;
            }
            ResultKt.b(obj);
            failure = new Result(loginState2);
            thA = Result.a(failure);
            if (thA != null) {
                if (thA instanceof CancellationException) {
                    throw thA;
                }
                failure = new Result(new Result.Failure(thA));
            }
            return ((Result) failure).f71708b;
            AuthToken authToken = (AuthToken) obj2;
            if (this.d.getEnabled()) {
                if (authToken instanceof AuthToken.Twist.User) {
                    loginState = LoginState.LOGGED_IN;
                } else if (authToken instanceof AuthToken.Atg) {
                    userSessionService$refreshLoadingState$1.f49016b = i3;
                    userSessionService$refreshLoadingState$1.f49017c = i2;
                    userSessionService$refreshLoadingState$1.d = i4;
                    userSessionService$refreshLoadingState$1.f49020h = 2;
                    objA = authTokenRepository.a(userSessionService$refreshLoadingState$1);
                    if (objA != coroutineSingletons) {
                        i5 = i2;
                        i6 = i3;
                        ResultKt.b(objA);
                        loginState = LoginState.LOGGED_OUT;
                        i2 = i5;
                        i3 = i6;
                    }
                } else {
                    loginState = LoginState.LOGGED_OUT;
                }
                LoginStateRepository loginStateRepository3 = this.f49008b;
                userSessionService$refreshLoadingState$1.f49018e = loginState;
                userSessionService$refreshLoadingState$1.f49016b = i3;
                userSessionService$refreshLoadingState$1.f49017c = i2;
                userSessionService$refreshLoadingState$1.d = i4;
                userSessionService$refreshLoadingState$1.f49020h = 4;
                objB2 = loginStateRepository3.b(loginState);
                if (objB2 != coroutineSingletons) {
                    LoginState loginState5 = loginState;
                    obj = objB2;
                    loginState2 = loginState5;
                    ResultKt.b(obj);
                    failure = new Result(loginState2);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (thA instanceof CancellationException) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return ((Result) failure).f71708b;
                }
            } else {
                if (authToken instanceof AuthToken.Atg) {
                    loginState = LoginState.LOGGED_IN;
                } else if (authToken instanceof AuthToken.Twist.User) {
                    userSessionService$refreshLoadingState$1.f49016b = i3;
                    userSessionService$refreshLoadingState$1.f49017c = i2;
                    userSessionService$refreshLoadingState$1.d = i4;
                    userSessionService$refreshLoadingState$1.f49020h = 3;
                    objB = authTokenRepository.b(userSessionService$refreshLoadingState$1);
                    if (objB != coroutineSingletons) {
                        i5 = i2;
                        i6 = i3;
                        ResultKt.b(objB);
                        loginState = LoginState.LOGGED_OUT;
                        i2 = i5;
                        i3 = i6;
                    }
                } else {
                    loginState = LoginState.LOGGED_OUT;
                }
                LoginStateRepository loginStateRepository4 = this.f49008b;
                userSessionService$refreshLoadingState$1.f49018e = loginState;
                userSessionService$refreshLoadingState$1.f49016b = i3;
                userSessionService$refreshLoadingState$1.f49017c = i2;
                userSessionService$refreshLoadingState$1.d = i4;
                userSessionService$refreshLoadingState$1.f49020h = 4;
                objB2 = loginStateRepository4.b(loginState);
                if (objB2 != coroutineSingletons) {
                    LoginState loginState6 = loginState;
                    obj = objB2;
                    loginState2 = loginState6;
                    ResultKt.b(obj);
                    failure = new Result(loginState2);
                    thA = Result.a(failure);
                    if (thA != null) {
                        if (thA instanceof CancellationException) {
                            throw thA;
                        }
                        failure = new Result(new Result.Failure(thA));
                    }
                    return ((Result) failure).f71708b;
                }
            }
            return coroutineSingletons;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
