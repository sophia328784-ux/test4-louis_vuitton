package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import com.google.common.collect.ImmutableList;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface HlsPlaylistTracker {

    public interface Factory {
    }

    public interface PlaylistEventListener {
        boolean b(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z);

        void h();
    }

    public static final class PlaylistResetException extends IOException {
        public PlaylistResetException(Uri uri) {
        }
    }

    public static final class PlaylistStuckException extends IOException {
        public PlaylistStuckException(Uri uri) {
        }
    }

    public interface PrimaryPlaylistListener {
    }

    boolean a(Uri uri, long j2);

    default void c(Uri uri) {
    }

    void d(Uri uri);

    ImmutableList e(int i2);

    long f();

    HlsMultivariantPlaylist g();

    void h(Uri uri);

    boolean i(Uri uri);

    void j(PlaylistEventListener playlistEventListener);

    void k(PlaylistEventListener playlistEventListener);

    boolean m();

    boolean n(Uri uri, long j2);

    boolean o(HlsRedundantGroup hlsRedundantGroup, long j2);

    HlsRedundantGroup p(Uri uri);

    HlsMediaPlaylist r(Uri uri, boolean z);
}
