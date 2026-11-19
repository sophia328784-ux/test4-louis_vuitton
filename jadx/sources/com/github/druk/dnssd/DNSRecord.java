package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
public interface DNSRecord {
    void remove() throws DNSSDException;

    void update(int i2, byte[] bArr, int i3) throws DNSSDException;
}
