package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.foundation.model.domain.model.analytics.AdditionalProperty;
import defpackage.v40;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OrderTrackingDataUiModelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60334a;

        static {
            int[] iArr = new int[ShippingTypeUiModel.values().length];
            try {
                iArr[ShippingTypeUiModel.STANDARD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ShippingTypeUiModel.CLICK_COLLECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f60334a = iArr;
        }
    }

    public static final AdditionalProperty.OrderItem a(OrderTrackingDataUiModel orderTrackingDataUiModel) {
        String str;
        orderTrackingDataUiModel.getClass();
        String str2 = orderTrackingDataUiModel.f60329a;
        int i2 = WhenMappings.f60334a[orderTrackingDataUiModel.f60330b.ordinal()];
        if (i2 == 1) {
            str = "standard";
        } else {
            if (i2 != 2) {
                v40.g();
                return null;
            }
            str = "click_and_collect";
        }
        return new AdditionalProperty.OrderItem(str2, str, orderTrackingDataUiModel.f60331c, orderTrackingDataUiModel.d, orderTrackingDataUiModel.f60332e, orderTrackingDataUiModel.f60333f, 0, null, 192, null);
    }
}
