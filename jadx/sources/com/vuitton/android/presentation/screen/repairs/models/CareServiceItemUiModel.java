package com.vuitton.android.presentation.screen.repairs.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.o60;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f\u0012\u0006\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceItemUiModel;", "Landroid/os/Parcelable;", "", b.a.f24015b, "instructionName", "instructionCode", "instructionNameICONiCS", "", "initialPrice", "updatedPrice", "", "quantity", "", "approved", "addedByRepairCenter", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Double;IZZ)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceItemUiModel implements Parcelable {
    public static final Parcelable.Creator<CareServiceItemUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f63987b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f63988c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f63989e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final double f63990f;
    public final Double g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f63991h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f63992i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f63993j;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CareServiceItemUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CareServiceItemUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            String string2 = parcel.readString();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            double d = parcel.readDouble();
            Double dValueOf = parcel.readInt() == 0 ? null : Double.valueOf(parcel.readDouble());
            int i2 = parcel.readInt();
            boolean z = false;
            if (parcel.readInt() != 0) {
                z = true;
            }
            return new CareServiceItemUiModel(string, string2, string3, string4, d, dValueOf, i2, z, parcel.readInt() != 0);
        }

        @Override // android.os.Parcelable.Creator
        public final CareServiceItemUiModel[] newArray(int i2) {
            return new CareServiceItemUiModel[i2];
        }
    }

    public CareServiceItemUiModel(String str, String str2, String str3, String str4, double d, Double d2, int i2, boolean z, boolean z2) {
        d21.y(str, str2, str3, str4);
        this.f63987b = str;
        this.f63988c = str2;
        this.d = str3;
        this.f63989e = str4;
        this.f63990f = d;
        this.g = d2;
        this.f63991h = i2;
        this.f63992i = z;
        this.f63993j = z2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceItemUiModel)) {
            return false;
        }
        CareServiceItemUiModel careServiceItemUiModel = (CareServiceItemUiModel) obj;
        return Intrinsics.c(this.f63987b, careServiceItemUiModel.f63987b) && Intrinsics.c(this.f63988c, careServiceItemUiModel.f63988c) && Intrinsics.c(this.d, careServiceItemUiModel.d) && Intrinsics.c(this.f63989e, careServiceItemUiModel.f63989e) && Double.compare(this.f63990f, careServiceItemUiModel.f63990f) == 0 && Intrinsics.c(this.g, careServiceItemUiModel.g) && this.f63991h == careServiceItemUiModel.f63991h && this.f63992i == careServiceItemUiModel.f63992i && this.f63993j == careServiceItemUiModel.f63993j;
    }

    public final int hashCode() {
        int iA = d21.a(this.f63990f, fc.b(fc.b(fc.b(this.f63987b.hashCode() * 31, 31, this.f63988c), 31, this.d), 31, this.f63989e), 31);
        Double d = this.g;
        return Boolean.hashCode(this.f63993j) + o60.b(tr.b(this.f63991h, (iA + (d == null ? 0 : d.hashCode())) * 31, 31), 31, this.f63992i);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CareServiceItemUiModel(id=", this.f63987b, ", instructionName=", this.f63988c, ", instructionCode=");
        cj.C(sbS, this.d, ", instructionNameICONiCS=", this.f63989e, ", initialPrice=");
        sbS.append(this.f63990f);
        sbS.append(", updatedPrice=");
        sbS.append(this.g);
        sbS.append(", quantity=");
        sbS.append(this.f63991h);
        sbS.append(", approved=");
        sbS.append(this.f63992i);
        sbS.append(", addedByRepairCenter=");
        sbS.append(this.f63993j);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f63987b);
        parcel.writeString(this.f63988c);
        parcel.writeString(this.d);
        parcel.writeString(this.f63989e);
        parcel.writeDouble(this.f63990f);
        Double d = this.g;
        if (d == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeDouble(d.doubleValue());
        }
        parcel.writeInt(this.f63991h);
        parcel.writeInt(this.f63992i ? 1 : 0);
        parcel.writeInt(this.f63993j ? 1 : 0);
    }
}
