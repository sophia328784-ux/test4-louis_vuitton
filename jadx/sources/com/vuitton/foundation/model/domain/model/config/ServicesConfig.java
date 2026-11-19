package com.vuitton.foundation.model.domain.model.config;

import defpackage.fc;
import defpackage.tr;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;", "", "", "artOfGiftingUrl", "personalizationUrl", "artOfGiftingKey", "personalizationKey", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class ServicesConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67277a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67278b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67279c;
    public final String d;

    public ServicesConfig(String str, String str2, String str3, String str4) {
        this.f67277a = str;
        this.f67278b = str2;
        this.f67279c = str3;
        this.d = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ServicesConfig)) {
            return false;
        }
        ServicesConfig servicesConfig = (ServicesConfig) obj;
        return Intrinsics.c(this.f67277a, servicesConfig.f67277a) && Intrinsics.c(this.f67278b, servicesConfig.f67278b) && Intrinsics.c(this.f67279c, servicesConfig.f67279c) && Intrinsics.c(this.d, servicesConfig.d);
    }

    public final int hashCode() {
        String str = this.f67277a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67278b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67279c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        return iHashCode3 + (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        return tr.l(fc.s("ServicesConfig(artOfGiftingUrl=", this.f67277a, ", personalizationUrl=", this.f67278b, ", artOfGiftingKey="), this.f67279c, ", personalizationKey=", this.d, ")");
    }
}
