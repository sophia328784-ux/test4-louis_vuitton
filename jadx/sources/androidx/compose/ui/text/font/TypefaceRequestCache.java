package androidx.compose.ui.text.font;

import androidx.collection.LruCache;
import androidx.compose.ui.text.platform.SynchronizedObject;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/compose/ui/text/font/TypefaceRequestCache;", "", "<init>", "()V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TypefaceRequestCache {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final SynchronizedObject f10752a = new SynchronizedObject();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LruCache f10753b = new LruCache(16);
}
