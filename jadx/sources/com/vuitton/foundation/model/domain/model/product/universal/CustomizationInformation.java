package com.vuitton.foundation.model.domain.model.product.universal;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationInformation;", "", "", "value", "title", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "color", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class CustomizationInformation {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67966a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67967b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImage f67968c;
    public final String d;

    public CustomizationInformation(String str, String str2, AssetImage assetImage, String str3) {
        str.getClass();
        this.f67966a = str;
        this.f67967b = str2;
        this.f67968c = assetImage;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CustomizationInformation)) {
            return false;
        }
        CustomizationInformation customizationInformation = (CustomizationInformation) obj;
        return Intrinsics.c(this.f67966a, customizationInformation.f67966a) && Intrinsics.c(this.f67967b, customizationInformation.f67967b) && Intrinsics.c(this.f67968c, customizationInformation.f67968c) && Intrinsics.c(this.d, customizationInformation.d);
    }

    public final int hashCode() {
        int iHashCode = this.f67966a.hashCode() * 31;
        String str = this.f67967b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        AssetImage assetImage = this.f67968c;
        int iHashCode3 = (iHashCode2 + (assetImage == null ? 0 : assetImage.hashCode())) * 31;
        String str2 = this.d;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("CustomizationInformation(value=", this.f67966a, ", title=", this.f67967b, ", image=");
        sbS.append(this.f67968c);
        sbS.append(", color=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }
}
