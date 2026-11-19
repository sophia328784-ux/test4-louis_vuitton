package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class AppleBrowser extends AppleService {
    public AppleBrowser(int i2, int i3, String str, String str2, InternalBrowseListener internalBrowseListener) throws DNSSDException {
        super(internalBrowseListener);
        ThrowOnErr(CreateBrowser(i2, i3, str, str2));
        if (AppleDNSSD.hasAutoCallbacks) {
            return;
        }
        new Thread(this).start();
    }

    public native int CreateBrowser(int i2, int i3, String str, String str2);
}
