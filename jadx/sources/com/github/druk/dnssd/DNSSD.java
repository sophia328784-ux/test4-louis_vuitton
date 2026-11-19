package com.github.druk.dnssd;

import android.content.Context;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import com.linkplay.core.model.menubar.MenuBarConstants;
import defpackage.sr;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public abstract class DNSSD implements InternalDNSSDService.DnssdServiceListener {
    public static final int ALL_INTERFACES = 0;
    public static final int BROWSE_DOMAINS = 64;
    public static final int DEFAULT = 4;
    public static final int DNSSD_DEFAULT_TIMEOUT = 60000;
    public static final int LOCALHOST_ONLY = -1;
    public static final int MAX_DOMAIN_NAME = 1009;
    public static final int MORE_COMING = 1;
    private static final String MULTICAST_LOCK_NAME = "com.github.druk.dnssd.DNSSD";
    public static final int NO_AUTO_RENAME = 8;
    public static final int REGISTRATION_DOMAINS = 128;
    public static final int SHARED = 16;
    public static final int UNIQUE = 32;
    private static final Charset UTF_8 = Charset.forName("UTF-8");
    private final Context context;
    private final Handler handler;
    private volatile WifiManager.MulticastLock multicastLock;
    private final int serviceTimeout;

    /* JADX INFO: renamed from: com.github.druk.dnssd.DNSSD$1, reason: invalid class name */
    public class AnonymousClass1 implements InternalBrowseListener {
        final /* synthetic */ BrowseListener val$listener;
        final /* synthetic */ InternalDNSSDService[] val$services;

        public AnonymousClass1(BrowseListener browseListener, InternalDNSSDService[] internalDNSSDServiceArr) {
            this.val$listener = browseListener;
            this.val$services = internalDNSSDServiceArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$operationFailed$2(BrowseListener browseListener, InternalDNSSDService[] internalDNSSDServiceArr, int i2) {
            browseListener.operationFailed(internalDNSSDServiceArr[0], i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$serviceFound$0(BrowseListener browseListener, InternalDNSSDService[] internalDNSSDServiceArr, int i2, int i3, String str, String str2, String str3) {
            browseListener.serviceFound(internalDNSSDServiceArr[0], i2, i3, str, str2, str3);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$serviceLost$1(BrowseListener browseListener, InternalDNSSDService[] internalDNSSDServiceArr, int i2, int i3, String str, String str2, String str3) {
            browseListener.serviceLost(internalDNSSDServiceArr[0], i2, i3, str, str2, str3);
        }

        @Override // com.github.druk.dnssd.BaseListener
        public void operationFailed(DNSSDService dNSSDService, int i2) {
            DNSSD.this.handler.post(new b(this.val$listener, this.val$services, i2, 0));
        }

        @Override // com.github.druk.dnssd.InternalBrowseListener
        public void serviceFound(DNSSDService dNSSDService, int i2, int i3, byte[] bArr, byte[] bArr2, byte[] bArr3) {
            DNSSD.this.handler.post(new a(this.val$listener, this.val$services, i2, i3, new String(bArr, DNSSD.UTF_8), new String(bArr2, DNSSD.UTF_8), new String(bArr3, DNSSD.UTF_8), 0));
        }

        @Override // com.github.druk.dnssd.InternalBrowseListener
        public void serviceLost(DNSSDService dNSSDService, int i2, int i3, byte[] bArr, byte[] bArr2, byte[] bArr3) {
            DNSSD.this.handler.post(new a(this.val$listener, this.val$services, i2, i3, new String(bArr, DNSSD.UTF_8), new String(bArr2, DNSSD.UTF_8), new String(bArr3, DNSSD.UTF_8), 1));
        }
    }

    /* JADX INFO: renamed from: com.github.druk.dnssd.DNSSD$2, reason: invalid class name */
    public class AnonymousClass2 implements InternalResolveListener {
        final /* synthetic */ ResolveListener val$listener;
        final /* synthetic */ DNSSDService[] val$services;
        final /* synthetic */ Runnable val$timeoutRunnable;

        public AnonymousClass2(Runnable runnable, ResolveListener resolveListener, DNSSDService[] dNSSDServiceArr) {
            this.val$timeoutRunnable = runnable;
            this.val$listener = resolveListener;
            this.val$services = dNSSDServiceArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$operationFailed$1(ResolveListener resolveListener, DNSSDService[] dNSSDServiceArr, int i2) {
            resolveListener.operationFailed(dNSSDServiceArr[0], i2);
            dNSSDServiceArr[0].stop();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$serviceResolved$0(ResolveListener resolveListener, DNSSDService[] dNSSDServiceArr, int i2, int i3, String str, String str2, int i4, Map map) {
            resolveListener.serviceResolved(dNSSDServiceArr[0], i2, i3, str, str2, i4, map);
            dNSSDServiceArr[0].stop();
        }

        @Override // com.github.druk.dnssd.BaseListener
        public void operationFailed(DNSSDService dNSSDService, int i2) {
            DNSSD.this.handler.removeCallbacks(this.val$timeoutRunnable);
            DNSSD.this.handler.post(new b(this.val$listener, this.val$services, i2, 1));
        }

        @Override // com.github.druk.dnssd.InternalResolveListener
        public void serviceResolved(DNSSDService dNSSDService, final int i2, final int i3, byte[] bArr, byte[] bArr2, final int i4, TXTRecord tXTRecord) {
            final String str = new String(bArr, DNSSD.UTF_8);
            final String str2 = new String(bArr2, DNSSD.UTF_8);
            final Map<String, String> tXTRecords = DNSSD.parseTXTRecords(tXTRecord);
            DNSSD.this.handler.removeCallbacks(this.val$timeoutRunnable);
            Handler handler = DNSSD.this.handler;
            final ResolveListener resolveListener = this.val$listener;
            final DNSSDService[] dNSSDServiceArr = this.val$services;
            handler.post(new Runnable() { // from class: com.github.druk.dnssd.c
                @Override // java.lang.Runnable
                public final void run() {
                    DNSSD.AnonymousClass2.lambda$serviceResolved$0(resolveListener, dNSSDServiceArr, i2, i3, str, str2, i4, tXTRecords);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.github.druk.dnssd.DNSSD$3, reason: invalid class name */
    public class AnonymousClass3 implements InternalRegisterListener {
        final /* synthetic */ RegisterListener val$listener;
        final /* synthetic */ DNSSDRegistration[] val$services;

        public AnonymousClass3(RegisterListener registerListener, DNSSDRegistration[] dNSSDRegistrationArr) {
            this.val$listener = registerListener;
            this.val$services = dNSSDRegistrationArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$operationFailed$1(RegisterListener registerListener, DNSSDRegistration[] dNSSDRegistrationArr, int i2) {
            registerListener.operationFailed(dNSSDRegistrationArr[0], i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$serviceRegistered$0(RegisterListener registerListener, DNSSDRegistration[] dNSSDRegistrationArr, int i2, String str, String str2, String str3) {
            registerListener.serviceRegistered(dNSSDRegistrationArr[0], i2, str, str2, str3);
        }

        @Override // com.github.druk.dnssd.BaseListener
        public void operationFailed(DNSSDService dNSSDService, int i2) {
            DNSSD.this.handler.post(new b(this.val$listener, this.val$services, i2, 2));
        }

        @Override // com.github.druk.dnssd.InternalRegisterListener
        public void serviceRegistered(DNSSDRegistration dNSSDRegistration, final int i2, byte[] bArr, byte[] bArr2, byte[] bArr3) {
            final String str = new String(bArr, DNSSD.UTF_8);
            final String str2 = new String(bArr2, DNSSD.UTF_8);
            final String str3 = new String(bArr3, DNSSD.UTF_8);
            Handler handler = DNSSD.this.handler;
            final RegisterListener registerListener = this.val$listener;
            final DNSSDRegistration[] dNSSDRegistrationArr = this.val$services;
            handler.post(new Runnable() { // from class: com.github.druk.dnssd.d
                @Override // java.lang.Runnable
                public final void run() {
                    DNSSD.AnonymousClass3.lambda$serviceRegistered$0(registerListener, dNSSDRegistrationArr, i2, str, str2, str3);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.github.druk.dnssd.DNSSD$4, reason: invalid class name */
    public class AnonymousClass4 implements InternalQueryListener {
        final /* synthetic */ QueryListener val$listener;
        final /* synthetic */ DNSSDService[] val$services;
        final /* synthetic */ Runnable val$timeoutRunnable;

        public AnonymousClass4(Runnable runnable, QueryListener queryListener, DNSSDService[] dNSSDServiceArr) {
            this.val$timeoutRunnable = runnable;
            this.val$listener = queryListener;
            this.val$services = dNSSDServiceArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$operationFailed$1(QueryListener queryListener, DNSSDService[] dNSSDServiceArr, int i2) {
            queryListener.operationFailed(dNSSDServiceArr[0], i2);
            dNSSDServiceArr[0].stop();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$queryAnswered$0(QueryListener queryListener, DNSSDService[] dNSSDServiceArr, int i2, int i3, String str, int i4, int i5, byte[] bArr, int i6) {
            queryListener.queryAnswered(dNSSDServiceArr[0], i2, i3, str, i4, i5, bArr, i6);
            dNSSDServiceArr[0].stop();
        }

        @Override // com.github.druk.dnssd.BaseListener
        public void operationFailed(DNSSDService dNSSDService, int i2) {
            DNSSD.this.handler.removeCallbacks(this.val$timeoutRunnable);
            DNSSD.this.handler.post(new b(this.val$listener, this.val$services, i2, 3));
        }

        @Override // com.github.druk.dnssd.InternalQueryListener
        public void queryAnswered(DNSSDService dNSSDService, final int i2, final int i3, byte[] bArr, final int i4, final int i5, final byte[] bArr2, final int i6) {
            final String str = new String(bArr, DNSSD.UTF_8);
            DNSSD.this.handler.removeCallbacks(this.val$timeoutRunnable);
            Handler handler = DNSSD.this.handler;
            final QueryListener queryListener = this.val$listener;
            final DNSSDService[] dNSSDServiceArr = this.val$services;
            handler.post(new Runnable() { // from class: com.github.druk.dnssd.e
                @Override // java.lang.Runnable
                public final void run() {
                    DNSSD.AnonymousClass4.lambda$queryAnswered$0(queryListener, dNSSDServiceArr, i2, i3, str, i4, i5, bArr2, i6);
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.github.druk.dnssd.DNSSD$5, reason: invalid class name */
    public class AnonymousClass5 implements InternalDomainListener {
        final /* synthetic */ DomainListener val$listener;
        final /* synthetic */ DNSSDService[] val$services;

        public AnonymousClass5(DomainListener domainListener, DNSSDService[] dNSSDServiceArr) {
            this.val$listener = domainListener;
            this.val$services = dNSSDServiceArr;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$domainFound$0(DomainListener domainListener, DNSSDService[] dNSSDServiceArr, int i2, int i3, String str) {
            domainListener.domainFound(dNSSDServiceArr[0], i2, i3, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$domainLost$1(DomainListener domainListener, DNSSDService[] dNSSDServiceArr, int i2, int i3, String str) {
            domainListener.domainLost(dNSSDServiceArr[0], i2, i3, str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$operationFailed$2(DomainListener domainListener, DNSSDService[] dNSSDServiceArr, int i2) {
            domainListener.operationFailed(dNSSDServiceArr[0], i2);
        }

        @Override // com.github.druk.dnssd.InternalDomainListener
        public void domainFound(DNSSDService dNSSDService, int i2, int i3, byte[] bArr) {
            DNSSD.this.handler.post(new f(this.val$listener, this.val$services, i2, i3, new String(bArr, DNSSD.UTF_8), 1));
        }

        @Override // com.github.druk.dnssd.InternalDomainListener
        public void domainLost(DNSSDService dNSSDService, int i2, int i3, byte[] bArr) {
            DNSSD.this.handler.post(new f(this.val$listener, this.val$services, i2, i3, new String(bArr, DNSSD.UTF_8), 0));
        }

        @Override // com.github.druk.dnssd.BaseListener
        public void operationFailed(DNSSDService dNSSDService, int i2) {
            DNSSD.this.handler.post(new b(this.val$listener, this.val$services, i2, 4));
        }
    }

    public DNSSD(Context context, String str, Looper looper) {
        this.multicastLock = null;
        this.context = context.getApplicationContext();
        InternalDNSSD.init(str);
        this.handler = new Handler(looper);
        this.serviceTimeout = DNSSD_DEFAULT_TIMEOUT;
    }

    public static int getIfIndexForName(String str) {
        return InternalDNSSD.getIfIndexForName(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$queryRecord$1(DNSSDService[] dNSSDServiceArr) {
        dNSSDServiceArr[0].stop();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$resolve$0(DNSSDService[] dNSSDServiceArr) {
        dNSSDServiceArr[0].stop();
    }

    public static Map<String, String> parseTXTRecords(TXTRecord tXTRecord) {
        HashMap map = new HashMap(tXTRecord.size());
        for (int i2 = 0; i2 < tXTRecord.size(); i2++) {
            try {
                if (!TextUtils.isEmpty(tXTRecord.getKey(i2)) && !TextUtils.isEmpty(tXTRecord.getValueAsString(i2))) {
                    map.put(tXTRecord.getKey(i2), tXTRecord.getValueAsString(i2));
                }
            } catch (Exception unused) {
            }
        }
        return map;
    }

    public DNSSDService browse(int i2, int i3, String str, String str2, BrowseListener browseListener) throws DNSSDException {
        onServiceStarting();
        InternalDNSSDService internalDNSSDService = new InternalDNSSDService(this, InternalDNSSD.browse(i2, i3, str, str2, new AnonymousClass1(browseListener, internalDNSSDServiceArr)));
        InternalDNSSDService[] internalDNSSDServiceArr = {internalDNSSDService};
        return internalDNSSDService;
    }

    public String constructFullName(String str, String str2, String str3) throws DNSSDException {
        onServiceStarting();
        String strConstructFullName = InternalDNSSD.constructFullName(str, str2, str3);
        onServiceStopped();
        return strConstructFullName;
    }

    public InternalDNSSDRecordRegistrar createRecordRegistrar(RegisterRecordListener registerRecordListener) throws DNSSDException {
        onServiceStarting();
        return new InternalDNSSDRecordRegistrar(this, InternalDNSSD.createRecordRegistrar(registerRecordListener));
    }

    public DNSSDService enumerateDomains(int i2, int i3, DomainListener domainListener) throws DNSSDException {
        onServiceStarting();
        InternalDNSSDService internalDNSSDService = new InternalDNSSDService(this, InternalDNSSD.enumerateDomains(i2, i3, new AnonymousClass5(domainListener, dNSSDServiceArr)));
        DNSSDService[] dNSSDServiceArr = {internalDNSSDService};
        return internalDNSSDService;
    }

    @Override // com.github.druk.dnssd.InternalDNSSDService.DnssdServiceListener
    public void onServiceStarting() {
        if (this.multicastLock == null) {
            synchronized (this) {
                try {
                    if (this.multicastLock == null) {
                        WifiManager wifiManager = (WifiManager) this.context.getApplicationContext().getSystemService(MenuBarConstants.MEDIA_TYPE_WIFI);
                        if (wifiManager == null) {
                            Log.wtf("DNSSD", "Can't get WIFI Service");
                            return;
                        } else {
                            this.multicastLock = wifiManager.createMulticastLock(MULTICAST_LOCK_NAME);
                            this.multicastLock.setReferenceCounted(true);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.multicastLock.acquire();
    }

    @Override // com.github.druk.dnssd.InternalDNSSDService.DnssdServiceListener
    public void onServiceStopped() {
        if (this.multicastLock == null) {
            Log.wtf("DNSSD", "Multicast lock doesn't exist");
        } else {
            this.multicastLock.release();
        }
    }

    public DNSSDService queryRecord(int i2, int i3, String str, int i4, int i5, boolean z, QueryListener queryListener) throws DNSSDException {
        onServiceStarting();
        DNSSDService[] dNSSDServiceArr = new DNSSDService[1];
        sr srVar = new sr(dNSSDServiceArr, 0);
        dNSSDServiceArr[0] = new InternalDNSSDService(this, InternalDNSSD.queryRecord(i2, i3, str, i4, i5, new AnonymousClass4(srVar, queryListener, dNSSDServiceArr)));
        if (z) {
            this.handler.postDelayed(srVar, this.serviceTimeout);
        }
        return dNSSDServiceArr[0];
    }

    public void reconfirmRecord(int i2, int i3, String str, int i4, int i5, byte[] bArr) {
        onServiceStarting();
        InternalDNSSD.reconfirmRecord(i2, i3, str, i4, i5, bArr);
        onServiceStopped();
    }

    public DNSSDRegistration register(int i2, int i3, String str, String str2, String str3, String str4, int i4, TXTRecord tXTRecord, RegisterListener registerListener) throws DNSSDException {
        onServiceStarting();
        InternalDNSSDRegistration internalDNSSDRegistration = new InternalDNSSDRegistration(this, InternalDNSSD.register(i2, i3, str, str2, str3, str4, i4, tXTRecord, new AnonymousClass3(registerListener, dNSSDRegistrationArr)));
        DNSSDRegistration[] dNSSDRegistrationArr = {internalDNSSDRegistration};
        return internalDNSSDRegistration;
    }

    public DNSSDService resolve(int i2, int i3, String str, String str2, String str3, ResolveListener resolveListener) throws DNSSDException {
        onServiceStarting();
        DNSSDService[] dNSSDServiceArr = new DNSSDService[1];
        sr srVar = new sr(dNSSDServiceArr, 1);
        dNSSDServiceArr[0] = new InternalDNSSDService(this, InternalDNSSD.resolve(i2, i3, str, str2, str3, new AnonymousClass2(srVar, resolveListener, dNSSDServiceArr)));
        this.handler.postDelayed(srVar, this.serviceTimeout);
        return dNSSDServiceArr[0];
    }

    public DNSSDService browse(String str, BrowseListener browseListener) throws DNSSDException {
        return browse(0, 0, str, "", browseListener);
    }

    public DNSSDService register(String str, String str2, int i2, RegisterListener registerListener) throws DNSSDException {
        return register(0, 0, str, str2, null, null, i2, null, registerListener);
    }

    public DNSSD(Context context, String str) {
        this(context, str, Looper.getMainLooper());
    }

    public DNSSD(Context context, String str, Handler handler) {
        this.multicastLock = null;
        this.context = context.getApplicationContext();
        InternalDNSSD.init(str);
        this.handler = handler;
        this.serviceTimeout = DNSSD_DEFAULT_TIMEOUT;
    }

    public DNSSD(Context context, String str, Handler handler, int i2) {
        this.multicastLock = null;
        this.context = context.getApplicationContext();
        InternalDNSSD.init(str);
        this.handler = handler;
        this.serviceTimeout = i2;
    }

    public DNSSDService queryRecord(int i2, int i3, String str, int i4, int i5, QueryListener queryListener) throws DNSSDException {
        return queryRecord(i2, i3, str, i4, i5, false, queryListener);
    }

    public static Map<String, String> parseTXTRecords(byte[] bArr) {
        return parseTXTRecords(new TXTRecord(bArr));
    }
}
