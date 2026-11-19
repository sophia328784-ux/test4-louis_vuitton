package com.vuitton.foundation.model.domain.model.analytics;

import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0006\u0002\u0003\u0004\u0005\u0006\u0007\u0082\u0001\u0006\b\t\n\u000b\f\r¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit;", "", "ScreenHit", "EventHit", "ViewSearchResultHit", "ABTestHit", "AnomalyHit", "WebViewHit", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ABTestHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$WebViewHit;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface Hit {

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit;", "DefaultAnomalyHit", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface AnomalyHit extends Hit {
        /* JADX INFO: renamed from: a */
        String getF66452a();

        @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
        /* JADX INFO: renamed from: getType */
        HitType.Anomaly getF66493a();

        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B)\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit$DefaultAnomalyHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$AnomalyHit;", "", "message", "", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "additionalProperties", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;", "type", "<init>", "(Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Anomaly;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DefaultAnomalyHit implements AnomalyHit {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f66452a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final List f66453b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final HitType.Anomaly f66454c;

            public DefaultAnomalyHit(String str, List<? extends AdditionalProperty> list, HitType.Anomaly anomaly) {
                list.getClass();
                anomaly.getClass();
                this.f66452a = str;
                this.f66453b = list;
                this.f66454c = anomaly;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.AnomalyHit
            /* JADX INFO: renamed from: a, reason: from getter */
            public final String getF66452a() {
                return this.f66452a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof DefaultAnomalyHit)) {
                    return false;
                }
                DefaultAnomalyHit defaultAnomalyHit = (DefaultAnomalyHit) obj;
                return Intrinsics.c(this.f66452a, defaultAnomalyHit.f66452a) && Intrinsics.c(this.f66453b, defaultAnomalyHit.f66453b) && Intrinsics.c(this.f66454c, defaultAnomalyHit.f66454c);
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: g, reason: from getter */
            public final List getF66501b() {
                return this.f66453b;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.AnomalyHit, com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: getType, reason: from getter */
            public final HitType.Anomaly getF66493a() {
                return this.f66454c;
            }

            public final int hashCode() {
                String str = this.f66452a;
                return this.f66454c.f66507a.hashCode() + n00.a((str == null ? 0 : str.hashCode()) * 31, 31, this.f66453b);
            }

            public final String toString() {
                StringBuilder sbT = d21.t("DefaultAnomalyHit(message=", this.f66452a, ", additionalProperties=", this.f66453b, ", type=");
                sbT.append(this.f66454c);
                sbT.append(")");
                return sbT.toString();
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: getType */
            public final HitType getF66493a() {
                return this.f66454c;
            }

            public DefaultAnomalyHit(String str, List list, HitType.Anomaly anomaly, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, (i2 & 2) != 0 ? EmptyList.f71768b : list, anomaly);
            }
        }
    }

    /* JADX INFO: renamed from: g */
    List getF66501b();

    /* JADX INFO: renamed from: getType */
    HitType getF66493a();

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u001f\u0012\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ViewSearchResultHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit;", "", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "additionalProperties", "", "searchTerm", "<init>", "(Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ViewSearchResultHit implements Hit {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List f66497a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66498b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final HitType.ViewSearchResults f66499c;

        public ViewSearchResultHit(List<? extends AdditionalProperty> list, String str) {
            list.getClass();
            str.getClass();
            this.f66497a = list;
            this.f66498b = str;
            this.f66499c = HitType.ViewSearchResults.f66524a;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ViewSearchResultHit)) {
                return false;
            }
            ViewSearchResultHit viewSearchResultHit = (ViewSearchResultHit) obj;
            return Intrinsics.c(this.f66497a, viewSearchResultHit.f66497a) && Intrinsics.c(this.f66498b, viewSearchResultHit.f66498b);
        }

        @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
        /* JADX INFO: renamed from: g, reason: from getter */
        public final List getF66501b() {
            return this.f66497a;
        }

        @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
        /* JADX INFO: renamed from: getType */
        public final HitType getF66493a() {
            return this.f66499c;
        }

        public final int hashCode() {
            return this.f66498b.hashCode() + (this.f66497a.hashCode() * 31);
        }

        public final String toString() {
            return "ViewSearchResultHit(additionalProperties=" + this.f66497a + ", searchTerm=" + this.f66498b + ")";
        }

        public ViewSearchResultHit(List list, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? EmptyList.f71768b : list, str);
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$WebViewHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Custom;", "type", "", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "additionalProperties", "", "jsonParams", "<init>", "(Lcom/vuitton/foundation/model/domain/model/analytics/HitType$Custom;Ljava/util/List;Ljava/lang/String;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class WebViewHit implements Hit {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HitType.Custom f66500a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List f66501b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66502c;

        public WebViewHit(HitType.Custom custom, List<? extends AdditionalProperty> list, String str) {
            custom.getClass();
            list.getClass();
            str.getClass();
            this.f66500a = custom;
            this.f66501b = list;
            this.f66502c = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof WebViewHit)) {
                return false;
            }
            WebViewHit webViewHit = (WebViewHit) obj;
            return Intrinsics.c(this.f66500a, webViewHit.f66500a) && Intrinsics.c(this.f66501b, webViewHit.f66501b) && Intrinsics.c(this.f66502c, webViewHit.f66502c);
        }

        @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
        /* JADX INFO: renamed from: g, reason: from getter */
        public final List getF66501b() {
            return this.f66501b;
        }

        @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
        /* JADX INFO: renamed from: getType */
        public final HitType getF66493a() {
            return this.f66500a;
        }

        public final int hashCode() {
            return this.f66502c.hashCode() + n00.a(this.f66500a.f66510a.hashCode() * 31, 31, this.f66501b);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("WebViewHit(type=");
            sb.append(this.f66500a);
            sb.append(", additionalProperties=");
            sb.append(this.f66501b);
            sb.append(", jsonParams=");
            return n00.r(this.f66502c, ")", sb);
        }

        public WebViewHit(HitType.Custom custom, List list, String str, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this(custom, (i2 & 2) != 0 ? EmptyList.f71768b : list, str);
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003¨\u0006\u0004À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit;", "DefaultScreenHit", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface ScreenHit extends Hit {
        /* JADX INFO: renamed from: b */
        String getD();

        /* JADX INFO: renamed from: e */
        String getF66495c();

        /* JADX INFO: renamed from: i */
        String getF66494b();

        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B?\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "type", "", "screenName", "pageName", "pageType", "", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "additionalProperties", "<init>", "(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DefaultScreenHit implements ScreenHit {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final HitType f66493a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f66494b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f66495c;
            public final String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final List f66496e;

            public DefaultScreenHit(HitType hitType, String str, String str2, String str3, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? HitType.Screen.f66519a : hitType, str, str2, str3, (i2 & 16) != 0 ? EmptyList.f71768b : list);
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.ScreenHit
            /* JADX INFO: renamed from: b, reason: from getter */
            public final String getD() {
                return this.d;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.ScreenHit
            /* JADX INFO: renamed from: e, reason: from getter */
            public final String getF66495c() {
                return this.f66495c;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof DefaultScreenHit)) {
                    return false;
                }
                DefaultScreenHit defaultScreenHit = (DefaultScreenHit) obj;
                return Intrinsics.c(this.f66493a, defaultScreenHit.f66493a) && Intrinsics.c(this.f66494b, defaultScreenHit.f66494b) && Intrinsics.c(this.f66495c, defaultScreenHit.f66495c) && Intrinsics.c(this.d, defaultScreenHit.d) && Intrinsics.c(this.f66496e, defaultScreenHit.f66496e);
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: g, reason: from getter */
            public final List getF66501b() {
                return this.f66496e;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: getType, reason: from getter */
            public final HitType getF66493a() {
                return this.f66493a;
            }

            public final int hashCode() {
                int iHashCode = this.f66493a.hashCode() * 31;
                String str = this.f66494b;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.f66495c;
                int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.d;
                return this.f66496e.hashCode() + ((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31);
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.ScreenHit
            /* JADX INFO: renamed from: i, reason: from getter */
            public final String getF66494b() {
                return this.f66494b;
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("DefaultScreenHit(type=");
                sb.append(this.f66493a);
                sb.append(", screenName=");
                sb.append(this.f66494b);
                sb.append(", pageName=");
                cj.C(sb, this.f66495c, ", pageType=", this.d, ", additionalProperties=");
                return a.o(sb, this.f66496e, ")");
            }

            public DefaultScreenHit(HitType hitType, String str, String str2, String str3, List<? extends AdditionalProperty> list) {
                hitType.getClass();
                list.getClass();
                this.f66493a = hitType;
                this.f66494b = str;
                this.f66495c = str2;
                this.d = str3;
                this.f66496e = list;
            }
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ABTestHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "type", "", "campaignKey", "variantId", "", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "additionalProperties", "<init>", "(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class ABTestHit implements Hit {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HitType f66449a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f66450b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f66451c;
        public final List d;

        public ABTestHit(HitType hitType, String str, String str2, List<? extends AdditionalProperty> list) {
            hitType.getClass();
            str.getClass();
            str2.getClass();
            list.getClass();
            this.f66449a = hitType;
            this.f66450b = str;
            this.f66451c = str2;
            this.d = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ABTestHit)) {
                return false;
            }
            ABTestHit aBTestHit = (ABTestHit) obj;
            return Intrinsics.c(this.f66449a, aBTestHit.f66449a) && Intrinsics.c(this.f66450b, aBTestHit.f66450b) && Intrinsics.c(this.f66451c, aBTestHit.f66451c) && Intrinsics.c(this.d, aBTestHit.d);
        }

        @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
        /* JADX INFO: renamed from: g, reason: from getter */
        public final List getF66501b() {
            return this.d;
        }

        @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
        /* JADX INFO: renamed from: getType, reason: from getter */
        public final HitType getF66493a() {
            return this.f66449a;
        }

        public final int hashCode() {
            return this.d.hashCode() + fc.b(fc.b(this.f66449a.hashCode() * 31, 31, this.f66450b), 31, this.f66451c);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("ABTestHit(type=");
            sb.append(this.f66449a);
            sb.append(", campaignKey=");
            sb.append(this.f66450b);
            sb.append(", variantId=");
            return o60.o(this.f66451c, ", additionalProperties=", ")", sb, this.d);
        }

        public ABTestHit(HitType hitType, String str, String str2, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? HitType.ABTest.f66503a : hitType, str, str2, (i2 & 8) != 0 ? EmptyList.f71768b : list);
        }
    }

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u0082\u0001\u0005\u0007\b\t\n\u000b¨\u0006\fÀ\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit;", "DefaultEventHit", "AddToCartEventHit", "BeginCheckoutEventHit", "SelectItemEventHit", "ViewItemListEventHit", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$AddToCartEventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$SelectItemEventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$ViewItemListEventHit;", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public interface EventHit extends Hit {
        /* JADX INFO: renamed from: b */
        String getF66485b();

        /* JADX INFO: renamed from: c */
        String getF66486c();

        /* JADX INFO: renamed from: d */
        String getF66484a();

        /* JADX INFO: renamed from: f */
        String getD();

        /* JADX INFO: renamed from: h */
        String getF66487e();

        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BO\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$AddToCartEventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;", "", "eventScreen", "eventLabel", "eventCategory", "eventAction", "", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "additionalProperties", "Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;", "eCommerceValues", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "productSku", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class AddToCartEventHit implements EventHit {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f66455a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f66456b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f66457c;
            public final String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final List f66458e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final ECommerceValues f66459f;
            public final String g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final HitType.AddToCart f66460h;

            public AddToCartEventHit(String str, String str2, String str3, String str4, List list, ECommerceValues eCommerceValues, String str5, DefaultConstructorMarker defaultConstructorMarker) {
                list.getClass();
                eCommerceValues.getClass();
                str5.getClass();
                this.f66455a = str;
                this.f66456b = str2;
                this.f66457c = str3;
                this.d = str4;
                this.f66458e = list;
                this.f66459f = eCommerceValues;
                this.g = str5;
                this.f66460h = HitType.AddToCart.f66505a;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: b */
            public final String getF66485b() {
                return null;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: c, reason: from getter */
            public final String getF66486c() {
                return this.f66456b;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: d, reason: from getter */
            public final String getF66484a() {
                return this.f66455a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof AddToCartEventHit)) {
                    return false;
                }
                AddToCartEventHit addToCartEventHit = (AddToCartEventHit) obj;
                if (!Intrinsics.c(this.f66455a, addToCartEventHit.f66455a) || !Intrinsics.c(this.f66456b, addToCartEventHit.f66456b) || !Intrinsics.c(this.f66457c, addToCartEventHit.f66457c) || !Intrinsics.c(this.d, addToCartEventHit.d) || !Intrinsics.c(this.f66458e, addToCartEventHit.f66458e) || !Intrinsics.c(this.f66459f, addToCartEventHit.f66459f)) {
                    return false;
                }
                String str = addToCartEventHit.g;
                SkuId.Companion companion = SkuId.INSTANCE;
                return Intrinsics.c(this.g, str);
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: f, reason: from getter */
            public final String getD() {
                return this.f66457c;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: g, reason: from getter */
            public final List getF66501b() {
                return this.f66458e;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: getType */
            public final HitType getF66493a() {
                return this.f66460h;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: h, reason: from getter */
            public final String getF66487e() {
                return this.d;
            }

            public final int hashCode() {
                String str = this.f66455a;
                int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                String str2 = this.f66456b;
                int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.f66457c;
                int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.d;
                int iHashCode4 = (this.f66459f.hashCode() + n00.a((iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31, 31, this.f66458e)) * 31;
                SkuId.Companion companion = SkuId.INSTANCE;
                return this.g.hashCode() + iHashCode4;
            }

            public final String toString() {
                SkuId.Companion companion = SkuId.INSTANCE;
                StringBuilder sbS = fc.s("AddToCartEventHit(eventScreen=", this.f66455a, ", eventLabel=", this.f66456b, ", eventCategory=");
                cj.C(sbS, this.f66457c, ", eventAction=", this.d, ", additionalProperties=");
                sbS.append(this.f66458e);
                sbS.append(", eCommerceValues=");
                sbS.append(this.f66459f);
                sbS.append(", productSku=");
                return n00.r(this.g, ")", sbS);
            }

            public AddToCartEventHit(String str, String str2, String str3, String str4, List list, ECommerceValues eCommerceValues, String str5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, str2, str3, str4, (i2 & 16) != 0 ? EmptyList.f71768b : list, eCommerceValues, str5, null);
            }
        }

        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u000e\b\u0002\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/HitType;", "type", "", "eventScreen", "eventLabel", "eventCategory", "eventAction", "pageType", "", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "additionalProperties", "<init>", "(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class DefaultEventHit implements EventHit {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final HitType f66470a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f66471b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f66472c;
            public final String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final String f66473e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final String f66474f;
            public final List g;

            public DefaultEventHit(HitType hitType, String str, String str2, String str3, String str4, String str5, List list, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? HitType.Interaction.f66511a : hitType, str, str2, str3, (i2 & 16) != 0 ? null : str4, (i2 & 32) != 0 ? null : str5, (i2 & 64) != 0 ? EmptyList.f71768b : list);
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: b, reason: from getter */
            public final String getF66485b() {
                return this.f66474f;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: c, reason: from getter */
            public final String getF66486c() {
                return this.f66472c;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: d, reason: from getter */
            public final String getF66484a() {
                return this.f66471b;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof DefaultEventHit)) {
                    return false;
                }
                DefaultEventHit defaultEventHit = (DefaultEventHit) obj;
                return Intrinsics.c(this.f66470a, defaultEventHit.f66470a) && Intrinsics.c(this.f66471b, defaultEventHit.f66471b) && Intrinsics.c(this.f66472c, defaultEventHit.f66472c) && Intrinsics.c(this.d, defaultEventHit.d) && Intrinsics.c(this.f66473e, defaultEventHit.f66473e) && Intrinsics.c(this.f66474f, defaultEventHit.f66474f) && Intrinsics.c(this.g, defaultEventHit.g);
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: f, reason: from getter */
            public final String getD() {
                return this.d;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: g, reason: from getter */
            public final List getF66501b() {
                return this.g;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: getType, reason: from getter */
            public final HitType getF66493a() {
                return this.f66470a;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: h, reason: from getter */
            public final String getF66487e() {
                return this.f66473e;
            }

            public final int hashCode() {
                int iHashCode = this.f66470a.hashCode() * 31;
                String str = this.f66471b;
                int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
                String str2 = this.f66472c;
                int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.d;
                int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.f66473e;
                int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
                String str5 = this.f66474f;
                return this.g.hashCode() + ((iHashCode5 + (str5 != null ? str5.hashCode() : 0)) * 31);
            }

            public final String toString() {
                StringBuilder sb = new StringBuilder("DefaultEventHit(type=");
                sb.append(this.f66470a);
                sb.append(", eventScreen=");
                sb.append(this.f66471b);
                sb.append(", eventLabel=");
                cj.C(sb, this.f66472c, ", eventCategory=", this.d, ", eventAction=");
                cj.C(sb, this.f66473e, ", pageType=", this.f66474f, ", additionalProperties=");
                return a.o(sb, this.g, ")");
            }

            public DefaultEventHit(HitType hitType, String str, String str2, String str3, String str4, String str5, List<? extends AdditionalProperty> list) {
                hitType.getClass();
                list.getClass();
                this.f66470a = hitType;
                this.f66471b = str;
                this.f66472c = str2;
                this.d = str3;
                this.f66473e = str4;
                this.f66474f = str5;
                this.g = list;
            }
        }

        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B\u007f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00100\u0007¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$BeginCheckoutEventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;", "", "eventScreen", "eventLabel", "eventCategory", "eventAction", "", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "additionalProperties", "joinedProductSkuList", "currency", "quantity", "price", "", "backOrderStatus", "Lcom/vuitton/foundation/model/domain/model/analytics/ECommerceValues;", "productList", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class BeginCheckoutEventHit implements EventHit {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f66461a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f66462b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f66463c;
            public final String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final List f66464e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final String f66465f;
            public final String g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final String f66466h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final String f66467i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final Boolean f66468j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public final List f66469k;
            public final HitType.BeginCheckout l;

            public BeginCheckoutEventHit(String str, String str2, String str3, String str4, List<? extends AdditionalProperty> list, String str5, String str6, String str7, String str8, Boolean bool, List<ECommerceValues> list2) {
                list.getClass();
                list2.getClass();
                this.f66461a = str;
                this.f66462b = str2;
                this.f66463c = str3;
                this.d = str4;
                this.f66464e = list;
                this.f66465f = str5;
                this.g = str6;
                this.f66466h = str7;
                this.f66467i = str8;
                this.f66468j = bool;
                this.f66469k = list2;
                this.l = HitType.BeginCheckout.f66508a;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: b */
            public final String getF66485b() {
                return null;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: c, reason: from getter */
            public final String getF66486c() {
                return this.f66462b;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: d, reason: from getter */
            public final String getF66484a() {
                return this.f66461a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof BeginCheckoutEventHit)) {
                    return false;
                }
                BeginCheckoutEventHit beginCheckoutEventHit = (BeginCheckoutEventHit) obj;
                return Intrinsics.c(this.f66461a, beginCheckoutEventHit.f66461a) && Intrinsics.c(this.f66462b, beginCheckoutEventHit.f66462b) && Intrinsics.c(this.f66463c, beginCheckoutEventHit.f66463c) && Intrinsics.c(this.d, beginCheckoutEventHit.d) && Intrinsics.c(this.f66464e, beginCheckoutEventHit.f66464e) && Intrinsics.c(this.f66465f, beginCheckoutEventHit.f66465f) && Intrinsics.c(this.g, beginCheckoutEventHit.g) && Intrinsics.c(this.f66466h, beginCheckoutEventHit.f66466h) && Intrinsics.c(this.f66467i, beginCheckoutEventHit.f66467i) && Intrinsics.c(this.f66468j, beginCheckoutEventHit.f66468j) && Intrinsics.c(this.f66469k, beginCheckoutEventHit.f66469k);
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: f, reason: from getter */
            public final String getD() {
                return this.f66463c;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: g, reason: from getter */
            public final List getF66501b() {
                return this.f66464e;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: getType */
            public final HitType getF66493a() {
                return this.l;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: h, reason: from getter */
            public final String getF66487e() {
                return this.d;
            }

            public final int hashCode() {
                String str = this.f66461a;
                int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                String str2 = this.f66462b;
                int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.f66463c;
                int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.d;
                int iA = n00.a((iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31, 31, this.f66464e);
                String str5 = this.f66465f;
                int iHashCode4 = (iA + (str5 == null ? 0 : str5.hashCode())) * 31;
                String str6 = this.g;
                int iHashCode5 = (iHashCode4 + (str6 == null ? 0 : str6.hashCode())) * 31;
                String str7 = this.f66466h;
                int iHashCode6 = (iHashCode5 + (str7 == null ? 0 : str7.hashCode())) * 31;
                String str8 = this.f66467i;
                int iHashCode7 = (iHashCode6 + (str8 == null ? 0 : str8.hashCode())) * 31;
                Boolean bool = this.f66468j;
                return this.f66469k.hashCode() + ((iHashCode7 + (bool != null ? bool.hashCode() : 0)) * 31);
            }

            public final String toString() {
                StringBuilder sbS = fc.s("BeginCheckoutEventHit(eventScreen=", this.f66461a, ", eventLabel=", this.f66462b, ", eventCategory=");
                cj.C(sbS, this.f66463c, ", eventAction=", this.d, ", additionalProperties=");
                o60.B(", joinedProductSkuList=", this.f66465f, ", currency=", sbS, this.f66464e);
                cj.C(sbS, this.g, ", quantity=", this.f66466h, ", price=");
                sbS.append(this.f66467i);
                sbS.append(", backOrderStatus=");
                sbS.append(this.f66468j);
                sbS.append(", productList=");
                return a.o(sbS, this.f66469k, ")");
            }

            public BeginCheckoutEventHit(String str, String str2, String str3, String str4, List list, String str5, String str6, String str7, String str8, Boolean bool, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this(str, str2, str3, str4, (i2 & 16) != 0 ? EmptyList.f71768b : list, str5, str6, str7, str8, bool, list2);
            }
        }

        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B{\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\b¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$SelectItemEventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;", "", "eventScreen", "pageType", "eventLabel", "eventCategory", "eventAction", "", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "additionalProperties", "currency", "itemListId", "itemListName", "Lcom/vuitton/foundation/model/domain/model/analytics/SelectItemTrackingValue;", "items", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class SelectItemEventHit implements EventHit {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f66475a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f66476b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f66477c;
            public final String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final String f66478e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final List f66479f;
            public final String g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final String f66480h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final String f66481i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final List f66482j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public final HitType.SelectItem f66483k;

            public SelectItemEventHit(String str, String str2, String str3, String str4, String str5, List<? extends AdditionalProperty> list, String str6, String str7, String str8, List<SelectItemTrackingValue> list2) {
                list.getClass();
                str7.getClass();
                str8.getClass();
                list2.getClass();
                this.f66475a = str;
                this.f66476b = str2;
                this.f66477c = str3;
                this.d = str4;
                this.f66478e = str5;
                this.f66479f = list;
                this.g = str6;
                this.f66480h = str7;
                this.f66481i = str8;
                this.f66482j = list2;
                this.f66483k = HitType.SelectItem.f66521a;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: b, reason: from getter */
            public final String getF66485b() {
                return this.f66476b;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: c, reason: from getter */
            public final String getF66486c() {
                return this.f66477c;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: d, reason: from getter */
            public final String getF66484a() {
                return this.f66475a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof SelectItemEventHit)) {
                    return false;
                }
                SelectItemEventHit selectItemEventHit = (SelectItemEventHit) obj;
                return Intrinsics.c(this.f66475a, selectItemEventHit.f66475a) && Intrinsics.c(this.f66476b, selectItemEventHit.f66476b) && Intrinsics.c(this.f66477c, selectItemEventHit.f66477c) && Intrinsics.c(this.d, selectItemEventHit.d) && Intrinsics.c(this.f66478e, selectItemEventHit.f66478e) && Intrinsics.c(this.f66479f, selectItemEventHit.f66479f) && Intrinsics.c(this.g, selectItemEventHit.g) && Intrinsics.c(this.f66480h, selectItemEventHit.f66480h) && Intrinsics.c(this.f66481i, selectItemEventHit.f66481i) && Intrinsics.c(this.f66482j, selectItemEventHit.f66482j);
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: f, reason: from getter */
            public final String getD() {
                return this.d;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: g, reason: from getter */
            public final List getF66501b() {
                return this.f66479f;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: getType */
            public final HitType getF66493a() {
                return this.f66483k;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: h, reason: from getter */
            public final String getF66487e() {
                return this.f66478e;
            }

            public final int hashCode() {
                String str = this.f66475a;
                int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                String str2 = this.f66476b;
                int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.f66477c;
                int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.d;
                int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
                String str5 = this.f66478e;
                int iA = n00.a((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31, 31, this.f66479f);
                String str6 = this.g;
                return this.f66482j.hashCode() + fc.b(fc.b((iA + (str6 != null ? str6.hashCode() : 0)) * 31, 31, this.f66480h), 31, this.f66481i);
            }

            public final String toString() {
                StringBuilder sbS = fc.s("SelectItemEventHit(eventScreen=", this.f66475a, ", pageType=", this.f66476b, ", eventLabel=");
                cj.C(sbS, this.f66477c, ", eventCategory=", this.d, ", eventAction=");
                d21.z(this.f66478e, ", additionalProperties=", ", currency=", sbS, this.f66479f);
                cj.C(sbS, this.g, ", itemListId=", this.f66480h, ", itemListName=");
                return o60.o(this.f66481i, ", items=", ")", sbS, this.f66482j);
            }

            public SelectItemEventHit(String str, String str2, String str3, String str4, String str5, List list, String str6, String str7, String str8, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? EmptyList.f71768b : list, str6, str7, str8, list2);
            }
        }

        /* JADX INFO: loaded from: classes4.dex */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B{\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\b¢\u0006\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$ViewItemListEventHit;", "Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;", "", "eventScreen", "pageType", "eventLabel", "eventCategory", "eventAction", "", "Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;", "additionalProperties", "currency", "itemListId", "itemListName", "Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;", "items", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class ViewItemListEventHit implements EventHit {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f66484a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f66485b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f66486c;
            public final String d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public final String f66487e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final List f66488f;
            public final String g;

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public final String f66489h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public final String f66490i;

            /* JADX INFO: renamed from: j, reason: collision with root package name */
            public final List f66491j;

            /* JADX INFO: renamed from: k, reason: collision with root package name */
            public final HitType.ViewItemList f66492k;

            public ViewItemListEventHit(String str, String str2, String str3, String str4, String str5, List<? extends AdditionalProperty> list, String str6, String str7, String str8, List<ViewItemListTrackingValue> list2) {
                list.getClass();
                str7.getClass();
                str8.getClass();
                list2.getClass();
                this.f66484a = str;
                this.f66485b = str2;
                this.f66486c = str3;
                this.d = str4;
                this.f66487e = str5;
                this.f66488f = list;
                this.g = str6;
                this.f66489h = str7;
                this.f66490i = str8;
                this.f66491j = list2;
                this.f66492k = HitType.ViewItemList.f66523a;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: b, reason: from getter */
            public final String getF66485b() {
                return this.f66485b;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: c, reason: from getter */
            public final String getF66486c() {
                return this.f66486c;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: d, reason: from getter */
            public final String getF66484a() {
                return this.f66484a;
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof ViewItemListEventHit)) {
                    return false;
                }
                ViewItemListEventHit viewItemListEventHit = (ViewItemListEventHit) obj;
                return Intrinsics.c(this.f66484a, viewItemListEventHit.f66484a) && Intrinsics.c(this.f66485b, viewItemListEventHit.f66485b) && Intrinsics.c(this.f66486c, viewItemListEventHit.f66486c) && Intrinsics.c(this.d, viewItemListEventHit.d) && Intrinsics.c(this.f66487e, viewItemListEventHit.f66487e) && Intrinsics.c(this.f66488f, viewItemListEventHit.f66488f) && Intrinsics.c(this.g, viewItemListEventHit.g) && Intrinsics.c(this.f66489h, viewItemListEventHit.f66489h) && Intrinsics.c(this.f66490i, viewItemListEventHit.f66490i) && Intrinsics.c(this.f66491j, viewItemListEventHit.f66491j);
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: f, reason: from getter */
            public final String getD() {
                return this.d;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: g, reason: from getter */
            public final List getF66501b() {
                return this.f66488f;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit
            /* JADX INFO: renamed from: getType */
            public final HitType getF66493a() {
                return this.f66492k;
            }

            @Override // com.vuitton.foundation.model.domain.model.analytics.Hit.EventHit
            /* JADX INFO: renamed from: h, reason: from getter */
            public final String getF66487e() {
                return this.f66487e;
            }

            public final int hashCode() {
                String str = this.f66484a;
                int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                String str2 = this.f66485b;
                int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.f66486c;
                int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.d;
                int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
                String str5 = this.f66487e;
                int iA = n00.a((iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31, 31, this.f66488f);
                String str6 = this.g;
                return this.f66491j.hashCode() + fc.b(fc.b((iA + (str6 != null ? str6.hashCode() : 0)) * 31, 31, this.f66489h), 31, this.f66490i);
            }

            public final String toString() {
                StringBuilder sbS = fc.s("ViewItemListEventHit(eventScreen=", this.f66484a, ", pageType=", this.f66485b, ", eventLabel=");
                cj.C(sbS, this.f66486c, ", eventCategory=", this.d, ", eventAction=");
                d21.z(this.f66487e, ", additionalProperties=", ", currency=", sbS, this.f66488f);
                cj.C(sbS, this.g, ", itemListId=", this.f66489h, ", itemListName=");
                return o60.o(this.f66490i, ", items=", ")", sbS, this.f66491j);
            }

            public ViewItemListEventHit(String str, String str2, String str3, String str4, String str5, List list, String str6, String str7, String str8, List list2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? null : str, (i2 & 2) != 0 ? null : str2, (i2 & 4) != 0 ? null : str3, (i2 & 8) != 0 ? null : str4, (i2 & 16) != 0 ? null : str5, (i2 & 32) != 0 ? EmptyList.f71768b : list, str6, str7, str8, list2);
            }
        }
    }
}
