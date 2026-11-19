package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 kotlin.reflect.jvm.internal.impl.load.java.ReportLevel[], still in use, count: 1, list:
  (r0v1 kotlin.reflect.jvm.internal.impl.load.java.ReportLevel[]) from 0x002a: INVOKE (r0v1 kotlin.reflect.jvm.internal.impl.load.java.ReportLevel[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
public final class ReportLevel {
    IGNORE("ignore"),
    WARN("warn"),
    STRICT("strict");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    public static final Companion Companion = new Object(null) { // from class: kotlin.reflect.jvm.internal.impl.load.java.ReportLevel.Companion
    };
    private final String description;

    /* JADX WARN: Type inference failed for: r0v3, types: [kotlin.reflect.jvm.internal.impl.load.java.ReportLevel$Companion] */
    static {
        $ENTRIES = EnumEntriesKt.a(new ReportLevel[]{r0, r1, r2});
    }

    public ReportLevel(String str) {
        super(str, i);
        this.description = str;
    }

    public static ReportLevel valueOf(String str) {
        return (ReportLevel) Enum.valueOf(ReportLevel.class, str);
    }

    public static ReportLevel[] values() {
        return (ReportLevel[]) $VALUES.clone();
    }

    public final String a() {
        return this.description;
    }
}
