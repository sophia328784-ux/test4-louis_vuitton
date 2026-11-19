package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.fc;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ExchangeSetupProductUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "imageUrl", "name", "", "details", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ExchangeSetupProductUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f60248a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60249b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60250c;
    public final List d;

    public ExchangeSetupProductUiModel(String str, String str2, String str3, List list, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        list.getClass();
        this.f60248a = str;
        this.f60249b = str2;
        this.f60250c = str3;
        this.d = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ExchangeSetupProductUiModel)) {
            return false;
        }
        ExchangeSetupProductUiModel exchangeSetupProductUiModel = (ExchangeSetupProductUiModel) obj;
        String str = exchangeSetupProductUiModel.f60248a;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f60248a.equals(str) && this.f60249b.equals(exchangeSetupProductUiModel.f60249b) && this.f60250c.equals(exchangeSetupProductUiModel.f60250c) && this.d.equals(exchangeSetupProductUiModel.d);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.d.hashCode() + fc.b(fc.b(this.f60248a.hashCode() * 31, 31, this.f60249b), 31, this.f60250c);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return o60.o(this.f60250c, ", details=", ")", fc.s("ExchangeSetupProductUiModel(sku=", this.f60248a, ", imageUrl=", this.f60249b, ", name="), this.d);
    }
}
