package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SlottedSku;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "sku", "", "slot", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SlottedSku implements Parcelable {
    public static final Parcelable.Creator<SlottedSku> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61766c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<SlottedSku> {
        @Override // android.os.Parcelable.Creator
        public final SlottedSku createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new SlottedSku(SkuIdUiModel.CREATOR.createFromParcel(parcel).f61764b, parcel.readString(), null);
        }

        @Override // android.os.Parcelable.Creator
        public final SlottedSku[] newArray(int i2) {
            return new SlottedSku[i2];
        }
    }

    public SlottedSku(String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        str.getClass();
        str2.getClass();
        this.f61765b = str;
        this.f61766c = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SlottedSku)) {
            return false;
        }
        SlottedSku slottedSku = (SlottedSku) obj;
        String str = slottedSku.f61765b;
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f61765b.equals(str) && this.f61766c.equals(slottedSku.f61766c);
    }

    public final int hashCode() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return this.f61766c.hashCode() + (this.f61765b.hashCode() * 31);
    }

    public final String toString() {
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        return d21.l("SlottedSku(sku=", this.f61765b, ", slot=", this.f61766c, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        parcel.writeString(this.f61765b);
        parcel.writeString(this.f61766c);
    }
}
