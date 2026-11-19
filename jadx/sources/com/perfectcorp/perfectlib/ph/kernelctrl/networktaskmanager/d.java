package com.perfectcorp.perfectlib.ph.kernelctrl.networktaskmanager;

import com.perfectcorp.common.network.DownloadKey;
import com.perfectcorp.common.network.DownloadReport;
import com.perfectcorp.thirdparty.io.reactivex.functions.Consumer;

/* JADX INFO: loaded from: classes3.dex */
final class d implements Consumer<DownloadReport.ProgressReport> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public /* synthetic */ c.a f41475a;

    @Override // com.perfectcorp.thirdparty.io.reactivex.functions.Consumer
    public final void accept(Object obj) {
        c.a aVar;
        DownloadReport.ProgressReport progressReport = (DownloadReport.ProgressReport) obj;
        int i2 = 0;
        double d = 0.0d;
        int i3 = 0;
        while (true) {
            int size = this.f41475a.B.size();
            aVar = this.f41475a;
            if (i2 >= size) {
                break;
            }
            if (new DownloadKey.Guid(((c.d) aVar.B.get(i2)).f41470a).equals(progressReport.f39308a)) {
                ((c.d) this.f41475a.B.get(i2)).f41472c = ((Double) progressReport.f39309b).doubleValue();
            }
            d += ((c.d) this.f41475a.B.get(i2)).f41472c * ((c.d) this.f41475a.B.get(i2)).f41471b;
            i3 = (int) (((long) i3) + ((c.d) this.f41475a.B.get(i2)).f41471b);
            i2++;
        }
        aVar.C = i3 > 0 ? d / ((double) i3) : 0.0d;
        c.a aVar2 = this.f41475a;
        aVar2.a(aVar2.C);
    }
}
