package com.vuitton.foundation.model.domain.model.common;

import com.batch.android.s.b;
import com.networkbench.agent.impl.harvest.ConfigurationName;
import defpackage.fc;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "", "", ConfigurationName.DOWNLOAD_PLUGIN_URL, b.a.f24015b, "Lcom/vuitton/foundation/model/domain/model/common/Scale;", "scale", "altText", "<init>", "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Scale;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AssetImage {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67108a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67109b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Scale f67110c;
    public final String d;

    public /* synthetic */ AssetImage(String str, String str2, Scale scale, String str3, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : scale, (i2 & 8) != 0 ? null : str3);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AssetImage)) {
            return false;
        }
        AssetImage assetImage = (AssetImage) obj;
        return Intrinsics.c(this.f67108a, assetImage.f67108a) && Intrinsics.c(this.f67109b, assetImage.f67109b) && this.f67110c == assetImage.f67110c && Intrinsics.c(this.d, assetImage.d);
    }

    public final int hashCode() {
        int iHashCode = this.f67108a.hashCode() * 31;
        String str = this.f67109b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Scale scale = this.f67110c;
        int iHashCode3 = (iHashCode2 + (scale == null ? 0 : scale.hashCode())) * 31;
        String str2 = this.d;
        return iHashCode3 + (str2 != null ? str2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("AssetImage(url=", this.f67108a, ", id=", this.f67109b, ", scale=");
        sbS.append(this.f67110c);
        sbS.append(", altText=");
        sbS.append(this.d);
        sbS.append(")");
        return sbS.toString();
    }

    public AssetImage(String str, String str2, Scale scale, String str3) {
        str.getClass();
        this.f67108a = str;
        this.f67109b = str2;
        this.f67110c = scale;
        this.d = str3;
    }
}
