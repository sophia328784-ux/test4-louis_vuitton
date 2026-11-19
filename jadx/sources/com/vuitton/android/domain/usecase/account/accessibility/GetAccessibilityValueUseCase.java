package com.vuitton.android.domain.usecase.account.accessibility;

import com.vuitton.android.domain.repository.AccessibilityPreferencesRepository;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/accessibility/GetAccessibilityValueUseCase;", "", "Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;", "accessibilityPreferencesRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetAccessibilityValueUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccessibilityPreferencesRepository f49063a;

    @Inject
    public GetAccessibilityValueUseCase(AccessibilityPreferencesRepository accessibilityPreferencesRepository) {
        accessibilityPreferencesRepository.getClass();
        this.f49063a = accessibilityPreferencesRepository;
    }

    public final Object a(AccessibilityPreferenceType accessibilityPreferenceType) {
        accessibilityPreferenceType.getClass();
        Object objC = this.f49063a.c(false);
        Result.Companion companion = Result.INSTANCE;
        return !(objC instanceof Result.Failure) ? Boolean.valueOf(Intrinsics.c(((Map) objC).get(accessibilityPreferenceType), Boolean.TRUE)) : objC;
    }
}
