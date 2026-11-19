package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.batch.android.s.b;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.android.core.schedulers.CoroutineDispatchers;
import com.vuitton.android.data.datasource.config.EnvironmentDataSource;
import com.vuitton.android.domain.repository.UserPreferencesRepository;
import com.vuitton.foundation.model.domain.model.environment.Environment;
import com.vuitton.foundation.model.domain.model.onboarding.OnboardingState;
import dagger.Lazy;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B)\b\u0007\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/data/repository/UserPreferencesRepositoryImpl;", "Lcom/vuitton/android/domain/repository/UserPreferencesRepository;", "Ldagger/Lazy;", "Landroid/content/SharedPreferences;", "encryptedSharedPreferences", "Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;", "environmentDataSource", "Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;", "coroutineDispatchers", "<init>", "(Ldagger/Lazy;Lcom/vuitton/android/data/datasource/config/EnvironmentDataSource;Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class UserPreferencesRepositoryImpl implements UserPreferencesRepository {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Lazy f48161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final EnvironmentDataSource f48162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CoroutineDispatchers f48163c;

    @Inject
    public UserPreferencesRepositoryImpl(Lazy<SharedPreferences> lazy, EnvironmentDataSource environmentDataSource, CoroutineDispatchers coroutineDispatchers) {
        lazy.getClass();
        environmentDataSource.getClass();
        coroutineDispatchers.getClass();
        this.f48161a = lazy;
        this.f48162b = environmentDataSource;
        this.f48163c = coroutineDispatchers;
    }

    @Override // com.vuitton.android.domain.repository.UserPreferencesRepository
    public final Object a(OnboardingState onboardingState, Continuation continuation) throws Throwable {
        Object objF = BuildersKt.f(this.f48163c.getF43530b(), new UserPreferencesRepositoryImpl$setOnboardingState$2(this, onboardingState, null), continuation);
        return objF == CoroutineSingletons.COROUTINE_SUSPENDED ? objF : Unit.f71739a;
    }

    @Override // com.vuitton.android.domain.repository.UserPreferencesRepository
    public final String b() {
        return ((SharedPreferences) this.f48161a.get()).getString("contact_id", null);
    }

    @Override // com.vuitton.android.domain.repository.UserPreferencesRepository
    public final String c() {
        return ((SharedPreferences) this.f48161a.get()).getString("access_token", null);
    }

    @Override // com.vuitton.android.domain.repository.UserPreferencesRepository
    public final boolean d() {
        return ((SharedPreferences) this.f48161a.get()).getBoolean("PREF_CONSENT_LUCIELABS_TRACKERS", true);
    }

    @Override // com.vuitton.android.domain.repository.UserPreferencesRepository
    public final void e(String str) {
        Object obj = this.f48161a.get();
        obj.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
        editorEdit.putString("contact_id", str);
        editorEdit.apply();
    }

    @Override // com.vuitton.android.domain.repository.UserPreferencesRepository
    public final void f() {
        Object obj = this.f48161a.get();
        obj.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
        editorEdit.remove("access_token");
        editorEdit.remove("refresh_token");
        editorEdit.remove("PREF_OAUTH_ACCESS_TOKEN_SLAS");
        editorEdit.remove("PREF_OAUTH_TOKEN_SOT");
        editorEdit.remove(b.a.f24015b);
        editorEdit.remove("contact_id");
        editorEdit.remove("pref_has_watch");
        editorEdit.remove("tags");
        editorEdit.remove("geolocmodulesEnabled");
        editorEdit.commit();
    }

    @Override // com.vuitton.android.domain.repository.UserPreferencesRepository
    public final Object g(ContinuationImpl continuationImpl) {
        return BuildersKt.f(this.f48163c.getF43530b(), new UserPreferencesRepositoryImpl$getOnboardingState$2(this, null), continuationImpl);
    }

    @Override // com.vuitton.android.domain.repository.UserPreferencesRepository
    public final String getUserId() {
        return ((SharedPreferences) this.f48161a.get()).getString(b.a.f24015b, null);
    }

    @Override // com.vuitton.android.domain.repository.UserPreferencesRepository
    public final void h(Environment environment) {
        EnvironmentDataSource environmentDataSource = this.f48162b;
        if (environment == null) {
            environmentDataSource.getClass();
            return;
        }
        Object obj = environmentDataSource.f44051a.get();
        obj.getClass();
        SharedPreferences.Editor editorEdit = ((SharedPreferences) obj).edit();
        editorEdit.putString("environment", environment.f67570a);
        editorEdit.commit();
    }
}
