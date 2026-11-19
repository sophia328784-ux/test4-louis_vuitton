package com.vuitton.foundation.model.domain.model.connectivity;

import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001BU\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/connectivity/LightUpProduct;", "Lcom/vuitton/foundation/model/domain/model/connectivity/ConnectedObject;", "", "deviceId", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "type", "name", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;", "powerMode", "deviceToString", "presetName", "presetImageUrl", "presetId", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LightUpProduct extends ConnectedObject {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67294a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LVLightUpDeviceType f67295b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67296c;
    public final LVLightUpPowerMode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67297e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67298f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67299h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightUpProduct(String str, LVLightUpDeviceType lVLightUpDeviceType, String str2, LVLightUpPowerMode lVLightUpPowerMode, String str3, String str4, String str5, String str6) {
        super(null);
        str.getClass();
        lVLightUpDeviceType.getClass();
        lVLightUpPowerMode.getClass();
        str3.getClass();
        this.f67294a = str;
        this.f67295b = lVLightUpDeviceType;
        this.f67296c = str2;
        this.d = lVLightUpPowerMode;
        this.f67297e = str3;
        this.f67298f = str4;
        this.g = str5;
        this.f67299h = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LightUpProduct)) {
            return false;
        }
        LightUpProduct lightUpProduct = (LightUpProduct) obj;
        return Intrinsics.c(this.f67294a, lightUpProduct.f67294a) && this.f67295b == lightUpProduct.f67295b && Intrinsics.c(this.f67296c, lightUpProduct.f67296c) && this.d == lightUpProduct.d && Intrinsics.c(this.f67297e, lightUpProduct.f67297e) && Intrinsics.c(this.f67298f, lightUpProduct.f67298f) && Intrinsics.c(this.g, lightUpProduct.g) && Intrinsics.c(this.f67299h, lightUpProduct.f67299h);
    }

    public final int hashCode() {
        int iHashCode = (this.f67295b.hashCode() + (this.f67294a.hashCode() * 31)) * 31;
        String str = this.f67296c;
        int iB = fc.b((this.d.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.f67297e);
        String str2 = this.f67298f;
        int iHashCode2 = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.g;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f67299h;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LightUpProduct(deviceId=");
        sb.append(this.f67294a);
        sb.append(", type=");
        sb.append(this.f67295b);
        sb.append(", name=");
        sb.append(this.f67296c);
        sb.append(", powerMode=");
        sb.append(this.d);
        sb.append(", deviceToString=");
        cj.C(sb, this.f67297e, ", presetName=", this.f67298f, ", presetImageUrl=");
        return tr.l(sb, this.g, ", presetId=", this.f67299h, ")");
    }

    public /* synthetic */ LightUpProduct(String str, LVLightUpDeviceType lVLightUpDeviceType, String str2, LVLightUpPowerMode lVLightUpPowerMode, String str3, String str4, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, lVLightUpDeviceType, str2, lVLightUpPowerMode, str3, (i2 & 32) != 0 ? null : str4, (i2 & 64) != 0 ? null : str5, (i2 & 128) != 0 ? null : str6);
    }
}
