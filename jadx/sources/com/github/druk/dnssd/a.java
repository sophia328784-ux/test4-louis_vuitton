package com.github.druk.dnssd;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f27733b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BrowseListener f27734c;
    public final /* synthetic */ InternalDNSSDService[] d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f27735e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f27736f;
    public final /* synthetic */ String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f27737h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f27738i;

    public /* synthetic */ a(BrowseListener browseListener, InternalDNSSDService[] internalDNSSDServiceArr, int i2, int i3, String str, String str2, String str3, int i4) {
        this.f27733b = i4;
        this.f27734c = browseListener;
        this.d = internalDNSSDServiceArr;
        this.f27735e = i2;
        this.f27736f = i3;
        this.g = str;
        this.f27737h = str2;
        this.f27738i = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f27733b) {
            case 0:
                DNSSD.AnonymousClass1.lambda$serviceFound$0(this.f27734c, this.d, this.f27735e, this.f27736f, this.g, this.f27737h, this.f27738i);
                break;
            default:
                DNSSD.AnonymousClass1.lambda$serviceLost$1(this.f27734c, this.d, this.f27735e, this.f27736f, this.g, this.f27737h, this.f27738i);
                break;
        }
    }
}
