package com.vuitton.android.presentation.screen.options.dispatch;

import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface DispatchCountryViewModel {
    /* JADX INFO: renamed from: O1 */
    SharedFlow getF59792h();

    void Q8(InAppDispatch inAppDispatch);

    /* JADX INFO: renamed from: a */
    StateFlow getP();

    void i2(InAppDispatch inAppDispatch, boolean z);

    void p8(int i2);

    /* JADX INFO: renamed from: w6 */
    Flow getF59794j();

    boolean y1(InAppDispatch inAppDispatch);
}
