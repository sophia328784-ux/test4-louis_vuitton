package com.vuitton.android.presentation.screen.connectivity;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u00012\u00020\u0002B[\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u000b¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/WatchUiModel;", "Lcom/vuitton/android/presentation/screen/connectivity/ConnectedObjectUiModel;", "Landroid/os/Parcelable;", "", b.a.f24015b, "iotKey", "serialNumber", "desc", "name", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "imageDrawableId", "imageUrl", "version", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WatchUiModel extends ConnectedObjectUiModel implements Parcelable {
    public static final Parcelable.Creator<WatchUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f55971c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f55972e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f55973f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f55974h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f55975i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f55976j;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<WatchUiModel> {
        @Override // android.os.Parcelable.Creator
        public final WatchUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            String string5 = parcel.readString();
            SkuIdUiModel skuIdUiModelCreateFromParcel = parcel.readInt() == 0 ? null : SkuIdUiModel.CREATOR.createFromParcel(parcel);
            return new WatchUiModel(string, string2, string3, string4, string5, skuIdUiModelCreateFromParcel != null ? skuIdUiModelCreateFromParcel.f61764b : null, parcel.readInt(), parcel.readString(), parcel.readInt(), null);
        }

        @Override // android.os.Parcelable.Creator
        public final WatchUiModel[] newArray(int i2) {
            return new WatchUiModel[i2];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchUiModel(String str, String str2, String str3, String str4, String str5, String str6, int i2, String str7, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        super(null);
        str3.getClass();
        this.f55970b = str;
        this.f55971c = str2;
        this.d = str3;
        this.f55972e = str4;
        this.f55973f = str5;
        this.g = str6;
        this.f55974h = i2;
        this.f55975i = str7;
        this.f55976j = i3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x004d  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WatchUiModel)) {
            return false;
        }
        WatchUiModel watchUiModel = (WatchUiModel) obj;
        if (!Intrinsics.c(this.f55970b, watchUiModel.f55970b) || !Intrinsics.c(this.f55971c, watchUiModel.f55971c) || !Intrinsics.c(this.d, watchUiModel.d) || !Intrinsics.c(this.f55972e, watchUiModel.f55972e) || !Intrinsics.c(this.f55973f, watchUiModel.f55973f)) {
            return false;
        }
        String str = watchUiModel.g;
        String str2 = this.g;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            zC = Intrinsics.c(str2, str);
        }
        return zC && this.f55974h == watchUiModel.f55974h && Intrinsics.c(this.f55975i, watchUiModel.f55975i) && this.f55976j == watchUiModel.f55976j;
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f55970b;
        int iHashCode2 = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f55971c;
        int iB = fc.b((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.d);
        String str3 = this.f55972e;
        int iHashCode3 = (iB + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f55973f;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.g;
        if (str5 == null) {
            iHashCode = 0;
        } else {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            iHashCode = str5.hashCode();
        }
        int iB2 = tr.b(this.f55974h, (iHashCode4 + iHashCode) * 31, 31);
        String str6 = this.f55975i;
        return Integer.hashCode(this.f55976j) + ((iB2 + (str6 != null ? str6.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.g;
        if (str == null) {
            str = "null";
        } else {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        }
        StringBuilder sbS = fc.s("WatchUiModel(id=", this.f55970b, ", iotKey=", this.f55971c, ", serialNumber=");
        cj.C(sbS, this.d, ", desc=", this.f55972e, ", name=");
        cj.C(sbS, this.f55973f, ", sku=", str, ", imageDrawableId=");
        sbS.append(this.f55974h);
        sbS.append(", imageUrl=");
        sbS.append(this.f55975i);
        sbS.append(", version=");
        return a.i(this.f55976j, ")", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f55970b);
        parcel.writeString(this.f55971c);
        parcel.writeString(this.d);
        parcel.writeString(this.f55972e);
        parcel.writeString(this.f55973f);
        String str = this.g;
        if (str == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            parcel.writeString(str);
        }
        parcel.writeInt(this.f55974h);
        parcel.writeString(this.f55975i);
        parcel.writeInt(this.f55976j);
    }
}
