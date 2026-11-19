package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.foundation.model.domain.model.product.PanelInformationType;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoUiModel;", "Landroid/os/Parcelable;", "Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;", "type", "", "title", "description", "introduction", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PanelInfoUiModel implements Parcelable {
    public static final Parcelable.Creator<PanelInfoUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PanelInformationType f61717b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61718c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f61719e;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<PanelInfoUiModel> {
        @Override // android.os.Parcelable.Creator
        public final PanelInfoUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new PanelInfoUiModel(parcel.readInt() == 0 ? null : PanelInformationType.valueOf(parcel.readString()), parcel.readString(), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final PanelInfoUiModel[] newArray(int i2) {
            return new PanelInfoUiModel[i2];
        }
    }

    public PanelInfoUiModel(PanelInformationType panelInformationType, String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.f61717b = panelInformationType;
        this.f61718c = str;
        this.d = str2;
        this.f61719e = str3;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PanelInfoUiModel)) {
            return false;
        }
        PanelInfoUiModel panelInfoUiModel = (PanelInfoUiModel) obj;
        return this.f61717b == panelInfoUiModel.f61717b && Intrinsics.c(this.f61718c, panelInfoUiModel.f61718c) && Intrinsics.c(this.d, panelInfoUiModel.d) && Intrinsics.c(this.f61719e, panelInfoUiModel.f61719e);
    }

    public final int hashCode() {
        PanelInformationType panelInformationType = this.f61717b;
        int iB = fc.b(fc.b((panelInformationType == null ? 0 : panelInformationType.hashCode()) * 31, 31, this.f61718c), 31, this.d);
        String str = this.f61719e;
        return iB + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PanelInfoUiModel(type=");
        sb.append(this.f61717b);
        sb.append(", title=");
        sb.append(this.f61718c);
        sb.append(", description=");
        return tr.l(sb, this.d, ", introduction=", this.f61719e, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        PanelInformationType panelInformationType = this.f61717b;
        if (panelInformationType == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeString(panelInformationType.name());
        }
        parcel.writeString(this.f61718c);
        parcel.writeString(this.d);
        parcel.writeString(this.f61719e);
    }

    public /* synthetic */ PanelInfoUiModel(PanelInformationType panelInformationType, String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(panelInformationType, str, str2, (i2 & 8) != 0 ? null : str3);
    }
}
