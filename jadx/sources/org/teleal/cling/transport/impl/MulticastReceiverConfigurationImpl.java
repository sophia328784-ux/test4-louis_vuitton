package org.teleal.cling.transport.impl;

import com.sightcall.uvc.Camera;
import java.net.InetAddress;
import java.net.UnknownHostException;
import org.teleal.cling.transport.spi.MulticastReceiverConfiguration;

/* JADX INFO: loaded from: classes5.dex */
public class MulticastReceiverConfigurationImpl implements MulticastReceiverConfiguration {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InetAddress f78621a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78622b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78623c;

    public MulticastReceiverConfigurationImpl(InetAddress inetAddress, int i2, int i3) {
        this.f78621a = inetAddress;
        this.f78622b = i2;
        this.f78623c = i3;
    }

    public MulticastReceiverConfigurationImpl(InetAddress inetAddress, int i2) {
        this(inetAddress, i2, Camera.DEFAULT_PREVIEW_WIDTH);
    }

    public MulticastReceiverConfigurationImpl(String str, int i2, int i3) throws UnknownHostException {
        this(InetAddress.getByName(str), i2, i3);
    }

    public MulticastReceiverConfigurationImpl(String str, int i2) throws UnknownHostException {
        this(InetAddress.getByName(str), i2, Camera.DEFAULT_PREVIEW_WIDTH);
    }
}
