package com.vuitton.android.domain.repository;

import com.vuitton.foundation.model.domain.model.environment.Environment;
import com.vuitton.foundation.model.domain.model.onboarding.OnboardingState;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface UserPreferencesRepository {
    Object a(OnboardingState onboardingState, Continuation continuation);

    String b();

    String c();

    boolean d();

    void e(String str);

    void f();

    Object g(ContinuationImpl continuationImpl);

    String getUserId();

    void h(Environment environment);
}
