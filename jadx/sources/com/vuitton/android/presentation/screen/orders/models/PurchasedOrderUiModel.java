package com.vuitton.android.presentation.screen.orders.models;

import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.time.LocalDateTime;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B]\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\b\b\u0002\u0010\u000f\u001a\u00020\r\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;", "", "", "purchaseFormattedDate", "Ljava/time/LocalDateTime;", "purchaseDate", "amountWithVat", "", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;", "transactions", "identifier", "Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;", "channel", "", "isOngoing", "isOrderReturnEnabled", "locationId", "<init>", "(Ljava/lang/String;Ljava/time/LocalDateTime;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ChannelUiModel;ZZLjava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PurchasedOrderUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f60393a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocalDateTime f60394b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60395c;
    public final List d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f60396e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ChannelUiModel f60397f;
    public final boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f60398h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f60399i;

    public PurchasedOrderUiModel(String str, LocalDateTime localDateTime, String str2, List<TransactionUiModel> list, String str3, ChannelUiModel channelUiModel, boolean z, boolean z2, String str4) {
        str.getClass();
        localDateTime.getClass();
        str2.getClass();
        list.getClass();
        str3.getClass();
        this.f60393a = str;
        this.f60394b = localDateTime;
        this.f60395c = str2;
        this.d = list;
        this.f60396e = str3;
        this.f60397f = channelUiModel;
        this.g = z;
        this.f60398h = z2;
        this.f60399i = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PurchasedOrderUiModel)) {
            return false;
        }
        PurchasedOrderUiModel purchasedOrderUiModel = (PurchasedOrderUiModel) obj;
        return Intrinsics.c(this.f60393a, purchasedOrderUiModel.f60393a) && Intrinsics.c(this.f60394b, purchasedOrderUiModel.f60394b) && Intrinsics.c(this.f60395c, purchasedOrderUiModel.f60395c) && Intrinsics.c(this.d, purchasedOrderUiModel.d) && Intrinsics.c(this.f60396e, purchasedOrderUiModel.f60396e) && this.f60397f == purchasedOrderUiModel.f60397f && this.g == purchasedOrderUiModel.g && this.f60398h == purchasedOrderUiModel.f60398h && Intrinsics.c(this.f60399i, purchasedOrderUiModel.f60399i);
    }

    public final int hashCode() {
        int iB = fc.b(n00.a(fc.b((this.f60394b.hashCode() + (this.f60393a.hashCode() * 31)) * 31, 31, this.f60395c), 31, this.d), 31, this.f60396e);
        ChannelUiModel channelUiModel = this.f60397f;
        int iB2 = o60.b(o60.b((iB + (channelUiModel == null ? 0 : channelUiModel.hashCode())) * 31, 31, this.g), 31, this.f60398h);
        String str = this.f60399i;
        return iB2 + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PurchasedOrderUiModel(purchaseFormattedDate=");
        sb.append(this.f60393a);
        sb.append(", purchaseDate=");
        sb.append(this.f60394b);
        sb.append(", amountWithVat=");
        d21.z(this.f60395c, ", transactions=", ", identifier=", sb, this.d);
        sb.append(this.f60396e);
        sb.append(", channel=");
        sb.append(this.f60397f);
        sb.append(", isOngoing=");
        fc.y(sb, this.g, ", isOrderReturnEnabled=", this.f60398h, ", locationId=");
        return n00.r(this.f60399i, ")", sb);
    }

    public /* synthetic */ PurchasedOrderUiModel(String str, LocalDateTime localDateTime, String str2, List list, String str3, ChannelUiModel channelUiModel, boolean z, boolean z2, String str4, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, localDateTime, str2, list, str3, channelUiModel, z, (i2 & 128) != 0 ? false : z2, (i2 & 256) != 0 ? null : str4);
    }
}
