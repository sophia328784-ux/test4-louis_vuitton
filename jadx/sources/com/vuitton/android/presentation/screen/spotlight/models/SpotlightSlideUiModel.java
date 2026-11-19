package com.vuitton.android.presentation.screen.spotlight.models;

import com.batch.android.s.b;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.model.common.FeatureThemeUiModel;
import defpackage.fc;
import defpackage.n00;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001Bc\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\f\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightSlideUiModel;", "", "", b.a.f24015b, "title", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "", "assetRatio", "Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;", "introVideo", "outroVideo", "", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;", "hotspots", "Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;", "theme", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;", "cta", "", "isDegradedMode", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;FLcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/model/common/FeatureThemeUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;Z)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SpotlightSlideUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64650a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64651b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetUiModel f64652c;
    public final float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetVideoUiModel f64653e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AssetVideoUiModel f64654f;
    public final List g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final FeatureThemeUiModel f64655h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final SpotlightCtaUiModel f64656i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f64657j;

    public SpotlightSlideUiModel(String str, String str2, AssetUiModel assetUiModel, float f2, AssetVideoUiModel assetVideoUiModel, AssetVideoUiModel assetVideoUiModel2, List<SpotlightHotspotUiModel> list, FeatureThemeUiModel featureThemeUiModel, SpotlightCtaUiModel spotlightCtaUiModel, boolean z) {
        str.getClass();
        str2.getClass();
        assetUiModel.getClass();
        list.getClass();
        featureThemeUiModel.getClass();
        this.f64650a = str;
        this.f64651b = str2;
        this.f64652c = assetUiModel;
        this.d = f2;
        this.f64653e = assetVideoUiModel;
        this.f64654f = assetVideoUiModel2;
        this.g = list;
        this.f64655h = featureThemeUiModel;
        this.f64656i = spotlightCtaUiModel;
        this.f64657j = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightSlideUiModel)) {
            return false;
        }
        SpotlightSlideUiModel spotlightSlideUiModel = (SpotlightSlideUiModel) obj;
        return Intrinsics.c(this.f64650a, spotlightSlideUiModel.f64650a) && Intrinsics.c(this.f64651b, spotlightSlideUiModel.f64651b) && Intrinsics.c(this.f64652c, spotlightSlideUiModel.f64652c) && Float.compare(this.d, spotlightSlideUiModel.d) == 0 && Intrinsics.c(this.f64653e, spotlightSlideUiModel.f64653e) && Intrinsics.c(this.f64654f, spotlightSlideUiModel.f64654f) && Intrinsics.c(this.g, spotlightSlideUiModel.g) && this.f64655h == spotlightSlideUiModel.f64655h && Intrinsics.c(this.f64656i, spotlightSlideUiModel.f64656i) && this.f64657j == spotlightSlideUiModel.f64657j;
    }

    public final int hashCode() {
        int iB = pq0.b((this.f64652c.hashCode() + fc.b(this.f64650a.hashCode() * 31, 31, this.f64651b)) * 31, 31, this.d);
        AssetVideoUiModel assetVideoUiModel = this.f64653e;
        int iHashCode = (iB + (assetVideoUiModel == null ? 0 : assetVideoUiModel.hashCode())) * 31;
        AssetVideoUiModel assetVideoUiModel2 = this.f64654f;
        int iHashCode2 = (this.f64655h.hashCode() + n00.a((iHashCode + (assetVideoUiModel2 == null ? 0 : assetVideoUiModel2.hashCode())) * 31, 31, this.g)) * 31;
        SpotlightCtaUiModel spotlightCtaUiModel = this.f64656i;
        return Boolean.hashCode(this.f64657j) + ((iHashCode2 + (spotlightCtaUiModel != null ? spotlightCtaUiModel.hashCode() : 0)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("SpotlightSlideUiModel(id=", this.f64650a, ", title=", this.f64651b, ", asset=");
        sbS.append(this.f64652c);
        sbS.append(", assetRatio=");
        sbS.append(this.d);
        sbS.append(", introVideo=");
        sbS.append(this.f64653e);
        sbS.append(", outroVideo=");
        sbS.append(this.f64654f);
        sbS.append(", hotspots=");
        sbS.append(this.g);
        sbS.append(", theme=");
        sbS.append(this.f64655h);
        sbS.append(", cta=");
        sbS.append(this.f64656i);
        sbS.append(", isDegradedMode=");
        sbS.append(this.f64657j);
        sbS.append(")");
        return sbS.toString();
    }
}
