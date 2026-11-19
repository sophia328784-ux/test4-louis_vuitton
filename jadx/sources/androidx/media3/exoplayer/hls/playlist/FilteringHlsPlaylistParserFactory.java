package androidx.media3.exoplayer.hls.playlist;

import androidx.media3.common.StreamKey;
import androidx.media3.exoplayer.offline.FilteringManifestParser;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FilteringHlsPlaylistParserFactory implements HlsPlaylistParserFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HlsPlaylistParserFactory f15231a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f15232b;

    public FilteringHlsPlaylistParserFactory(HlsPlaylistParserFactory hlsPlaylistParserFactory, List<StreamKey> list) {
        this.f15231a = hlsPlaylistParserFactory;
        this.f15232b = list;
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistParserFactory
    public final ParsingLoadable.Parser a() {
        return new FilteringManifestParser(this.f15231a.a(), this.f15232b);
    }

    @Override // androidx.media3.exoplayer.hls.playlist.HlsPlaylistParserFactory
    public final ParsingLoadable.Parser b(HlsMultivariantPlaylist hlsMultivariantPlaylist, HlsMediaPlaylist hlsMediaPlaylist) {
        return new FilteringManifestParser(this.f15231a.b(hlsMultivariantPlaylist, hlsMediaPlaylist), this.f15232b);
    }
}
