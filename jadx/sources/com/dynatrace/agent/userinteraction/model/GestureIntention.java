package com.dynatrace.agent.userinteraction.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.dynatrace.agent.userinteraction.model.GestureIntention[], still in use, count: 1, list:
  (r0v1 com.dynatrace.agent.userinteraction.model.GestureIntention[]) from 0x0042: INVOKE (r0v1 com.dynatrace.agent.userinteraction.model.GestureIntention[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\n\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, d2 = {"Lcom/dynatrace/agent/userinteraction/model/GestureIntention;", "", "", "jsonValue", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "UP", "DOWN", "LEFT", "RIGHT", "COMPLEX", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class GestureIntention {
    UP("up"),
    DOWN("down"),
    LEFT("left"),
    RIGHT("right"),
    COMPLEX("complex");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String jsonValue;

    static {
        $ENTRIES = EnumEntriesKt.a(gestureIntentionArr);
    }

    public GestureIntention(String str) {
        super(str, i);
        this.jsonValue = str;
    }

    public static GestureIntention valueOf(String str) {
        return (GestureIntention) Enum.valueOf(GestureIntention.class, str);
    }

    public static GestureIntention[] values() {
        return (GestureIntention[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getJsonValue() {
        return this.jsonValue;
    }
}
