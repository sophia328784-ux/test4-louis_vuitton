package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class AppleRecordRegistrar extends AppleService implements DNSSDRecordRegistrar {
    public AppleRecordRegistrar(RegisterRecordListener registerRecordListener) throws DNSSDException {
        super(registerRecordListener);
        ThrowOnErr(CreateConnection());
        if (AppleDNSSD.hasAutoCallbacks) {
            return;
        }
        new Thread(this).start();
    }

    public native int CreateConnection();

    public native int RegisterRecord(int i2, int i3, String str, int i4, int i5, byte[] bArr, int i6, AppleDNSRecord appleDNSRecord);

    @Override // com.github.druk.dnssd.DNSSDRecordRegistrar
    public DNSRecord registerRecord(int i2, int i3, String str, int i4, int i5, byte[] bArr, int i6) throws DNSSDException {
        AppleDNSRecord appleDNSRecord = new AppleDNSRecord(this);
        ThrowOnErr(RegisterRecord(i2, i3, str, i4, i5, bArr, i6, appleDNSRecord));
        return appleDNSRecord;
    }
}
