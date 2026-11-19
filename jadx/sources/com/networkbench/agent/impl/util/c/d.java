package com.networkbench.agent.impl.util.c;

import com.networkbench.agent.impl.util.Logger;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes2.dex */
public class d implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f38362a;

    public d(String str) {
        this.f38362a = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(final Runnable runnable) {
        return new Thread(new Runnable() { // from class: com.networkbench.agent.impl.util.c.d.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    Logger.debug("NBSAgent", d.this.f38362a + "newThread  run has an error : " + th.getMessage());
                }
            }
        }, this.f38362a);
    }
}
