package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class AppleDomainEnum extends AppleService {
    public AppleDomainEnum(int i2, int i3, InternalDomainListener internalDomainListener) throws DNSSDException {
        super(internalDomainListener);
        ThrowOnErr(BeginEnum(i2, i3));
        if (AppleDNSSD.hasAutoCallbacks) {
            return;
        }
        new Thread(this).start();
    }

    public native int BeginEnum(int i2, int i3);
}
