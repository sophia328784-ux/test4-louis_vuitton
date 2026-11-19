package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
class AppleDNSSD extends InternalDNSSD {
    public static boolean hasAutoCallbacks;

    public static native int InitLibrary(int i2);

    public native int ConstructName(String str, String str2, String str3, String[] strArr);

    public native int GetIfIndexForName(String str);

    public native byte[] GetNameForIfIndex(int i2);

    public native void ReconfirmRecord(int i2, int i3, String str, int i4, int i5, byte[] bArr);

    @Override // com.github.druk.dnssd.InternalDNSSD
    public String _constructFullName(String str, String str2, String str3) throws DNSSDException {
        String[] strArr = new String[1];
        int iConstructName = ConstructName(str, str2, str3, strArr);
        if (iConstructName == 0) {
            return strArr[0];
        }
        throw new AppleDNSSDException(iConstructName);
    }

    @Override // com.github.druk.dnssd.InternalDNSSD
    public DNSSDRecordRegistrar _createRecordRegistrar(RegisterRecordListener registerRecordListener) throws DNSSDException {
        return new AppleRecordRegistrar(registerRecordListener);
    }

    @Override // com.github.druk.dnssd.InternalDNSSD
    public DNSSDService _enumerateDomains(int i2, int i3, InternalDomainListener internalDomainListener) throws DNSSDException {
        return new AppleDomainEnum(i2, i3, internalDomainListener);
    }

    @Override // com.github.druk.dnssd.InternalDNSSD
    public int _getIfIndexForName(String str) {
        return GetIfIndexForName(str);
    }

    @Override // com.github.druk.dnssd.InternalDNSSD
    public String _getNameForIfIndex(int i2) {
        return new String(GetNameForIfIndex(i2));
    }

    @Override // com.github.druk.dnssd.InternalDNSSD
    public void _init(String str) {
        System.loadLibrary(str);
        int iInitLibrary = InitLibrary(2);
        if (iInitLibrary == 0) {
            return;
        }
        throw new InternalError("cannot instantiate DNSSD: " + new AppleDNSSDException(iInitLibrary).getMessage());
    }

    @Override // com.github.druk.dnssd.InternalDNSSD
    public DNSSDService _makeBrowser(int i2, int i3, String str, String str2, InternalBrowseListener internalBrowseListener) throws DNSSDException {
        return new AppleBrowser(i2, i3, str, str2, internalBrowseListener);
    }

    @Override // com.github.druk.dnssd.InternalDNSSD
    public DNSSDService _queryRecord(int i2, int i3, String str, int i4, int i5, InternalQueryListener internalQueryListener) throws DNSSDException {
        return new AppleQuery(i2, i3, str, i4, i5, internalQueryListener);
    }

    @Override // com.github.druk.dnssd.InternalDNSSD
    public void _reconfirmRecord(int i2, int i3, String str, int i4, int i5, byte[] bArr) {
        ReconfirmRecord(i2, i3, str, i4, i5, bArr);
    }

    @Override // com.github.druk.dnssd.InternalDNSSD
    public DNSSDRegistration _register(int i2, int i3, String str, String str2, String str3, String str4, int i4, TXTRecord tXTRecord, InternalRegisterListener internalRegisterListener) throws DNSSDException {
        return new AppleRegistration(i2, i3, str, str2, str3, str4, i4, tXTRecord != null ? tXTRecord.getRawBytes() : null, internalRegisterListener);
    }

    @Override // com.github.druk.dnssd.InternalDNSSD
    public DNSSDService _resolve(int i2, int i3, String str, String str2, String str3, InternalResolveListener internalResolveListener) throws DNSSDException {
        return new AppleResolver(i2, i3, str, str2, str3, internalResolveListener);
    }
}
