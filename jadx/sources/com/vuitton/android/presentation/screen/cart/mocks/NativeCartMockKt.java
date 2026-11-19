package com.vuitton.android.presentation.screen.cart.mocks;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartItemUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceInformationUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartPriceUiModel;
import com.vuitton.android.presentation.screen.cart.models.CartUiModel;
import com.vuitton.android.presentation.screen.cart.models.NativeCartViewState;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationConfigurationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdTypeUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.CustomizationInformationUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.ProductIdUiModel;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.cart.GiftOption;
import com.vuitton.foundation.model.domain.model.cart.ShoppingBag;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class NativeCartMockKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final CartItemUiModel f55128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final NativeCartViewState f55129b;

    static {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        ProductIdUiModel.Companion companion2 = ProductIdUiModel.f61731c;
        CartPriceInformationUiModel cartPriceInformationUiModel = new CartPriceInformationUiModel(new CartPriceUiModel(6500.0d, "6500", "$"), new CartPriceUiModel(320.0d, "320", "$"), null, null, null, null);
        EmptyList emptyList = EmptyList.f71768b;
        CartItemUiModel cartItemUiModel = new CartItemUiModel("2343BU", cartPriceInformationUiModel, true, 1, "Gris", "XS", null, "Dauphine MMDauphine MM", "Leather", "ABCDEF", "1234", null, true, null, false, true, false, false, false, "", emptyList, "50% off", false, false, false, true, null, null, true, true, 12599296, null);
        f55128a = cartItemUiModel;
        f55129b = new NativeCartViewState(new CartUiModel("aptent", 2, CollectionsKt.O(cartItemUiModel), null, GiftOption.None.f66980a, false, new ShoppingBag(true, true), false, null), emptyList, null, false, false, false, false, null, null, null, null, null, false, null, null, null, 65300, null);
        new CustomizationConfigurationUiModel("P01900", new CustomizationIdUiModel("MDXB67CD", CustomizationIdTypeUiModel.THREEKIT), "Personalisation", CollectionsKt.P(new CustomizationInformationUiModel("55", "Nombre", new AssetImageUiModel("https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--Men_Show_SS23_LOOK03_VISUAL4.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", null, null, 6, null), null), new CustomizationInformationUiModel("Monogram Eclipse This is a long text", "Motif", new AssetImageUiModel("https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--Men_Show_SS23_LOOK03_VISUAL4.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", null, null, 6, null), null), new CustomizationInformationUiModel("Keepall Bandoulière", "Modèle", new AssetImageUiModel("https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--Men_Show_SS23_LOOK03_VISUAL4.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", null, null, 6, null), null), new CustomizationInformationUiModel("Ribbon stripes", "Ruban", new AssetImageUiModel("https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--Men_Show_SS23_LOOK03_VISUAL4.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", null, null, 6, null), null), new CustomizationInformationUiModel("Blue and Yellow", "Couleurs", new AssetImageUiModel("https://fr-ppf.louisvuitton.com/images/is/image/lvprp/1/PP_VP_L/louis-vuitton--Men_Show_SS23_LOOK03_VISUAL4.jpg?wid={IMG_WIDTH}&hei={IMG_HEIGHT}", null, null, 6, null), null)), null);
    }
}
