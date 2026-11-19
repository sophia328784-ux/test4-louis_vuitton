package com.vuitton.android.presentation.screen.orders.models;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bw\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization;", "Landroid/os/Parcelable;", "Text", "Color", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Color;", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Text;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface TransactionItemCustomization extends Parcelable {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Color;", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization;", "", "title", "hexCode", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Color implements TransactionItemCustomization {
        public static final Parcelable.Creator<Color> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f60409b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f60410c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Color> {
            @Override // android.os.Parcelable.Creator
            public final Color createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Color(parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Color[] newArray(int i2) {
                return new Color[i2];
            }
        }

        public Color(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f60409b = str;
            this.f60410c = str2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Color)) {
                return false;
            }
            Color color = (Color) obj;
            return Intrinsics.c(this.f60409b, color.f60409b) && Intrinsics.c(this.f60410c, color.f60410c);
        }

        public final int hashCode() {
            return this.f60410c.hashCode() + (this.f60409b.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("Color(title=", this.f60409b, ", hexCode=", this.f60410c, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f60409b);
            parcel.writeString(this.f60410c);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Text;", "Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization;", "", "title", "label", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class Text implements TransactionItemCustomization {
        public static final Parcelable.Creator<Text> CREATOR = new Creator();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f60411b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f60412c;

        @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
        public static final class Creator implements Parcelable.Creator<Text> {
            @Override // android.os.Parcelable.Creator
            public final Text createFromParcel(Parcel parcel) {
                parcel.getClass();
                return new Text(parcel.readString(), parcel.readString());
            }

            @Override // android.os.Parcelable.Creator
            public final Text[] newArray(int i2) {
                return new Text[i2];
            }
        }

        public Text(String str, String str2) {
            str.getClass();
            str2.getClass();
            this.f60411b = str;
            this.f60412c = str2;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Text)) {
                return false;
            }
            Text text = (Text) obj;
            return Intrinsics.c(this.f60411b, text.f60411b) && Intrinsics.c(this.f60412c, text.f60412c);
        }

        public final int hashCode() {
            return this.f60412c.hashCode() + (this.f60411b.hashCode() * 31);
        }

        public final String toString() {
            return d21.l("Text(title=", this.f60411b, ", label=", this.f60412c, ")");
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i2) {
            parcel.getClass();
            parcel.writeString(this.f60411b);
            parcel.writeString(this.f60412c);
        }
    }
}
