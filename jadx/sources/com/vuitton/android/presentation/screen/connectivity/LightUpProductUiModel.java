package com.vuitton.android.presentation.screen.connectivity;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpDeviceType;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002BU\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/LightUpProductUiModel;", "Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;", "Landroid/os/Parcelable;", "", "deviceId", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;", "type", "name", "Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;", "powerMode", "deviceToString", "presetName", "presetImageUrl", "presetId", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpDeviceType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class LightUpProductUiModel extends ConnectedObjectUiModel implements Parcelable {
    public static final Parcelable.Creator<LightUpProductUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LVLightUpDeviceType f55961c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LVLightUpPowerMode f55962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f55963f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f55964h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f55965i;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<LightUpProductUiModel> {
        @Override // android.os.Parcelable.Creator
        public final LightUpProductUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new LightUpProductUiModel(parcel.readString(), LVLightUpDeviceType.valueOf(parcel.readString()), parcel.readString(), LVLightUpPowerMode.valueOf(parcel.readString()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final LightUpProductUiModel[] newArray(int i2) {
            return new LightUpProductUiModel[i2];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LightUpProductUiModel(String str, LVLightUpDeviceType lVLightUpDeviceType, String str2, LVLightUpPowerMode lVLightUpPowerMode, String str3, String str4, String str5, String str6) {
        super(null);
        str.getClass();
        lVLightUpDeviceType.getClass();
        lVLightUpPowerMode.getClass();
        str3.getClass();
        this.f55960b = str;
        this.f55961c = lVLightUpDeviceType;
        this.d = str2;
        this.f55962e = lVLightUpPowerMode;
        this.f55963f = str3;
        this.g = str4;
        this.f55964h = str5;
        this.f55965i = str6;
    }

    public static LightUpProductUiModel a(LightUpProductUiModel lightUpProductUiModel, LVLightUpPowerMode lVLightUpPowerMode, String str, String str2, String str3, int i2) {
        String str4 = lightUpProductUiModel.f55960b;
        LVLightUpDeviceType lVLightUpDeviceType = lightUpProductUiModel.f55961c;
        String str5 = lightUpProductUiModel.d;
        if ((i2 & 8) != 0) {
            lVLightUpPowerMode = lightUpProductUiModel.f55962e;
        }
        LVLightUpPowerMode lVLightUpPowerMode2 = lVLightUpPowerMode;
        String str6 = lightUpProductUiModel.f55963f;
        if ((i2 & 32) != 0) {
            str = lightUpProductUiModel.g;
        }
        String str7 = str;
        if ((i2 & 64) != 0) {
            str2 = lightUpProductUiModel.f55964h;
        }
        String str8 = str2;
        if ((i2 & 128) != 0) {
            str3 = lightUpProductUiModel.f55965i;
        }
        lightUpProductUiModel.getClass();
        str4.getClass();
        lVLightUpDeviceType.getClass();
        lVLightUpPowerMode2.getClass();
        str6.getClass();
        return new LightUpProductUiModel(str4, lVLightUpDeviceType, str5, lVLightUpPowerMode2, str6, str7, str8, str3);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LightUpProductUiModel)) {
            return false;
        }
        LightUpProductUiModel lightUpProductUiModel = (LightUpProductUiModel) obj;
        return Intrinsics.c(this.f55960b, lightUpProductUiModel.f55960b) && this.f55961c == lightUpProductUiModel.f55961c && Intrinsics.c(this.d, lightUpProductUiModel.d) && this.f55962e == lightUpProductUiModel.f55962e && Intrinsics.c(this.f55963f, lightUpProductUiModel.f55963f) && Intrinsics.c(this.g, lightUpProductUiModel.g) && Intrinsics.c(this.f55964h, lightUpProductUiModel.f55964h) && Intrinsics.c(this.f55965i, lightUpProductUiModel.f55965i);
    }

    public final int hashCode() {
        int iHashCode = (this.f55961c.hashCode() + (this.f55960b.hashCode() * 31)) * 31;
        String str = this.d;
        int iB = fc.b((this.f55962e.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31, 31, this.f55963f);
        String str2 = this.g;
        int iHashCode2 = (iB + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f55964h;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f55965i;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        LVLightUpPowerMode lVLightUpPowerMode = this.f55962e;
        StringBuilder sb = new StringBuilder("LightUpProductUiModel(deviceId=");
        sb.append(this.f55960b);
        sb.append(", type=");
        sb.append(this.f55961c);
        sb.append(", name=");
        sb.append(this.d);
        sb.append(", powerMode=");
        sb.append(lVLightUpPowerMode);
        sb.append(", deviceToString=");
        cj.C(sb, this.f55963f, ", presetName=", this.g, ", presetImageUrl=");
        return tr.l(sb, this.f55964h, ", presetId=", this.f55965i, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f55960b);
        parcel.writeString(this.f55961c.name());
        parcel.writeString(this.d);
        parcel.writeString(this.f55962e.name());
        parcel.writeString(this.f55963f);
        parcel.writeString(this.g);
        parcel.writeString(this.f55964h);
        parcel.writeString(this.f55965i);
    }

    public /* synthetic */ LightUpProductUiModel(String str, LVLightUpDeviceType lVLightUpDeviceType, String str2, LVLightUpPowerMode lVLightUpPowerMode, String str3, String str4, String str5, String str6, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, lVLightUpDeviceType, str2, lVLightUpPowerMode, str3, (i2 & 32) != 0 ? null : str4, (i2 & 64) != 0 ? null : str5, (i2 & 128) != 0 ? null : str6);
    }
}
