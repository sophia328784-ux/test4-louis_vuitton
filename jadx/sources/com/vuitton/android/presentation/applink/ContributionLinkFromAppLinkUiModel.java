package com.vuitton.android.presentation.applink;

import com.vuitton.android.presentation.contributionlink.ContributionLinkUiModel;
import com.vuitton.android.presentation.dispatch.DispatchUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/applink/ContributionLinkFromAppLinkUiModel;", "", "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;", "link", "Lcom/vuitton/android/presentation/dispatch/DispatchUiModel;", "swapDispatch", "<init>", "(Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/dispatch/DispatchUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ContributionLinkFromAppLinkUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContributionLinkUiModel f50545a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final DispatchUiModel f50546b;

    public ContributionLinkFromAppLinkUiModel(ContributionLinkUiModel contributionLinkUiModel, DispatchUiModel dispatchUiModel) {
        contributionLinkUiModel.getClass();
        this.f50545a = contributionLinkUiModel;
        this.f50546b = dispatchUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ContributionLinkFromAppLinkUiModel)) {
            return false;
        }
        ContributionLinkFromAppLinkUiModel contributionLinkFromAppLinkUiModel = (ContributionLinkFromAppLinkUiModel) obj;
        return Intrinsics.c(this.f50545a, contributionLinkFromAppLinkUiModel.f50545a) && Intrinsics.c(this.f50546b, contributionLinkFromAppLinkUiModel.f50546b);
    }

    public final int hashCode() {
        int iHashCode = this.f50545a.hashCode() * 31;
        DispatchUiModel dispatchUiModel = this.f50546b;
        return iHashCode + (dispatchUiModel == null ? 0 : dispatchUiModel.hashCode());
    }

    public final String toString() {
        return "ContributionLinkFromAppLinkUiModel(link=" + this.f50545a + ", swapDispatch=" + this.f50546b + ")";
    }

    public /* synthetic */ ContributionLinkFromAppLinkUiModel(ContributionLinkUiModel contributionLinkUiModel, DispatchUiModel dispatchUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(contributionLinkUiModel, (i2 & 2) != 0 ? null : dispatchUiModel);
    }
}
