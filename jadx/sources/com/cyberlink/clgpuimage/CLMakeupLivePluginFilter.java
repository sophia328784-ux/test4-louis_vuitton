package com.cyberlink.clgpuimage;

/* JADX INFO: loaded from: classes3.dex */
public class CLMakeupLivePluginFilter extends GPUImageFilter {
    public boolean o;

    public CLMakeupLivePluginFilter() {
        this.o = false;
    }

    public boolean GetEnabled() {
        return this.o;
    }

    public void SetEnabled(boolean z) {
        this.o = z;
    }

    public CLMakeupLivePluginFilter(String str, String str2) {
        super(str, str2);
        this.o = false;
    }
}
