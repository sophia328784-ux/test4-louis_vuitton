package androidx.constraintlayout.compose;

import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0081\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Landroidx/constraintlayout/compose/CompositionSource;", "", "Unknown", "Content", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CompositionSource {
    private static final /* synthetic */ CompositionSource[] $VALUES;
    public static final CompositionSource Content;
    public static final CompositionSource Unknown;

    static {
        CompositionSource compositionSource = new CompositionSource("Unknown", 0);
        Unknown = compositionSource;
        CompositionSource compositionSource2 = new CompositionSource("Content", 1);
        Content = compositionSource2;
        $VALUES = new CompositionSource[]{compositionSource, compositionSource2};
    }

    public static CompositionSource valueOf(String str) {
        return (CompositionSource) Enum.valueOf(CompositionSource.class, str);
    }

    public static CompositionSource[] values() {
        return (CompositionSource[]) $VALUES.clone();
    }
}
