package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class InternalDNSSDService implements DNSSDService {
    private boolean isStopped = false;
    private final DnssdServiceListener listener;
    private final DNSSDService originalDNSSDService;

    public interface DnssdServiceListener {
        void onServiceStarting();

        void onServiceStopped();
    }

    public InternalDNSSDService(DnssdServiceListener dnssdServiceListener, DNSSDService dNSSDService) {
        this.listener = dnssdServiceListener;
        this.originalDNSSDService = dNSSDService;
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
