package com.cyberlink.clgpuimage;

/* JADX INFO: loaded from: classes2.dex */
public final class GetFrameInfoFilter$CapturedFrameInformation {
    public final int height;
    public final int[] pixels;
    public final int width;

    public GetFrameInfoFilter$CapturedFrameInformation(int i2, int i3) {
        this.width = i2;
        this.height = i3;
        this.pixels = new int[i2 * i3];
    }
}
