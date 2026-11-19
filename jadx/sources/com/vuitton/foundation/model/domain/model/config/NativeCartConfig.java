package com.vuitton.foundation.model.domain.model.config;

import defpackage.fc;
import defpackage.n00;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\bB\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;", "", "Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;", "commercialNotification", "", "paymentCheckoutUrl", "<init>", "(Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;Ljava/lang/String;)V", "CommercialNotification", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class NativeCartConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CommercialNotification f67265a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f67266b;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\b\u0086\b\u0018\u00002\u00020\u0001B%\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig$CommercialNotification;", "", "", "text", "modalTitle", "modalContent", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class CommercialNotification {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f67267a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f67268b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f67269c;

        public CommercialNotification(String str, String str2, String str3) {
            this.f67267a = str;
            this.f67268b = str2;
            this.f67269c = str3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CommercialNotification)) {
                return false;
            }
            CommercialNotification commercialNotification = (CommercialNotification) obj;
            return Intrinsics.c(this.f67267a, commercialNotification.f67267a) && Intrinsics.c(this.f67268b, commercialNotification.f67268b) && Intrinsics.c(this.f67269c, commercialNotification.f67269c);
        }

        public final int hashCode() {
            String str = this.f67267a;
            int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
            String str2 = this.f67268b;
            int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
            String str3 = this.f67269c;
            return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
        }

        public final String toString() {
            return n00.r(this.f67269c, ")", fc.s("CommercialNotification(text=", this.f67267a, ", modalTitle=", this.f67268b, ", modalContent="));
        }
    }

    public NativeCartConfig(CommercialNotification commercialNotification, String str) {
        this.f67265a = commercialNotification;
        this.f67266b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof NativeCartConfig)) {
            return false;
        }
        NativeCartConfig nativeCartConfig = (NativeCartConfig) obj;
        return Intrinsics.c(this.f67265a, nativeCartConfig.f67265a) && Intrinsics.c(this.f67266b, nativeCartConfig.f67266b);
    }

    public final int hashCode() {
        CommercialNotification commercialNotification = this.f67265a;
        int iHashCode = (commercialNotification == null ? 0 : commercialNotification.hashCode()) * 31;
        String str = this.f67266b;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public final String toString() {
        return "NativeCartConfig(commercialNotification=" + this.f67265a + ", paymentCheckoutUrl=" + this.f67266b + ")";
    }
}
