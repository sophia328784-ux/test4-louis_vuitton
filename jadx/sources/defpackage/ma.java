package defpackage;

import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.components.PushCardImageLoaderKt;
import com.vuitton.android.presentation.screen.audioguide.components.bottomsheets.AudioGuideCreditsBottomSheetKt;
import com.vuitton.android.presentation.screen.certificates.components.transfer.TransferCertificateConfirmationComposableKt;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.components.BeautyAddToCartBottomSheetContentKt;
import com.vuitton.android.presentation.screen.personalselections.detail.curationadvisor.components.PersonalSelectionsCurationAdvisorLookListKt;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailBffScreenKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ma implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76222b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f76223c;

    public /* synthetic */ ma(String str, int i2) {
        this.f76222b = i2;
        this.f76223c = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        int i2 = this.f76222b;
        String str = this.f76223c;
        switch (i2) {
            case 0:
                ((Integer) obj2).getClass();
                AudioGuideCreditsBottomSheetKt.a(RecomposeScopeImplKt.a(1), (Composer) obj, str);
                break;
            case 1:
                ((Integer) obj2).getClass();
                BeautyAddToCartBottomSheetContentKt.f(RecomposeScopeImplKt.a(1), (Composer) obj, str);
                break;
            case 2:
                boolean z = false;
                Composer composer = (Composer) obj;
                int iIntValue = ((Integer) obj2).intValue();
                if ((iIntValue & 3) != 2) {
                    z = true;
                }
                if (composer.p(iIntValue & 1, z)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierG = n00.g("CatalogSubcategoryTransparentTopBar$lambda$0", "shop_selectedCategory_text");
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48425e;
                    long j2 = LVAppDesignKitTheme.c(composer).f48361b.m;
                    TextOverflow.f10989a.getClass();
                    TextKt.c(this.f76223c, modifierG, j2, 0L, null, 0L, null, null, 0L, TextOverflow.f10991c, false, 2, 0, null, textStyle, composer, 0, 24960, 110584);
                } else {
                    composer.D();
                }
                break;
            case 3:
                boolean z2 = false;
                Composer composer2 = (Composer) obj;
                int iIntValue2 = ((Integer) obj2).intValue();
                if ((iIntValue2 & 3) != 2) {
                    z2 = true;
                }
                if (composer2.p(iIntValue2 & 1, z2)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    PushCardImageLoaderKt.a(null, this.f76223c, Integer.valueOf(R.drawable.background_product_default), composer2, 0, 1);
                } else {
                    composer2.D();
                }
                break;
            case 4:
                boolean z3 = false;
                Composer composer3 = (Composer) obj;
                int iIntValue3 = ((Integer) obj2).intValue();
                if ((iIntValue3 & 3) != 2) {
                    z3 = true;
                }
                if (composer3.p(iIntValue3 & 1, z3)) {
                    OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                    PushCardImageLoaderKt.a(n00.g("CustomizationCreationCard$lambda$0$0", "pdp_customizationCard_image"), this.f76223c, Integer.valueOf(R.drawable.background_product_default), composer3, 0, 0);
                } else {
                    composer3.D();
                }
                break;
            case 5:
                ((Integer) obj2).getClass();
                PersonalSelectionsCurationAdvisorLookListKt.a(RecomposeScopeImplKt.a(1), (Composer) obj, str);
                break;
            case 6:
                ((Integer) obj2).getClass();
                RepairDetailBffScreenKt.d(RecomposeScopeImplKt.a(1), (Composer) obj, str);
                break;
            case 7:
                ((Integer) obj2).getClass();
                TransferCertificateConfirmationComposableKt.a(RecomposeScopeImplKt.a(1), (Composer) obj, str);
                break;
            default:
                Composer composer4 = (Composer) obj;
                int iIntValue4 = ((Integer) obj2).intValue();
                if (composer4.p(iIntValue4 & 1, (iIntValue4 & 3) != 2)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    PushCardImageLoaderKt.a(n00.g("VirtualStudioCard$lambda$0$0", "pdp_virtualStudioCard_image"), this.f76223c, null, composer4, 0, 4);
                } else {
                    composer4.D();
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ ma(String str, int i2, int i3) {
        this.f76222b = i3;
        this.f76223c = str;
    }
}
