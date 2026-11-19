package com.github.druk.dnssd;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public interface ResolveListener extends BaseListener {
    void serviceResolved(DNSSDService dNSSDService, int i2, int i3, String str, String str2, int i4, Map<String, String> map);
}
