package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
public interface DNSSDRecordRegistrar extends DNSSDService {
    DNSRecord registerRecord(int i2, int i3, String str, int i4, int i5, byte[] bArr, int i6) throws DNSSDException;
}
