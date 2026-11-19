package com.vuitton.foundation.model.domain.model.dynamicyield;

import defpackage.d21;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.UInt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/dynamicyield/DYCartItem;", "", "", "productId", "Lkotlin/UInt;", "quantity", "", "itemPrice", "<init>", "(Ljava/lang/String;IFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DYCartItem {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f67555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f67556c;

    public DYCartItem(String str, int i2, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        this.f67554a = str;
        this.f67555b = i2;
        this.f67556c = f2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DYCartItem)) {
            return false;
        }
        DYCartItem dYCartItem = (DYCartItem) obj;
        return this.f67554a.equals(dYCartItem.f67554a) && this.f67555b == dYCartItem.f67555b && Float.compare(this.f67556c, dYCartItem.f67556c) == 0;
    }

    public final int hashCode() {
        int iHashCode = this.f67554a.hashCode() * 31;
        UInt.Companion companion = UInt.INSTANCE;
        return Float.hashCode(this.f67556c) + tr.b(this.f67555b, iHashCode, 31);
    }

    public final String toString() {
        UInt.Companion companion = UInt.INSTANCE;
        return d21.e(this.f67556c, ")", fc.s("DYCartItem(productId=", this.f67554a, ", quantity=", String.valueOf(((long) this.f67555b) & BodyPartID.bodyIdMax), ", itemPrice="));
    }
}
