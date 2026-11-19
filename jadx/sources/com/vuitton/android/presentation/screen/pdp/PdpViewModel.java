package com.vuitton.android.presentation.screen.pdp;

import com.vuitton.android.presentation.contact.ContactUsDelegate;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationType;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.BeautyLegalConsentUiModel;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.models.LegalConsentContextUiModel;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import kotlin.Metadata;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/PdpViewModel;", "Lcom/vuitton/android/presentation/contact/ContactUsDelegate;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PdpViewModel extends ContactUsDelegate {
    static /* synthetic */ void Db(PdpViewModel pdpViewModel, String str, CustomizationIdUiModel customizationIdUiModel, int i2) {
        if ((i2 & 2) != 0) {
            customizationIdUiModel = null;
        }
        pdpViewModel.l6(str, customizationIdUiModel, false);
    }

    void A8(String str, CustomizationIdUiModel customizationIdUiModel);

    void B4();

    boolean F();

    void F0();

    void G();

    void G9(ProductUiModel productUiModel, String str, String str2, String str3);

    void L2();

    boolean N7();

    void P8(String str, boolean z, CustomizationType customizationType);

    boolean T2();

    StateFlow a();

    void a1();

    void a3(PermissionsBottomSheet permissionsBottomSheet);

    Flow b();

    void c();

    void d5(LegalConsentContextUiModel legalConsentContextUiModel);

    void f0();

    Flow g0();

    Flow h();

    void jb();

    void jc(String str, CustomizationType customizationType);

    void l6(String str, CustomizationIdUiModel customizationIdUiModel, boolean z);

    void ob(BeautyLegalConsentUiModel beautyLegalConsentUiModel);

    void q9();
}
