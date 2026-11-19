package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;", "Landroid/os/Parcelable;", "", b.a.f24015b, "title", "description", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HighlightUiModel implements Parcelable {
    public static final Parcelable.Creator<HighlightUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61693b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61694c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetImageUiModel f61695e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ContributionLinkUiModel f61696f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<HighlightUiModel> {
        @Override // android.os.Parcelable.Creator
        public final HighlightUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new HighlightUiModel(parcel.readString(), parcel.readString(), parcel.readString(), AssetImageUiModel.CREATOR.createFromParcel(parcel), (ContributionLinkUiModel) parcel.readParcelable(HighlightUiModel.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public final HighlightUiModel[] newArray(int i2) {
            return new HighlightUiModel[i2];
        }
    }

    public HighlightUiModel(String str, String str2, String str3, AssetImageUiModel assetImageUiModel, ContributionLinkUiModel contributionLinkUiModel) {
        str.getClass();
        str2.getClass();
        assetImageUiModel.getClass();
        contributionLinkUiModel.getClass();
        this.f61693b = str;
        this.f61694c = str2;
        this.d = str3;
        this.f61695e = assetImageUiModel;
        this.f61696f = contributionLinkUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HighlightUiModel)) {
            return false;
        }
        HighlightUiModel highlightUiModel = (HighlightUiModel) obj;
        return Intrinsics.c(this.f61693b, highlightUiModel.f61693b) && Intrinsics.c(this.f61694c, highlightUiModel.f61694c) && Intrinsics.c(this.d, highlightUiModel.d) && Intrinsics.c(this.f61695e, highlightUiModel.f61695e) && Intrinsics.c(this.f61696f, highlightUiModel.f61696f);
    }

    public final int hashCode() {
        int iB = fc.b(this.f61693b.hashCode() * 31, 31, this.f61694c);
        String str = this.d;
        return this.f61696f.hashCode() + ((this.f61695e.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("HighlightUiModel(id=", this.f61693b, ", title=", this.f61694c, ", description=");
        sbS.append(this.d);
        sbS.append(", image=");
        sbS.append(this.f61695e);
        sbS.append(", link=");
        sbS.append(this.f61696f);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61693b);
        parcel.writeString(this.f61694c);
        parcel.writeString(this.d);
        this.f61695e.writeToParcel(parcel, i2);
        parcel.writeParcelable(this.f61696f, i2);
    }

    public /* synthetic */ HighlightUiModel(String str, String str2, String str3, AssetImageUiModel assetImageUiModel, ContributionLinkUiModel contributionLinkUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, assetImageUiModel, contributionLinkUiModel);
    }
}
