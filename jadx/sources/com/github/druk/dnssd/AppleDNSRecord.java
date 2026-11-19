package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class AppleDNSRecord implements DNSRecord {
    protected AppleService fOwner;
    protected long fRecord = 0;

    public AppleDNSRecord(AppleService appleService) {
        this.fOwner = appleService;
    }

    public native int Remove();

    public void ThrowOnErr(int i2) throws DNSSDException {
        if (i2 != 0) {
            throw new AppleDNSSDException(i2);
        }
    }

    public native int Update(int i2, byte[] bArr, int i3);

    @Override // com.github.druk.dnssd.DNSRecord
    public void remove() throws DNSSDException {
        ThrowOnErr(Remove());
    }

    @Override // com.github.druk.dnssd.DNSRecord
    public void update(int i2, byte[] bArr, int i3) throws DNSSDException {
        ThrowOnErr(Update(i2, bArr, i3));
    }
}
