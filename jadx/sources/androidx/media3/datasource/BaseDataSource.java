package androidx.media3.datasource;

import androidx.media3.common.util.Util;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseDataSource implements DataSource {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f14365a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f14366b = new ArrayList(1);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f14367c;
    public DataSpec d;

    public BaseDataSource(boolean z) {
        this.f14365a = z;
    }

    @Override // androidx.media3.datasource.DataSource
    public final void c(TransferListener transferListener) {
        transferListener.getClass();
        ArrayList arrayList = this.f14366b;
        if (arrayList.contains(transferListener)) {
            return;
        }
        arrayList.add(transferListener);
        this.f14367c++;
    }

    public final void o(int i2) {
        DataSpec dataSpec = this.d;
        String str = Util.f14242a;
        for (int i3 = 0; i3 < this.f14367c; i3++) {
            ((TransferListener) this.f14366b.get(i3)).b(dataSpec, this.f14365a, i2);
        }
    }

    public final void p() {
        DataSpec dataSpec = this.d;
        String str = Util.f14242a;
        for (int i2 = 0; i2 < this.f14367c; i2++) {
            ((TransferListener) this.f14366b.get(i2)).f(dataSpec, this.f14365a);
        }
        this.d = null;
    }

    public final void q(DataSpec dataSpec) {
        for (int i2 = 0; i2 < this.f14367c; i2++) {
            ((TransferListener) this.f14366b.get(i2)).getClass();
        }
    }

    public final void r(DataSpec dataSpec) {
        this.d = dataSpec;
        for (int i2 = 0; i2 < this.f14367c; i2++) {
            ((TransferListener) this.f14366b.get(i2)).g(dataSpec, this.f14365a);
        }
    }
}
