package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
interface InternalBrowseListener extends BaseListener {
    void serviceFound(DNSSDService dNSSDService, int i2, int i3, byte[] bArr, byte[] bArr2, byte[] bArr3);

    void serviceLost(DNSSDService dNSSDService, int i2, int i3, byte[] bArr, byte[] bArr2, byte[] bArr3);
}
