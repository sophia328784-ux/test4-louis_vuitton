package com.google.android.exoplayer2.source.hls.playlist;

import android.net.Uri;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public interface HlsPlaylistTracker {

    public interface Factory {
    }

    public interface PlaylistEventListener {
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
}
