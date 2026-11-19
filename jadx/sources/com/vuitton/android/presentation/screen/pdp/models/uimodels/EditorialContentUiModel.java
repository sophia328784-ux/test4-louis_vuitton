package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import android.os.Parcel;
import android.os.Parcelable;
import com.batch.android.s.b;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/EditorialContentUiModel;", "Landroid/os/Parcelable;", "", b.a.f24015b, "title", "description", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "link", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class EditorialContentUiModel implements Parcelable {
    public static final Parcelable.Creator<EditorialContentUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f61687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f61688c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetUiModel f61689e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ContributionLinkUiModel f61690f;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<EditorialContentUiModel> {
        @Override // android.os.Parcelable.Creator
        public final EditorialContentUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new EditorialContentUiModel(parcel.readString(), parcel.readString(), parcel.readString(), AssetUiModel.CREATOR.createFromParcel(parcel), (ContributionLinkUiModel) parcel.readParcelable(EditorialContentUiModel.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public final EditorialContentUiModel[] newArray(int i2) {
            return new EditorialContentUiModel[i2];
        }
    }

    public EditorialContentUiModel(String str, String str2, String str3, AssetUiModel assetUiModel, ContributionLinkUiModel contributionLinkUiModel) {
        str.getClass();
        str2.getClass();
        assetUiModel.getClass();
        contributionLinkUiModel.getClass();
        this.f61687b = str;
        this.f61688c = str2;
        this.d = str3;
        this.f61689e = assetUiModel;
        this.f61690f = contributionLinkUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof EditorialContentUiModel)) {
            return false;
        }
        EditorialContentUiModel editorialContentUiModel = (EditorialContentUiModel) obj;
        return Intrinsics.c(this.f61687b, editorialContentUiModel.f61687b) && Intrinsics.c(this.f61688c, editorialContentUiModel.f61688c) && Intrinsics.c(this.d, editorialContentUiModel.d) && Intrinsics.c(this.f61689e, editorialContentUiModel.f61689e) && Intrinsics.c(this.f61690f, editorialContentUiModel.f61690f);
    }

    public final int hashCode() {
        int iB = fc.b(this.f61687b.hashCode() * 31, 31, this.f61688c);
        String str = this.d;
        return this.f61690f.hashCode() + ((this.f61689e.hashCode() + ((iB + (str == null ? 0 : str.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("EditorialContentUiModel(id=", this.f61687b, ", title=", this.f61688c, ", description=");
        sbS.append(this.d);
        sbS.append(", asset=");
        sbS.append(this.f61689e);
        sbS.append(", link=");
        sbS.append(this.f61690f);
        sbS.append(")");
        return sbS.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f61687b);
        parcel.writeString(this.f61688c);
        parcel.writeString(this.d);
        this.f61689e.writeToParcel(parcel, i2);
        parcel.writeParcelable(this.f61690f, i2);
    }

    public /* synthetic */ EditorialContentUiModel(String str, String str2, String str3, AssetUiModel assetUiModel, ContributionLinkUiModel contributionLinkUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, (i2 & 4) != 0 ? null : str3, assetUiModel, contributionLinkUiModel);
    }
}
