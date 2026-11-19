package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.AndroidPathMeasure;
import androidx.compose.ui.graphics.PathMeasure;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "Landroidx/compose/ui/graphics/PathMeasure;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
public final class PathComponent$pathMeasure$2 extends Lambda implements Function0<PathMeasure> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final PathComponent$pathMeasure$2 f9107c = new PathComponent$pathMeasure$2(0);

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        return new AndroidPathMeasure(new android.graphics.PathMeasure());
    }
}
