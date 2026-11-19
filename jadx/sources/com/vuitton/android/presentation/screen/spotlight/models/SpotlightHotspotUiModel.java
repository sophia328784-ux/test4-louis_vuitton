package com.vuitton.android.presentation.screen.spotlight.models;

import com.vuitton.android.presentation.model.common.AssetUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;", "", "", "identifier", "Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;", "position", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;", "content", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class SpotlightHotspotUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64643a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HotspotPositionUiModel f64644b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetUiModel f64645c;
    public final HotspotContentUiModel d;

    public SpotlightHotspotUiModel(String str, HotspotPositionUiModel hotspotPositionUiModel, AssetUiModel assetUiModel, HotspotContentUiModel hotspotContentUiModel) {
        str.getClass();
        hotspotPositionUiModel.getClass();
        assetUiModel.getClass();
        hotspotContentUiModel.getClass();
        this.f64643a = str;
        this.f64644b = hotspotPositionUiModel;
        this.f64645c = assetUiModel;
        this.d = hotspotContentUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SpotlightHotspotUiModel)) {
            return false;
        }
        SpotlightHotspotUiModel spotlightHotspotUiModel = (SpotlightHotspotUiModel) obj;
        return Intrinsics.c(this.f64643a, spotlightHotspotUiModel.f64643a) && Intrinsics.c(this.f64644b, spotlightHotspotUiModel.f64644b) && Intrinsics.c(this.f64645c, spotlightHotspotUiModel.f64645c) && Intrinsics.c(this.d, spotlightHotspotUiModel.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.f64645c.hashCode() + ((this.f64644b.hashCode() + (this.f64643a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "SpotlightHotspotUiModel(identifier=" + this.f64643a + ", position=" + this.f64644b + ", asset=" + this.f64645c + ", content=" + this.d + ")";
    }
}
