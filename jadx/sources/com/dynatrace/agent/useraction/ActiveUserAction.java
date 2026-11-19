package com.dynatrace.agent.useraction;

import com.appsflyer.sdk_base.referrer.Payload;
import com.dynatrace.agent.events.EventBuildingContext;
import com.dynatrace.agent.view.ErrorSummaryAccumulator;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/useraction/ActiveUserAction;", "", "Type", "CompleteReason", "Companion", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ActiveUserAction {
    public static final Companion m = new Companion(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f27052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f27053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final UserActionConfigSnapshot f27054c;
    public final UserInteractionMemory d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Type f27055e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f27056f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f27057h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f27058i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ErrorSummaryAccumulator f27059j = new ErrorSummaryAccumulator();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final EventBuildingContext f27060k = new EventBuildingContext(null, "UserAction", 1, null);
    public long l;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lcom/dynatrace/agent/useraction/ActiveUserAction$Companion;", "", "", "INSTANCE_ID_LENGTH", "I", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.dynatrace.agent.useraction.ActiveUserAction$CompleteReason[], still in use, count: 1, list:
      (r0v1 com.dynatrace.agent.useraction.ActiveUserAction$CompleteReason[]) from 0x004e: INVOKE (r0v1 com.dynatrace.agent.useraction.ActiveUserAction$CompleteReason[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/dynatrace/agent/useraction/ActiveUserAction$CompleteReason;", "", "", "reason", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "COMPLETED", "COMPLETED_BY_API", Payload.RESPONSE_TIMEOUT, "INTERRUPTED_BY_AUTOMATIC", "INTERRUPTED_BY_API", "BACKGROUND", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class CompleteReason {
        COMPLETED("completed"),
        COMPLETED_BY_API("completed_by_api"),
        TIMEOUT("timeout"),
        INTERRUPTED_BY_AUTOMATIC("interrupted_by_automatic"),
        INTERRUPTED_BY_API("interrupted_by_api"),
        BACKGROUND("background");

        private static final /* synthetic */ EnumEntries $ENTRIES;
        private final String reason;

        static {
            $ENTRIES = EnumEntriesKt.a(completeReasonArr);
        }

        public CompleteReason(String str) {
            super(str, i);
            this.reason = str;
        }

        public static CompleteReason valueOf(String str) {
            return (CompleteReason) Enum.valueOf(CompleteReason.class, str);
        }

        public static CompleteReason[] values() {
            return (CompleteReason[]) $VALUES.clone();
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getReason() {
            return this.reason;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.dynatrace.agent.useraction.ActiveUserAction$Type[], still in use, count: 1, list:
      (r0v1 com.dynatrace.agent.useraction.ActiveUserAction$Type[]) from 0x0036: INVOKE (r0v1 com.dynatrace.agent.useraction.ActiveUserAction$Type[]) STATIC call: kotlin.enums.EnumEntriesKt.a(java.lang.Enum[]):kotlin.enums.EnumEntries A[MD:(java.lang.Enum[]):kotlin.enums.EnumEntries (m), WRAPPED]
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
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\t\b\u0080\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/dynatrace/agent/useraction/ActiveUserAction$Type;", "", "", "type", "Ljava/lang/String;", "a", "()Ljava/lang/String;", "API", "APP_START", "NAVIGATION", "SAME_VIEW", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Type {
        API("api"),
        APP_START("app_start"),
        NAVIGATION("navigation"),
        SAME_VIEW("same_view");

        private static final /* synthetic */ EnumEntries $ENTRIES;
        private final String type;

        static {
            $ENTRIES = EnumEntriesKt.a(typeArr);
        }

        public Type(String str) {
            super(str, i);
            this.type = str;
        }

        public static Type valueOf(String str) {
            return (Type) Enum.valueOf(Type.class, str);
        }

        public static Type[] values() {
            return (Type[]) $VALUES.clone();
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final String getType() {
            return this.type;
        }
    }

    public ActiveUserAction(String str, long j2, Type type, UserActionConfigSnapshot userActionConfigSnapshot, UserInteractionMemory userInteractionMemory) {
        this.f27052a = str;
        this.f27053b = j2;
        this.f27054c = userActionConfigSnapshot;
        this.d = userInteractionMemory;
        this.f27055e = type;
        this.l = j2;
    }
}
