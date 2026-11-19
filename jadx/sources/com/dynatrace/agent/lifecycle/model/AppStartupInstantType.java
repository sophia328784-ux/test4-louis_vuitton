package com.dynatrace.agent.lifecycle.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.dynatrace.agent.lifecycle.model.AppStartupInstantType[], still in use, count: 1, list:
  (r0v1 com.dynatrace.agent.lifecycle.model.AppStartupInstantType[]) from 0x0066: INVOKE (r0v1 com.dynatrace.agent.lifecycle.model.AppStartupInstantType[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\r\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lcom/dynatrace/agent/lifecycle/model/AppStartupInstantType;", "", "", "value", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "APPLICATION_CREATE_START", "APPLICATION_CREATE_END", "ACTIVITY_CREATE_START", "ACTIVITY_CREATE_END", "ACTIVITY_START_START", "ACTIVITY_START_END", "ACTIVITY_RESUME_START", "ACTIVITY_RESUME_END", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class AppStartupInstantType {
    APPLICATION_CREATE_START("android.application.on_create.start_time"),
    APPLICATION_CREATE_END("android.application.on_create.end_time"),
    ACTIVITY_CREATE_START("android.activity.on_create.start_time"),
    ACTIVITY_CREATE_END("android.activity.on_create.end_time"),
    ACTIVITY_START_START("android.activity.on_start.start_time"),
    ACTIVITY_START_END("android.activity.on_start.end_time"),
    ACTIVITY_RESUME_START("android.activity.on_resume.start_time"),
    ACTIVITY_RESUME_END("android.activity.on_resume.end_time");

    private static final /* synthetic */ EnumEntries $ENTRIES;
    private final String value;

    static {
        $ENTRIES = EnumEntriesKt.a(appStartupInstantTypeArr);
    }

    public AppStartupInstantType(String str) {
        super(str, i);
        this.value = str;
    }

    public static AppStartupInstantType valueOf(String str) {
        return (AppStartupInstantType) Enum.valueOf(AppStartupInstantType.class, str);
    }

    public static AppStartupInstantType[] values() {
        return (AppStartupInstantType[]) $VALUES.clone();
    }

    /* JADX INFO: renamed from: a, reason: from getter */
    public final String getValue() {
        return this.value;
    }
}
