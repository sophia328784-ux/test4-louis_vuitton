package com.vuitton.android.presentation.screen.orders.models;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$ShortcutType[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$ShortcutType[]) from 0x003e: INVOKE (r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$ShortcutType[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\u0007j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, d2 = {"com/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType", "", "Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ShortcutType;", "", "buttonTag", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "textTag", NBSSpanMetricUnit.Bit, "RETURN_OR_EXCHANGE", "DOWNLOAD_INVOICE", "RETURN", "TRACK_ORDER", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AutomationTagsOrders$ShortcutType {
    RETURN_OR_EXCHANGE("shortcut_returnOrExchange_button", "shortcut_returnOrExchange_text"),
    DOWNLOAD_INVOICE("shortcut_downloadInvoice_button", "shortcut_downloadInvoice_text"),
    RETURN("shortcut_return_button", "shorcut_return_text"),
    TRACK_ORDER("shortcut_trackTheOrder_button", "shorcut_trackTheOrder_text");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String buttonTag;
    private final String textTag;

    static {
        $ENTRIES = EnumEntriesKt.a(automationTagsOrders$ShortcutTypeArr);
    }

    public AutomationTagsOrders$ShortcutType(String str, String str2) {
        super(str, i);
        this.buttonTag = str;
        this.textTag = str2;
    }

    public static AutomationTagsOrders$ShortcutType valueOf(String str) {
        return (AutomationTagsOrders$ShortcutType) Enum.valueOf(AutomationTagsOrders$ShortcutType.class, str);
    }

    public static AutomationTagsOrders$ShortcutType[] values() {
        return (AutomationTagsOrders$ShortcutType[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getButtonTag() {
        return this.buttonTag;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getTextTag() {
        return this.textTag;
    }
}
