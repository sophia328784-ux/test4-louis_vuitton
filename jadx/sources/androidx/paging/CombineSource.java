package androidx.paging;

import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/CombineSource;", "", "INITIAL", "RECEIVER", "OTHER", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CombineSource {
    private static final /* synthetic */ CombineSource[] $VALUES;
    public static final CombineSource INITIAL;
    public static final CombineSource OTHER;
    public static final CombineSource RECEIVER;

    static {
        CombineSource combineSource = new CombineSource("INITIAL", 0);
        INITIAL = combineSource;
        CombineSource combineSource2 = new CombineSource("RECEIVER", 1);
        RECEIVER = combineSource2;
        CombineSource combineSource3 = new CombineSource("OTHER", 2);
        OTHER = combineSource3;
        $VALUES = new CombineSource[]{combineSource, combineSource2, combineSource3};
    }

    public static CombineSource valueOf(String str) {
        return (CombineSource) Enum.valueOf(CombineSource.class, str);
    }

    public static CombineSource[] values() {
        return (CombineSource[]) $VALUES.clone();
    }
}
