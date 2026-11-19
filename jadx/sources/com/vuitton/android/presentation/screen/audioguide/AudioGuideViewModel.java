package com.vuitton.android.presentation.screen.audioguide;

import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideBottomSheet;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/audioguide/AudioGuideViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AudioGuideViewModel {
    static /* synthetic */ void s7(AudioGuideViewModel audioGuideViewModel, String str, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        audioGuideViewModel.m6(str, z, true);
    }

    void Fb();

    void Ja();

    Flow O2();

    void Rb();

    void T5();

    void X3();

    StateFlow a();

    void c3();

    StateFlow cb();

    StateFlow e();

    void j7(AudioGuideBottomSheet audioGuideBottomSheet);

    void k9();

    void kc(long j2);

    void l8(String str);

    void m6(String str, boolean z, boolean z2);

    void p9();

    void r1();
}
