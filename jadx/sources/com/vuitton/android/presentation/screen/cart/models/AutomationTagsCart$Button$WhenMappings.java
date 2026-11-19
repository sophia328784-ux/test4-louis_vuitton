package com.vuitton.android.presentation.screen.cart.models;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class AutomationTagsCart$Button$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f55132a;

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
        f55132a = iArr;
    }
}
