package androidx.compose.ui.text;

import androidx.collection.LruCache;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/ui/text/TextLayoutCache;", "", "", "capacity", "<init>", "(I)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TextLayoutCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LruCache f10540a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public CacheTextLayoutInput f10541b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TextLayoutResult f10542c;

    public TextLayoutCache(int i2) {
        this.f10540a = i2 != 1 ? new LruCache(i2) : null;
    }

    public TextLayoutCache() {
        this(0, 1, null);
    }

    public /* synthetic */ TextLayoutCache(int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 8 : i2);
    }
}
