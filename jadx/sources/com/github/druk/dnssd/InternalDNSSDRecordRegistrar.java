package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class InternalDNSSDRecordRegistrar implements DNSSDRecordRegistrar {
    private boolean isStopped = false;
    private final InternalDNSSDService.DnssdServiceListener listener;
    private final DNSSDRecordRegistrar originalService;

    public InternalDNSSDRecordRegistrar(InternalDNSSDService.DnssdServiceListener dnssdServiceListener, DNSSDRecordRegistrar dNSSDRecordRegistrar) {
        this.listener = dnssdServiceListener;
        this.originalService = dNSSDRecordRegistrar;
    }

    @Override // com.github.druk.dnssd.DNSSDRecordRegistrar
    public DNSRecord registerRecord(int i2, int i3, String str, int i4, int i5, byte[] bArr, int i6) throws DNSSDException {
        return this.originalService.registerRecord(i2, i3, str, i4, i5, bArr, i6);
    }

    @Override // com.github.druk.dnssd.DNSSDService
    public void stop() {
        this.originalService.stop();
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
