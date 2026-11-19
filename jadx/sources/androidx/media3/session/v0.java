package androidx.media3.session;

import androidx.media3.common.util.Log;
import androidx.media3.session.legacy.MediaBrowserCompat;
import androidx.media3.session.legacy.MediaBrowserServiceCompat;
import com.google.common.util.concurrent.SettableFuture;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17926b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ SettableFuture f17927c;
    public final /* synthetic */ MediaBrowserServiceCompat.Result d;

    public /* synthetic */ v0(SettableFuture settableFuture, MediaBrowserServiceCompat.Result result, int i2) {
        this.f17926b = i2;
        this.f17927c = settableFuture;
        this.d = result;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f17926b;
        MediaBrowserServiceCompat.Result result = this.d;
        SettableFuture settableFuture = this.f17927c;
        switch (i2) {
            case 0:
                int i3 = MediaLibraryServiceLegacyStub.n;
                try {
                    result.f((MediaBrowserCompat.MediaItem) settableFuture.get());
                } catch (InterruptedException | CancellationException | ExecutionException e2) {
                    Log.h("Library operation failed", e2);
                    result.f(null);
                    return;
                }
                break;
            default:
                int i4 = MediaLibraryServiceLegacyStub.n;
                try {
                    List list = (List) settableFuture.get();
                    result.f(list == null ? null : MediaUtils.g(list));
                } catch (InterruptedException | CancellationException | ExecutionException e3) {
                    Log.h("Library operation failed", e3);
                    result.f(null);
                }
                break;
        }
    }
}
