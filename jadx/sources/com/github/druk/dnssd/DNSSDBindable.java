package com.github.druk.dnssd;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public final class DNSSDBindable extends DNSSD {
    private final Context context;

    public DNSSDBindable(Context context) {
        super(context, "jdns_sd");
        this.context = context.getApplicationContext();
    }

    public String getNameForIfIndex(int i2) {
        return InternalDNSSD.getNameForIfIndex(i2);
    }

    @Override // com.github.druk.dnssd.DNSSD, com.github.druk.dnssd.InternalDNSSDService.DnssdServiceListener
    public void onServiceStarting() {
        super.onServiceStarting();
        this.context.getSystemService("servicediscovery");
    }

    @Override // com.github.druk.dnssd.DNSSD, com.github.druk.dnssd.InternalDNSSDService.DnssdServiceListener
    public void onServiceStopped() {
        super.onServiceStopped();
    }
}
