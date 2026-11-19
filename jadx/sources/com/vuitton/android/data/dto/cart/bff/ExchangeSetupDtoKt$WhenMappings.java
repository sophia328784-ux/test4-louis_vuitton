package com.vuitton.android.data.dto.cart.bff;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
public abstract /* synthetic */ class ExchangeSetupDtoKt$WhenMappings {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int[] f45030a;

    static {
        int[] iArr = new int[ExchangeShippingTypeDto.values().length];
        try {
            iArr[ExchangeShippingTypeDto.STANDARD.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr[ExchangeShippingTypeDto.CLICK_AND_COLLECT.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        f45030a = iArr;
    }
}
