package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
public interface DomainListener extends BaseListener {
    void domainFound(DNSSDService dNSSDService, int i2, int i3, String str);

    void domainLost(DNSSDService dNSSDService, int i2, int i3, String str);
}
