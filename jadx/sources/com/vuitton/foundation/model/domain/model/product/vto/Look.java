package com.vuitton.foundation.model.domain.model.product.vto;

import com.batch.android.s.b;
import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.cj;
import defpackage.fc;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@kotlin.Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/vto/Look;", "", "", b.a.f24015b, "vtoId", "name", "number", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "", "hasTutorial", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Z)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Look {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f68061a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68063c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AssetImage f68064e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f68065f;

    public Look(String str, String str2, String str3, String str4, AssetImage assetImage, boolean z) {
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        assetImage.getClass();
        this.f68061a = str;
        this.f68062b = str2;
        this.f68063c = str3;
        this.d = str4;
        this.f68064e = assetImage;
        this.f68065f = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Look)) {
            return false;
        }
        Look look = (Look) obj;
        return Intrinsics.c(this.f68061a, look.f68061a) && Intrinsics.c(this.f68062b, look.f68062b) && Intrinsics.c(this.f68063c, look.f68063c) && Intrinsics.c(this.d, look.d) && Intrinsics.c(this.f68064e, look.f68064e) && this.f68065f == look.f68065f;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.f68065f) + ((this.f68064e.hashCode() + fc.b(fc.b(fc.b(this.f68061a.hashCode() * 31, 31, this.f68062b), 31, this.f68063c), 31, this.d)) * 31);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Look(id=", this.f68061a, ", vtoId=", this.f68062b, ", name=");
        cj.C(sbS, this.f68063c, ", number=", this.d, ", image=");
        sbS.append(this.f68064e);
        sbS.append(", hasTutorial=");
        sbS.append(this.f68065f);
        sbS.append(")");
        return sbS.toString();
    }
}
