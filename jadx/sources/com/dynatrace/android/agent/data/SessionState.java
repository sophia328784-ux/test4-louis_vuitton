package com.dynatrace.android.agent.data;

/* JADX INFO: loaded from: classes2.dex */
enum SessionState {
    CREATED(true, false),
    ENABLED(true, true),
    DISABLED(false, true);

    private boolean active;
    private boolean configurationApplied;

    SessionState(boolean z, boolean z2) {
        this.active = z;
        this.configurationApplied = z2;
    }

    public final boolean a() {
        return this.active;
    }

    public final boolean b() {
        return this.configurationApplied;
    }
}
