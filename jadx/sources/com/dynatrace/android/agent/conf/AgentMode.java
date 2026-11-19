package com.dynatrace.android.agent.conf;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class AgentMode {
    private static final /* synthetic */ AgentMode[] $VALUES;

    @Deprecated
    public static final AgentMode APP_MON;
    public static final AgentMode SAAS;

    static {
        AgentMode agentMode = new AgentMode("APP_MON", 0);
        APP_MON = agentMode;
        AgentMode agentMode2 = new AgentMode("SAAS", 1);
        SAAS = agentMode2;
        $VALUES = new AgentMode[]{agentMode, agentMode2};
    }

    public static AgentMode valueOf(String str) {
        return (AgentMode) Enum.valueOf(AgentMode.class, str);
    }

    public static AgentMode[] values() {
        return (AgentMode[]) $VALUES.clone();
    }
}
