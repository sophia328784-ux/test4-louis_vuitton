package com.vuitton.android.presentation.screen.repairs.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import defpackage.d21;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/presentation/screen/repairs/models/CancellationReasonUiModel;", "Landroid/os/Parcelable;", "", b.a.f24015b, "description", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CancellationReasonUiModel implements Parcelable {
    public static final Parcelable.Creator<CancellationReasonUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f63977b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f63978c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CancellationReasonUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CancellationReasonUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CancellationReasonUiModel(parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final CancellationReasonUiModel[] newArray(int i2) {
            return new CancellationReasonUiModel[i2];
        }
    }

    public CancellationReasonUiModel(String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f63977b = str;
        this.f63978c = str2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CancellationReasonUiModel)) {
            return false;
        }
        CancellationReasonUiModel cancellationReasonUiModel = (CancellationReasonUiModel) obj;
        return Intrinsics.c(this.f63977b, cancellationReasonUiModel.f63977b) && Intrinsics.c(this.f63978c, cancellationReasonUiModel.f63978c);
    }

    public final int hashCode() {
        return this.f63978c.hashCode() + (this.f63977b.hashCode() * 31);
    }

    public final String toString() {
        return d21.l("CancellationReasonUiModel(id=", this.f63977b, ", description=", this.f63978c, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f63977b);
        parcel.writeString(this.f63978c);
    }
}
