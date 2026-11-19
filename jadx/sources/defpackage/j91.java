package defpackage;

import android.content.Context;
import com.batch.android.BatchAttributesFetchListener;
import com.batch.android.BatchTagCollectionsFetchListener;
import com.batch.android.e.w;
import com.batch.android.j1.e;
import com.batch.android.l;
import com.batch.android.v0.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class j91 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71348c;
    public final /* synthetic */ Object d;

    public /* synthetic */ j91(Object obj, Object obj2, int i2) {
        this.f71347b = i2;
        this.f71348c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f71347b;
        Object obj = this.d;
        Object obj2 = this.f71348c;
        switch (i2) {
            case 0:
                ((k) obj2).c((ArrayList) obj);
                break;
            case 1:
                ((k) obj2).b((Context) obj);
                break;
            case 2:
                l.a((BatchAttributesFetchListener) obj2, (HashMap) obj);
                break;
            case 3:
                l.a((BatchTagCollectionsFetchListener) obj2, (Map) obj);
                break;
            default:
                w.a((Context) obj2, (e) obj);
                break;
        }
    }
}
