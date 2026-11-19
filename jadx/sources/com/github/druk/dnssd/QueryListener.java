package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
public interface QueryListener extends BaseListener {
    void queryAnswered(DNSSDService dNSSDService, int i2, int i3, String str, int i4, int i5, byte[] bArr, int i6);
}
