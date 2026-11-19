package com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor;

import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/PersonalSelectionsCurationAdvisorViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PersonalSelectionsCurationAdvisorViewModel extends ContactUsDelegate {
    StateFlow O5();

    StateFlow a();

    Flow b();

    void c();

    void h7();

    StateFlow i1();

    String i6();

    void m9(SelectionAssetUiModel selectionAssetUiModel);

    void u3(String str);

    void y7(String str);
}
