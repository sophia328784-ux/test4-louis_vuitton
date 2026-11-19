package androidx.paging;

import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Landroidx/paging/LoadType;", "", "REFRESH", "PREPEND", "APPEND", "paging-common_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class LoadType {
    private static final /* synthetic */ LoadType[] $VALUES;
    public static final LoadType APPEND;
    public static final LoadType PREPEND;
    public static final LoadType REFRESH;

    static {
        LoadType loadType = new LoadType("REFRESH", 0);
        REFRESH = loadType;
        LoadType loadType2 = new LoadType("PREPEND", 1);
        PREPEND = loadType2;
        LoadType loadType3 = new LoadType("APPEND", 2);
        APPEND = loadType3;
        $VALUES = new LoadType[]{loadType, loadType2, loadType3};
    }

    public static LoadType valueOf(String str) {
        return (LoadType) Enum.valueOf(LoadType.class, str);
    }

    public static LoadType[] values() {
        return (LoadType[]) $VALUES.clone();
    }
}
