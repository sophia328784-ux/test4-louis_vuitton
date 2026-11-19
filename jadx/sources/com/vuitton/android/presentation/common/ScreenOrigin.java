package com.vuitton.android.presentation.common;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v22 com.vuitton.android.presentation.common.ScreenOrigin[], still in use, count: 1, list:
  (r0v22 com.vuitton.android.presentation.common.ScreenOrigin[]) from 0x0142: INVOKE (r0v22 com.vuitton.android.presentation.common.ScreenOrigin[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u001b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001c¨\u0006\u001d"}, d2 = {"Lcom/vuitton/android/presentation/common/ScreenOrigin;", "", "", "trackingKey", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "FEED", "MY_LV", "CATALOG", "IMMERSIVE_ARTICLE", "ONBOARDING", "OSA", "PERSONAL_SELECTIONS", "WISHLIST", "BOOKING", "PLP", "PDP", "SEARCH", "CUSTOMER_SERVICES", "CONTRIBUTION_LINK", "APPOINTMENT_LIST", "APP_LINK", "PERSONAL_SELECTION_IN_STORE", "CART", "CHECKOUT", "EXCLUSIVE_OFFER", "CARE_SERVICES", "CONNECTIVITY", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ScreenOrigin {
    FEED("feed"),
    MY_LV("mylv"),
    CATALOG("shop"),
    IMMERSIVE_ARTICLE("immersive_article"),
    ONBOARDING("onboarding"),
    OSA("osa"),
    PERSONAL_SELECTIONS("personal_selections"),
    WISHLIST("wishlist"),
    BOOKING("booking"),
    PLP("product_list"),
    PDP("product_sheet"),
    SEARCH("search"),
    CUSTOMER_SERVICES("customer_services"),
    CONTRIBUTION_LINK("contribution_link"),
    APPOINTMENT_LIST("appointment_list"),
    APP_LINK("app_link"),
    PERSONAL_SELECTION_IN_STORE("in_store_personal_selection"),
    CART("cart"),
    CHECKOUT("checkout"),
    EXCLUSIVE_OFFER("exclusive_offer"),
    CARE_SERVICES("repairs"),
    CONNECTIVITY("connectivity");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String trackingKey;

    static {
        $ENTRIES = EnumEntriesKt.a(screenOriginArr);
    }

    public ScreenOrigin(String str) {
        super(str, i);
        this.trackingKey = str;
    }

    public static ScreenOrigin valueOf(String str) {
        return (ScreenOrigin) Enum.valueOf(ScreenOrigin.class, str);
    }

    public static ScreenOrigin[] values() {
        return (ScreenOrigin[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getTrackingKey() {
        return this.trackingKey;
    }
}
