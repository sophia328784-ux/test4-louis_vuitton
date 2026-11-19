package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class InternalDNSSDRegistration implements DNSSDRegistration {
    private boolean isStopped = false;
    private final InternalDNSSDService.DnssdServiceListener listener;
    private final DNSSDRegistration originalDNSSDService;

    public InternalDNSSDRegistration(InternalDNSSDService.DnssdServiceListener dnssdServiceListener, DNSSDRegistration dNSSDRegistration) {
        this.listener = dnssdServiceListener;
        this.originalDNSSDService = dNSSDRegistration;
    }

    @Override // com.github.druk.dnssd.DNSSDRegistration
    public DNSRecord addRecord(int i2, int i3, byte[] bArr, int i4) throws DNSSDException {
        return this.originalDNSSDService.addRecord(i2, i3, bArr, i4);
    }

    @Override // com.github.druk.dnssd.DNSSDRegistration
    public DNSRecord getTXTRecord() throws DNSSDException {
        return this.originalDNSSDService.getTXTRecord();
    }

    @Override // com.github.druk.dnssd.DNSSDService
    public void stop() {
        this.originalDNSSDService.stop();
        synchronized (this) {
            try {
                if (!this.isStopped) {
                    this.listener.onServiceStopped();
                    this.isStopped = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
