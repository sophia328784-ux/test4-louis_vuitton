package com.vuitton.android.presentation.link.parsing;

import android.net.Uri;
import com.appsflyer.sdk_base.referrer.Payload;
import com.vuitton.android.domain.provider.environment.EnvironmentProvider;
import com.vuitton.android.presentation.link.builder.WebAppLinkBuilder;
import com.vuitton.android.presentation.link.models.ParsedLink;
import com.vuitton.android.presentation.redirectlink.DeepLink;
import com.vuitton.android.presentation.screen.feed.models.FeedTab;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\fB)\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/vuitton/android/presentation/link/parsing/LinkParser;", "", "Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;", "linkClassifier", "Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;", "passAppLinkConverter", "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;", "environmentProvider", "Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;", "webAppLinkBuilder", "<init>", "(Lcom/vuitton/android/presentation/link/parsing/LinkClassifier;Lcom/vuitton/android/presentation/link/parsing/PassAppLinkConverter;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;Lcom/vuitton/android/presentation/link/builder/WebAppLinkBuilder;)V", "Companion", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LinkParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkClassifier f51708a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PassAppLinkConverter f51709b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final EnvironmentProvider f51710c;
    public final WebAppLinkBuilder d;

    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082T¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000fR\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\r0\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/vuitton/android/presentation/link/parsing/LinkParser$Companion;", "", "", "GOOGLE_PATH_SEGMENT", "Ljava/lang/String;", "LINE_PATH_SEGMENT", "KAKAO_PATH_SEGMENT", "", "MAX_WISHLIST_SKUS", "I", "PAIRING_V2_SEGMENT_COUNT", "SKU_ID_QUERY_PARAM", "DATE_QUERY_PARAM", "Ljava/util/regex/Pattern;", "PDP_PATTERN", "Ljava/util/regex/Pattern;", "PLP_PATTERN", "", "STORY_PATTERNS", "Ljava/util/List;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        List list = AppLinkPatterns.f51698a;
    }

    @Inject
    public LinkParser(LinkClassifier linkClassifier, PassAppLinkConverter passAppLinkConverter, EnvironmentProvider environmentProvider, WebAppLinkBuilder webAppLinkBuilder) {
        linkClassifier.getClass();
        passAppLinkConverter.getClass();
        environmentProvider.getClass();
        webAppLinkBuilder.getClass();
        this.f51708a = linkClassifier;
        this.f51709b = passAppLinkConverter;
        this.f51710c = environmentProvider;
        this.d = webAppLinkBuilder;
    }

    public static ParsedLink c(Uri uri) {
        List<String> pathSegments = uri.getPathSegments();
        pathSegments.getClass();
        String str = (String) CollectionsKt.firstOrNull(pathSegments);
        if (Intrinsics.c(str, DeepLink.IMMERSIVE_ARTICLE.getHost())) {
            return new ParsedLink.ImmersiveArticle(uri);
        }
        if (str == null) {
            return ParsedLink.BareExplore.f51645b;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0018  */
    public final ParsedLink a(String str) {
        ParsedLink.ImmersiveArticle immersiveArticle;
        str.getClass();
        Uri uri = Uri.parse(str);
        if (Intrinsics.c(uri.getHost(), DeepLink.EXPLORE.getHost())) {
            ParsedLink parsedLinkC = c(uri);
            if (parsedLinkC instanceof ParsedLink.ImmersiveArticle) {
                immersiveArticle = (ParsedLink.ImmersiveArticle) parsedLinkC;
            } else {
                immersiveArticle = null;
            }
        } else {
            immersiveArticle = null;
        }
        if (immersiveArticle != null) {
            return immersiveArticle;
        }
        LinkClassifier linkClassifier = this.f51708a;
        if (linkClassifier.c(str)) {
            String strJ = this.f51710c.j();
            PassAppLinkConverter passAppLinkConverter = this.f51709b;
            passAppLinkConverter.getClass();
            Uri uriA = passAppLinkConverter.a(Uri.parse(str), strJ);
            String string = uriA != null ? uriA.toString() : null;
            if (string != null) {
                str = string;
            }
        }
        if (linkClassifier.b(str)) {
            return b(Uri.parse(str));
        }
        return null;
    }

    public final ParsedLink b(Uri uri) {
        String str;
        String queryParameter;
        String key;
        uri.getClass();
        String host = uri.getHost();
        String str2 = null;
        if (Intrinsics.c(host, DeepLink.NATIVE_STORY.getHost())) {
            List<String> pathSegments = uri.getPathSegments();
            pathSegments.getClass();
            String str3 = (String) CollectionsKt.G(0, pathSegments);
            if (str3 != null) {
                return new ParsedLink.NativeStory(str3);
            }
        } else if (Intrinsics.c(host, DeepLink.PORTAL_SLIDER.getHost())) {
            List<String> pathSegments2 = uri.getPathSegments();
            pathSegments2.getClass();
            String str4 = (String) CollectionsKt.G(0, pathSegments2);
            if (str4 != null) {
                return new ParsedLink.PortalSlider(str4);
            }
        } else if (Intrinsics.c(host, DeepLink.WEBVIEW.getHost()) || Intrinsics.c(host, DeepLink.STORY.getHost())) {
            String strA = this.d.a(uri);
            if (strA != null) {
                return new ParsedLink.WebView(strA);
            }
        } else {
            if (Intrinsics.c(host, DeepLink.STORELOCATOR.getHost())) {
                return ParsedLink.StoreLocator.f51684b;
            }
            if (Intrinsics.c(host, DeepLink.CONNECTED.getHost())) {
                List<String> pathSegments3 = uri.getPathSegments();
                pathSegments3.getClass();
                String str5 = (String) CollectionsKt.firstOrNull(pathSegments3);
                if (str5 != null) {
                    return new ParsedLink.Connectivity(str5);
                }
            } else {
                if (Intrinsics.c(host, DeepLink.MY_LV.getHost())) {
                    List<String> pathSegments4 = uri.getPathSegments();
                    pathSegments4.getClass();
                    String str6 = (String) CollectionsKt.firstOrNull(pathSegments4);
                    if (!Intrinsics.c(str6, DeepLink.WISHLIST.getHost())) {
                        if (Intrinsics.c(str6, DeepLink.LVPASS_QRCODE.getHost())) {
                            return ParsedLink.LvPassQrCode.f51664b;
                        }
                        return Intrinsics.c(str6, DeepLink.PRIVACY_SETTINGS.getHost()) ? ParsedLink.MyLvPrivacySettings.f51666b : ParsedLink.MyLv.f51665b;
                    }
                    String queryParameter2 = uri.getQueryParameter("skuid");
                    if (queryParameter2 == null) {
                        return ParsedLink.PersonalWishlist.f51675b;
                    }
                    List listSplit$default = StringsKt__StringsKt.split$default(queryParameter2, new String[]{","}, false, 0, 6, null);
                    ArrayList<String> arrayList = new ArrayList();
                    for (Object obj : listSplit$default) {
                        if (!StringsKt.w((String) obj)) {
                            arrayList.add(obj);
                        }
                    }
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
                    for (String str7 : arrayList) {
                        SkuId.Companion companion = SkuId.INSTANCE;
                        str7.getClass();
                        arrayList2.add(new SkuId(str7));
                    }
                    return new ParsedLink.SharedWishlist(CollectionsKt.q0(arrayList2, 20), uri.getQueryParameter("date"));
                }
                if (Intrinsics.c(host, DeepLink.MY_ORDERS.getHost())) {
                    List<String> pathSegments5 = uri.getPathSegments();
                    pathSegments5.getClass();
                    if (!Intrinsics.c(CollectionsKt.firstOrNull(pathSegments5), DeepLink.ORDER_DETAIL.getHost()) || pathSegments5.size() < 2) {
                        return ParsedLink.MyOrders.f51667b;
                    }
                    String str8 = pathSegments5.get(1);
                    str8.getClass();
                    return new ParsedLink.OrderDetail(str8);
                }
                if (Intrinsics.c(host, DeepLink.GDPR.getHost())) {
                    return ParsedLink.Gdpr.f51661b;
                }
                if (Intrinsics.c(host, DeepLink.CERTIFICATES.getHost())) {
                    List<String> pathSegments6 = uri.getPathSegments();
                    pathSegments6.getClass();
                    if (Intrinsics.c(CollectionsKt.firstOrNull(pathSegments6), DeepLink.CERTIFICATES_LIST.getHost())) {
                        return ParsedLink.CertificatesList.f51655b;
                    }
                    Object objFirstOrNull = CollectionsKt.firstOrNull(pathSegments6);
                    DeepLink deepLink = DeepLink.ACTIVATION;
                    if (Intrinsics.c(objFirstOrNull, deepLink.getHost())) {
                        return ParsedLink.CertificateDiamondActivation.f51654b;
                    }
                    if (Intrinsics.c(CollectionsKt.firstOrNull(pathSegments6), DeepLink.DIAMONDS.getHost())) {
                        if (Intrinsics.c(CollectionsKt.G(1, pathSegments6), deepLink.getHost()) && Intrinsics.c(CollectionsKt.G(2, pathSegments6), DeepLink.FORM.getHost())) {
                            return ParsedLink.CertificateDiamondActivation.f51654b;
                        }
                        String str9 = (String) CollectionsKt.G(1, pathSegments6);
                        if (str9 != null) {
                            return new ParsedLink.CertificateDetail(str9);
                        }
                    }
                } else if (Intrinsics.c(host, DeepLink.EXCLUSIVE_SECTION.getHost())) {
                    List<String> pathSegments7 = uri.getPathSegments();
                    pathSegments7.getClass();
                    String str10 = (String) CollectionsKt.firstOrNull(pathSegments7);
                    if (str10 == null) {
                        return ParsedLink.ExclusiveSection.f51659b;
                    }
                    if (str10.equals(DeepLink.EXCLUSIVE_CATEGORY.getHost())) {
                        List<String> pathSegments8 = uri.getPathSegments();
                        pathSegments8.getClass();
                        String str11 = (String) CollectionsKt.G(1, pathSegments8);
                        if (str11 != null) {
                            return new ParsedLink.ExclusiveCategory(str11);
                        }
                    } else if (str10.equals(DeepLink.EXCLUSIVE_DETAIL.getHost())) {
                        List<String> pathSegments9 = uri.getPathSegments();
                        pathSegments9.getClass();
                        String str12 = (String) CollectionsKt.G(1, pathSegments9);
                        if (str12 != null) {
                            return new ParsedLink.ExclusiveProduct(str12);
                        }
                    }
                } else {
                    if (Intrinsics.c(host, DeepLink.TRAVELS.getHost())) {
                        return ParsedLink.Travels.f51686b;
                    }
                    if (Intrinsics.c(host, DeepLink.PAIRING_V2.getHost())) {
                        List<String> pathSegments10 = uri.getPathSegments();
                        if (pathSegments10.size() >= 3) {
                            String str13 = pathSegments10.get(0);
                            str13.getClass();
                            String str14 = pathSegments10.get(1);
                            str14.getClass();
                            String str15 = pathSegments10.get(2);
                            str15.getClass();
                            return new ParsedLink.PairingV2(str13, str14, str15);
                        }
                    } else {
                        DeepLink deepLink2 = DeepLink.CATALOG;
                        if (!Intrinsics.c(host, deepLink2.getHost()) && !Intrinsics.c(host, DeepLink.CATEGORY.getHost()) && !Intrinsics.c(host, DeepLink.CATALOG_MEN.getHost()) && !Intrinsics.c(host, DeepLink.CATALOG_WOMEN.getHost()) && !Intrinsics.c(host, DeepLink.CATALOG_PRODUCT.getHost())) {
                            if (Intrinsics.c(host, DeepLink.FEED.getHost())) {
                                List<String> pathSegments11 = uri.getPathSegments();
                                pathSegments11.getClass();
                                String str16 = (String) CollectionsKt.firstOrNull(pathSegments11);
                                if (Intrinsics.c(str16, DeepLink.FEED_DISCOVER.getHost())) {
                                    key = FeedTab.DISCOVER.getKey();
                                } else if (Intrinsics.c(str16, DeepLink.FEED_FOR_YOU.getHost())) {
                                    key = FeedTab.FOR_YOU.getKey();
                                }
                                return new ParsedLink.Feed(key);
                            }
                            if (Intrinsics.c(host, DeepLink.EXPLORE.getHost())) {
                                return c(uri);
                            }
                            if (Intrinsics.c(host, DeepLink.PRIVACY.getHost())) {
                                return ParsedLink.Privacy.f51679b;
                            }
                            if (Intrinsics.c(host, DeepLink.PREFERENCE_CENTER.getHost())) {
                                return ParsedLink.PreferenceCenter.f51678b;
                            }
                            if (Intrinsics.c(host, DeepLink.AUTHENTICATE.getHost())) {
                                List<String> pathSegments12 = uri.getPathSegments();
                                pathSegments12.getClass();
                                String str17 = (String) CollectionsKt.firstOrNull(pathSegments12);
                                if (str17 != null) {
                                    int iHashCode = str17.hashCode();
                                    if (iHashCode != -1240244679) {
                                        if (iHashCode != 3321844) {
                                            if (iHashCode == 101812419 && str17.equals("kakao")) {
                                                return ParsedLink.AuthenticateKakao.f51643b;
                                            }
                                        } else if (str17.equals("line")) {
                                            return ParsedLink.AuthenticateLine.f51644b;
                                        }
                                    } else if (str17.equals(Payload.SOURCE_GOOGLE)) {
                                        return ParsedLink.AuthenticateGoogle.f51642b;
                                    }
                                }
                                return ParsedLink.Authenticate.f51641b;
                            }
                            if (Intrinsics.c(host, DeepLink.SERVICES.getHost())) {
                                List<String> pathSegments13 = uri.getPathSegments();
                                pathSegments13.getClass();
                                return (Intrinsics.c(CollectionsKt.G(0, pathSegments13), DeepLink.REPAIR_SECTION.getHost()) && Intrinsics.c(CollectionsKt.G(1, pathSegments13), DeepLink.REPAIR_CREATE.getHost())) ? ParsedLink.RepairCreate.f51680b : ParsedLink.Services.f51681b;
                            }
                            if (Intrinsics.c(host, DeepLink.REPAIR_SECTION.getHost())) {
                                List<String> pathSegments14 = uri.getPathSegments();
                                pathSegments14.getClass();
                                if (Intrinsics.c(CollectionsKt.firstOrNull(pathSegments14), DeepLink.REPAIR_CREATE.getHost())) {
                                    return ParsedLink.RepairCreate.f51680b;
                                }
                            } else {
                                if (Intrinsics.c(host, DeepLink.MY_APPOINTMENTS.getHost())) {
                                    Set<String> queryParameterNames = uri.getQueryParameterNames();
                                    queryParameterNames.getClass();
                                    String str18 = (String) CollectionsKt.C(queryParameterNames);
                                    if (str18 != null && (queryParameter = uri.getQueryParameter(str18)) != null && !StringsKt.w(queryParameter)) {
                                        str2 = queryParameter;
                                    }
                                    return new ParsedLink.Appointments(str2);
                                }
                                if (Intrinsics.c(host, DeepLink.ORDER_CONFIRMATION.getHost())) {
                                    return new ParsedLink.OrderConfirmation(uri.getQueryParameter("ret_url"));
                                }
                                if (Intrinsics.c(host, DeepLink.CART.getHost())) {
                                    return ParsedLink.Cart.f51646b;
                                }
                                if (Intrinsics.c(host, DeepLink.AUDIOGUIDE.getHost())) {
                                    List<String> pathSegments15 = uri.getPathSegments();
                                    pathSegments15.getClass();
                                    String str19 = (String) CollectionsKt.G(0, pathSegments15);
                                    if (str19 != null) {
                                        return new ParsedLink.AudioGuide(str19, (String) CollectionsKt.G(1, pathSegments15));
                                    }
                                } else if (Intrinsics.c(host, DeepLink.AI_COMPANION.getHost())) {
                                    return ParsedLink.AICompanion.f51637b;
                                }
                            }
                        } else if (Intrinsics.c(uri.getHost(), deepLink2.getHost())) {
                            List<String> pathSegments16 = uri.getPathSegments();
                            if (pathSegments16 != null && (str = (String) CollectionsKt.G(0, pathSegments16)) != null) {
                                if (str.equals(DeepLink.CATALOG_PRODUCT.getHost())) {
                                    List<String> pathSegments17 = uri.getPathSegments();
                                    pathSegments17.getClass();
                                    String str20 = (String) CollectionsKt.G(1, pathSegments17);
                                    if (str20 != null) {
                                        return new ParsedLink.CatalogProduct(str20);
                                    }
                                } else {
                                    if (!str.equals(DeepLink.CATEGORY.getHost())) {
                                        if (str.equals(DeepLink.PRODUCT_LIST.getHost())) {
                                            return new ParsedLink.CatalogProductList(uri);
                                        }
                                        List<String> pathSegments18 = uri.getPathSegments();
                                        pathSegments18.getClass();
                                        String str21 = (String) CollectionsKt.G(1, pathSegments18);
                                        List<String> pathSegments19 = uri.getPathSegments();
                                        pathSegments19.getClass();
                                        return new ParsedLink.CatalogSection(str, str21, (String) CollectionsKt.G(2, pathSegments19));
                                    }
                                    List<String> pathSegments20 = uri.getPathSegments();
                                    pathSegments20.getClass();
                                    String str22 = (String) CollectionsKt.G(1, pathSegments20);
                                    if (str22 != null) {
                                        return new ParsedLink.CatalogCategory(str22, uri.getQueryParameter("theme"));
                                    }
                                }
                            }
                        } else {
                            String host2 = uri.getHost();
                            if (Intrinsics.c(host2, DeepLink.CATALOG_PRODUCT.getHost())) {
                                List<String> pathSegments21 = uri.getPathSegments();
                                pathSegments21.getClass();
                                String str23 = (String) CollectionsKt.G(0, pathSegments21);
                                if (str23 != null) {
                                    return new ParsedLink.CatalogProduct(str23);
                                }
                            } else if (Intrinsics.c(host2, DeepLink.CATEGORY.getHost())) {
                                List<String> pathSegments22 = uri.getPathSegments();
                                pathSegments22.getClass();
                                String str24 = (String) CollectionsKt.G(0, pathSegments22);
                                if (str24 != null) {
                                    return new ParsedLink.CatalogCategory(str24, uri.getQueryParameter("theme"));
                                }
                            } else if (Intrinsics.c(host2, DeepLink.CATALOG_MEN.getHost()) || Intrinsics.c(host2, DeepLink.CATALOG_WOMEN.getHost())) {
                                String host3 = uri.getHost();
                                if (host3 == null) {
                                    host3 = "";
                                }
                                List<String> pathSegments23 = uri.getPathSegments();
                                pathSegments23.getClass();
                                String str25 = (String) CollectionsKt.G(0, pathSegments23);
                                List<String> pathSegments24 = uri.getPathSegments();
                                pathSegments24.getClass();
                                return new ParsedLink.CatalogSection(host3, str25, (String) CollectionsKt.G(1, pathSegments24));
                            }
                        }
                    }
                }
            }
        }
        return null;
    }
}
