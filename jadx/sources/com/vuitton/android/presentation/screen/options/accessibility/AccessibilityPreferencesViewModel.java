package com.vuitton.android.presentation.screen.options.accessibility;

import com.vuitton.android.presentation.screen.options.accessibility.models.AccessibilityPreferencesTrackingUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlowImpl;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/accessibility/AccessibilityPreferencesViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AccessibilityPreferencesViewModel {
    void I8(AccessibilityPreferencesTrackingUiModel accessibilityPreferencesTrackingUiModel);

    void K1(boolean z);

    StateFlow a();

    void d9();

    SharedFlowImpl i7();

    void o9(boolean z);

    void s1(boolean z);

    void s4();
}
