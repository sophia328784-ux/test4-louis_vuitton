package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class f implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f27759b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DomainListener f27760c;
    public final /* synthetic */ DNSSDService[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f27761e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f27762f;
    public final /* synthetic */ String g;

    public /* synthetic */ f(DomainListener domainListener, DNSSDService[] dNSSDServiceArr, int i2, int i3, String str, int i4) {
        this.f27759b = i4;
        this.f27760c = domainListener;
        this.d = dNSSDServiceArr;
        this.f27761e = i2;
        this.f27762f = i3;
        this.g = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f27759b;
        String str = this.g;
        int i3 = this.f27762f;
        int i4 = this.f27761e;
        DNSSDService[] dNSSDServiceArr = this.d;
        DomainListener domainListener = this.f27760c;
        switch (i2) {
            case 0:
                DNSSD.AnonymousClass5.lambda$domainLost$1(domainListener, dNSSDServiceArr, i4, i3, str);
                break;
            default:
                DNSSD.AnonymousClass5.lambda$domainFound$0(domainListener, dNSSDServiceArr, i4, i3, str);
                break;
        }
    }
}
