package androidx.constraintlayout.compose;

import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Landroidx/constraintlayout/compose/LayoutInfoFlags;", "", "NONE", "BOUNDS", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class LayoutInfoFlags {
    private static final /* synthetic */ LayoutInfoFlags[] $VALUES;
    public static final LayoutInfoFlags BOUNDS;
    public static final LayoutInfoFlags NONE;

    static {
        LayoutInfoFlags layoutInfoFlags = new LayoutInfoFlags("NONE", 0);
        NONE = layoutInfoFlags;
        LayoutInfoFlags layoutInfoFlags2 = new LayoutInfoFlags("BOUNDS", 1);
        BOUNDS = layoutInfoFlags2;
        $VALUES = new LayoutInfoFlags[]{layoutInfoFlags, layoutInfoFlags2};
    }

    public static LayoutInfoFlags valueOf(String str) {
        return (LayoutInfoFlags) Enum.valueOf(LayoutInfoFlags.class, str);
    }

    public static LayoutInfoFlags[] values() {
        return (LayoutInfoFlags[]) $VALUES.clone();
    }
}
