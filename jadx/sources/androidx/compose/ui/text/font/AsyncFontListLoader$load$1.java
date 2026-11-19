package androidx.compose.ui.text.font;

import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.text.font.AsyncFontListLoader", f = "FontListFontFamilyTypefaceAdapter.kt", l = {281, 295}, m = "load", v = 1)
final class AsyncFontListLoader$load$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List f10672b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Font f10673c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10674e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f10675f;
    public final /* synthetic */ AsyncFontListLoader g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10676h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncFontListLoader$load$1(AsyncFontListLoader asyncFontListLoader, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.g = asyncFontListLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f10675f = obj;
        this.f10676h |= Integer.MIN_VALUE;
        return this.g.h(this);
    }
}
