package com.vuitton.android.presentation.screen.spotlight.models;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;", "", "", "title", "description", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;", "cta", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HotspotDetailUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64627a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f64628b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImageUiModel f64629c;
    public final SpotlightCtaUiModel d;

    public HotspotDetailUiModel(String str, String str2, AssetImageUiModel assetImageUiModel, SpotlightCtaUiModel spotlightCtaUiModel) {
        str.getClass();
        assetImageUiModel.getClass();
        spotlightCtaUiModel.getClass();
        this.f64627a = str;
        this.f64628b = str2;
        this.f64629c = assetImageUiModel;
        this.d = spotlightCtaUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HotspotDetailUiModel)) {
            return false;
        }
        HotspotDetailUiModel hotspotDetailUiModel = (HotspotDetailUiModel) obj;
        return Intrinsics.c(this.f64627a, hotspotDetailUiModel.f64627a) && Intrinsics.c(this.f64628b, hotspotDetailUiModel.f64628b) && Intrinsics.c(this.f64629c, hotspotDetailUiModel.f64629c) && Intrinsics.c(this.d, hotspotDetailUiModel.d);
    }

    public final int hashCode() {
        int iHashCode = this.f64627a.hashCode() * 31;
        String str = this.f64628b;
        return this.d.hashCode() + ((this.f64629c.hashCode() + ((iHashCode + (str == null ? 0 : str.hashCode())) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("HotspotDetailUiModel(title=", this.f64627a, ", description=", this.f64628b, ", image=");
        sbS.append(this.f64629c);
        sbS.append(", cta=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
