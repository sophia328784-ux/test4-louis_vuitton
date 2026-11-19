package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
interface InternalResolveListener extends BaseListener {
    void serviceResolved(DNSSDService dNSSDService, int i2, int i3, byte[] bArr, byte[] bArr2, int i4, TXTRecord tXTRecord);
}
