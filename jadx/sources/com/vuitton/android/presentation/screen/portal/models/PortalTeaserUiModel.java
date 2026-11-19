package com.vuitton.android.presentation.screen.portal.models;

import com.vuitton.android.presentation.model.common.AssetUiModel;
import defpackage.cj;
import java.time.Instant;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u00002\u00020\u0001BA\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/portal/models/PortalTeaserUiModel;", "", "Ljava/time/Instant;", "eventStartTimeInUTC", "Lcom/vuitton/android/presentation/model/common/AssetUiModel;", "asset", "", "title", "surtitle", "description", "Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;", "cta", "<init>", "(Ljava/time/Instant;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/portal/models/PortalCtaUiModel;)V", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PortalTeaserUiModel {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Instant f63312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AssetUiModel f63313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f63314c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f63315e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final PortalCtaUiModel f63316f;

    public PortalTeaserUiModel(Instant instant, AssetUiModel assetUiModel, String str, String str2, String str3, PortalCtaUiModel portalCtaUiModel) {
        assetUiModel.getClass();
        this.f63312a = instant;
        this.f63313b = assetUiModel;
        this.f63314c = str;
        this.d = str2;
        this.f63315e = str3;
        this.f63316f = portalCtaUiModel;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PortalTeaserUiModel)) {
            return false;
        }
        PortalTeaserUiModel portalTeaserUiModel = (PortalTeaserUiModel) obj;
        return Intrinsics.c(this.f63312a, portalTeaserUiModel.f63312a) && Intrinsics.c(this.f63313b, portalTeaserUiModel.f63313b) && Intrinsics.c(this.f63314c, portalTeaserUiModel.f63314c) && Intrinsics.c(this.d, portalTeaserUiModel.d) && Intrinsics.c(this.f63315e, portalTeaserUiModel.f63315e) && Intrinsics.c(this.f63316f, portalTeaserUiModel.f63316f);
    }

    public final int hashCode() {
        Instant instant = this.f63312a;
        int iHashCode = (this.f63313b.hashCode() + ((instant == null ? 0 : instant.hashCode()) * 31)) * 31;
        String str = this.f63314c;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f63315e;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        PortalCtaUiModel portalCtaUiModel = this.f63316f;
        return iHashCode4 + (portalCtaUiModel != null ? portalCtaUiModel.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PortalTeaserUiModel(eventStartTimeInUTC=");
        sb.append(this.f63312a);
        sb.append(", asset=");
        sb.append(this.f63313b);
        sb.append(", title=");
        cj.C(sb, this.f63314c, ", surtitle=", this.d, ", description=");
        sb.append(this.f63315e);
        sb.append(", cta=");
        sb.append(this.f63316f);
        sb.append(")");
        return sb.toString();
    }
}
