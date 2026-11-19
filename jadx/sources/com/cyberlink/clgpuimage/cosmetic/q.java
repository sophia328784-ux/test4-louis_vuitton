package com.cyberlink.clgpuimage.cosmetic;

import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class q implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ CLMakeupLiveFilter f25814a;

    public q(CLMakeupLiveFilter cLMakeupLiveFilter) {
        this.f25814a = cLMakeupLiveFilter;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Iterator it = this.f25814a.v0.iterator();
        while (it.hasNext()) {
            ((CLMakeupLivePluginFilter) it.next()).destroy();
        }
        this.f25814a.v0 = null;
    }
}
