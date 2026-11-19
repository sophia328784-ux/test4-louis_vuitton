package com.vuitton.android.presentation.screen.orders.models;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$ProductDetailRowType[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$ProductDetailRowType[]) from 0x004c: INVOKE (r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$ProductDetailRowType[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\u0007j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"com/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType", "", "Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$ProductDetailRowType;", "", "titleTag", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "valueTag", NBSSpanMetricUnit.Bit, "PRICE", "REFERENCE", "SIZE", "COLOR", "PERSONALIZATION", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AutomationTagsOrders$ProductDetailRowType {
    PRICE("MyOrder_PriceText_text", "MyOrder_OrderedProductPrice_text"),
    REFERENCE("MyOrder_ReferenceText_text", "MyOrder_OrderedProductSKU_text"),
    SIZE("MyOrder_SizeText_text", "MyOrder_OrderedProductSize_text"),
    COLOR("MyOrder_ColorText_text", "MyOrder_OrderedProductColor_text"),
    PERSONALIZATION("personalization_propretyName_text", "personalization_propretyValue_view");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String titleTag;
    private final String valueTag;

    static {
        $ENTRIES = EnumEntriesKt.a(automationTagsOrders$ProductDetailRowTypeArr);
    }

    public AutomationTagsOrders$ProductDetailRowType(String str, String str2) {
        super(str, i);
        this.titleTag = str;
        this.valueTag = str2;
    }

    public static AutomationTagsOrders$ProductDetailRowType valueOf(String str) {
        return (AutomationTagsOrders$ProductDetailRowType) Enum.valueOf(AutomationTagsOrders$ProductDetailRowType.class, str);
    }

    public static AutomationTagsOrders$ProductDetailRowType[] values() {
        return (AutomationTagsOrders$ProductDetailRowType[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getTitleTag() {
        return this.titleTag;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getValueTag() {
        return this.valueTag;
    }
}
