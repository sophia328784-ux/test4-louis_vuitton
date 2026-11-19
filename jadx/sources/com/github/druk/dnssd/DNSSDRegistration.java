package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
public interface DNSSDRegistration extends DNSSDService {
    DNSRecord addRecord(int i2, int i3, byte[] bArr, int i4) throws DNSSDException;

    DNSRecord getTXTRecord() throws DNSSDException;
}
