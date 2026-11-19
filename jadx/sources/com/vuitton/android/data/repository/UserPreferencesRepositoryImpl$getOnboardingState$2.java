package com.vuitton.android.data.repository;

import android.content.SharedPreferences;
import com.vuitton.foundation.model.domain.model.onboarding.OnboardingState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Lcom/vuitton/foundation/model/domain/model/onboarding/OnboardingState;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.UserPreferencesRepositoryImpl$getOnboardingState$2", f = "UserPreferencesRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class UserPreferencesRepositoryImpl$getOnboardingState$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super OnboardingState>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ UserPreferencesRepositoryImpl f48164b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserPreferencesRepositoryImpl$getOnboardingState$2(UserPreferencesRepositoryImpl userPreferencesRepositoryImpl, Continuation continuation) {
        super(2, continuation);
        this.f48164b = userPreferencesRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new UserPreferencesRepositoryImpl$getOnboardingState$2(this.f48164b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((UserPreferencesRepositoryImpl$getOnboardingState$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String string = ((SharedPreferences) this.f48164b.f48161a.get()).getString("ONBOARDING_STATE", null);
        if (string != null) {
            if (StringsKt.w(string)) {
                string = null;
            }
            if (string != null) {
                return OnboardingState.valueOf(string);
            }
        }
        return null;
    }
}
