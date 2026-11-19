package com.vuitton.android.presentation.screen.repairs.models.bff;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModel;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;", "Landroid/os/Parcelable;", "", "product", "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;", "request", "date", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HeaderUiModel implements Parcelable {
    public static final Parcelable.Creator<HeaderUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64073b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StringResourceUiModel f64074c;
    public final String d;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<HeaderUiModel> {
        @Override // android.os.Parcelable.Creator
        public final HeaderUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new HeaderUiModel(parcel.readString(), (StringResourceUiModel) parcel.readParcelable(HeaderUiModel.class.getClassLoader()), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final HeaderUiModel[] newArray(int i2) {
            return new HeaderUiModel[i2];
        }
    }

    public HeaderUiModel(String str, StringResourceUiModel stringResourceUiModel, String str2) {
        stringResourceUiModel.getClass();
        str2.getClass();
        this.f64073b = str;
        this.f64074c = stringResourceUiModel;
        this.d = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HeaderUiModel)) {
            return false;
        }
        HeaderUiModel headerUiModel = (HeaderUiModel) obj;
        return Intrinsics.c(this.f64073b, headerUiModel.f64073b) && Intrinsics.c(this.f64074c, headerUiModel.f64074c) && Intrinsics.c(this.d, headerUiModel.d);
    }

    public final int hashCode() {
        String str = this.f64073b;
        int iHashCode = str == null ? 0 : str.hashCode();
        return this.d.hashCode() + ((this.f64074c.hashCode() + (iHashCode * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("HeaderUiModel(product=");
        sb.append(this.f64073b);
        sb.append(", request=");
        sb.append(this.f64074c);
        sb.append(", date=");
        return n00.r(this.d, ")", sb);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f64073b);
        parcel.writeParcelable(this.f64074c, i2);
        parcel.writeString(this.d);
    }
}
