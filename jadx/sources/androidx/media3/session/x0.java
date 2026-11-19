package androidx.media3.session;

import androidx.media3.common.util.Util;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class x0 implements Executor {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MediaLibrarySessionImpl f17941c;

    public /* synthetic */ x0(MediaLibrarySessionImpl mediaLibrarySessionImpl, int i2) {
        this.f17940b = i2;
        this.f17941c = mediaLibrarySessionImpl;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        int i2 = this.f17940b;
        MediaLibrarySessionImpl mediaLibrarySessionImpl = this.f17941c;
        switch (i2) {
            case 0:
                MediaLibrarySessionImpl.z(mediaLibrarySessionImpl, runnable);
                break;
            default:
                int i3 = MediaLibrarySessionImpl.L;
                Util.W(mediaLibrarySessionImpl.l, runnable);
                break;
        }
    }
}
