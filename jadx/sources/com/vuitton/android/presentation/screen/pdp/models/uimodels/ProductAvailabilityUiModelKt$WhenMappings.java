package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class ProductAvailabilityUiModelKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f61724a;

    static {
        int[] iArr = new int[ProductAvailabilityUiModel.values().length];
        try {
            iArr[ProductAvailabilityUiModel.AddToCart.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[ProductAvailabilityUiModel.DisplayBackInStock.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr[ProductAvailabilityUiModel.CallForAvailability.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr[ProductAvailabilityUiModel.DisplayNotECommerceInfo.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr[ProductAvailabilityUiModel.GoToWebsiteProductPage.ordinal()] = 5;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr[ProductAvailabilityUiModel.GoToEmailUsWebsite.ordinal()] = 6;
        } catch (NoSuchFieldError unused6) {
        }
        f61724a = iArr;
    }
}
