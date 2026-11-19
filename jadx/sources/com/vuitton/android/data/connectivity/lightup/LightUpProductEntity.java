package com.vuitton.android.data.connectivity.lightup;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import defpackage.cj;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u0001BO\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/connectivity/lightup/LightUpProductEntity;", "", "", "deviceId", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "type", "name", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;", "powerMode", "presetName", "presetImageUrl", "presetId", "deviceToString", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LightUpProductEntity {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f43570a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LVLightUpDeviceType f43571b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f43572c;
    public final LVLightUpPowerMode d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f43573e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f43574f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f43575h;

    public LightUpProductEntity(String str, LVLightUpDeviceType lVLightUpDeviceType, String str2, LVLightUpPowerMode lVLightUpPowerMode, String str3, String str4, String str5, String str6) {
        str.getClass();
        lVLightUpDeviceType.getClass();
        lVLightUpPowerMode.getClass();
        str6.getClass();
        this.f43570a = str;
        this.f43571b = lVLightUpDeviceType;
        this.f43572c = str2;
        this.d = lVLightUpPowerMode;
        this.f43573e = str3;
        this.f43574f = str4;
        this.g = str5;
        this.f43575h = str6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LightUpProductEntity)) {
            return false;
        }
        LightUpProductEntity lightUpProductEntity = (LightUpProductEntity) obj;
        return Intrinsics.c(this.f43570a, lightUpProductEntity.f43570a) && this.f43571b == lightUpProductEntity.f43571b && Intrinsics.c(this.f43572c, lightUpProductEntity.f43572c) && this.d == lightUpProductEntity.d && Intrinsics.c(this.f43573e, lightUpProductEntity.f43573e) && Intrinsics.c(this.f43574f, lightUpProductEntity.f43574f) && Intrinsics.c(this.g, lightUpProductEntity.g) && Intrinsics.c(this.f43575h, lightUpProductEntity.f43575h);
    }

    public final int hashCode() {
        int iHashCode = (this.f43571b.hashCode() + (this.f43570a.hashCode() * 31)) * 31;
        String str = this.f43572c;
        int iHashCode2 = (this.d.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        String str2 = this.f43573e;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f43574f;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.g;
        return this.f43575h.hashCode() + ((iHashCode4 + (str4 != null ? str4.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LightUpProductEntity(deviceId=");
        sb.append(this.f43570a);
        sb.append(", type=");
        sb.append(this.f43571b);
        sb.append(", name=");
        sb.append(this.f43572c);
        sb.append(", powerMode=");
        sb.append(this.d);
        sb.append(", presetName=");
        cj.C(sb, this.f43573e, ", presetImageUrl=", this.f43574f, ", presetId=");
        return tr.l(sb, this.g, ", deviceToString=", this.f43575h, ")");
    }
}
