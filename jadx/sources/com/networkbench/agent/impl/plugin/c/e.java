package com.networkbench.agent.impl.plugin.c;

import com.networkbench.agent.impl.logtrack.SendLogCallback;
import com.networkbench.agent.impl.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class e implements SendLogCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f37983a = "LogTrackSendLogCallback";

    @Override // com.networkbench.agent.impl.logtrack.SendLogCallback
    public void onLogSendCompleted(int i2, byte[] bArr) {
        Logger.debug(f37983a, "log send statusCode:" + i2 + ", result data is:" + (bArr != null ? new String(bArr) : ""));
    }
}
