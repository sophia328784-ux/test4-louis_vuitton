package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.foundation.model.domain.model.cart.ExchangeShippingType;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class ExchangeSetupUiModelKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f60262a;

    static {
        int[] iArr = new int[ExchangeShippingType.values().length];
        try {
            iArr[ExchangeShippingType.STANDARD.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[ExchangeShippingType.CLICK_AND_COLLECT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f60262a = iArr;
    }
}
