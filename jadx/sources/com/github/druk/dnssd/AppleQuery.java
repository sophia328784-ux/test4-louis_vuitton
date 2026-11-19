package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class AppleQuery extends AppleService {
    public AppleQuery(int i2, int i3, String str, int i4, int i5, InternalQueryListener internalQueryListener) throws DNSSDException {
        super(internalQueryListener);
        ThrowOnErr(CreateQuery(i2, i3, str, i4, i5));
        if (AppleDNSSD.hasAutoCallbacks) {
            return;
        }
        new Thread(this).start();
    }

    public native int CreateQuery(int i2, int i3, String str, int i4, int i5);
}
