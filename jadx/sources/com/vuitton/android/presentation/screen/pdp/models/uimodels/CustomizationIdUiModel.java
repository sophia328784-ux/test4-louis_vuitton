package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdUiModel;", "Landroid/os/Parcelable;", "", b.a.f24015b, "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;", "type", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/CustomizationIdTypeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CustomizationIdUiModel implements Parcelable {
    public static final Parcelable.Creator<CustomizationIdUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final CustomizationIdTypeUiModel f61672c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CustomizationIdUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CustomizationIdUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CustomizationIdUiModel(parcel.readString(), CustomizationIdTypeUiModel.valueOf(parcel.readString()));
        }

        @Override // android.os.Parcelable.Creator
        public final CustomizationIdUiModel[] newArray(int i2) {
            return new CustomizationIdUiModel[i2];
        }
    }

    public CustomizationIdUiModel(String str, CustomizationIdTypeUiModel customizationIdTypeUiModel) {
        str.getClass();
        customizationIdTypeUiModel.getClass();
        this.f61671b = str;
        this.f61672c = customizationIdTypeUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomizationIdUiModel)) {
            return false;
        }
        CustomizationIdUiModel customizationIdUiModel = (CustomizationIdUiModel) obj;
        return Intrinsics.c(this.f61671b, customizationIdUiModel.f61671b) && this.f61672c == customizationIdUiModel.f61672c;
    }

    public final int hashCode() {
        return this.f61672c.hashCode() + (this.f61671b.hashCode() * 31);
    }

    public final String toString() {
        return "CustomizationIdUiModel(id=" + this.f61671b + ", type=" + this.f61672c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61671b);
        parcel.writeString(this.f61672c.name());
    }
}
