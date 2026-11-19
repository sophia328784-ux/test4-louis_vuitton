package com.vuitton.android.presentation.screen.reinsurance.models;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceTypeUiModel[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceTypeUiModel[]) from 0x005a: INVOKE (r0v1 com.vuitton.android.presentation.screen.reinsurance.models.ReinsuranceTypeUiModel[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012¨\u0006\u0013"}, d2 = {"Lcom/vuitton/android/presentation/screen/reinsurance/models/ReinsuranceTypeUiModel;", "", "", "identifier", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "", "order", "I", NBSSpanMetricUnit.Bit, "()I", "PAYMENT", "DELIVERY", "RETURN_EXCHANGE", "PACKAGING", "COLLECT_IN_STORE", "CONTACT", "OTHERS", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ReinsuranceTypeUiModel {
    PAYMENT("payment", 1),
    DELIVERY("delivery", 2),
    RETURN_EXCHANGE("returnexchange", 3),
    PACKAGING("packaging", 4),
    COLLECT_IN_STORE("next_day_collect_in_store", 4),
    CONTACT("contact", 4),
    OTHERS("", 5);

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String identifier;
    private final int order;

    static {
        $ENTRIES = EnumEntriesKt.a(reinsuranceTypeUiModelArr);
    }

    public ReinsuranceTypeUiModel(String str, int i2) {
        super(str, i);
        this.identifier = str;
        this.order = i2;
    }

    public static ReinsuranceTypeUiModel valueOf(String str) {
        return (ReinsuranceTypeUiModel) Enum.valueOf(ReinsuranceTypeUiModel.class, str);
    }

    public static ReinsuranceTypeUiModel[] values() {
        return (ReinsuranceTypeUiModel[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getIdentifier() {
        return this.identifier;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final int getOrder() {
        return this.order;
    }
}
