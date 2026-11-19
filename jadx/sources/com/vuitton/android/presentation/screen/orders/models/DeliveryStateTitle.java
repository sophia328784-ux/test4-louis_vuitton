package com.vuitton.android.presentation.screen.orders.models;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.res.StringResources_androidKt;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001f\u0012\n\b\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/DeliveryStateTitle;", "Landroid/os/Parcelable;", "", "titleStringRes", "", "titleString", "<init>", "(Ljava/lang/Integer;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DeliveryStateTitle implements Parcelable {
    public static final Parcelable.Creator<DeliveryStateTitle> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Integer f60237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60238c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<DeliveryStateTitle> {
        @Override // android.os.Parcelable.Creator
        public final DeliveryStateTitle createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new DeliveryStateTitle(parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final DeliveryStateTitle[] newArray(int i2) {
            return new DeliveryStateTitle[i2];
        }
    }

    public /* synthetic */ DeliveryStateTitle(Integer num, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : num, (i2 & 2) != 0 ? null : str);
    }

    public final String a(Composer composer) {
        String strC;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Integer num = this.f60237b;
        if (num == null) {
            composer.L(-824060640);
            composer.F();
            strC = null;
        } else {
            composer.L(-824060639);
            strC = StringResources_androidKt.c(composer, num.intValue());
            composer.F();
        }
        if (strC != null) {
            return strC;
        }
        String str = this.f60238c;
        if (str == null || StringsKt.w(str)) {
            return null;
        }
        return str;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeliveryStateTitle)) {
            return false;
        }
        DeliveryStateTitle deliveryStateTitle = (DeliveryStateTitle) obj;
        return Intrinsics.c(this.f60237b, deliveryStateTitle.f60237b) && Intrinsics.c(this.f60238c, deliveryStateTitle.f60238c);
    }

    public final int hashCode() {
        Integer num = this.f60237b;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.f60238c;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "DeliveryStateTitle(titleStringRes=" + this.f60237b + ", titleString=" + this.f60238c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int iIntValue;
        parcel.getClass();
        Integer num = this.f60237b;
        if (num == null) {
            iIntValue = 0;
        } else {
            parcel.writeInt(1);
            iIntValue = num.intValue();
        }
        parcel.writeInt(iIntValue);
        parcel.writeString(this.f60238c);
    }

    public DeliveryStateTitle(Integer num, String str) {
        this.f60237b = num;
        this.f60238c = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DeliveryStateTitle() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
