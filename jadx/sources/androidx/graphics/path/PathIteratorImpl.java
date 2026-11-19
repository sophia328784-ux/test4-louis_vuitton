package androidx.graphics.path;

import android.graphics.Path;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0005\b \u0018\u00002\u00020\u0001:\u0001\nB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\t¨\u0006\u000b"}, d2 = {"Landroidx/graphics/path/PathIteratorImpl;", "", "Landroid/graphics/Path;", "path", "Landroidx/graphics/path/PathIterator$ConicEvaluation;", "conicEvaluation", "", "tolerance", "<init>", "(Landroid/graphics/Path;Landroidx/graphics/path/PathIterator$ConicEvaluation;F)V", "Companion", "graphics-path_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class PathIteratorImpl {

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/graphics/path/PathIteratorImpl$Companion;", "", "graphics-path_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        System.loadLibrary("androidx.graphics.path");
    }

    public /* synthetic */ PathIteratorImpl(Path path, PathIterator$ConicEvaluation pathIterator$ConicEvaluation, float f2, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(path, (i2 & 2) != 0 ? PathIterator$ConicEvaluation.AsQuadratics : pathIterator$ConicEvaluation, (i2 & 4) != 0 ? 0.25f : f2);
    }

    public PathIteratorImpl(Path path, PathIterator$ConicEvaluation pathIterator$ConicEvaluation, float f2) {
        path.getClass();
        pathIterator$ConicEvaluation.getClass();
    }
}
