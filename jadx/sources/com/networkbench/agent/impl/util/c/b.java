package com.networkbench.agent.impl.util.c;

import com.networkbench.agent.impl.util.Logger;

/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements Runnable {
    String TAG;
    String name;

    public b(String str, String str2) {
        this.name = str;
        this.TAG = str2;
    }

    public abstract void operation();

    @Override // java.lang.Runnable
    public void run() {
        try {
            operation();
        } catch (Throwable th) {
            Logger.debug(this.TAG, this.name + "NBSThread  run has an error : " + th.getMessage());
        }
    }
}
