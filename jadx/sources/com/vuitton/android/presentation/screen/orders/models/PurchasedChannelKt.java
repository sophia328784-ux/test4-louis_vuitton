package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.android.R;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PurchasedChannelKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60392a;

        static {
            int[] iArr = new int[ChannelUiModel.values().length];
            try {
                iArr[ChannelUiModel.RETAIL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ChannelUiModel.WEB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ChannelUiModel.CONTACT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f60392a = iArr;
        }
    }

    public static final Integer a(ChannelUiModel channelUiModel) {
        int i2 = channelUiModel == null ? -1 : WhenMappings.f60392a[channelUiModel.ordinal()];
        if (i2 == 1) {
            return Integer.valueOf(R.string.myorders_purchased_order_in_store);
        }
        if (i2 == 2) {
            return Integer.valueOf(R.string.myorders_purchased_order_online);
        }
        if (i2 != 3) {
            return null;
        }
        return Integer.valueOf(R.string.myorders_purchased_order_csc);
    }
}
