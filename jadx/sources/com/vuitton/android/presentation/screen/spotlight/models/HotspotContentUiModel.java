package com.vuitton.android.presentation.screen.spotlight.models;

import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B'\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "productSku", "Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;", "detail", "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;", "product", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightProductUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HotspotContentUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f64624a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HotspotDetailUiModel f64625b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SpotlightProductUiModel f64626c;

    public /* synthetic */ HotspotContentUiModel(String str, HotspotDetailUiModel hotspotDetailUiModel, SpotlightProductUiModel spotlightProductUiModel, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, hotspotDetailUiModel, (i2 & 4) != 0 ? null : spotlightProductUiModel, null);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0016  */
    public final boolean equals(Object obj) {
        boolean zC;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HotspotContentUiModel)) {
            return false;
        }
        HotspotContentUiModel hotspotContentUiModel = (HotspotContentUiModel) obj;
        String str = hotspotContentUiModel.f64624a;
        String str2 = this.f64624a;
        if (str2 == null) {
            if (str == null) {
                zC = true;
            } else {
                zC = false;
            }
        } else if (str == null) {
            zC = false;
        } else {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            zC = Intrinsics.c(str2, str);
        }
        return zC && Intrinsics.c(this.f64625b, hotspotContentUiModel.f64625b) && Intrinsics.c(this.f64626c, hotspotContentUiModel.f64626c);
    }

    public final int hashCode() {
        int iHashCode;
        String str = this.f64624a;
        if (str == null) {
            iHashCode = 0;
        } else {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
            iHashCode = str.hashCode();
        }
        int i2 = iHashCode * 31;
        HotspotDetailUiModel hotspotDetailUiModel = this.f64625b;
        int iHashCode2 = (i2 + (hotspotDetailUiModel == null ? 0 : hotspotDetailUiModel.hashCode())) * 31;
        SpotlightProductUiModel spotlightProductUiModel = this.f64626c;
        return iHashCode2 + (spotlightProductUiModel != null ? spotlightProductUiModel.hashCode() : 0);
    }

    public final String toString() {
        String str = this.f64624a;
        if (str == null) {
            str = "null";
        } else {
            SkuIdUiModel.Companion companion = SkuIdUiModel.f61763c;
        }
        return "HotspotContentUiModel(productSku=" + str + ", detail=" + this.f64625b + ", product=" + this.f64626c + ")";
    }

    public HotspotContentUiModel(String str, HotspotDetailUiModel hotspotDetailUiModel, SpotlightProductUiModel spotlightProductUiModel, DefaultConstructorMarker defaultConstructorMarker) {
        this.f64624a = str;
        this.f64625b = hotspotDetailUiModel;
        this.f64626c = spotlightProductUiModel;
    }
}
