package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class AppleService implements DNSSDService, Runnable {
    protected BaseListener fListener;
    protected long fNativeContext = 0;

    public AppleService(BaseListener baseListener) {
        this.fListener = baseListener;
    }

    public native int BlockForData();

    public native synchronized void HaltOperation();

    public native int ProcessResults();

    public void ThrowOnErr(int i2) throws DNSSDException {
        if (i2 != 0) {
            throw new AppleDNSSDException(i2);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        while (true) {
            int iBlockForData = BlockForData();
            synchronized (this) {
                try {
                    if (this.fNativeContext == 0) {
                        return;
                    }
                    if (iBlockForData != 0) {
                        int iProcessResults = ProcessResults();
                        if (this.fNativeContext == 0) {
                            return;
                        }
                        if (iProcessResults != 0) {
                            this.fListener.operationFailed(this, iProcessResults);
                            return;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.github.druk.dnssd.DNSSDService
    public void stop() {
        HaltOperation();
    }
}
