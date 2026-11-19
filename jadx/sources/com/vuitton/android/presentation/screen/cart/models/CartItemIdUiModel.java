package com.vuitton.android.presentation.screen.cart.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001\u0088\u0001\u0002\u0092\u0001\u00020\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;", "Landroid/os/Parcelable;", b.a.f24015b, "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class CartItemIdUiModel implements Parcelable {
    public static final Parcelable.Creator<CartItemIdUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f55143b;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CartItemIdUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CartItemIdUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            Parcelable.Creator<CartItemIdUiModel> creator = CartItemIdUiModel.CREATOR;
            string.getClass();
            return new CartItemIdUiModel(string);
        }

        @Override // android.os.Parcelable.Creator
        public final CartItemIdUiModel[] newArray(int i2) {
            return new CartItemIdUiModel[i2];
        }
    }

    public /* synthetic */ CartItemIdUiModel(String str) {
        this.f55143b = str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CartItemIdUiModel) {
            return Intrinsics.c(this.f55143b, ((CartItemIdUiModel) obj).f55143b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f55143b.hashCode();
    }

    public final String toString() {
        return fc.h("CartItemIdUiModel(id=", this.f55143b, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.getClass();
        parcel.writeString(this.f55143b);
    }
}
