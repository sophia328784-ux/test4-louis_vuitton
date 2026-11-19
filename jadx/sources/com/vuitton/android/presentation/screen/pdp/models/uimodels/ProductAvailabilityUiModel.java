package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductAvailabilityUiModel;", "", "AddToCart", "DisplayBackInStock", "CallForAvailability", "DisplayNotECommerceInfo", "GoToWebsiteProductPage", "GoToEmailUsWebsite", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ProductAvailabilityUiModel {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ProductAvailabilityUiModel[] $VALUES;
    public static final ProductAvailabilityUiModel AddToCart;
    public static final ProductAvailabilityUiModel CallForAvailability;
    public static final ProductAvailabilityUiModel DisplayBackInStock;
    public static final ProductAvailabilityUiModel DisplayNotECommerceInfo;
    public static final ProductAvailabilityUiModel GoToEmailUsWebsite;
    public static final ProductAvailabilityUiModel GoToWebsiteProductPage;

    static {
        ProductAvailabilityUiModel productAvailabilityUiModel = new ProductAvailabilityUiModel("AddToCart", 0);
        AddToCart = productAvailabilityUiModel;
        ProductAvailabilityUiModel productAvailabilityUiModel2 = new ProductAvailabilityUiModel("DisplayBackInStock", 1);
        DisplayBackInStock = productAvailabilityUiModel2;
        ProductAvailabilityUiModel productAvailabilityUiModel3 = new ProductAvailabilityUiModel("CallForAvailability", 2);
        CallForAvailability = productAvailabilityUiModel3;
        ProductAvailabilityUiModel productAvailabilityUiModel4 = new ProductAvailabilityUiModel("DisplayNotECommerceInfo", 3);
        DisplayNotECommerceInfo = productAvailabilityUiModel4;
        ProductAvailabilityUiModel productAvailabilityUiModel5 = new ProductAvailabilityUiModel("GoToWebsiteProductPage", 4);
        GoToWebsiteProductPage = productAvailabilityUiModel5;
        ProductAvailabilityUiModel productAvailabilityUiModel6 = new ProductAvailabilityUiModel("GoToEmailUsWebsite", 5);
        GoToEmailUsWebsite = productAvailabilityUiModel6;
        ProductAvailabilityUiModel[] productAvailabilityUiModelArr = {productAvailabilityUiModel, productAvailabilityUiModel2, productAvailabilityUiModel3, productAvailabilityUiModel4, productAvailabilityUiModel5, productAvailabilityUiModel6};
        $VALUES = productAvailabilityUiModelArr;
        $ENTRIES = EnumEntriesKt.a(productAvailabilityUiModelArr);
    }

    public static ProductAvailabilityUiModel valueOf(String str) {
        return (ProductAvailabilityUiModel) Enum.valueOf(ProductAvailabilityUiModel.class, str);
    }

    public static ProductAvailabilityUiModel[] values() {
        return (ProductAvailabilityUiModel[]) $VALUES.clone();
    }
}
