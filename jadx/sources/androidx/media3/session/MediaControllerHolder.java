package androidx.media3.session;

import android.os.Handler;
import android.os.Looper;
import androidx.media3.session.MediaController;
import com.google.common.util.concurrent.AbstractFuture;

/* JADX INFO: loaded from: classes.dex */
class MediaControllerHolder<T extends MediaController> extends AbstractFuture<T> implements MediaController.ConnectionCallback {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f17324e = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Handler f17325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public MediaController f17326c;
    public boolean d;

    public MediaControllerHolder(Looper looper) {
        this.f17325b = new Handler(looper);
    }
}
