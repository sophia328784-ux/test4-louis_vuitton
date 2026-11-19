package com.vuitton.android.presentation.contact.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.contact.models.ContactUsOrigin[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.contact.models.ContactUsOrigin[]) from 0x008d: INVOKE (r0v1 com.vuitton.android.presentation.contact.models.ContactUsOrigin[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0012"}, d2 = {"Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;", "", "", "value", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "FEED", "CATALOG", "PLP", "PDP", "SERVICES", "CART", "CHECKOUT", "CARE_SERVICES", "CERTIFICATES", "WISHLIST", "PERSONAL_SELECTION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ContactUsOrigin {
    FEED("feed"),
    CATALOG("catalog"),
    PLP("product_list"),
    PDP("product_sheet"),
    SERVICES("services"),
    CART("cart"),
    CHECKOUT("checkout"),
    CARE_SERVICES("my_care_services"),
    CERTIFICATES("certificates"),
    WISHLIST("wishlist"),
    PERSONAL_SELECTION("personal_selection");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String value;

    static {
        $ENTRIES = EnumEntriesKt.a(contactUsOriginArr);
    }

    public ContactUsOrigin(String str) {
        super(str, i);
        this.value = str;
    }

    public static ContactUsOrigin valueOf(String str) {
        return (ContactUsOrigin) Enum.valueOf(ContactUsOrigin.class, str);
    }

    public static ContactUsOrigin[] values() {
        return (ContactUsOrigin[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getValue() {
        return this.value;
    }
}
