package com.vuitton.android.presentation.screen.connectivity.travel.form;

import com.vuitton.android.presentation.screen.connectivity.travel.TravelUiModel;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\bf\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/travel/form/TravelForm;", "Lcom/vuitton/android/presentation/screen/connectivity/travel/TravelUiModel;", "T", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TravelForm<T extends TravelUiModel> {
    void c(boolean z);

    boolean isValid();

    TravelUiModel y();
}
