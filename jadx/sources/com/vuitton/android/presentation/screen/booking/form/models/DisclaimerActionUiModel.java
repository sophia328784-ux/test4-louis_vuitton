package com.vuitton.android.presentation.screen.booking.form.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/booking/form/models/DisclaimerActionUiModel;", "", "", "title", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "link", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class DisclaimerActionUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f54562a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContributionLinkUiModel f54563b;

    public DisclaimerActionUiModel(String str, ContributionLinkUiModel contributionLinkUiModel) {
        str.getClass();
        contributionLinkUiModel.getClass();
        this.f54562a = str;
        this.f54563b = contributionLinkUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DisclaimerActionUiModel)) {
            return false;
        }
        DisclaimerActionUiModel disclaimerActionUiModel = (DisclaimerActionUiModel) obj;
        return Intrinsics.c(this.f54562a, disclaimerActionUiModel.f54562a) && Intrinsics.c(this.f54563b, disclaimerActionUiModel.f54563b);
    }

    public final int hashCode() {
        return this.f54563b.hashCode() + (this.f54562a.hashCode() * 31);
    }

    public final String toString() {
        return "DisclaimerActionUiModel(title=" + this.f54562a + ", link=" + this.f54563b + ")";
    }
}
