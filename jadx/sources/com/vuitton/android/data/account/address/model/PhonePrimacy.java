package com.vuitton.android.data.account.address.model;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.data.account.address.model.PhonePrimacy[], still in use, count: 1, list:
  (r0v1 com.vuitton.android.data.account.address.model.PhonePrimacy[]) from 0x002a: INVOKE (r0v1 com.vuitton.android.data.account.address.model.PhonePrimacy[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/android/data/account/address/model/PhonePrimacy;", "", "", "index", "I", "a", "()I", "Lcom/vuitton/android/data/account/address/model/PhoneType;", "phoneType", "Lcom/vuitton/android/data/account/address/model/PhoneType;", NBSSpanMetricUnit.Bit, "()Lcom/vuitton/android/data/account/address/model/PhoneType;", "MAIN", "OTHER", "THIRD", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PhonePrimacy {
    MAIN(0, PhoneType.HOME),
    OTHER(1, PhoneType.MOBILE),
    THIRD(2, PhoneType.WORK);

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final int index;
    private final PhoneType phoneType;

    static {
        $ENTRIES = EnumEntriesKt.a(phonePrimacyArr);
    }

    public PhonePrimacy(int i2, PhoneType phoneType) {
        super(str, i);
        this.index = i2;
        this.phoneType = phoneType;
    }

    public static PhonePrimacy valueOf(String str) {
        return (PhonePrimacy) Enum.valueOf(PhonePrimacy.class, str);
    }

    public static PhonePrimacy[] values() {
        return (PhonePrimacy[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final int getIndex() {
        return this.index;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final PhoneType getPhoneType() {
        return this.phoneType;
    }
}
