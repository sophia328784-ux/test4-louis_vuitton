package com.cyberlink.clgpuimage.cosmetic;

import com.cyberlink.clgpuimage.CLMakeupLivePluginFilter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class s implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private /* synthetic */ List f25817a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private /* synthetic */ CLMakeupLiveFilter f25818b;

    public s(CLMakeupLiveFilter cLMakeupLiveFilter, List list) {
        this.f25818b = cLMakeupLiveFilter;
        this.f25817a = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        CLMakeupLiveFilter cLMakeupLiveFilter = this.f25818b;
        List<CLMakeupLivePluginFilter> list = this.f25817a;
        cLMakeupLiveFilter.t0 = list;
        for (CLMakeupLivePluginFilter cLMakeupLivePluginFilter : list) {
            cLMakeupLivePluginFilter.init();
            CLMakeupLiveFilter cLMakeupLiveFilter2 = this.f25818b;
            cLMakeupLivePluginFilter.onOutputSizeChanged(cLMakeupLiveFilter2.g, cLMakeupLiveFilter2.f25446h);
        }
    }
}
