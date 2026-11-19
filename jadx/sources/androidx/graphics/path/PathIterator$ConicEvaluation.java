package androidx.graphics.path;

import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"androidx/graphics/path/PathIterator$ConicEvaluation", "", "Landroidx/graphics/path/PathIterator$ConicEvaluation;", "AsConic", "AsQuadratics", "graphics-path_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PathIterator$ConicEvaluation {
    private static final /* synthetic */ PathIterator$ConicEvaluation[] $VALUES;
    public static final PathIterator$ConicEvaluation AsConic;
    public static final PathIterator$ConicEvaluation AsQuadratics;

    static {
        PathIterator$ConicEvaluation pathIterator$ConicEvaluation = new PathIterator$ConicEvaluation("AsConic", 0);
        AsConic = pathIterator$ConicEvaluation;
        PathIterator$ConicEvaluation pathIterator$ConicEvaluation2 = new PathIterator$ConicEvaluation("AsQuadratics", 1);
        AsQuadratics = pathIterator$ConicEvaluation2;
        $VALUES = new PathIterator$ConicEvaluation[]{pathIterator$ConicEvaluation, pathIterator$ConicEvaluation2};
    }

    public static PathIterator$ConicEvaluation valueOf(String str) {
        return (PathIterator$ConicEvaluation) Enum.valueOf(PathIterator$ConicEvaluation.class, str);
    }

    public static PathIterator$ConicEvaluation[] values() {
        return (PathIterator$ConicEvaluation[]) $VALUES.clone();
    }
}
