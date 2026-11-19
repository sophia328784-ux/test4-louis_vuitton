package com.vuitton.foundation.model.domain.model.common.editorial;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/Header;", "", "", "title", "surtitle", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Header {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67217a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67218b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImage f67219c;

    public Header(String str, String str2, AssetImage assetImage) {
        str.getClass();
        this.f67217a = str;
        this.f67218b = str2;
        this.f67219c = assetImage;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return Intrinsics.c(this.f67217a, header.f67217a) && Intrinsics.c(this.f67218b, header.f67218b) && Intrinsics.c(this.f67219c, header.f67219c);
    }

    public final int hashCode() {
        int iHashCode = this.f67217a.hashCode() * 31;
        String str = this.f67218b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        AssetImage assetImage = this.f67219c;
        return iHashCode2 + (assetImage != null ? assetImage.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("Header(title=", this.f67217a, ", surtitle=", this.f67218b, ", image=");
        sbS.append(this.f67219c);
        sbS.append(")");
        return sbS.toString();
    }
}
