package com.vuitton.android.domain.usecase.account.accessibility;

import com.vuitton.android.domain.repository.AccessibilityPreferencesRepository;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.ArraysKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/domain/usecase/account/accessibility/GetAllAccessibilityValuesUseCase;", "", "Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;", "accessibilityPreferencesRepository", "<init>", "(Lcom/vuitton/android/domain/repository/AccessibilityPreferencesRepository;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class GetAllAccessibilityValuesUseCase {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AccessibilityPreferencesRepository f49064a;

    @Inject
    public GetAllAccessibilityValuesUseCase(AccessibilityPreferencesRepository accessibilityPreferencesRepository) {
        accessibilityPreferencesRepository.getClass();
        this.f49064a = accessibilityPreferencesRepository;
    }

    public final Object a(AccessibilityPreferenceType... accessibilityPreferenceTypeArr) {
        Object objC = this.f49064a.c(false);
        Result.Companion companion = Result.INSTANCE;
        if (objC instanceof Result.Failure) {
            return objC;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry entry : ((Map) objC).entrySet()) {
            if (ArraysKt.f(entry.getKey(), accessibilityPreferenceTypeArr)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        return linkedHashMap;
    }
}
