package com.vuitton.foundation.model.domain.model.audioplayer;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed[], still in use, count: 1, list:
  (r0v1 com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed[]) from 0x0030: INVOKE (r0v1 com.vuitton.foundation.model.domain.model.audioplayer.PlayerSpeed[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerSpeed;", "", "", "displayName", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "", "value", "F", NBSSpanMetricUnit.Bit, "()F", "SPEED_1X", "SPEED_1_5X", "SPEED_2X", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class PlayerSpeed {
    SPEED_1X("x1", 1.0f),
    SPEED_1_5X("x1.5", 1.5f),
    SPEED_2X("x2", 2.0f);

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String displayName;
    private final float value;

    static {
        $ENTRIES = EnumEntriesKt.a(playerSpeedArr);
    }

    public PlayerSpeed(String str, float f2) {
        super(str, i);
        this.displayName = str;
        this.value = f2;
    }

    public static PlayerSpeed valueOf(String str) {
        return (PlayerSpeed) Enum.valueOf(PlayerSpeed.class, str);
    }

    public static PlayerSpeed[] values() {
        return (PlayerSpeed[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getDisplayName() {
        return this.displayName;
    }

    /* JADX INFO: renamed from: b, reason: from getter */
    public final float getValue() {
        return this.value;
    }
}
