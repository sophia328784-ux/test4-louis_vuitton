package com.vuitton.android.presentation.model.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/model/common/CtaUiModel;", "Landroid/os/Parcelable;", "", "label", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "contributionLink", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CtaUiModel implements Parcelable {
    public static final Parcelable.Creator<CtaUiModel> CREATOR = new Creator();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f51787b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ContributionLinkUiModel f51788c;

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<CtaUiModel> {
        @Override // android.os.Parcelable.Creator
        public final CtaUiModel createFromParcel(Parcel parcel) {
            parcel.getClass();
            return new CtaUiModel(parcel.readString(), (ContributionLinkUiModel) parcel.readParcelable(CtaUiModel.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public final CtaUiModel[] newArray(int i2) {
            return new CtaUiModel[i2];
        }
    }

    public CtaUiModel(String str, ContributionLinkUiModel contributionLinkUiModel) {
        str.getClass();
        contributionLinkUiModel.getClass();
        this.f51787b = str;
        this.f51788c = contributionLinkUiModel;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CtaUiModel)) {
            return false;
        }
        CtaUiModel ctaUiModel = (CtaUiModel) obj;
        return Intrinsics.c(this.f51787b, ctaUiModel.f51787b) && Intrinsics.c(this.f51788c, ctaUiModel.f51788c);
    }

    public final int hashCode() {
        return this.f51788c.hashCode() + (this.f51787b.hashCode() * 31);
    }

    public final String toString() {
        return "CtaUiModel(label=" + this.f51787b + ", contributionLink=" + this.f51788c + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.getClass();
        parcel.writeString(this.f51787b);
        parcel.writeParcelable(this.f51788c, i2);
    }
}
