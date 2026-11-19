package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
public interface BrowseListener extends BaseListener {
    void serviceFound(DNSSDService dNSSDService, int i2, int i3, String str, String str2, String str3);

    void serviceLost(DNSSDService dNSSDService, int i2, int i3, String str, String str2, String str3);
}
