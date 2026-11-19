package androidx.media3.exoplayer.offline;

import android.net.Uri;
import androidx.media3.common.StreamKey;
import androidx.media3.datasource.DataSourceInputStream;
import androidx.media3.exoplayer.offline.FilterableManifest;
import androidx.media3.exoplayer.upstream.ParsingLoadable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FilteringManifestParser<T extends FilterableManifest<T>> implements ParsingLoadable.Parser<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsingLoadable.Parser f15427a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f15428b;

    public FilteringManifestParser(ParsingLoadable.Parser<? extends T> parser, List<StreamKey> list) {
        this.f15427a = parser;
        this.f15428b = list;
    }

    @Override // androidx.media3.exoplayer.upstream.ParsingLoadable.Parser
    public final Object a(Uri uri, DataSourceInputStream dataSourceInputStream) {
        FilterableManifest filterableManifest = (FilterableManifest) this.f15427a.a(uri, dataSourceInputStream);
        List list = this.f15428b;
        return (list == null || list.isEmpty()) ? filterableManifest : (FilterableManifest) filterableManifest.a(list);
    }
}
