package com.vuitton.android.presentation.redirectlink;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.redirectlink.PaymentCheckoutProvider[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.presentation.redirectlink.PaymentCheckoutProvider[]) from 0x002a: INVOKE (r0v1 com.vuitton.android.presentation.redirectlink.PaymentCheckoutProvider[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0007R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider;", "", "", "providerName", "Ljava/lang/String;", NBSSpanMetricUnit.Bit, "()Ljava/lang/String;", "Companion", "KCP", "ALIPAY", "NOT_SUPPORTED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PaymentCheckoutProvider {
    KCP("kcp"),
    ALIPAY("alipay"),
    NOT_SUPPORTED("notSupported");

    private static final /* synthetic */ EnumEntries $ENTRIES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String providerName;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/vuitton/android/presentation/redirectlink/PaymentCheckoutProvider$Companion;", "", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        $ENTRIES = EnumEntriesKt.a(new PaymentCheckoutProvider[]{r0, r1, r2});
    }

    public PaymentCheckoutProvider(String str) {
        super(str, i);
        this.providerName = str;
    }

    public static EnumEntries a() {
        return $ENTRIES;
    }

    public static PaymentCheckoutProvider valueOf(String str) {
        return (PaymentCheckoutProvider) Enum.valueOf(PaymentCheckoutProvider.class, str);
    }

    public static PaymentCheckoutProvider[] values() {
        return (PaymentCheckoutProvider[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final String getProviderName() {
        return this.providerName;
    }
}
