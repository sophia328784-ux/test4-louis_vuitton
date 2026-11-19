package com.vuitton.android.presentation.screen.orders.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.cj;
import defpackage.fc;
import defpackage.o60;
import defpackage.pq0;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bq\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u000e\b\u0002\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnItemUiModel;", "", "", "name", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "color", "size", "image", "amountWithVat", "shippingGroupId", "", "isEligibleForReturn", "isSelectedForReturn", "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;", "returnReason", "", "Lcom/vuitton/android/presentation/screen/orders/models/FieldIdentifier;", "fieldsError", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Ljava/util/Set;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OrderReturnItemUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f60282a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60283b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60284c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f60285e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f60286f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f60287h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f60288i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final OrderReturnReasonUiModel f60289j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Set f60290k;

    public /* synthetic */ OrderReturnItemUiModel(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, boolean z2, OrderReturnReasonUiModel orderReturnReasonUiModel, Set set, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, str5, str6, str7, z, (i2 & 256) != 0 ? false : z2, (i2 & 512) != 0 ? null : orderReturnReasonUiModel, (i2 & 1024) != 0 ? new LinkedHashSet() : set, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OrderReturnItemUiModel)) {
            return false;
        }
        OrderReturnItemUiModel orderReturnItemUiModel = (OrderReturnItemUiModel) obj;
        if (!Intrinsics.c(this.f60282a, orderReturnItemUiModel.f60282a)) {
            return false;
        }
        String str = orderReturnItemUiModel.f60283b;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return Intrinsics.c(this.f60283b, str) && Intrinsics.c(this.f60284c, orderReturnItemUiModel.f60284c) && Intrinsics.c(this.d, orderReturnItemUiModel.d) && Intrinsics.c(this.f60285e, orderReturnItemUiModel.f60285e) && Intrinsics.c(this.f60286f, orderReturnItemUiModel.f60286f) && Intrinsics.c(this.g, orderReturnItemUiModel.g) && this.f60287h == orderReturnItemUiModel.f60287h && this.f60288i == orderReturnItemUiModel.f60288i && Intrinsics.c(this.f60289j, orderReturnItemUiModel.f60289j) && Intrinsics.c(this.f60290k, orderReturnItemUiModel.f60290k);
    }

    public final int hashCode() {
        int iHashCode = this.f60282a.hashCode() * 31;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        int iB = fc.b(iHashCode, 31, this.f60283b);
        String str = this.f60284c;
        int iHashCode2 = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iB2 = o60.b(o60.b(fc.b(fc.b(fc.b((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.f60285e), 31, this.f60286f), 31, this.g), 31, this.f60287h), 31, this.f60288i);
        OrderReturnReasonUiModel orderReturnReasonUiModel = this.f60289j;
        return this.f60290k.hashCode() + ((iB2 + (orderReturnReasonUiModel != null ? orderReturnReasonUiModel.hashCode() : 0)) * 31);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        StringBuilder sbS = fc.s("OrderReturnItemUiModel(name=", this.f60282a, ", sku=", this.f60283b, ", color=");
        cj.C(sbS, this.f60284c, ", size=", this.d, ", image=");
        cj.C(sbS, this.f60285e, ", amountWithVat=", this.f60286f, ", shippingGroupId=");
        pq0.A(this.g, ", isEligibleForReturn=", ", isSelectedForReturn=", sbS, this.f60287h);
        sbS.append(this.f60288i);
        sbS.append(", returnReason=");
        sbS.append(this.f60289j);
        sbS.append(", fieldsError=");
        sbS.append(this.f60290k);
        sbS.append(")");
        return sbS.toString();
    }

    public OrderReturnItemUiModel(String str, String str2, String str3, String str4, String str5, String str6, String str7, boolean z, boolean z2, OrderReturnReasonUiModel orderReturnReasonUiModel, Set set, DefaultConstructorMarker defaultConstructorMarker) {
        pq0.z(str, str2, str5, str6, str7);
        set.getClass();
        this.f60282a = str;
        this.f60283b = str2;
        this.f60284c = str3;
        this.d = str4;
        this.f60285e = str5;
        this.f60286f = str6;
        this.g = str7;
        this.f60287h = z;
        this.f60288i = z2;
        this.f60289j = orderReturnReasonUiModel;
        this.f60290k = set;
    }
}
