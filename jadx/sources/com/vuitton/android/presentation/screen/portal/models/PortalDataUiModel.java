package com.vuitton.android.presentation.screen.portal.models;

import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalDataUiModel;", "", "", "title", "surtitle", "description", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;", "cta", "Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;", "teaser", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PortalDataUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f63307a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f63308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f63309c;
    public final AssetUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PortalCtaUiModel f63310e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PortalTeaserUiModel f63311f;

    public PortalDataUiModel(String str, String str2, String str3, AssetUiModel assetUiModel, PortalCtaUiModel portalCtaUiModel, PortalTeaserUiModel portalTeaserUiModel) {
        assetUiModel.getClass();
        this.f63307a = str;
        this.f63308b = str2;
        this.f63309c = str3;
        this.d = assetUiModel;
        this.f63310e = portalCtaUiModel;
        this.f63311f = portalTeaserUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PortalDataUiModel)) {
            return false;
        }
        PortalDataUiModel portalDataUiModel = (PortalDataUiModel) obj;
        return Intrinsics.c(this.f63307a, portalDataUiModel.f63307a) && Intrinsics.c(this.f63308b, portalDataUiModel.f63308b) && Intrinsics.c(this.f63309c, portalDataUiModel.f63309c) && Intrinsics.c(this.d, portalDataUiModel.d) && Intrinsics.c(this.f63310e, portalDataUiModel.f63310e) && Intrinsics.c(this.f63311f, portalDataUiModel.f63311f);
    }

    public final int hashCode() {
        String str = this.f63307a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f63308b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f63309c;
        int iHashCode3 = (this.d.hashCode() + ((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31)) * 31;
        PortalCtaUiModel portalCtaUiModel = this.f63310e;
        int iHashCode4 = (iHashCode3 + (portalCtaUiModel == null ? 0 : portalCtaUiModel.hashCode())) * 31;
        PortalTeaserUiModel portalTeaserUiModel = this.f63311f;
        return iHashCode4 + (portalTeaserUiModel != null ? portalTeaserUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("PortalDataUiModel(title=", this.f63307a, ", surtitle=", this.f63308b, ", description=");
        sbS.append(this.f63309c);
        sbS.append(", asset=");
        sbS.append(this.d);
        sbS.append(", cta=");
        sbS.append(this.f63310e);
        sbS.append(", teaser=");
        sbS.append(this.f63311f);
        sbS.append(")");
        return sbS.toString();
    }
}
