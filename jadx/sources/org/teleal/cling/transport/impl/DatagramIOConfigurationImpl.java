package org.teleal.cling.transport.impl;

import com.sightcall.uvc.Camera;
import org.teleal.cling.transport.spi.DatagramIOConfiguration;

/* JADX INFO: loaded from: classes5.dex */
public class DatagramIOConfigurationImpl implements DatagramIOConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f78617a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78618b;

    public DatagramIOConfigurationImpl() {
        this.f78617a = 4;
        this.f78618b = Camera.DEFAULT_PREVIEW_WIDTH;
    }

    public DatagramIOConfigurationImpl(int i2, int i3) {
        this.f78617a = i2;
        this.f78618b = i3;
    }
}
