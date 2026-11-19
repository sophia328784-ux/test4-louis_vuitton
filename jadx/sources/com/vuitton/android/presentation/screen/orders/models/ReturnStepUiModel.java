package com.vuitton.android.presentation.screen.orders.models;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/orders/models/ReturnStepUiModel;", "Landroid/os/Parcelable;", "", b.a.f24015b, "title", "Lcom/vuitton/android/presentation/screen/orders/models/ReturnValidationUiModel;", "validation", "", "titleResId", "priority", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/ReturnValidationUiModel;Ljava/lang/Integer;Ljava/lang/Integer;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ReturnStepUiModel implements Parcelable {
    public static final Parcelable.Creator<ReturnStepUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f60403b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f60404c;
    public final ReturnValidationUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Integer f60405e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Integer f60406f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<ReturnStepUiModel> {
        @Override // android.os.Parcelable.Creator
        public final ReturnStepUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new ReturnStepUiModel(parcel.readString(), parcel.readString(), ReturnValidationUiModel.valueOf(parcel.readString()), parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt()), parcel.readInt() != 0 ? Integer.valueOf(parcel.readInt()) : null);
        }

        @Override // android.os.Parcelable.Creator
        public final ReturnStepUiModel[] newArray(int i2) {
            return new ReturnStepUiModel[i2];
        }
    }

    public ReturnStepUiModel(String str, String str2, ReturnValidationUiModel returnValidationUiModel, Integer num, Integer num2) {
        str.getClass();
        str2.getClass();
        returnValidationUiModel.getClass();
        this.f60403b = str;
        this.f60404c = str2;
        this.d = returnValidationUiModel;
        this.f60405e = num;
        this.f60406f = num2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ReturnStepUiModel)) {
            return false;
        }
        ReturnStepUiModel returnStepUiModel = (ReturnStepUiModel) obj;
        return Intrinsics.c(this.f60403b, returnStepUiModel.f60403b) && Intrinsics.c(this.f60404c, returnStepUiModel.f60404c) && this.d == returnStepUiModel.d && Intrinsics.c(this.f60405e, returnStepUiModel.f60405e) && Intrinsics.c(this.f60406f, returnStepUiModel.f60406f);
    }

    public final int hashCode() {
        int iHashCode = (this.d.hashCode() + fc.b(this.f60403b.hashCode() * 31, 31, this.f60404c)) * 31;
        Integer num = this.f60405e;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        Integer num2 = this.f60406f;
        return iHashCode2 + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("ReturnStepUiModel(id=", this.f60403b, ", title=", this.f60404c, ", validation=");
        sbS.append(this.d);
        sbS.append(", titleResId=");
        sbS.append(this.f60405e);
        sbS.append(", priority=");
        sbS.append(this.f60406f);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f60403b);
        parcel.writeString(this.f60404c);
        parcel.writeString(this.d.name());
        Integer num = this.f60405e;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        Integer num2 = this.f60406f;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        }
    }

    public /* synthetic */ ReturnStepUiModel(String str, String str2, ReturnValidationUiModel returnValidationUiModel, Integer num, Integer num2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, returnValidationUiModel, (i2 & 8) != 0 ? null : num, (i2 & 16) != 0 ? null : num2);
    }
}
