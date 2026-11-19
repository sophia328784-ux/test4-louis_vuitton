package com.vuitton.android.presentation.screen.account.addressbook.models;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel;", "Landroid/os/Parcelable;", "Companion", "value", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class AddressIdUiModel implements Parcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52201b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f52200c = new Companion(null);
    public static final Parcelable.Creator<AddressIdUiModel> CREATOR = new Creator();

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressIdUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<AddressIdUiModel> {
        @Override // android.os.Parcelable.Creator
        public final AddressIdUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            Companion companion = AddressIdUiModel.f52200c;
            string.getClass();
            return new AddressIdUiModel(string);
        }

        @Override // android.os.Parcelable.Creator
        public final AddressIdUiModel[] newArray(int i2) {
            return new AddressIdUiModel[i2];
        }
    }

    public /* synthetic */ AddressIdUiModel(String str) {
        this.f52201b = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof AddressIdUiModel) {
            return this.f52201b.equals(((AddressIdUiModel) obj).f52201b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f52201b.hashCode();
    }

    /* JADX INFO: renamed from: toString, reason: from getter */
    public final String getF52201b() {
        return this.f52201b;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f52201b);
    }
}
