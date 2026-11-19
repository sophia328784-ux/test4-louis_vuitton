package androidx.compose.animation;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.ContentScale;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Landroidx/compose/animation/ScaleToBoundsImpl;", "Landroidx/compose/animation/SharedTransitionScope$ResizeMode;", "Landroidx/compose/ui/layout/ContentScale;", "contentScale", "Landroidx/compose/ui/Alignment;", "alignment", "<init>", "(Landroidx/compose/ui/layout/ContentScale;Landroidx/compose/ui/Alignment;)V", "animation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ScaleToBoundsImpl implements SharedTransitionScope.ResizeMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ContentScale f3645a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Alignment f3646b;

    public ScaleToBoundsImpl(ContentScale contentScale, Alignment alignment) {
        this.f3645a = contentScale;
        this.f3646b = alignment;
    }
}
