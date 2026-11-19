package com.github.druk.dnssd;

import defpackage.cj;

/* JADX INFO: loaded from: classes2.dex */
abstract class InternalDNSSD {
    public static final int ALL_INTERFACES = 0;
    public static final int BROWSE_DOMAINS = 64;
    public static final int DEFAULT = 4;
    public static final int LOCALHOST_ONLY = -1;
    public static final int MAX_DOMAIN_NAME = 1009;
    public static final int MORE_COMING = 1;
    public static final int NO_AUTO_RENAME = 8;
    public static final int REGISTRATION_DOMAINS = 128;
    public static final int SHARED = 16;
    public static final int UNIQUE = 32;
    protected static InternalDNSSD fInstance;

    static {
        try {
            String property = System.getProperty("com.github.druk.dnssd.DNSSD");
            if (property == null) {
                property = "com.github.druk.dnssd.AppleDNSSD";
            }
            fInstance = (InternalDNSSD) Class.forName(property).newInstance();
        } catch (Exception e2) {
            throw new InternalError(cj.j("cannot instantiate DNSSD", e2));
        }
    }

    public static DNSSDService browse(int i2, int i3, String str, String str2, InternalBrowseListener internalBrowseListener) throws DNSSDException {
        return getInstance()._makeBrowser(i2, i3, str, str2, internalBrowseListener);
    }

    public static String constructFullName(String str, String str2, String str3) throws DNSSDException {
        return getInstance()._constructFullName(str, str2, str3);
    }

    public static DNSSDRecordRegistrar createRecordRegistrar(RegisterRecordListener registerRecordListener) throws DNSSDException {
        return getInstance()._createRecordRegistrar(registerRecordListener);
    }

    public static DNSSDService enumerateDomains(int i2, int i3, InternalDomainListener internalDomainListener) throws DNSSDException {
        return getInstance()._enumerateDomains(i2, i3, internalDomainListener);
    }

    public static int getIfIndexForName(String str) {
        return getInstance()._getIfIndexForName(str);
    }

    public static final InternalDNSSD getInstance() {
        SecurityManager securityManager = System.getSecurityManager();
        if (securityManager != null) {
            securityManager.checkPermission(new RuntimePermission("getDNSSDInstance"));
        }
        return fInstance;
    }

    public static String getNameForIfIndex(int i2) {
        return getInstance()._getNameForIfIndex(i2);
    }

    public static void init(String str) {
        getInstance()._init(str);
    }

    public static DNSSDService queryRecord(int i2, int i3, String str, int i4, int i5, InternalQueryListener internalQueryListener) throws DNSSDException {
        return getInstance()._queryRecord(i2, i3, str, i4, i5, internalQueryListener);
    }

    public static void reconfirmRecord(int i2, int i3, String str, int i4, int i5, byte[] bArr) {
        getInstance()._reconfirmRecord(i2, i3, str, i4, i5, bArr);
    }

    public static DNSSDRegistration register(int i2, int i3, String str, String str2, String str3, String str4, int i4, TXTRecord tXTRecord, InternalRegisterListener internalRegisterListener) throws DNSSDException {
        return getInstance()._register(i2, i3, str, str2, str3, str4, i4, tXTRecord, internalRegisterListener);
    }

    public static DNSSDService resolve(int i2, int i3, String str, String str2, String str3, InternalResolveListener internalResolveListener) throws DNSSDException {
        return getInstance()._resolve(i2, i3, str, str2, str3, internalResolveListener);
    }

    public abstract String _constructFullName(String str, String str2, String str3) throws DNSSDException;

    public abstract DNSSDRecordRegistrar _createRecordRegistrar(RegisterRecordListener registerRecordListener) throws DNSSDException;

    public abstract DNSSDService _enumerateDomains(int i2, int i3, InternalDomainListener internalDomainListener) throws DNSSDException;

    public abstract int _getIfIndexForName(String str);

    public abstract String _getNameForIfIndex(int i2);

    public abstract void _init(String str);

    public abstract DNSSDService _makeBrowser(int i2, int i3, String str, String str2, InternalBrowseListener internalBrowseListener) throws DNSSDException;

    public abstract DNSSDService _queryRecord(int i2, int i3, String str, int i4, int i5, InternalQueryListener internalQueryListener) throws DNSSDException;

    public abstract void _reconfirmRecord(int i2, int i3, String str, int i4, int i5, byte[] bArr);

    public abstract DNSSDRegistration _register(int i2, int i3, String str, String str2, String str3, String str4, int i4, TXTRecord tXTRecord, InternalRegisterListener internalRegisterListener) throws DNSSDException;

    public abstract DNSSDService _resolve(int i2, int i3, String str, String str2, String str3, InternalResolveListener internalResolveListener) throws DNSSDException;

    public static DNSSDService browse(String str, InternalBrowseListener internalBrowseListener) throws DNSSDException {
        return browse(0, 0, str, "", internalBrowseListener);
    }

    public static DNSSDRegistration register(String str, String str2, int i2, InternalRegisterListener internalRegisterListener) throws DNSSDException {
        return register(0, 0, str, str2, null, null, i2, null, internalRegisterListener);
    }
}
