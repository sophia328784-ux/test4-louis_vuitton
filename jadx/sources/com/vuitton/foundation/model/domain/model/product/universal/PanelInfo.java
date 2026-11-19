package com.vuitton.foundation.model.domain.model.product.universal;

import com.vuitton.foundation.model.domain.model.product.PanelInformationType;
import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/PanelInfo;", "", "Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;", "type", "", "title", "description", "introduction", "<init>", "(Lcom/vuitton/foundation/model/domain/model/product/PanelInformationType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class PanelInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PanelInformationType f68004a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68006c;
    public final String d;

    public PanelInfo(PanelInformationType panelInformationType, String str, String str2, String str3) {
        str.getClass();
        str2.getClass();
        this.f68004a = panelInformationType;
        this.f68005b = str;
        this.f68006c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PanelInfo)) {
            return false;
        }
        PanelInfo panelInfo = (PanelInfo) obj;
        return this.f68004a == panelInfo.f68004a && Intrinsics.c(this.f68005b, panelInfo.f68005b) && Intrinsics.c(this.f68006c, panelInfo.f68006c) && Intrinsics.c(this.d, panelInfo.d);
    }

    public final int hashCode() {
        PanelInformationType panelInformationType = this.f68004a;
        int iB = fc.b(fc.b((panelInformationType == null ? 0 : panelInformationType.hashCode()) * 31, 31, this.f68005b), 31, this.f68006c);
        String str = this.d;
        return iB + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PanelInfo(type=");
        sb.append(this.f68004a);
        sb.append(", title=");
        sb.append(this.f68005b);
        sb.append(", description=");
        return tr.l(sb, this.f68006c, ", introduction=", this.d, ")");
    }

    public /* synthetic */ PanelInfo(PanelInformationType panelInformationType, String str, String str2, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(panelInformationType, str, str2, (i2 & 8) != 0 ? null : str3);
    }
}
