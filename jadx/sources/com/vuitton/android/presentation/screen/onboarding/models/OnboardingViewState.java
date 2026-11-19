package com.vuitton.android.presentation.screen.onboarding.models;

import defpackage.n00;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B5\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingViewState;", "", "", "isUserConnected", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;", "onboardingAssets", "", "Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssetType;", "onboardingSteps", "displayFallbackLoginImage", "<init>", "(ZLcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;Ljava/util/List;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OnboardingViewState {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f59600a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OnboardingAssets f59601b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List f59602c;
    public final boolean d;

    public OnboardingViewState(boolean z, OnboardingAssets onboardingAssets, List list, boolean z2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? new OnboardingAssets(null, null, null, 7, null) : onboardingAssets, (i2 & 4) != 0 ? EmptyList.f71768b : list, (i2 & 8) != 0 ? false : z2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OnboardingViewState)) {
            return false;
        }
        OnboardingViewState onboardingViewState = (OnboardingViewState) obj;
        return this.f59600a == onboardingViewState.f59600a && Intrinsics.c(this.f59601b, onboardingViewState.f59601b) && Intrinsics.c(this.f59602c, onboardingViewState.f59602c) && this.d == onboardingViewState.d;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.d) + n00.a((this.f59601b.hashCode() + (Boolean.hashCode(this.f59600a) * 31)) * 31, 31, this.f59602c);
    }

    public final String toString() {
        return "OnboardingViewState(isUserConnected=" + this.f59600a + ", onboardingAssets=" + this.f59601b + ", onboardingSteps=" + this.f59602c + ", displayFallbackLoginImage=" + this.d + ")";
    }

    public OnboardingViewState(boolean z, OnboardingAssets onboardingAssets, List<? extends OnboardingAssetType> list, boolean z2) {
        onboardingAssets.getClass();
        list.getClass();
        this.f59600a = z;
        this.f59601b = onboardingAssets;
        this.f59602c = list;
        this.d = z2;
    }

    public OnboardingViewState() {
        this(false, null, null, false, 15, null);
    }
}
