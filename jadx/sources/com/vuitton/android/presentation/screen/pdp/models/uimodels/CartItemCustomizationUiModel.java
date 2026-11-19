package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CartItemCustomizationUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;", "configuration", "<init>", "(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationConfigurationUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CartItemCustomizationUiModel implements Parcelable {
    public static final Parcelable.Creator<CartItemCustomizationUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CustomizationConfigurationUiModel f61663b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CartItemCustomizationUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CartItemCustomizationUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CartItemCustomizationUiModel(CustomizationConfigurationUiModel.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final CartItemCustomizationUiModel[] newArray(int i2) {
            return new CartItemCustomizationUiModel[i2];
        }
    }

    public CartItemCustomizationUiModel(CustomizationConfigurationUiModel customizationConfigurationUiModel) {
        customizationConfigurationUiModel.getClass();
        this.f61663b = customizationConfigurationUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof CartItemCustomizationUiModel) && Intrinsics.c(this.f61663b, ((CartItemCustomizationUiModel) obj).f61663b);
    }

    public final int hashCode() {
        return this.f61663b.hashCode();
    }

    public final String toString() {
        return "CartItemCustomizationUiModel(configuration=" + this.f61663b + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        this.f61663b.writeToParcel(parcel, i2);
    }
}
