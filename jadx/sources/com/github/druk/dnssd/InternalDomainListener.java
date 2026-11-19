package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
interface InternalDomainListener extends BaseListener {
    void domainFound(DNSSDService dNSSDService, int i2, int i3, byte[] bArr);

    void domainLost(DNSSDService dNSSDService, int i2, int i3, byte[] bArr);
}
