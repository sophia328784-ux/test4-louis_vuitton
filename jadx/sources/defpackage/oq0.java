package defpackage;

import android.content.Context;
import android.net.Uri;
import com.batch.android.BatchAttributesFetchListener;
import com.batch.android.BatchTagCollectionsFetchListener;
import com.batch.android.l;
import com.sightcall.universal.internal.view.ProgressivexImageView;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class oq0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f77523b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f77524c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f77525e;

    public /* synthetic */ oq0(ProgressivexImageView progressivexImageView, Uri uri, boolean z) {
        this.f77523b = 0;
        this.d = progressivexImageView;
        this.f77525e = uri;
        this.f77524c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f77523b;
        Object obj = this.f77525e;
        boolean z = this.f77524c;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                ((ProgressivexImageView) obj2).lambda$loadUri$2((Uri) obj, z);
                break;
            case 1:
                l.a((Context) obj2, z, (BatchAttributesFetchListener) obj);
                break;
            default:
                l.a((Context) obj2, z, (BatchTagCollectionsFetchListener) obj);
                break;
        }
    }

    public /* synthetic */ oq0(Context context, boolean z, Object obj, int i2) {
        this.f77523b = i2;
        this.d = context;
        this.f77524c = z;
        this.f77525e = obj;
    }
}
