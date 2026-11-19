package com.vuitton.foundation.model.domain.model.careservices.bff;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.cj;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BG\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u000b¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;", "", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;", b.a.f24015b, "", "title", "description", "stepTitle", "actionRequiredTitle", "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;", "action", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CareServiceHotContent {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f66873a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f66874b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f66875c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f66876e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CareServiceAction f66877f;
    public final AssetImage g;

    public CareServiceHotContent(String str, String str2, String str3, String str4, String str5, CareServiceAction careServiceAction, AssetImage assetImage, DefaultConstructorMarker defaultConstructorMarker) {
        cj.z(str, str2, str3);
        this.f66873a = str;
        this.f66874b = str2;
        this.f66875c = str3;
        this.d = str4;
        this.f66876e = str5;
        this.f66877f = careServiceAction;
        this.g = assetImage;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CareServiceHotContent)) {
            return false;
        }
        CareServiceHotContent careServiceHotContent = (CareServiceHotContent) obj;
        String str = careServiceHotContent.f66873a;
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        return this.f66873a.equals(str) && this.f66874b.equals(careServiceHotContent.f66874b) && this.f66875c.equals(careServiceHotContent.f66875c) && Intrinsics.c(this.d, careServiceHotContent.d) && Intrinsics.c(this.f66876e, careServiceHotContent.f66876e) && this.f66877f == careServiceHotContent.f66877f && Intrinsics.c(this.g, careServiceHotContent.g);
    }

    public final int hashCode() {
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        int iB = fc.b(fc.b(this.f66873a.hashCode() * 31, 31, this.f66874b), 31, this.f66875c);
        String str = this.d;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f66876e;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        CareServiceAction careServiceAction = this.f66877f;
        int iHashCode3 = (iHashCode2 + (careServiceAction == null ? 0 : careServiceAction.hashCode())) * 31;
        AssetImage assetImage = this.g;
        return iHashCode3 + (assetImage != null ? assetImage.hashCode() : 0);
    }

    public final String toString() {
        CareServiceId.Companion companion = CareServiceId.INSTANCE;
        StringBuilder sbS = fc.s("CareServiceHotContent(id=", this.f66873a, ", title=", this.f66874b, ", description=");
        cj.C(sbS, this.f66875c, ", stepTitle=", this.d, ", actionRequiredTitle=");
        sbS.append(this.f66876e);
        sbS.append(", action=");
        sbS.append(this.f66877f);
        sbS.append(", image=");
        sbS.append(this.g);
        sbS.append(")");
        return sbS.toString();
    }
}
