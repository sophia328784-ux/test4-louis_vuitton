package com.vuitton.foundation.model.domain.model.product.universal;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/Wearing;", "", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "", "humanModelHeight", "tag", "<init>", "(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Wearing {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AssetImage f68033a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f68034b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f68035c;

    public Wearing(AssetImage assetImage, String str, String str2) {
        assetImage.getClass();
        str.getClass();
        this.f68033a = assetImage;
        this.f68034b = str;
        this.f68035c = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Wearing)) {
            return false;
        }
        Wearing wearing = (Wearing) obj;
        return Intrinsics.c(this.f68033a, wearing.f68033a) && Intrinsics.c(this.f68034b, wearing.f68034b) && Intrinsics.c(this.f68035c, wearing.f68035c);
    }

    public final int hashCode() {
        int iB = fc.b(this.f68033a.hashCode() * 31, 31, this.f68034b);
        String str = this.f68035c;
        return iB + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Wearing(image=");
        sb.append(this.f68033a);
        sb.append(", humanModelHeight=");
        sb.append(this.f68034b);
        sb.append(", tag=");
        return n00.r(this.f68035c, ")", sb);
    }

    public /* synthetic */ Wearing(AssetImage assetImage, String str, String str2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(assetImage, str, (i2 & 4) != 0 ? null : str2);
    }
}
