package com.vuitton.foundation.model.domain.model.product.universal;

import com.vuitton.foundation.model.domain.model.common.AssetImage;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/Configuration;", "", "", "configuratorUrl", "Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;", "currentConfiguration", "Lcom/vuitton/foundation/model/domain/model/common/AssetImage;", "image", "tag", "Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;", "type", "<init>", "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationConfiguration;Lcom/vuitton/foundation/model/domain/model/common/AssetImage;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/product/universal/CustomizationIdType;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class Configuration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CustomizationConfiguration f67956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final AssetImage f67957c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final CustomizationIdType f67958e;

    public Configuration(String str, CustomizationConfiguration customizationConfiguration, AssetImage assetImage, String str2, CustomizationIdType customizationIdType) {
        str.getClass();
        assetImage.getClass();
        customizationIdType.getClass();
        this.f67955a = str;
        this.f67956b = customizationConfiguration;
        this.f67957c = assetImage;
        this.d = str2;
        this.f67958e = customizationIdType;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Configuration)) {
            return false;
        }
        Configuration configuration = (Configuration) obj;
        return Intrinsics.c(this.f67955a, configuration.f67955a) && Intrinsics.c(this.f67956b, configuration.f67956b) && Intrinsics.c(this.f67957c, configuration.f67957c) && Intrinsics.c(this.d, configuration.d) && this.f67958e == configuration.f67958e;
    }

    public final int hashCode() {
        int iHashCode = this.f67955a.hashCode() * 31;
        CustomizationConfiguration customizationConfiguration = this.f67956b;
        int iHashCode2 = (this.f67957c.hashCode() + ((iHashCode + (customizationConfiguration == null ? 0 : customizationConfiguration.hashCode())) * 31)) * 31;
        String str = this.d;
        return this.f67958e.hashCode() + ((iHashCode2 + (str != null ? str.hashCode() : 0)) * 31);
    }

    public final String toString() {
        return "Configuration(configuratorUrl=" + this.f67955a + ", currentConfiguration=" + this.f67956b + ", image=" + this.f67957c + ", tag=" + this.d + ", type=" + this.f67958e + ")";
    }
}
