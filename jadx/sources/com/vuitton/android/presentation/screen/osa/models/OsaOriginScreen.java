package com.vuitton.android.presentation.screen.osa.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen[]) from 0x005a: INVOKE (r0v1 com.vuitton.android.presentation.screen.osa.models.OsaOriginScreen[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;", "", "", "trackingName", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "PDP", "CUSTOMER_SERVICES", "CONTRIBUTION_LINK", "APPOINTMENT_LIST", "APP_LINK", "PERSONAL_SELECTION", "BOOKING", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class OsaOriginScreen {
    PDP("pdp"),
    CUSTOMER_SERVICES("customer_services"),
    CONTRIBUTION_LINK("contribution_link"),
    APPOINTMENT_LIST("appointment_list"),
    APP_LINK("app_link"),
    PERSONAL_SELECTION("in_store_personal_selection"),
    BOOKING("booking");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String trackingName;

    static {
        $ENTRIES = EnumEntriesKt.a(osaOriginScreenArr);
    }

    public OsaOriginScreen(String str) {
        super(str, i);
        this.trackingName = str;
    }

    public static OsaOriginScreen valueOf(String str) {
        return (OsaOriginScreen) Enum.valueOf(OsaOriginScreen.class, str);
    }

    public static OsaOriginScreen[] values() {
        return (OsaOriginScreen[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getTrackingName() {
        return this.trackingName;
    }
}
