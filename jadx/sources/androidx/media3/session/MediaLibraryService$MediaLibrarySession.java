package androidx.media3.session;

import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: loaded from: classes.dex */
public abstract class MediaLibraryService$MediaLibrarySession extends MediaSession {

    public interface Callback extends MediaSession.Callback {
        static ListenableFuture c() {
            return Futures.g(LibraryResult.b(-6));
        }
    }
}
