package defpackage;

import com.github.druk.dnssd.DNSSD;
import com.github.druk.dnssd.DNSSDService;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class sr implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79866b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DNSSDService[] f79867c;

    public /* synthetic */ sr(DNSSDService[] dNSSDServiceArr, int i2) {
        this.f79866b = i2;
        this.f79867c = dNSSDServiceArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f79866b;
        DNSSDService[] dNSSDServiceArr = this.f79867c;
        switch (i2) {
            case 0:
                DNSSD.lambda$queryRecord$1(dNSSDServiceArr);
                break;
            default:
                DNSSD.lambda$resolve$0(dNSSDServiceArr);
                break;
        }
    }
}
