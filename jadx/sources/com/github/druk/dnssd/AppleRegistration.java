package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class AppleRegistration extends AppleService implements DNSSDRegistration {
    public AppleRegistration(int i2, int i3, String str, String str2, String str3, String str4, int i4, byte[] bArr, InternalRegisterListener internalRegisterListener) throws DNSSDException {
        super(internalRegisterListener);
        ThrowOnErr(BeginRegister(i3, i2, str, str2, str3, str4, i4, bArr));
        if (AppleDNSSD.hasAutoCallbacks) {
            return;
        }
        new Thread(this).start();
    }

    public native int AddRecord(int i2, int i3, byte[] bArr, int i4, AppleDNSRecord appleDNSRecord);

    public native int BeginRegister(int i2, int i3, String str, String str2, String str3, String str4, int i4, byte[] bArr);

    @Override // com.github.druk.dnssd.DNSSDRegistration
    public DNSRecord addRecord(int i2, int i3, byte[] bArr, int i4) throws DNSSDException {
        AppleDNSRecord appleDNSRecord = new AppleDNSRecord(this);
        ThrowOnErr(AddRecord(i2, i3, bArr, i4, appleDNSRecord));
        return appleDNSRecord;
    }

    @Override // com.github.druk.dnssd.DNSSDRegistration
    public DNSRecord getTXTRecord() throws DNSSDException {
        return new AppleDNSRecord(this);
    }
}
