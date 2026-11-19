package com.vuitton.foundation.model.domain.model.config;

import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001B©\u0004\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u001a\u001a\u00020\u0007\u0012\u0006\u0010\u001b\u001a\u00020\u0007\u0012\u0006\u0010\u001c\u001a\u00020\u0007\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\"\u001a\u00020!\u0012\u0006\u0010#\u001a\u00020\u0007\u0012\b\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002\u0012\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070\u0002\u0012\b\u0010(\u001a\u0004\u0018\u00010'\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u0012\b\u0010.\u001a\u0004\u0018\u00010-\u0012\b\u0010/\u001a\u0004\u0018\u00010\u0007\u0012\b\u00100\u001a\u0004\u0018\u00010\u0007\u0012\b\u00101\u001a\u0004\u0018\u00010\u0007\u0012\b\u00102\u001a\u0004\u0018\u00010\u0007\u0012\b\u00103\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u00104\u001a\u00020\u0007\u0012\u0006\u00105\u001a\u00020!\u0012\u0006\u00107\u001a\u000206\u0012\b\u00109\u001a\u0004\u0018\u000108\u0012\b\u0010:\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010<\u001a\u0004\u0018\u00010;\u0012\b\u0010>\u001a\u0004\u0018\u00010=\u0012\b\u0010@\u001a\u0004\u0018\u00010?\u0012\u0006\u0010A\u001a\u00020!\u0012\f\u0010C\u001a\b\u0012\u0004\u0012\u00020B0\u0002\u0012\u0006\u0010D\u001a\u00020!\u0012\u0006\u0010E\u001a\u00020!\u0012\u0006\u0010G\u001a\u00020F\u0012\b\u0010I\u001a\u0004\u0018\u00010H\u0012\b\u0010J\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010L\u001a\u00020K\u0012\u0006\u0010N\u001a\u00020M¢\u0006\u0004\bO\u0010P¨\u0006Q"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/config/AppConfig;", "", "", "Lcom/vuitton/foundation/model/domain/model/config/AbTest;", "abTestList", "Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;", "featuresConfig", "", "contactFormUrl", "legalPrivacyUrl", "lvWebsiteUrl", "shareAppUrl", "storeLocatorUrl", "accountCreationUrlLogin", "accountCreationUrlRegistration", "Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;", "aiCompanionConfig", "cartUrl", "confirmationPageUrl", "consumerRightsUrl", "productPageUrl", "storeStockAvailabilityUrl", "emailUsUrl", "googleCheckoutRedirectUrl", "lineCheckoutRedirectUrl", "kakaoCheckoutRedirectUrl", "bffBaseUrl", "atgApiUrl", "salesforceApiUrl", "arModelReferenceApiUrl", "facadeSecureApiUrl", "facadeApiUrl", "facadeMyLVApiUrl", "", "useCountry", "lvStoreLang", "salesforceLang", "bestSellersSkuList", "watchSkuList", "Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;", "nativeCart", "Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;", "myCertificates", "Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;", "feedConfig", "Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;", "help", "customerServicePhoneNumber", "customerServiceSms", "customerServiceEmail", "customerServiceWhatsapp", "customerServiceKakaoTalk", "callForInquiry", "displayRepairs", "Lcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;", "distantRepairsConfig", "Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;", "services", "waitingRoomAssetUrl", "Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;", "virtualStudioConfig", "Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;", "personalSelectionsConfig", "Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;", "personalisationConfig", "showStoreStockGeolocationButton", "Lcom/vuitton/foundation/model/domain/model/config/UrlCatchingConfig;", "urlCatchingList", "isEcommerce", "isEcommerceWebOnly", "Lcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;", "displayVatIncludedLabel", "Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;", "powerFrontConfig", "personalDataEmail", "Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;", "addressAutocompleteConfig", "", "configRevision", "<init>", "(Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/FeaturesConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AICompanionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/config/NativeCartConfig;Lcom/vuitton/foundation/model/domain/model/config/CertificateConfig;Lcom/vuitton/foundation/model/domain/model/config/FeedConfig;Lcom/vuitton/foundation/model/domain/model/config/HelpConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/foundation/model/domain/model/config/DistantRepairsConfig;Lcom/vuitton/foundation/model/domain/model/config/ServicesConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/VirtualStudioConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalSelectionsConfig;Lcom/vuitton/foundation/model/domain/model/config/PersonalisationConfig;ZLjava/util/List;ZZLcom/vuitton/foundation/model/domain/model/config/VatIncludedConfig;Lcom/vuitton/foundation/model/domain/model/config/PowerFrontConfig;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/config/AddressAutocompleteConfig;J)V", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final /* data */ class AppConfig {
    public final boolean A;
    public final String B;
    public final String C;
    public final List D;
    public final List E;
    public final NativeCartConfig F;
    public final CertificateConfig G;
    public final FeedConfig H;
    public final HelpConfig I;
    public final String J;
    public final String K;
    public final String L;
    public final String M;
    public final String N;
    public final String O;
    public final boolean P;
    public final DistantRepairsConfig Q;
    public final ServicesConfig R;
    public final String S;
    public final VirtualStudioConfig T;
    public final PersonalSelectionsConfig U;
    public final PersonalisationConfig V;
    public final boolean W;
    public final List X;
    public final boolean Y;
    public final boolean Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f67230a;
    public final VatIncludedConfig a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final FeaturesConfig f67231b;
    public final PowerFrontConfig b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f67232c;
    public final String c0;
    public final String d;
    public final AddressAutocompleteConfig d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f67233e;
    public final long e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f67234f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f67235h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f67236i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final AICompanionConfig f67237j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f67238k;
    public final String l;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final String t;
    public final String u;
    public final String v;
    public final String w;
    public final String x;
    public final String y;
    public final String z;

    public AppConfig(List<AbTest> list, FeaturesConfig featuresConfig, String str, String str2, String str3, String str4, String str5, String str6, String str7, AICompanionConfig aICompanionConfig, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, boolean z, String str24, String str25, List<String> list2, List<String> list3, NativeCartConfig nativeCartConfig, CertificateConfig certificateConfig, FeedConfig feedConfig, HelpConfig helpConfig, String str26, String str27, String str28, String str29, String str30, String str31, boolean z2, DistantRepairsConfig distantRepairsConfig, ServicesConfig servicesConfig, String str32, VirtualStudioConfig virtualStudioConfig, PersonalSelectionsConfig personalSelectionsConfig, PersonalisationConfig personalisationConfig, boolean z3, List<UrlCatchingConfig> list4, boolean z4, boolean z5, VatIncludedConfig vatIncludedConfig, PowerFrontConfig powerFrontConfig, String str33, AddressAutocompleteConfig addressAutocompleteConfig, long j2) {
        featuresConfig.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        pq0.z(str5, str17, str18, str19, str24);
        list2.getClass();
        list3.getClass();
        certificateConfig.getClass();
        feedConfig.getClass();
        str31.getClass();
        distantRepairsConfig.getClass();
        list4.getClass();
        vatIncludedConfig.getClass();
        addressAutocompleteConfig.getClass();
        this.f67230a = list;
        this.f67231b = featuresConfig;
        this.f67232c = str;
        this.d = str2;
        this.f67233e = str3;
        this.f67234f = str4;
        this.g = str5;
        this.f67235h = str6;
        this.f67236i = str7;
        this.f67237j = aICompanionConfig;
        this.f67238k = str8;
        this.l = str9;
        this.m = str10;
        this.n = str11;
        this.o = str12;
        this.p = str13;
        this.q = str14;
        this.r = str15;
        this.s = str16;
        this.t = str17;
        this.u = str18;
        this.v = str19;
        this.w = str20;
        this.x = str21;
        this.y = str22;
        this.z = str23;
        this.A = z;
        this.B = str24;
        this.C = str25;
        this.D = list2;
        this.E = list3;
        this.F = nativeCartConfig;
        this.G = certificateConfig;
        this.H = feedConfig;
        this.I = helpConfig;
        this.J = str26;
        this.K = str27;
        this.L = str28;
        this.M = str29;
        this.N = str30;
        this.O = str31;
        this.P = z2;
        this.Q = distantRepairsConfig;
        this.R = servicesConfig;
        this.S = str32;
        this.T = virtualStudioConfig;
        this.U = personalSelectionsConfig;
        this.V = personalisationConfig;
        this.W = z3;
        this.X = list4;
        this.Y = z4;
        this.Z = z5;
        this.a0 = vatIncludedConfig;
        this.b0 = powerFrontConfig;
        this.c0 = str33;
        this.d0 = addressAutocompleteConfig;
        this.e0 = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppConfig)) {
            return false;
        }
        AppConfig appConfig = (AppConfig) obj;
        return Intrinsics.c(this.f67230a, appConfig.f67230a) && Intrinsics.c(this.f67231b, appConfig.f67231b) && Intrinsics.c(this.f67232c, appConfig.f67232c) && Intrinsics.c(this.d, appConfig.d) && Intrinsics.c(this.f67233e, appConfig.f67233e) && Intrinsics.c(this.f67234f, appConfig.f67234f) && Intrinsics.c(this.g, appConfig.g) && Intrinsics.c(this.f67235h, appConfig.f67235h) && Intrinsics.c(this.f67236i, appConfig.f67236i) && Intrinsics.c(this.f67237j, appConfig.f67237j) && Intrinsics.c(this.f67238k, appConfig.f67238k) && Intrinsics.c(this.l, appConfig.l) && Intrinsics.c(this.m, appConfig.m) && Intrinsics.c(this.n, appConfig.n) && Intrinsics.c(this.o, appConfig.o) && Intrinsics.c(this.p, appConfig.p) && Intrinsics.c(this.q, appConfig.q) && Intrinsics.c(this.r, appConfig.r) && Intrinsics.c(this.s, appConfig.s) && Intrinsics.c(this.t, appConfig.t) && Intrinsics.c(this.u, appConfig.u) && Intrinsics.c(this.v, appConfig.v) && Intrinsics.c(this.w, appConfig.w) && Intrinsics.c(this.x, appConfig.x) && Intrinsics.c(this.y, appConfig.y) && Intrinsics.c(this.z, appConfig.z) && this.A == appConfig.A && Intrinsics.c(this.B, appConfig.B) && Intrinsics.c(this.C, appConfig.C) && Intrinsics.c(this.D, appConfig.D) && Intrinsics.c(this.E, appConfig.E) && Intrinsics.c(this.F, appConfig.F) && Intrinsics.c(this.G, appConfig.G) && Intrinsics.c(this.H, appConfig.H) && Intrinsics.c(this.I, appConfig.I) && Intrinsics.c(this.J, appConfig.J) && Intrinsics.c(this.K, appConfig.K) && Intrinsics.c(this.L, appConfig.L) && Intrinsics.c(this.M, appConfig.M) && Intrinsics.c(this.N, appConfig.N) && Intrinsics.c(this.O, appConfig.O) && this.P == appConfig.P && Intrinsics.c(this.Q, appConfig.Q) && Intrinsics.c(this.R, appConfig.R) && Intrinsics.c(this.S, appConfig.S) && Intrinsics.c(this.T, appConfig.T) && Intrinsics.c(this.U, appConfig.U) && Intrinsics.c(this.V, appConfig.V) && this.W == appConfig.W && Intrinsics.c(this.X, appConfig.X) && this.Y == appConfig.Y && this.Z == appConfig.Z && Intrinsics.c(this.a0, appConfig.a0) && Intrinsics.c(this.b0, appConfig.b0) && Intrinsics.c(this.c0, appConfig.c0) && Intrinsics.c(this.d0, appConfig.d0) && this.e0 == appConfig.e0;
    }

    public final int hashCode() {
        List list = this.f67230a;
        int iB = fc.b(fc.b(fc.b(fc.b(fc.b((this.f67231b.hashCode() + ((list == null ? 0 : list.hashCode()) * 31)) * 31, 31, this.f67232c), 31, this.d), 31, this.f67233e), 31, this.f67234f), 31, this.g);
        String str = this.f67235h;
        int iHashCode = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f67236i;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        AICompanionConfig aICompanionConfig = this.f67237j;
        int iHashCode3 = (iHashCode2 + (aICompanionConfig == null ? 0 : aICompanionConfig.hashCode())) * 31;
        String str3 = this.f67238k;
        int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.l;
        int iHashCode5 = (iHashCode4 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.m;
        int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.n;
        int iHashCode7 = (iHashCode6 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.o;
        int iHashCode8 = (iHashCode7 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.p;
        int iHashCode9 = (iHashCode8 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.q;
        int iHashCode10 = (iHashCode9 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.r;
        int iHashCode11 = (iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.s;
        int iB2 = fc.b(fc.b(fc.b((iHashCode11 + (str11 == null ? 0 : str11.hashCode())) * 31, 31, this.t), 31, this.u), 31, this.v);
        String str12 = this.w;
        int iHashCode12 = (iB2 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.x;
        int iHashCode13 = (iHashCode12 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.y;
        int iHashCode14 = (iHashCode13 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.z;
        int iB3 = fc.b(o60.b((iHashCode14 + (str15 == null ? 0 : str15.hashCode())) * 31, 31, this.A), 31, this.B);
        String str16 = this.C;
        int iA = n00.a(n00.a((iB3 + (str16 == null ? 0 : str16.hashCode())) * 31, 31, this.D), 31, this.E);
        NativeCartConfig nativeCartConfig = this.F;
        int iHashCode15 = (this.H.f67260a.hashCode() + ((this.G.hashCode() + ((iA + (nativeCartConfig == null ? 0 : nativeCartConfig.hashCode())) * 31)) * 31)) * 31;
        HelpConfig helpConfig = this.I;
        int iHashCode16 = (iHashCode15 + (helpConfig == null ? 0 : helpConfig.hashCode())) * 31;
        String str17 = this.J;
        int iHashCode17 = (iHashCode16 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.K;
        int iHashCode18 = (iHashCode17 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.L;
        int iHashCode19 = (iHashCode18 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.M;
        int iHashCode20 = (iHashCode19 + (str20 == null ? 0 : str20.hashCode())) * 31;
        String str21 = this.N;
        int iHashCode21 = (this.Q.hashCode() + o60.b(fc.b((iHashCode20 + (str21 == null ? 0 : str21.hashCode())) * 31, 31, this.O), 31, this.P)) * 31;
        ServicesConfig servicesConfig = this.R;
        int iHashCode22 = (iHashCode21 + (servicesConfig == null ? 0 : servicesConfig.hashCode())) * 31;
        String str22 = this.S;
        int iHashCode23 = (iHashCode22 + (str22 == null ? 0 : str22.hashCode())) * 31;
        VirtualStudioConfig virtualStudioConfig = this.T;
        int iHashCode24 = (iHashCode23 + (virtualStudioConfig == null ? 0 : virtualStudioConfig.hashCode())) * 31;
        PersonalSelectionsConfig personalSelectionsConfig = this.U;
        int iHashCode25 = (iHashCode24 + (personalSelectionsConfig == null ? 0 : personalSelectionsConfig.hashCode())) * 31;
        PersonalisationConfig personalisationConfig = this.V;
        int iHashCode26 = (this.a0.hashCode() + o60.b(o60.b(n00.a(o60.b((iHashCode25 + (personalisationConfig == null ? 0 : personalisationConfig.hashCode())) * 31, 31, this.W), 31, this.X), 31, this.Y), 31, this.Z)) * 31;
        PowerFrontConfig powerFrontConfig = this.b0;
        int iHashCode27 = (iHashCode26 + (powerFrontConfig == null ? 0 : powerFrontConfig.hashCode())) * 31;
        String str23 = this.c0;
        return Long.hashCode(this.e0) + o60.b((iHashCode27 + (str23 != null ? str23.hashCode() : 0)) * 31, 31, this.d0.f67229a);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppConfig(abTestList=");
        sb.append(this.f67230a);
        sb.append(", featuresConfig=");
        sb.append(this.f67231b);
        sb.append(", contactFormUrl=");
        cj.C(sb, this.f67232c, ", legalPrivacyUrl=", this.d, ", lvWebsiteUrl=");
        cj.C(sb, this.f67233e, ", shareAppUrl=", this.f67234f, ", storeLocatorUrl=");
        cj.C(sb, this.g, ", accountCreationUrlLogin=", this.f67235h, ", accountCreationUrlRegistration=");
        sb.append(this.f67236i);
        sb.append(", aiCompanionConfig=");
        sb.append(this.f67237j);
        sb.append(", cartUrl=");
        cj.C(sb, this.f67238k, ", confirmationPageUrl=", this.l, ", consumerRightsUrl=");
        cj.C(sb, this.m, ", productPageUrl=", this.n, ", storeStockAvailabilityUrl=");
        cj.C(sb, this.o, ", emailUsUrl=", this.p, ", googleCheckoutRedirectUrl=");
        cj.C(sb, this.q, ", lineCheckoutRedirectUrl=", this.r, ", kakaoCheckoutRedirectUrl=");
        cj.C(sb, this.s, ", bffBaseUrl=", this.t, ", atgApiUrl=");
        cj.C(sb, this.u, ", salesforceApiUrl=", this.v, ", arModelReferenceApiUrl=");
        cj.C(sb, this.w, ", facadeSecureApiUrl=", this.x, ", facadeApiUrl=");
        cj.C(sb, this.y, ", facadeMyLVApiUrl=", this.z, ", useCountry=");
        cj.A(", lvStoreLang=", this.B, ", salesforceLang=", sb, this.A);
        d21.z(this.C, ", bestSellersSkuList=", ", watchSkuList=", sb, this.D);
        sb.append(this.E);
        sb.append(", nativeCart=");
        sb.append(this.F);
        sb.append(", myCertificates=");
        sb.append(this.G);
        sb.append(", feedConfig=");
        sb.append(this.H);
        sb.append(", help=");
        sb.append(this.I);
        sb.append(", customerServicePhoneNumber=");
        sb.append(this.J);
        sb.append(", customerServiceSms=");
        cj.C(sb, this.K, ", customerServiceEmail=", this.L, ", customerServiceWhatsapp=");
        cj.C(sb, this.M, ", customerServiceKakaoTalk=", this.N, ", callForInquiry=");
        pq0.A(this.O, ", displayRepairs=", ", distantRepairsConfig=", sb, this.P);
        sb.append(this.Q);
        sb.append(", services=");
        sb.append(this.R);
        sb.append(", waitingRoomAssetUrl=");
        sb.append(this.S);
        sb.append(", virtualStudioConfig=");
        sb.append(this.T);
        sb.append(", personalSelectionsConfig=");
        sb.append(this.U);
        sb.append(", personalisationConfig=");
        sb.append(this.V);
        sb.append(", showStoreStockGeolocationButton=");
        sb.append(this.W);
        sb.append(", urlCatchingList=");
        sb.append(this.X);
        sb.append(", isEcommerce=");
        fc.y(sb, this.Y, ", isEcommerceWebOnly=", this.Z, ", displayVatIncludedLabel=");
        sb.append(this.a0);
        sb.append(", powerFrontConfig=");
        sb.append(this.b0);
        sb.append(", personalDataEmail=");
        sb.append(this.c0);
        sb.append(", addressAutocompleteConfig=");
        sb.append(this.d0);
        sb.append(", configRevision=");
        return o60.j(this.e0, ")", sb);
    }

    public /* synthetic */ AppConfig(List list, FeaturesConfig featuresConfig, String str, String str2, String str3, String str4, String str5, String str6, String str7, AICompanionConfig aICompanionConfig, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, boolean z, String str24, String str25, List list2, List list3, NativeCartConfig nativeCartConfig, CertificateConfig certificateConfig, FeedConfig feedConfig, HelpConfig helpConfig, String str26, String str27, String str28, String str29, String str30, String str31, boolean z2, DistantRepairsConfig distantRepairsConfig, ServicesConfig servicesConfig, String str32, VirtualStudioConfig virtualStudioConfig, PersonalSelectionsConfig personalSelectionsConfig, PersonalisationConfig personalisationConfig, boolean z3, List list4, boolean z4, boolean z5, VatIncludedConfig vatIncludedConfig, PowerFrontConfig powerFrontConfig, String str33, AddressAutocompleteConfig addressAutocompleteConfig, long j2, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        AddressAutocompleteConfig addressAutocompleteConfig2;
        if ((i3 & 8388608) != 0) {
            addressAutocompleteConfig2 = new AddressAutocompleteConfig(false, 1, null);
        } else {
            addressAutocompleteConfig2 = addressAutocompleteConfig;
        }
        this(list, featuresConfig, str, str2, str3, str4, str5, str6, str7, aICompanionConfig, str8, str9, str10, str11, str12, str13, str14, str15, str16, str17, str18, str19, str20, str21, str22, str23, z, str24, str25, list2, list3, nativeCartConfig, certificateConfig, feedConfig, helpConfig, str26, str27, str28, str29, str30, str31, z2, distantRepairsConfig, servicesConfig, str32, virtualStudioConfig, personalSelectionsConfig, personalisationConfig, z3, list4, z4, z5, vatIncludedConfig, powerFrontConfig, str33, addressAutocompleteConfig2, j2);
    }
}
