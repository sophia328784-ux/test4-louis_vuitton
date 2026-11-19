package com.vuitton.android.presentation.screen.pdp.models.uimodels;

import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PanelInfoHtmlSection;", "", "", "text", "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;", "image", "<init>", "(Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PanelInfoHtmlSection {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f61708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetImageUiModel f61709b;

    public PanelInfoHtmlSection(String str, AssetImageUiModel assetImageUiModel) {
        str.getClass();
        assetImageUiModel.getClass();
        this.f61708a = str;
        this.f61709b = assetImageUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PanelInfoHtmlSection)) {
            return false;
        }
        PanelInfoHtmlSection panelInfoHtmlSection = (PanelInfoHtmlSection) obj;
        return Intrinsics.c(this.f61708a, panelInfoHtmlSection.f61708a) && Intrinsics.c(this.f61709b, panelInfoHtmlSection.f61709b);
    }

    public final int hashCode() {
        return this.f61709b.hashCode() + (this.f61708a.hashCode() * 31);
    }

    public final String toString() {
        return "PanelInfoHtmlSection(text=" + this.f61708a + ", image=" + this.f61709b + ")";
    }
}
