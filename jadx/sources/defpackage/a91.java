package defpackage;

import android.content.Context;
import com.batch.android.BatchOptOutResultListener;
import com.batch.android.e.c0;
import com.batch.android.v0.h;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a91 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f457b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ h f458c;
    public final /* synthetic */ BatchOptOutResultListener d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ c0 f459e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Context f460f;
    public final /* synthetic */ boolean g;

    public /* synthetic */ a91(h hVar, BatchOptOutResultListener batchOptOutResultListener, Context context, boolean z, c0 c0Var) {
        this.f458c = hVar;
        this.d = batchOptOutResultListener;
        this.f460f = context;
        this.g = z;
        this.f459e = c0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f457b;
        boolean z = this.g;
        Context context = this.f460f;
        c0 c0Var = this.f459e;
        BatchOptOutResultListener batchOptOutResultListener = this.d;
        h hVar = this.f458c;
        switch (i2) {
            case 0:
                hVar.a(batchOptOutResultListener, context, z, c0Var);
                break;
            default:
                hVar.a(batchOptOutResultListener, c0Var, context, z);
                break;
        }
    }

    public /* synthetic */ a91(h hVar, BatchOptOutResultListener batchOptOutResultListener, c0 c0Var, Context context, boolean z) {
        this.f458c = hVar;
        this.d = batchOptOutResultListener;
        this.f459e = c0Var;
        this.f460f = context;
        this.g = z;
    }
}
