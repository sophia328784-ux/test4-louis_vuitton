package com.vuitton.android.presentation.screen.onboarding.models;

import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.bouncycastle.asn1.eac.CertificateBody;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u00002\u00020\u0001B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/onboarding/models/OnboardingAssets;", "", "Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;", "logInVideo", "notificationVideo", "geolocationVideo", "<init>", "(Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class OnboardingAssets {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetVideoUiModel f59579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetVideoUiModel f59580b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetVideoUiModel f59581c;

    public /* synthetic */ OnboardingAssets(AssetVideoUiModel assetVideoUiModel, AssetVideoUiModel assetVideoUiModel2, AssetVideoUiModel assetVideoUiModel3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new AssetVideoUiModel(null, null, null, null, null, null, null, CertificateBody.profileType, null) : assetVideoUiModel, (i2 & 2) != 0 ? new AssetVideoUiModel(null, null, null, null, null, null, null, CertificateBody.profileType, null) : assetVideoUiModel2, (i2 & 4) != 0 ? new AssetVideoUiModel(null, null, null, null, null, null, null, CertificateBody.profileType, null) : assetVideoUiModel3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof OnboardingAssets)) {
            return false;
        }
        OnboardingAssets onboardingAssets = (OnboardingAssets) obj;
        return Intrinsics.c(this.f59579a, onboardingAssets.f59579a) && Intrinsics.c(this.f59580b, onboardingAssets.f59580b) && Intrinsics.c(this.f59581c, onboardingAssets.f59581c);
    }

    public final int hashCode() {
        return this.f59581c.hashCode() + ((this.f59580b.hashCode() + (this.f59579a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "OnboardingAssets(logInVideo=" + this.f59579a + ", notificationVideo=" + this.f59580b + ", geolocationVideo=" + this.f59581c + ")";
    }

    public OnboardingAssets(AssetVideoUiModel assetVideoUiModel, AssetVideoUiModel assetVideoUiModel2, AssetVideoUiModel assetVideoUiModel3) {
        assetVideoUiModel.getClass();
        assetVideoUiModel2.getClass();
        assetVideoUiModel3.getClass();
        this.f59579a = assetVideoUiModel;
        this.f59580b = assetVideoUiModel2;
        this.f59581c = assetVideoUiModel3;
    }

    public OnboardingAssets() {
        this(null, null, null, 7, null);
    }
}
