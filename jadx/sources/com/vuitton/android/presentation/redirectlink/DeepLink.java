package com.vuitton.android.presentation.redirectlink;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v61 com.vuitton.android.presentation.redirectlink.DeepLink[], still in use, count: 1, list:
  (r0v61 com.vuitton.android.presentation.redirectlink.DeepLink[]) from 0x03fb: INVOKE (r0v61 com.vuitton.android.presentation.redirectlink.DeepLink[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1541)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\bD\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3j\u0002\b4j\u0002\b5j\u0002\b6j\u0002\b7j\u0002\b8j\u0002\b9j\u0002\b:j\u0002\b;j\u0002\b<j\u0002\b=j\u0002\b>j\u0002\b?j\u0002\b@j\u0002\bAj\u0002\bBj\u0002\bCj\u0002\bDj\u0002\bE¨\u0006F"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/DeepLink;", "", "", "host", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "FEED", "FEED_FOR_YOU", "FEED_DISCOVER", "PORTAL_SLIDER", "STORY", "NATIVE_STORY", "AUDIOGUIDE", "AI_COMPANION", "EXPLORE", "CATALOG", "CATALOG_MEN", "CATALOG_WOMEN", "CATALOG_PRODUCT", "CATEGORY", "STORELOCATOR", "STORE_MODE", "PRODUCT_LIST", "ORDER_CONFIRMATION", "EXCLUSIVE_SECTION", "EXCLUSIVE_CATEGORY", "EXCLUSIVE_DETAIL", "IMMERSIVE_ARTICLE", "SPOTLIGHT_COLLECTION", "SERVICES", "REPAIR_SECTION", "REPAIR_CREATE", "REPAIR_VIDEOCALL", "ADVISOR_CURATION", "POST_VISIT", "CERTIFICATES", "CERTIFICATES_LIST", "DIAMONDS", "ACTIVATION", "FORM", "LOGIN", "REGISTER", "AUTHENTICATE", "AUTHENTICATE_GOOGLE", "AUTHENTICATE_LINE", "AUTHENTICATE_KAKAO", "ACTIVATE_ACCOUNT", "MY_LV", "MY_APPOINTMENTS", "MY_ORDERS", "ORDER_DETAIL", "WISHLIST", "GDPR", "PRIVACY", "PREFERENCE_CENTER", "PRIVACY_SETTINGS", "CART", "CHECKOUT", "LVPASS", "LVPASS_QRCODE", "WEBVIEW", "CONNECTED", "WATCH", "WATCH_V3", "WATCHFACES", "EARPHONES", "PAIRING_V2", "TRAVELS", "TRUNK", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class DeepLink {
    FEED("feed"),
    FEED_FOR_YOU("for-you"),
    FEED_DISCOVER("discover"),
    PORTAL_SLIDER("portal_slider"),
    STORY("story"),
    NATIVE_STORY("native_story"),
    AUDIOGUIDE("audioguide"),
    AI_COMPANION("ai-companion"),
    EXPLORE("explore"),
    CATALOG("catalog"),
    CATALOG_MEN("men"),
    CATALOG_WOMEN("women"),
    CATALOG_PRODUCT("product"),
    CATEGORY("category"),
    STORELOCATOR("storelocator"),
    STORE_MODE("storemode"),
    PRODUCT_LIST("product-list"),
    ORDER_CONFIRMATION("orderconfirmation"),
    EXCLUSIVE_SECTION("exclusive"),
    EXCLUSIVE_CATEGORY("category"),
    EXCLUSIVE_DETAIL("product"),
    IMMERSIVE_ARTICLE("immersive_article"),
    SPOTLIGHT_COLLECTION("spotlight_collection"),
    SERVICES("services"),
    REPAIR_SECTION("repairs"),
    REPAIR_CREATE("create"),
    REPAIR_VIDEOCALL("videocall"),
    ADVISOR_CURATION("iwardrobing"),
    POST_VISIT("post-visit"),
    CERTIFICATES("certificates"),
    CERTIFICATES_LIST("list"),
    DIAMONDS("diamonds"),
    ACTIVATION("activation"),
    FORM("form"),
    LOGIN("login"),
    REGISTER("account_creation"),
    AUTHENTICATE("authenticate"),
    AUTHENTICATE_GOOGLE("authenticate/google"),
    AUTHENTICATE_LINE("authenticate/line"),
    AUTHENTICATE_KAKAO("authenticate/kakao"),
    ACTIVATE_ACCOUNT("account_activation"),
    MY_LV("mylv"),
    MY_APPOINTMENTS("myappointments"),
    MY_ORDERS("myorders"),
    ORDER_DETAIL("details"),
    WISHLIST("wishlist"),
    GDPR("gdpr"),
    PRIVACY("privacy"),
    PREFERENCE_CENTER("preferenceCenter"),
    PRIVACY_SETTINGS("privacy_settings"),
    CART("cart"),
    CHECKOUT("checkout"),
    LVPASS("LVPASS"),
    LVPASS_QRCODE("lv_pass_qr_code"),
    WEBVIEW("webview"),
    CONNECTED("connected"),
    WATCH("watch"),
    WATCH_V3("watchv3"),
    WATCHFACES("watchfaces"),
    EARPHONES("earphones"),
    PAIRING_V2("pairingthv2"),
    TRAVELS("travels"),
    TRUNK("trunk");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String host;

    static {
        $ENTRIES = EnumEntriesKt.a(deepLinkArr);
    }

    public DeepLink(String str) {
        super(str, i);
        this.host = str;
    }

    public static DeepLink valueOf(String str) {
        return (DeepLink) Enum.valueOf(DeepLink.class, str);
    }

    public static DeepLink[] values() {
        return (DeepLink[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getHost() {
        return this.host;
    }
}
