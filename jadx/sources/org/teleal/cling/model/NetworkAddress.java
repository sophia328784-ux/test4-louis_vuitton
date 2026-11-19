package org.teleal.cling.model;

import java.net.InetAddress;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class NetworkAddress {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InetAddress f78381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78382b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f78383c;

    public NetworkAddress(InetAddress inetAddress, int i2, byte[] bArr) {
        this.f78381a = inetAddress;
        this.f78382b = i2;
        this.f78383c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        NetworkAddress networkAddress = (NetworkAddress) obj;
        return this.f78382b == networkAddress.f78382b && this.f78381a.equals(networkAddress.f78381a) && Arrays.equals(this.f78383c, networkAddress.f78383c);
    }

    public final int hashCode() {
        int iHashCode = ((this.f78381a.hashCode() * 31) + this.f78382b) * 31;
        byte[] bArr = this.f78383c;
        return iHashCode + (bArr != null ? Arrays.hashCode(bArr) : 0);
    }

    public NetworkAddress(InetAddress inetAddress, int i2) {
        this(inetAddress, i2, null);
    }
}
