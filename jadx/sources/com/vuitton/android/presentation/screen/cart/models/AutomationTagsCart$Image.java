package com.vuitton.android.presentation.screen.cart.models;

import defpackage.fc;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/cart/models/AutomationTagsCart$Image", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public abstract class AutomationTagsCart$Image {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f55133a;

        static {
            int[] iArr = new int[AutomationTagsCart$CardType.values().length];
            try {
                iArr[AutomationTagsCart$CardType.PACKAGING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[AutomationTagsCart$CardType.GIFT_MESSAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[AutomationTagsCart$CardType.SHOPPING_BAG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[AutomationTagsCart$CardType.SAMPLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f55133a = iArr;
        }
    }

    public static String a(AutomationTagsCart$CardType automationTagsCart$CardType) {
        String str;
        automationTagsCart$CardType.getClass();
        int i2 = WhenMappings.f55133a[automationTagsCart$CardType.ordinal()];
        if (i2 == 1) {
            str = "artOfGiftingPackaging";
        } else if (i2 == 2) {
            str = "artOfGiftingGiftMessage";
        } else if (i2 == 3) {
            str = "artOfGiftingShoppingBag";
        } else {
            if (i2 != 4) {
                v40.g();
                return null;
            }
            str = "sample";
        }
        return fc.h("cart_", str, "_image");
    }
}
