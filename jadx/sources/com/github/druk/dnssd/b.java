package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f27739b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f27740c;
    public final /* synthetic */ BaseListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DNSSDService[] f27741e;

    public /* synthetic */ b(BaseListener baseListener, DNSSDService[] dNSSDServiceArr, int i2, int i3) {
        this.f27739b = i3;
        this.d = baseListener;
        this.f27741e = dNSSDServiceArr;
        this.f27740c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f27739b) {
            case 0:
                DNSSD.AnonymousClass1.lambda$operationFailed$2((BrowseListener) this.d, (InternalDNSSDService[]) this.f27741e, this.f27740c);
                break;
            case 1:
                DNSSD.AnonymousClass2.lambda$operationFailed$1((ResolveListener) this.d, this.f27741e, this.f27740c);
                break;
            case 2:
                DNSSD.AnonymousClass3.lambda$operationFailed$1((RegisterListener) this.d, (DNSSDRegistration[]) this.f27741e, this.f27740c);
                break;
            case 3:
                DNSSD.AnonymousClass4.lambda$operationFailed$1((QueryListener) this.d, this.f27741e, this.f27740c);
                break;
            default:
                DNSSD.AnonymousClass5.lambda$operationFailed$2((DomainListener) this.d, this.f27741e, this.f27740c);
                break;
        }
    }
}
