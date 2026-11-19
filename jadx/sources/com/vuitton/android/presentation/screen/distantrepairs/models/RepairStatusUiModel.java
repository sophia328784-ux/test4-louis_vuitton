package com.vuitton.android.presentation.screen.distantrepairs.models;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v28 com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel[], still in use, count: 1, list:
  (r0v28 com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel[]) from 0x01ae: INVOKE (r0v28 com.vuitton.android.presentation.screen.distantrepairs.models.RepairStatusUiModel[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b$\b\u0086\u0081\u0002\u0018\u0000 \t2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0007\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0004\u001a\u0004\b\b\u0010\u0006j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%¨\u0006&"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel;", "", "", "label", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "trackingLabel", NBSSpanMetricUnit.Bit, "Companion", "AWAITING_PAYMENT", "CANCELLED", "CONFIRM_ADDRESS", "DELIVERED_TO_CLIENT", "DROPPED_IN_STORE", "DROPPED_IN_STORE_WITH_STORE_NAME", "EXPERTISE", "HISTORY", "HOME_DELIVERY", "PAYMENT_CONFIRMED", "PAYMENT_CONTACT", "PAYMENT_INITIATED", "PRELIMINARY_ASSESSMENT", "PRELIMINARY_ASSESSMENT_ACC", "PRELIMINARY_ASSESSMENT_DEC", "READY_FOR_PICK_UP", "READY_FOR_PICK_UP_WITH_STORE_NAME", "RECEIVED_AT_ATELIER", "REPAIR_IN_PROGRESS", "REQUEST_SUBMITTED", "RESTORATION", "RESTORATION_NOT_PERFORMED", "ROUTING_TO_WORKSHOP", "SHIPPED_FROM_EHUB", "SHIPPING", "SHIPPING_IN_PREPARATION", "SHIPPING_TO_ATELIER", "UNDER_ASSESSMENT", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class RepairStatusUiModel {
    AWAITING_PAYMENT("awaiting_payment", "awaiting_payment"),
    CANCELLED("cancelled", "cancelled"),
    CONFIRM_ADDRESS("confirm_address", "confirm_address"),
    DELIVERED_TO_CLIENT("delivered_to_client", "delivered_to_client"),
    DROPPED_IN_STORE("dropped_in_store", "dropped_in_store"),
    DROPPED_IN_STORE_WITH_STORE_NAME("dropped_in_store_with_store_name", "dropped_in_store_s"),
    EXPERTISE("expertise", "expertise"),
    HISTORY("history", "history"),
    HOME_DELIVERY("home_delivery", "home_delivery"),
    PAYMENT_CONFIRMED("payment_confirmed", "payment_confirmed"),
    PAYMENT_CONTACT("payment_contact", "payment_contact"),
    PAYMENT_INITIATED("payment_initiated", "payment_initiated"),
    PRELIMINARY_ASSESSMENT("preliminary_assessment", "preliminary_assessment"),
    PRELIMINARY_ASSESSMENT_ACC("preliminary_assessment_acc", "preliminary_assessment_acc"),
    PRELIMINARY_ASSESSMENT_DEC("preliminary_assessment_dec", "preliminary_assessment_dec"),
    READY_FOR_PICK_UP("ready_for_pick_up", "ready_for_pick_up"),
    READY_FOR_PICK_UP_WITH_STORE_NAME("ready_for_pick_up_with_store_name", "ready_for_pick_up_s"),
    RECEIVED_AT_ATELIER("received_at_atelier", "received_at_atelier"),
    REPAIR_IN_PROGRESS("repair_in_progress", "repair_in_progress"),
    REQUEST_SUBMITTED("request_submitted", "request_submitted"),
    RESTORATION("restoration", "restoration"),
    RESTORATION_NOT_PERFORMED("restoration_not_performed", "restoration_not_performed"),
    ROUTING_TO_WORKSHOP("routing_to_workshop", "routing_to_workshop"),
    SHIPPED_FROM_EHUB("shipped_from_ehub", "shipped_from_ehub"),
    SHIPPING("shipping", "shipping"),
    SHIPPING_IN_PREPARATION("shipping_in_preparation", "shipping_in_preparation"),
    SHIPPING_TO_ATELIER("shipping_to_atelier", "shipping_to_atelier"),
    UNDER_ASSESSMENT("under_assessment", "under_assessment");

    private static final /* synthetic */ EnumEntries $ENTRIES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String label;
    private final String trackingLabel;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusUiModel$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        $ENTRIES = EnumEntriesKt.a(new RepairStatusUiModel[]{r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r0, r1, r0, r2, r0, r1, r0, r1, r0, r1, r0, r1, r0});
    }

    public RepairStatusUiModel(String str, String str2) {
        super(str, i);
        this.label = str;
        this.trackingLabel = str2;
    }

    public static RepairStatusUiModel valueOf(String str) {
        return (RepairStatusUiModel) Enum.valueOf(RepairStatusUiModel.class, str);
    }

    public static RepairStatusUiModel[] values() {
        return (RepairStatusUiModel[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getLabel() {
        return this.label;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getTrackingLabel() {
        return this.trackingLabel;
    }
}
