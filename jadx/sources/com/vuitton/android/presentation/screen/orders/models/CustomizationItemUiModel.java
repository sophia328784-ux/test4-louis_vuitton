package com.vuitton.android.presentation.screen.orders.models;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.a;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/CustomizationItemUiModel;", "Landroid/os/Parcelable;", "", "initials", "", "gold", "<init>", "(Ljava/lang/String;Ljava/lang/Boolean;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CustomizationItemUiModel implements Parcelable {
    public static final Parcelable.Creator<CustomizationItemUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60235b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Boolean f60236c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CustomizationItemUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CustomizationItemUiModel createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            parcel.getClass();
            String string = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            return new CustomizationItemUiModel(string, boolValueOf);
        }

        @Override // android.os.Parcelable.Creator
        public final CustomizationItemUiModel[] newArray(int i2) {
            return new CustomizationItemUiModel[i2];
        }
    }

    public CustomizationItemUiModel(String str, Boolean bool) {
        this.f60235b = str;
        this.f60236c = bool;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomizationItemUiModel)) {
            return false;
        }
        CustomizationItemUiModel customizationItemUiModel = (CustomizationItemUiModel) obj;
        return Intrinsics.c(this.f60235b, customizationItemUiModel.f60235b) && Intrinsics.c(this.f60236c, customizationItemUiModel.f60236c);
    }

    public final int hashCode() {
        String str = this.f60235b;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Boolean bool = this.f60236c;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public final String toString() {
        return "CustomizationItemUiModel(initials=" + this.f60235b + ", gold=" + this.f60236c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f60235b);
        Boolean bool = this.f60236c;
        if (bool == null) {
            parcel.writeInt(0);
        } else {
            a.w(parcel, 1, bool);
        }
    }
}
