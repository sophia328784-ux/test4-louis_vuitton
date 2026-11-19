package com.vuitton.foundation.model.domain.model.chat;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import java.math.BigDecimal;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/chat/ChatProductModel;", "", "", "name", "mainImageUrl", "webUrl", "Ljava/math/BigDecimal;", "price", "categoryId", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "skuId", "", "quantity", "currency", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/math/BigDecimal;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ChatProductModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67087a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67088b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67089c;
    public final BigDecimal d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67091f;
    public final int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67092h;

    public /* synthetic */ ChatProductModel(String str, String str2, String str3, BigDecimal bigDecimal, String str4, String str5, int i2, String str6, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, bigDecimal, str4, str5, (i3 & 64) != 0 ? 1 : i2, str6, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ChatProductModel)) {
            return false;
        }
        ChatProductModel chatProductModel = (ChatProductModel) obj;
        if (!Intrinsics.c(this.f67087a, chatProductModel.f67087a) || !Intrinsics.c(this.f67088b, chatProductModel.f67088b) || !Intrinsics.c(this.f67089c, chatProductModel.f67089c) || !Intrinsics.c(this.d, chatProductModel.d) || !Intrinsics.c(this.f67090e, chatProductModel.f67090e)) {
            return false;
        }
        String str = chatProductModel.f67091f;
        SkuId.Companion companion = SkuId.INSTANCE;
        return Intrinsics.c(this.f67091f, str) && this.g == chatProductModel.g && Intrinsics.c(this.f67092h, chatProductModel.f67092h);
    }

    public final int hashCode() {
        int iHashCode = this.f67087a.hashCode() * 31;
        String str = this.f67088b;
        int iB = fc.b((iHashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f67089c);
        BigDecimal bigDecimal = this.d;
        int iHashCode2 = (iB + (bigDecimal == null ? 0 : bigDecimal.hashCode())) * 31;
        String str2 = this.f67090e;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        SkuId.Companion companion = SkuId.INSTANCE;
        int iB2 = tr.b(this.g, fc.b(iHashCode3, 31, this.f67091f), 31);
        String str3 = this.f67092h;
        return iB2 + (str3 != null ? str3.hashCode() : 0);
    }

    public final String toString() {
        SkuId.Companion companion = SkuId.INSTANCE;
        StringBuilder sbS = fc.s("ChatProductModel(name=", this.f67087a, ", mainImageUrl=", this.f67088b, ", webUrl=");
        sbS.append(this.f67089c);
        sbS.append(", price=");
        sbS.append(this.d);
        sbS.append(", categoryId=");
        cj.C(sbS, this.f67090e, ", skuId=", this.f67091f, ", quantity=");
        sbS.append(this.g);
        sbS.append(", currency=");
        sbS.append(this.f67092h);
        sbS.append(")");
        return sbS.toString();
    }

    public ChatProductModel(String str, String str2, String str3, BigDecimal bigDecimal, String str4, String str5, int i2, String str6, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str3, str5);
        this.f67087a = str;
        this.f67088b = str2;
        this.f67089c = str3;
        this.d = bigDecimal;
        this.f67090e = str4;
        this.f67091f = str5;
        this.g = i2;
        this.f67092h = str6;
    }
}
