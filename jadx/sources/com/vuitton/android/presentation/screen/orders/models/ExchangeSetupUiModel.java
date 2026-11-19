package com.vuitton.android.presentation.screen.orders.models;

import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupUiModel;", "", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupProductUiModel;", "product", "", "shippingAddress", "Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel;", "shippingMethod", "<init>", "(Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupProductUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupShippingMethodUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ExchangeSetupUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ExchangeSetupProductUiModel f60259a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60260b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ExchangeSetupShippingMethodUiModel f60261c;

    public ExchangeSetupUiModel(ExchangeSetupProductUiModel exchangeSetupProductUiModel, String str, ExchangeSetupShippingMethodUiModel exchangeSetupShippingMethodUiModel) {
        exchangeSetupProductUiModel.getClass();
        str.getClass();
        exchangeSetupShippingMethodUiModel.getClass();
        this.f60259a = exchangeSetupProductUiModel;
        this.f60260b = str;
        this.f60261c = exchangeSetupShippingMethodUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeSetupUiModel)) {
            return false;
        }
        ExchangeSetupUiModel exchangeSetupUiModel = (ExchangeSetupUiModel) obj;
        return Intrinsics.c(this.f60259a, exchangeSetupUiModel.f60259a) && Intrinsics.c(this.f60260b, exchangeSetupUiModel.f60260b) && Intrinsics.c(this.f60261c, exchangeSetupUiModel.f60261c);
    }

    public final int hashCode() {
        return this.f60261c.hashCode() + fc.b(this.f60259a.hashCode() * 31, 31, this.f60260b);
    }

    public final String toString() {
        return "ExchangeSetupUiModel(product=" + this.f60259a + ", shippingAddress=" + this.f60260b + ", shippingMethod=" + this.f60261c + ")";
    }
}
