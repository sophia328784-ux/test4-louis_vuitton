package com.vuitton.android.presentation.screen.orders.models;

import defpackage.a;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;", "", "", "identifier", "shippingGroupId", "Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;", "shippingType", "invoiceLink", "", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;", "items", "transactionAmount", "Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;", "delivery", "returnDisclaimer", "", "isOrderReturnEnabled", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ShippingTypeUiModel;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/DeliveryUiModel;Ljava/lang/String;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class TransactionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f60421a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60422b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ShippingTypeUiModel f60423c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List f60424e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f60425f;
    public final DeliveryUiModel g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f60426h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f60427i;

    public TransactionUiModel(String str, String str2, ShippingTypeUiModel shippingTypeUiModel, String str3, List<TransactionItemUiModel> list, String str4, DeliveryUiModel deliveryUiModel, String str5, boolean z) {
        str.getClass();
        str2.getClass();
        shippingTypeUiModel.getClass();
        list.getClass();
        str4.getClass();
        this.f60421a = str;
        this.f60422b = str2;
        this.f60423c = shippingTypeUiModel;
        this.d = str3;
        this.f60424e = list;
        this.f60425f = str4;
        this.g = deliveryUiModel;
        this.f60426h = str5;
        this.f60427i = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TransactionUiModel)) {
            return false;
        }
        TransactionUiModel transactionUiModel = (TransactionUiModel) obj;
        return Intrinsics.c(this.f60421a, transactionUiModel.f60421a) && Intrinsics.c(this.f60422b, transactionUiModel.f60422b) && this.f60423c == transactionUiModel.f60423c && Intrinsics.c(this.d, transactionUiModel.d) && Intrinsics.c(this.f60424e, transactionUiModel.f60424e) && Intrinsics.c(this.f60425f, transactionUiModel.f60425f) && Intrinsics.c(this.g, transactionUiModel.g) && Intrinsics.c(this.f60426h, transactionUiModel.f60426h) && this.f60427i == transactionUiModel.f60427i;
    }

    public final int hashCode() {
        int iHashCode = (this.f60423c.hashCode() + fc.b(this.f60421a.hashCode() * 31, 31, this.f60422b)) * 31;
        String str = this.d;
        int iB = fc.b(n00.a((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f60424e), 31, this.f60425f);
        DeliveryUiModel deliveryUiModel = this.g;
        int iHashCode2 = (iB + (deliveryUiModel == null ? 0 : deliveryUiModel.hashCode())) * 31;
        String str2 = this.f60426h;
        return Boolean.hashCode(this.f60427i) + ((iHashCode2 + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("TransactionUiModel(identifier=", this.f60421a, ", shippingGroupId=", this.f60422b, ", shippingType=");
        sbS.append(this.f60423c);
        sbS.append(", invoiceLink=");
        sbS.append(this.d);
        sbS.append(", items=");
        o60.B(", transactionAmount=", this.f60425f, ", delivery=", sbS, this.f60424e);
        sbS.append(this.g);
        sbS.append(", returnDisclaimer=");
        sbS.append(this.f60426h);
        sbS.append(", isOrderReturnEnabled=");
        return a.p(sbS, this.f60427i, ")");
    }

    public /* synthetic */ TransactionUiModel(String str, String str2, ShippingTypeUiModel shippingTypeUiModel, String str3, List list, String str4, DeliveryUiModel deliveryUiModel, String str5, boolean z, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, shippingTypeUiModel, str3, list, str4, deliveryUiModel, (i2 & 128) != 0 ? null : str5, (i2 & 256) != 0 ? false : z);
    }
}
