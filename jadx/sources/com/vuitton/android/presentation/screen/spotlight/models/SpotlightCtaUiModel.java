package com.vuitton.android.presentation.screen.spotlight.models;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;", "", "", "title", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "link", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SpotlightCtaUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64641a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ContributionLinkUiModel f64642b;

    public SpotlightCtaUiModel(String str, ContributionLinkUiModel contributionLinkUiModel) {
        str.getClass();
        contributionLinkUiModel.getClass();
        this.f64641a = str;
        this.f64642b = contributionLinkUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightCtaUiModel)) {
            return false;
        }
        SpotlightCtaUiModel spotlightCtaUiModel = (SpotlightCtaUiModel) obj;
        return Intrinsics.c(this.f64641a, spotlightCtaUiModel.f64641a) && Intrinsics.c(this.f64642b, spotlightCtaUiModel.f64642b);
    }

    public final int hashCode() {
        return this.f64642b.hashCode() + (this.f64641a.hashCode() * 31);
    }

    public final String toString() {
        return "SpotlightCtaUiModel(title=" + this.f64641a + ", link=" + this.f64642b + ")";
    }
}
