package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B+\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditoUiModel;", "Landroid/os/Parcelable;", "", "title", "imageUrl", "description", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class EditoUiModel implements Parcelable {
    public static final Parcelable.Creator<EditoUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61684b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61685c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f61686e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<EditoUiModel> {
        @Override // android.os.Parcelable.Creator
        public final EditoUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new EditoUiModel(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final EditoUiModel[] newArray(int i2) {
            return new EditoUiModel[i2];
        }
    }

    public EditoUiModel(String str, String str2, String str3, String str4) {
        str3.getClass();
        str4.getClass();
        this.f61684b = str;
        this.f61685c = str2;
        this.d = str3;
        this.f61686e = str4;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditoUiModel)) {
            return false;
        }
        EditoUiModel editoUiModel = (EditoUiModel) obj;
        return Intrinsics.c(this.f61684b, editoUiModel.f61684b) && Intrinsics.c(this.f61685c, editoUiModel.f61685c) && Intrinsics.c(this.d, editoUiModel.d) && Intrinsics.c(this.f61686e, editoUiModel.f61686e);
    }

    public final int hashCode() {
        String str = this.f61684b;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f61685c;
        return this.f61686e.hashCode() + fc.b((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31, 31, this.d);
    }

    public final String toString() {
        return tr.l(fc.s("EditoUiModel(title=", this.f61684b, ", imageUrl=", this.f61685c, ", description="), this.d, ", cta=", this.f61686e, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61684b);
        parcel.writeString(this.f61685c);
        parcel.writeString(this.d);
        parcel.writeString(this.f61686e);
    }
}
