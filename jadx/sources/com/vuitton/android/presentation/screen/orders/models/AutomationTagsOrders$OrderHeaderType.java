package com.vuitton.android.presentation.screen.orders.models;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$OrderHeaderType[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$OrderHeaderType[]) from 0x000d: INVOKE (r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$OrderHeaderType[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\u0007j\u0002\b\n¨\u0006\u000b"}, d2 = {"com/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType", "", "Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderHeaderType;", "", "labelTag", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "titleTag", NBSSpanMetricUnit.Bit, "DELIVERY_DATE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AutomationTagsOrders$OrderHeaderType {
    DELIVERY_DATE;

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String labelTag;
    private final String titleTag;

    static {
        $ENTRIES = EnumEntriesKt.a(automationTagsOrders$OrderHeaderTypeArr);
    }

    public AutomationTagsOrders$OrderHeaderType() {
        super("DELIVERY_DATE", 0);
        this.labelTag = "MyOrder_EstimatedDeliveryDateItem_text";
        this.titleTag = "MyOrder_EstimatedDeliveryDateItemTitle_text";
    }

    public static AutomationTagsOrders$OrderHeaderType valueOf(String str) {
        return (AutomationTagsOrders$OrderHeaderType) Enum.valueOf(AutomationTagsOrders$OrderHeaderType.class, str);
    }

    public static AutomationTagsOrders$OrderHeaderType[] values() {
        return (AutomationTagsOrders$OrderHeaderType[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getLabelTag() {
        return this.labelTag;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getTitleTag() {
        return this.titleTag;
    }
}
