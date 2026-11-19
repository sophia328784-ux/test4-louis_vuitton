package com.vuitton.android.presentation.screen.orders.models;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$OrderDetailRowType[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$OrderDetailRowType[]) from 0x0046: INVOKE (r0v1 com.vuitton.android.presentation.screen.orders.models.AutomationTagsOrders$OrderDetailRowType[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\b\u0010\u0005\u001a\u0004\b\t\u0010\u0007R\u0017\u0010\n\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\n\u0010\u0005\u001a\u0004\b\u000b\u0010\u0007j\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"com/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType", "", "Lcom/vuitton/android/presentation/screen/orders/models/AutomationTagsOrders$OrderDetailRowType;", "", "viewTag", "Ljava/lang/String;", "c", "()Ljava/lang/String;", "titleTag", "a", "valueTag", NBSSpanMetricUnit.Bit, "PRODUCT_NAME", "SHIPPING_ADDRESS", "SHIPPING_METHOD", "ORDER_DATE", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AutomationTagsOrders$OrderDetailRowType {
    PRODUCT_NAME("MyOrder_ProductNameItem_view", "MyOrder_ProductNameText_text", "MyOrder_OrderedProductNameText_text"),
    SHIPPING_ADDRESS("MyOrder_ShippingAddressItem_view", "MyOrder_ShippingAddressText_text", "MyOrder_OrderedProductShippingAddress_text"),
    SHIPPING_METHOD("MyOrder_ShippingMethodItem_view", "MyOrder_ShippingMethodText_text", "MyOrder_OrderedProductShippingMethod_text"),
    ORDER_DATE("MyOrder_OrderDateItem_view", "MyOrder_OrderDateText_text", "MyOrder_OrderedProductDate_text");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String titleTag;
    private final String valueTag;
    private final String viewTag;

    static {
        $ENTRIES = EnumEntriesKt.a(automationTagsOrders$OrderDetailRowTypeArr);
    }

    public AutomationTagsOrders$OrderDetailRowType(String str, String str2, String str3) {
        super(str, i);
        this.viewTag = str;
        this.titleTag = str2;
        this.valueTag = str3;
    }

    public static AutomationTagsOrders$OrderDetailRowType valueOf(String str) {
        return (AutomationTagsOrders$OrderDetailRowType) Enum.valueOf(AutomationTagsOrders$OrderDetailRowType.class, str);
    }

    public static AutomationTagsOrders$OrderDetailRowType[] values() {
        return (AutomationTagsOrders$OrderDetailRowType[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getTitleTag() {
        return this.titleTag;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getValueTag() {
        return this.valueTag;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final String getViewTag() {
        return this.viewTag;
    }
}
