package com.vuitton.android.presentation.screen.aicompanion.models;

import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/android/presentation/screen/aicompanion/models/AICompanionOnboardingUiModel;", "", "", "videoUrl", "backgroundColor", "Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;", "theme", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AICompanionOnboardingUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f52889a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f52890b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FeatureThemeUiModel f52891c;

    public /* synthetic */ AICompanionOnboardingUiModel(String str, String str2, FeatureThemeUiModel featureThemeUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? new String() : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? FeatureThemeUiModel.DARK : featureThemeUiModel);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AICompanionOnboardingUiModel)) {
            return false;
        }
        AICompanionOnboardingUiModel aICompanionOnboardingUiModel = (AICompanionOnboardingUiModel) obj;
        return Intrinsics.c(this.f52889a, aICompanionOnboardingUiModel.f52889a) && Intrinsics.c(this.f52890b, aICompanionOnboardingUiModel.f52890b) && this.f52891c == aICompanionOnboardingUiModel.f52891c;
    }

    public final int hashCode() {
        int iHashCode = this.f52889a.hashCode() * 31;
        String str = this.f52890b;
        return this.f52891c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AICompanionOnboardingUiModel(videoUrl=", this.f52889a, ", backgroundColor=", this.f52890b, ", theme=");
        sbS.append(this.f52891c);
        sbS.append(")");
        return sbS.toString();
    }

    public AICompanionOnboardingUiModel(String str, String str2, FeatureThemeUiModel featureThemeUiModel) {
        str.getClass();
        featureThemeUiModel.getClass();
        this.f52889a = str;
        this.f52890b = str2;
        this.f52891c = featureThemeUiModel;
    }

    public AICompanionOnboardingUiModel() {
        this(null, null, null, 7, null);
    }
}
