package com.vuitton.foundation.model.domain.model.config;

import defpackage.cj;
import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\b\u0018\u00002\u00020\u0001B9\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;", "", "", "contactUsUrl", "faqUrl", "careServicesUrl", "servicesDeliveryUrl", "environmentalCharacteristicsUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class HelpConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f67261a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67262b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67263c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67264e;

    public HelpConfig(String str, String str2, String str3, String str4, String str5) {
        this.f67261a = str;
        this.f67262b = str2;
        this.f67263c = str3;
        this.d = str4;
        this.f67264e = str5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof HelpConfig)) {
            return false;
        }
        HelpConfig helpConfig = (HelpConfig) obj;
        return Intrinsics.c(this.f67261a, helpConfig.f67261a) && Intrinsics.c(this.f67262b, helpConfig.f67262b) && Intrinsics.c(this.f67263c, helpConfig.f67263c) && Intrinsics.c(this.d, helpConfig.d) && Intrinsics.c(this.f67264e, helpConfig.f67264e);
    }

    public final int hashCode() {
        String str = this.f67261a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f67262b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f67263c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.f67264e;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbS = fc.s("HelpConfig(contactUsUrl=", this.f67261a, ", faqUrl=", this.f67262b, ", careServicesUrl=");
        cj.C(sbS, this.f67263c, ", servicesDeliveryUrl=", this.d, ", environmentalCharacteristicsUrl=");
        return n00.r(this.f67264e, ")", sbS);
    }
}
