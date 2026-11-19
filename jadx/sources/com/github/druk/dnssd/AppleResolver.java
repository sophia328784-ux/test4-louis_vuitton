package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class AppleResolver extends AppleService {
    public AppleResolver(int i2, int i3, String str, String str2, String str3, InternalResolveListener internalResolveListener) throws DNSSDException {
        super(internalResolveListener);
        ThrowOnErr(CreateResolver(i2, i3, str, str2, str3));
        if (AppleDNSSD.hasAutoCallbacks) {
            return;
        }
        new Thread(this).start();
    }

    public native int CreateResolver(int i2, int i3, String str, String str2, String str3);
}
