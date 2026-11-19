package com.vuitton.android.presentation.screen.aicompanion;

import com.vuitton.android.presentation.screen.aicompanion.models.AICompanionBottomSheet;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AICompanionViewModel {
    void Cb(String str);

    void E1(String str);

    void I2(String str);

    void S8();

    void T4(AICompanionBottomSheet aICompanionBottomSheet);

    void Z1(String str, boolean z);

    void Z7(String str);

    StateFlow a();

    Flow b();

    StateFlow e();

    void e3();

    void k1(String str);

    void o5(String str);

    void s9(String str);

    void v2();

    void z5();
}
