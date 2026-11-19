package com.vuitton.android.presentation.screen.connectivity.watch;

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
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B[\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\r\u001a\u00020\n¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;", "Landroid/os/Parcelable;", "", b.a.f24015b, "iotKey", "serialNumber", "desc", "name", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "imageDrawableId", "imageUrl", "version", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class WatchUiModel implements Parcelable {
    public static final Parcelable.Creator<WatchUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f56702b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f56703c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f56704e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f56705f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f56706h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f56707i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f56708j;

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

    public WatchUiModel(String str, String str2, String str3, String str4, String str5, String str6, int i2, String str7, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        str3.getClass();
        this.f56702b = str;
        this.f56703c = str2;
        this.d = str3;
        this.f56704e = str4;
        this.f56705f = str5;
        this.g = str6;
        this.f56706h = i2;
        this.f56707i = str7;
        this.f56708j = i3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0050  */
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (this != obj) {
            if (obj instanceof WatchUiModel) {
                WatchUiModel watchUiModel = (WatchUiModel) obj;
                if (Intrinsics.c(this.f56702b, watchUiModel.f56702b) && Intrinsics.c(this.f56703c, watchUiModel.f56703c) && this.d.equals(watchUiModel.d) && Intrinsics.c(this.f56704e, watchUiModel.f56704e) && Intrinsics.c(this.f56705f, watchUiModel.f56705f)) {
                    String str = watchUiModel.g;
                    String str2 = this.g;
                    if (str2 == null) {
                        if (str == null) {
                            zEquals = true;
                        } else {
                            zEquals = false;
                        }
                    } else if (str == null) {
                        zEquals = false;
                    } else {
                        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
                        zEquals = str2.equals(str);
                    }
                    if (zEquals && this.f56706h == watchUiModel.f56706h && Intrinsics.c(this.f56707i, watchUiModel.f56707i) && this.f56708j == watchUiModel.f56708j) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f56702b;
        int iHashCode2 = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f56703c;
        int iB = fc.b((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31, 31, this.d);
        String str3 = this.f56704e;
        int iHashCode3 = (iB + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.f56705f;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.g;
        if (str5 == null) {
            iHashCode = 0;
        } else {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            iHashCode = str5.hashCode();
        }
        int iB2 = tr.b(this.f56706h, (iHashCode4 + iHashCode) * 31, 31);
        String str6 = this.f56707i;
        return Integer.hashCode(this.f56708j) + ((iB2 + (str6 != null ? str6.hashCode() : 0)) * 31);
    }

    public final String toString() {
        String str = this.g;
        if (str == null) {
            str = "null";
        } else {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        }
        StringBuilder sbS = fc.s("WatchUiModel(id=", this.f56702b, ", iotKey=", this.f56703c, ", serialNumber=");
        cj.C(sbS, this.d, ", desc=", this.f56704e, ", name=");
        cj.C(sbS, this.f56705f, ", sku=", str, ", imageDrawableId=");
        sbS.append(this.f56706h);
        sbS.append(", imageUrl=");
        sbS.append(this.f56707i);
        sbS.append(", version=");
        return a.i(this.f56708j, ")", sbS);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f56702b);
        parcel.writeString(this.f56703c);
        parcel.writeString(this.d);
        parcel.writeString(this.f56704e);
        parcel.writeString(this.f56705f);
        String str = this.g;
        if (str == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            parcel.writeString(str);
        }
        parcel.writeInt(this.f56706h);
        parcel.writeString(this.f56707i);
        parcel.writeInt(this.f56708j);
    }
}
