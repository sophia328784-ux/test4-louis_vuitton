package com.vuitton.android.presentation.screen.wishlist.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel;", "Landroid/os/Parcelable;", "Companion", b.a.f24015b, "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
@JvmInline
public final class WishlistIdUiModel implements Parcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f65738b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f65737c = new Companion(null);
    public static final Parcelable.Creator<WishlistIdUiModel> CREATOR = new Creator();
    public static final String d = "";

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistIdUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<WishlistIdUiModel> {
        @Override // android.os.Parcelable.Creator
        public final WishlistIdUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            String string = parcel.readString();
            Companion companion = WishlistIdUiModel.f65737c;
            string.getClass();
            return new WishlistIdUiModel(string);
        }

        @Override // android.os.Parcelable.Creator
        public final WishlistIdUiModel[] newArray(int i2) {
            return new WishlistIdUiModel[i2];
        }
    }

    public /* synthetic */ WishlistIdUiModel(String str) {
        this.f65738b = str;
    }

    public static String a(String str) {
        return fc.h("WishlistIdUiModel(id=", str, ")");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof WishlistIdUiModel) {
            return Intrinsics.c(this.f65738b, ((WishlistIdUiModel) obj).f65738b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f65738b.hashCode();
    }

    public final String toString() {
        return a(this.f65738b);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.getClass();
        parcel.writeString(this.f65738b);
    }
}
