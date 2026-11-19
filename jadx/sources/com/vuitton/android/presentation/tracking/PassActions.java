package com.vuitton.android.presentation.tracking;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bv\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/vuitton/android/presentation/tracking/PassActions;", "", "LVPass", "SpeedyPass", "Lcom/vuitton/android/presentation/tracking/PassActions$LVPass;", "Lcom/vuitton/android/presentation/tracking/PassActions$SpeedyPass;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface PassActions {

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.tracking.PassActions$LVPass[], still in use, count: 1, list:
      (r0v1 com.vuitton.android.presentation.tracking.PassActions$LVPass[]) from 0x001e: INVOKE (r0v1 com.vuitton.android.presentation.tracking.PassActions$LVPass[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/tracking/PassActions$LVPass;", "Lcom/vuitton/android/presentation/tracking/PassActions;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "DISPLAYED", "IDENTIFIED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class LVPass implements PassActions {
        DISPLAYED("displayed"),
        IDENTIFIED("identified");

        private static final /* synthetic */ EnumEntries $ENTRIES;
        private final String value;

        static {
            $ENTRIES = EnumEntriesKt.a(lVPassArr);
        }

        public LVPass(String str) {
            super(str, i);
            this.value = str;
        }

        public static LVPass valueOf(String str) {
            return (LVPass) Enum.valueOf(LVPass.class, str);
        }

        public static LVPass[] values() {
            return (LVPass[]) $VALUES.clone();
        }

        @Override // com.vuitton.android.presentation.tracking.PassActions
        public final String getValue() {
            return this.value;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.android.presentation.tracking.PassActions$SpeedyPass[], still in use, count: 1, list:
      (r0v1 com.vuitton.android.presentation.tracking.PassActions$SpeedyPass[]) from 0x001e: INVOKE (r0v1 com.vuitton.android.presentation.tracking.PassActions$SpeedyPass[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002R\u001a\u0010\u0004\u001a\u00020\u00038\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/vuitton/android/presentation/tracking/PassActions$SpeedyPass;", "Lcom/vuitton/android/presentation/tracking/PassActions;", "", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "VIEWED", "USED", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class SpeedyPass implements PassActions {
        VIEWED("viewed"),
        USED("used");

        private static final /* synthetic */ EnumEntries $ENTRIES;
        private final String value;

        static {
            $ENTRIES = EnumEntriesKt.a(speedyPassArr);
        }

        public SpeedyPass(String str) {
            super(str, i);
            this.value = str;
        }

        public static SpeedyPass valueOf(String str) {
            return (SpeedyPass) Enum.valueOf(SpeedyPass.class, str);
        }

        public static SpeedyPass[] values() {
            return (SpeedyPass[]) $VALUES.clone();
        }

        @Override // com.vuitton.android.presentation.tracking.PassActions
        public final String getValue() {
            return this.value;
        }
    }

    String getValue();
}
