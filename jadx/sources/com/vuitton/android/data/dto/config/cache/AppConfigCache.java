package com.vuitton.android.data.dto.config.cache;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.a;
import defpackage.cj;
import defpackage.d21;
import defpackage.fc;
import defpackage.g5;
import defpackage.n00;
import defpackage.o60;
import defpackage.pq0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0087\b\u0018\u0000 W2\u00020\u0001:\u0002XWB§\u0004\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0006\u0010\f\u001a\u00020\t\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u0019\u001a\u00020\t\u0012\u0006\u0010\u001a\u001a\u00020\t\u0012\u0006\u0010\u001b\u001a\u00020\t\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010!\u001a\u00020 \u0012\u0006\u0010\"\u001a\u00020\t\u0012\b\u0010#\u001a\u0004\u0018\u00010\t\u0012\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\t0\u0002\u0012\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\t0\u0002\u0012\b\u0010'\u001a\u0004\u0018\u00010&\u0012\u0006\u0010)\u001a\u00020(\u0012\u0006\u0010+\u001a\u00020*\u0012\b\u0010-\u001a\u0004\u0018\u00010,\u0012\b\u0010.\u001a\u0004\u0018\u00010\t\u0012\b\u0010/\u001a\u0004\u0018\u00010\t\u0012\b\u00100\u001a\u0004\u0018\u00010\t\u0012\b\u00101\u001a\u0004\u0018\u00010\t\u0012\b\u00102\u001a\u0004\u0018\u00010\t\u0012\u0006\u00103\u001a\u00020\t\u0012\u0006\u00104\u001a\u00020 \u0012\u0006\u00106\u001a\u000205\u0012\b\u00108\u001a\u0004\u0018\u000107\u0012\b\u00109\u001a\u0004\u0018\u00010\t\u0012\b\u0010;\u001a\u0004\u0018\u00010:\u0012\b\u0010=\u001a\u0004\u0018\u00010<\u0012\b\u0010?\u001a\u0004\u0018\u00010>\u0012\u0006\u0010@\u001a\u00020 \u0012\f\u0010B\u001a\b\u0012\u0004\u0012\u00020A0\u0002\u0012\u0006\u0010C\u001a\u00020 \u0012\u0006\u0010D\u001a\u00020 \u0012\u0006\u0010F\u001a\u00020E\u0012\b\u0010H\u001a\u0004\u0018\u00010G\u0012\b\u0010I\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010K\u001a\u00020J\u0012\u0006\u0010M\u001a\u00020L\u0012\b\u0010N\u001a\u0004\u0018\u00010\t¢\u0006\u0004\bO\u0010PBé\u0004\b\u0010\u0012\u0006\u0010R\u001a\u00020Q\u0012\u0006\u0010S\u001a\u00020Q\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\r\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001c\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001d\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001e\u001a\u0004\u0018\u00010\t\u0012\b\u0010\u001f\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010!\u001a\u00020 \u0012\b\u0010\"\u001a\u0004\u0018\u00010\t\u0012\b\u0010#\u001a\u0004\u0018\u00010\t\u0012\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002\u0012\u000e\u0010%\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u0002\u0012\b\u0010'\u001a\u0004\u0018\u00010&\u0012\b\u0010)\u001a\u0004\u0018\u00010(\u0012\b\u0010+\u001a\u0004\u0018\u00010*\u0012\b\u0010-\u001a\u0004\u0018\u00010,\u0012\b\u0010.\u001a\u0004\u0018\u00010\t\u0012\b\u0010/\u001a\u0004\u0018\u00010\t\u0012\b\u00100\u001a\u0004\u0018\u00010\t\u0012\b\u00101\u001a\u0004\u0018\u00010\t\u0012\b\u00102\u001a\u0004\u0018\u00010\t\u0012\b\u00103\u001a\u0004\u0018\u00010\t\u0012\u0006\u00104\u001a\u00020 \u0012\b\u00106\u001a\u0004\u0018\u000105\u0012\b\u00108\u001a\u0004\u0018\u000107\u0012\b\u00109\u001a\u0004\u0018\u00010\t\u0012\b\u0010;\u001a\u0004\u0018\u00010:\u0012\b\u0010=\u001a\u0004\u0018\u00010<\u0012\b\u0010?\u001a\u0004\u0018\u00010>\u0012\u0006\u0010@\u001a\u00020 \u0012\u000e\u0010B\u001a\n\u0012\u0004\u0012\u00020A\u0018\u00010\u0002\u0012\u0006\u0010C\u001a\u00020 \u0012\u0006\u0010D\u001a\u00020 \u0012\b\u0010F\u001a\u0004\u0018\u00010E\u0012\b\u0010H\u001a\u0004\u0018\u00010G\u0012\b\u0010I\u001a\u0004\u0018\u00010\t\u0012\b\u0010K\u001a\u0004\u0018\u00010J\u0012\u0006\u0010M\u001a\u00020L\u0012\b\u0010N\u001a\u0004\u0018\u00010\t\u0012\b\u0010U\u001a\u0004\u0018\u00010T¢\u0006\u0004\bO\u0010V¨\u0006Y"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;", "", "", "Lcom/vuitton/android/data/dto/config/cache/AbTestCache;", "abTestList", "Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;", "aiCompanionConfig", "Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;", "featuresConfig", "", "contactFormUrl", "legalPrivacyUrl", "lvWebsiteUrl", "shareAppUrl", "storeLocatorUrl", "accountCreationUrlLogin", "accountCreationUrlRegistration", "cartUrl", "confirmationPageUrl", "consumerRightsUrl", "productPageUrl", "storeStockAvailabilityUrl", "emailUsUrl", "googleCheckoutRedirectUrl", "lineCheckoutRedirectUrl", "bffBaseUrl", "atgApiUrl", "salesforceApiUrl", "arModelReferenceApiUrl", "facadeSecureApiUrl", "facadeApiUrl", "facadeMyLVApiUrl", "", "useCountry", "lvStoreLang", "salesforceLang", "bestSellersSkuList", "watchSkuList", "Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;", "nativeCart", "Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;", "myCertificates", "Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;", "feedConfig", "Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;", "help", "customerServicePhoneNumber", "customerServiceSms", "customerServiceEmail", "customerServiceWhatsapp", "customerServiceKakaoTalk", "callForInquiry", "displayRepairs", "Lcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;", "distantRepairsConfig", "Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;", "services", "waitingRoomAssetUrl", "Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;", "virtualStudioConfig", "Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;", "personalSelectionsConfig", "Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;", "personalisationConfig", "showStoreStockGeolocationButton", "Lcom/vuitton/android/data/dto/config/cache/UrlCatchingConfigCache;", "urlCatchingList", "isEcommerce", "isEcommerceWebOnly", "Lcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;", "displayVatIncludedLabel", "Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;", "powerFrontConfig", "personalDataEmail", "Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;", "addressAutocompleteConfig", "", "configRevision", "kakaoCheckoutRedirectUrl", "<init>", "(Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;ZLjava/util/List;ZZLcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;JLjava/lang/String;)V", "", "seen0", "seen1", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "serializationConstructorMarker", "(IILjava/util/List;Lcom/vuitton/android/data/dto/config/cache/AICompanionConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeaturesConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/config/cache/NativeCartConfigCache;Lcom/vuitton/android/data/dto/config/cache/CertificateConfigCache;Lcom/vuitton/android/data/dto/config/cache/FeedConfigCache;Lcom/vuitton/android/data/dto/config/cache/HelpConfigCache;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/data/dto/config/cache/DistantRepairsConfigCache;Lcom/vuitton/android/data/dto/config/cache/ServicesConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/VirtualStudioConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalSelectionsConfigCache;Lcom/vuitton/android/data/dto/config/cache/PersonalisationConfigCache;ZLjava/util/List;ZZLcom/vuitton/android/data/dto/config/cache/VatIncludedConfigCache;Lcom/vuitton/android/data/dto/config/cache/PowerFrontConfigCache;Ljava/lang/String;Lcom/vuitton/android/data/dto/config/cache/AddressAutocompleteConfigCache;JLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "Companion", "$serializer", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
@Serializable
public final /* data */ class AppConfigCache {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final Lazy[] f0;
    public final String A;
    public final String B;
    public final List C;
    public final List D;
    public final NativeCartConfigCache E;
    public final CertificateConfigCache F;
    public final FeedConfigCache G;
    public final HelpConfigCache H;
    public final String I;
    public final String J;
    public final String K;
    public final String L;
    public final String M;
    public final String N;
    public final boolean O;
    public final DistantRepairsConfigCache P;
    public final ServicesConfigCache Q;
    public final String R;
    public final VirtualStudioConfigCache S;
    public final PersonalSelectionsConfigCache T;
    public final PersonalisationConfigCache U;
    public final boolean V;
    public final List W;
    public final boolean X;
    public final boolean Y;
    public final VatIncludedConfigCache Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List f45465a;
    public final PowerFrontConfigCache a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final AICompanionConfigCache f45466b;
    public final String b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final FeaturesConfigCache f45467c;
    public final AddressAutocompleteConfigCache c0;
    public final String d;
    public final long d0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f45468e;
    public final String e0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f45469f;
    public final String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f45470h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f45471i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f45472j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f45473k;
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
    public final boolean z;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001J\u0013\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/vuitton/android/data/dto/config/cache/AppConfigCache$Companion;", "", "Lkotlinx/serialization/KSerializer;", "Lcom/vuitton/android/data/dto/config/cache/AppConfigCache;", "serializer", "()Lkotlinx/serialization/KSerializer;", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public final KSerializer<AppConfigCache> serializer() {
            return AppConfigCache$$serializer.f45474a;
        }
    }

    static {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.PUBLICATION;
        f0 = new Lazy[]{LazyKt.a(lazyThreadSafetyMode, new g5(7)), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new g5(8)), LazyKt.a(lazyThreadSafetyMode, new g5(9)), null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, LazyKt.a(lazyThreadSafetyMode, new g5(10)), null, null, null, null, null, null, null, null};
    }

    public /* synthetic */ AppConfigCache(int i2, int i3, List list, AICompanionConfigCache aICompanionConfigCache, FeaturesConfigCache featuresConfigCache, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, boolean z, String str23, String str24, List list2, List list3, NativeCartConfigCache nativeCartConfigCache, CertificateConfigCache certificateConfigCache, FeedConfigCache feedConfigCache, HelpConfigCache helpConfigCache, String str25, String str26, String str27, String str28, String str29, String str30, boolean z2, DistantRepairsConfigCache distantRepairsConfigCache, ServicesConfigCache servicesConfigCache, String str31, VirtualStudioConfigCache virtualStudioConfigCache, PersonalSelectionsConfigCache personalSelectionsConfigCache, PersonalisationConfigCache personalisationConfigCache, boolean z3, List list4, boolean z4, boolean z5, VatIncludedConfigCache vatIncludedConfigCache, PowerFrontConfigCache powerFrontConfigCache, String str32, AddressAutocompleteConfigCache addressAutocompleteConfigCache, long j2, String str33, SerializationConstructorMarker serializationConstructorMarker) {
        if ((33554431 != (i3 & 33554431)) || (-1 != i2)) {
            PluginExceptionsKt.a(new int[]{i2, i3}, new int[]{-1, 33554431}, AppConfigCache$$serializer.f45474a.getF19838b());
            throw null;
        }
        this.f45465a = list;
        this.f45466b = aICompanionConfigCache;
        this.f45467c = featuresConfigCache;
        this.d = str;
        this.f45468e = str2;
        this.f45469f = str3;
        this.g = str4;
        this.f45470h = str5;
        this.f45471i = str6;
        this.f45472j = str7;
        this.f45473k = str8;
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
        this.z = z;
        this.A = str23;
        this.B = str24;
        this.C = list2;
        this.D = list3;
        this.E = nativeCartConfigCache;
        this.F = certificateConfigCache;
        this.G = feedConfigCache;
        this.H = helpConfigCache;
        this.I = str25;
        this.J = str26;
        this.K = str27;
        this.L = str28;
        this.M = str29;
        this.N = str30;
        this.O = z2;
        this.P = distantRepairsConfigCache;
        this.Q = servicesConfigCache;
        this.R = str31;
        this.S = virtualStudioConfigCache;
        this.T = personalSelectionsConfigCache;
        this.U = personalisationConfigCache;
        this.V = z3;
        this.W = list4;
        this.X = z4;
        this.Y = z5;
        this.Z = vatIncludedConfigCache;
        this.a0 = powerFrontConfigCache;
        this.b0 = str32;
        this.c0 = addressAutocompleteConfigCache;
        this.d0 = j2;
        this.e0 = str33;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AppConfigCache)) {
            return false;
        }
        AppConfigCache appConfigCache = (AppConfigCache) obj;
        return Intrinsics.c(this.f45465a, appConfigCache.f45465a) && Intrinsics.c(this.f45466b, appConfigCache.f45466b) && Intrinsics.c(this.f45467c, appConfigCache.f45467c) && Intrinsics.c(this.d, appConfigCache.d) && Intrinsics.c(this.f45468e, appConfigCache.f45468e) && Intrinsics.c(this.f45469f, appConfigCache.f45469f) && Intrinsics.c(this.g, appConfigCache.g) && Intrinsics.c(this.f45470h, appConfigCache.f45470h) && Intrinsics.c(this.f45471i, appConfigCache.f45471i) && Intrinsics.c(this.f45472j, appConfigCache.f45472j) && Intrinsics.c(this.f45473k, appConfigCache.f45473k) && Intrinsics.c(this.l, appConfigCache.l) && Intrinsics.c(this.m, appConfigCache.m) && Intrinsics.c(this.n, appConfigCache.n) && Intrinsics.c(this.o, appConfigCache.o) && Intrinsics.c(this.p, appConfigCache.p) && Intrinsics.c(this.q, appConfigCache.q) && Intrinsics.c(this.r, appConfigCache.r) && Intrinsics.c(this.s, appConfigCache.s) && Intrinsics.c(this.t, appConfigCache.t) && Intrinsics.c(this.u, appConfigCache.u) && Intrinsics.c(this.v, appConfigCache.v) && Intrinsics.c(this.w, appConfigCache.w) && Intrinsics.c(this.x, appConfigCache.x) && Intrinsics.c(this.y, appConfigCache.y) && this.z == appConfigCache.z && Intrinsics.c(this.A, appConfigCache.A) && Intrinsics.c(this.B, appConfigCache.B) && Intrinsics.c(this.C, appConfigCache.C) && Intrinsics.c(this.D, appConfigCache.D) && Intrinsics.c(this.E, appConfigCache.E) && Intrinsics.c(this.F, appConfigCache.F) && Intrinsics.c(this.G, appConfigCache.G) && Intrinsics.c(this.H, appConfigCache.H) && Intrinsics.c(this.I, appConfigCache.I) && Intrinsics.c(this.J, appConfigCache.J) && Intrinsics.c(this.K, appConfigCache.K) && Intrinsics.c(this.L, appConfigCache.L) && Intrinsics.c(this.M, appConfigCache.M) && Intrinsics.c(this.N, appConfigCache.N) && this.O == appConfigCache.O && Intrinsics.c(this.P, appConfigCache.P) && Intrinsics.c(this.Q, appConfigCache.Q) && Intrinsics.c(this.R, appConfigCache.R) && Intrinsics.c(this.S, appConfigCache.S) && Intrinsics.c(this.T, appConfigCache.T) && Intrinsics.c(this.U, appConfigCache.U) && this.V == appConfigCache.V && Intrinsics.c(this.W, appConfigCache.W) && this.X == appConfigCache.X && this.Y == appConfigCache.Y && Intrinsics.c(this.Z, appConfigCache.Z) && Intrinsics.c(this.a0, appConfigCache.a0) && Intrinsics.c(this.b0, appConfigCache.b0) && Intrinsics.c(this.c0, appConfigCache.c0) && this.d0 == appConfigCache.d0 && Intrinsics.c(this.e0, appConfigCache.e0);
    }

    public final int hashCode() {
        List list = this.f45465a;
        int iHashCode = (list == null ? 0 : list.hashCode()) * 31;
        AICompanionConfigCache aICompanionConfigCache = this.f45466b;
        int iB = fc.b(fc.b(fc.b(fc.b(fc.b((this.f45467c.hashCode() + ((iHashCode + (aICompanionConfigCache == null ? 0 : aICompanionConfigCache.hashCode())) * 31)) * 31, 31, this.d), 31, this.f45468e), 31, this.f45469f), 31, this.g), 31, this.f45470h);
        String str = this.f45471i;
        int iHashCode2 = (iB + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f45472j;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f45473k;
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
        int iB2 = fc.b(fc.b(fc.b((iHashCode10 + (str10 == null ? 0 : str10.hashCode())) * 31, 31, this.s), 31, this.t), 31, this.u);
        String str11 = this.v;
        int iHashCode11 = (iB2 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.w;
        int iHashCode12 = (iHashCode11 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.x;
        int iHashCode13 = (iHashCode12 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.y;
        int iB3 = fc.b(o60.b((iHashCode13 + (str14 == null ? 0 : str14.hashCode())) * 31, 31, this.z), 31, this.A);
        String str15 = this.B;
        int iA = n00.a(n00.a((iB3 + (str15 == null ? 0 : str15.hashCode())) * 31, 31, this.C), 31, this.D);
        NativeCartConfigCache nativeCartConfigCache = this.E;
        int iHashCode14 = (this.G.f45507a.hashCode() + ((this.F.hashCode() + ((iA + (nativeCartConfigCache == null ? 0 : nativeCartConfigCache.hashCode())) * 31)) * 31)) * 31;
        HelpConfigCache helpConfigCache = this.H;
        int iHashCode15 = (iHashCode14 + (helpConfigCache == null ? 0 : helpConfigCache.hashCode())) * 31;
        String str16 = this.I;
        int iHashCode16 = (iHashCode15 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.J;
        int iHashCode17 = (iHashCode16 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.K;
        int iHashCode18 = (iHashCode17 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.L;
        int iHashCode19 = (iHashCode18 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.M;
        int iHashCode20 = (this.P.hashCode() + o60.b(fc.b((iHashCode19 + (str20 == null ? 0 : str20.hashCode())) * 31, 31, this.N), 31, this.O)) * 31;
        ServicesConfigCache servicesConfigCache = this.Q;
        int iHashCode21 = (iHashCode20 + (servicesConfigCache == null ? 0 : servicesConfigCache.hashCode())) * 31;
        String str21 = this.R;
        int iHashCode22 = (iHashCode21 + (str21 == null ? 0 : str21.hashCode())) * 31;
        VirtualStudioConfigCache virtualStudioConfigCache = this.S;
        int iHashCode23 = (iHashCode22 + (virtualStudioConfigCache == null ? 0 : virtualStudioConfigCache.hashCode())) * 31;
        PersonalSelectionsConfigCache personalSelectionsConfigCache = this.T;
        int iHashCode24 = (iHashCode23 + (personalSelectionsConfigCache == null ? 0 : personalSelectionsConfigCache.hashCode())) * 31;
        PersonalisationConfigCache personalisationConfigCache = this.U;
        int iHashCode25 = (this.Z.hashCode() + o60.b(o60.b(n00.a(o60.b((iHashCode24 + (personalisationConfigCache == null ? 0 : personalisationConfigCache.hashCode())) * 31, 31, this.V), 31, this.W), 31, this.X), 31, this.Y)) * 31;
        PowerFrontConfigCache powerFrontConfigCache = this.a0;
        int iHashCode26 = (iHashCode25 + (powerFrontConfigCache == null ? 0 : powerFrontConfigCache.hashCode())) * 31;
        String str22 = this.b0;
        int iA2 = fc.a(o60.b((iHashCode26 + (str22 == null ? 0 : str22.hashCode())) * 31, 31, this.c0.f45463a), 31, this.d0);
        String str23 = this.e0;
        return iA2 + (str23 != null ? str23.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AppConfigCache(abTestList=");
        sb.append(this.f45465a);
        sb.append(", aiCompanionConfig=");
        sb.append(this.f45466b);
        sb.append(", featuresConfig=");
        sb.append(this.f45467c);
        sb.append(", contactFormUrl=");
        sb.append(this.d);
        sb.append(", legalPrivacyUrl=");
        cj.C(sb, this.f45468e, ", lvWebsiteUrl=", this.f45469f, ", shareAppUrl=");
        cj.C(sb, this.g, ", storeLocatorUrl=", this.f45470h, ", accountCreationUrlLogin=");
        cj.C(sb, this.f45471i, ", accountCreationUrlRegistration=", this.f45472j, ", cartUrl=");
        cj.C(sb, this.f45473k, ", confirmationPageUrl=", this.l, ", consumerRightsUrl=");
        cj.C(sb, this.m, ", productPageUrl=", this.n, ", storeStockAvailabilityUrl=");
        cj.C(sb, this.o, ", emailUsUrl=", this.p, ", googleCheckoutRedirectUrl=");
        cj.C(sb, this.q, ", lineCheckoutRedirectUrl=", this.r, ", bffBaseUrl=");
        cj.C(sb, this.s, ", atgApiUrl=", this.t, ", salesforceApiUrl=");
        cj.C(sb, this.u, ", arModelReferenceApiUrl=", this.v, ", facadeSecureApiUrl=");
        cj.C(sb, this.w, ", facadeApiUrl=", this.x, ", facadeMyLVApiUrl=");
        pq0.A(this.y, ", useCountry=", ", lvStoreLang=", sb, this.z);
        cj.C(sb, this.A, ", salesforceLang=", this.B, ", bestSellersSkuList=");
        a.C(sb, this.C, ", watchSkuList=", this.D, ", nativeCart=");
        sb.append(this.E);
        sb.append(", myCertificates=");
        sb.append(this.F);
        sb.append(", feedConfig=");
        sb.append(this.G);
        sb.append(", help=");
        sb.append(this.H);
        sb.append(", customerServicePhoneNumber=");
        cj.C(sb, this.I, ", customerServiceSms=", this.J, ", customerServiceEmail=");
        cj.C(sb, this.K, ", customerServiceWhatsapp=", this.L, ", customerServiceKakaoTalk=");
        cj.C(sb, this.M, ", callForInquiry=", this.N, ", displayRepairs=");
        sb.append(this.O);
        sb.append(", distantRepairsConfig=");
        sb.append(this.P);
        sb.append(", services=");
        sb.append(this.Q);
        sb.append(", waitingRoomAssetUrl=");
        sb.append(this.R);
        sb.append(", virtualStudioConfig=");
        sb.append(this.S);
        sb.append(", personalSelectionsConfig=");
        sb.append(this.T);
        sb.append(", personalisationConfig=");
        sb.append(this.U);
        sb.append(", showStoreStockGeolocationButton=");
        sb.append(this.V);
        sb.append(", urlCatchingList=");
        sb.append(this.W);
        sb.append(", isEcommerce=");
        sb.append(this.X);
        sb.append(", isEcommerceWebOnly=");
        sb.append(this.Y);
        sb.append(", displayVatIncludedLabel=");
        sb.append(this.Z);
        sb.append(", powerFrontConfig=");
        sb.append(this.a0);
        sb.append(", personalDataEmail=");
        sb.append(this.b0);
        sb.append(", addressAutocompleteConfig=");
        sb.append(this.c0);
        sb.append(", configRevision=");
        sb.append(this.d0);
        return d21.p(sb, ", kakaoCheckoutRedirectUrl=", this.e0, ")");
    }

    public AppConfigCache(List<AbTestCache> list, AICompanionConfigCache aICompanionConfigCache, FeaturesConfigCache featuresConfigCache, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, boolean z, String str23, String str24, List<String> list2, List<String> list3, NativeCartConfigCache nativeCartConfigCache, CertificateConfigCache certificateConfigCache, FeedConfigCache feedConfigCache, HelpConfigCache helpConfigCache, String str25, String str26, String str27, String str28, String str29, String str30, boolean z2, DistantRepairsConfigCache distantRepairsConfigCache, ServicesConfigCache servicesConfigCache, String str31, VirtualStudioConfigCache virtualStudioConfigCache, PersonalSelectionsConfigCache personalSelectionsConfigCache, PersonalisationConfigCache personalisationConfigCache, boolean z3, List<UrlCatchingConfigCache> list4, boolean z4, boolean z5, VatIncludedConfigCache vatIncludedConfigCache, PowerFrontConfigCache powerFrontConfigCache, String str32, AddressAutocompleteConfigCache addressAutocompleteConfigCache, long j2, String str33) {
        featuresConfigCache.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        str4.getClass();
        pq0.z(str5, str16, str17, str18, str23);
        list2.getClass();
        list3.getClass();
        certificateConfigCache.getClass();
        feedConfigCache.getClass();
        str30.getClass();
        distantRepairsConfigCache.getClass();
        list4.getClass();
        vatIncludedConfigCache.getClass();
        addressAutocompleteConfigCache.getClass();
        this.f45465a = list;
        this.f45466b = aICompanionConfigCache;
        this.f45467c = featuresConfigCache;
        this.d = str;
        this.f45468e = str2;
        this.f45469f = str3;
        this.g = str4;
        this.f45470h = str5;
        this.f45471i = str6;
        this.f45472j = str7;
        this.f45473k = str8;
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
        this.z = z;
        this.A = str23;
        this.B = str24;
        this.C = list2;
        this.D = list3;
        this.E = nativeCartConfigCache;
        this.F = certificateConfigCache;
        this.G = feedConfigCache;
        this.H = helpConfigCache;
        this.I = str25;
        this.J = str26;
        this.K = str27;
        this.L = str28;
        this.M = str29;
        this.N = str30;
        this.O = z2;
        this.P = distantRepairsConfigCache;
        this.Q = servicesConfigCache;
        this.R = str31;
        this.S = virtualStudioConfigCache;
        this.T = personalSelectionsConfigCache;
        this.U = personalisationConfigCache;
        this.V = z3;
        this.W = list4;
        this.X = z4;
        this.Y = z5;
        this.Z = vatIncludedConfigCache;
        this.a0 = powerFrontConfigCache;
        this.b0 = str32;
        this.c0 = addressAutocompleteConfigCache;
        this.d0 = j2;
        this.e0 = str33;
    }
}
