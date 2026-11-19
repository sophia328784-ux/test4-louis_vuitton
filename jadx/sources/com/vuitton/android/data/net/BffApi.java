package com.vuitton.android.data.net;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/vuitton/android/data/net/BffApi;", "", "PUBLICATION_API", "CATALOG_API", "USER_API", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class BffApi {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ BffApi[] $VALUES;
    public static final BffApi CATALOG_API;
    public static final BffApi PUBLICATION_API;
    public static final BffApi USER_API;

    static {
        BffApi bffApi = new BffApi("PUBLICATION_API", 0);
        PUBLICATION_API = bffApi;
        BffApi bffApi2 = new BffApi("CATALOG_API", 1);
        CATALOG_API = bffApi2;
        BffApi bffApi3 = new BffApi("USER_API", 2);
        USER_API = bffApi3;
        BffApi[] bffApiArr = {bffApi, bffApi2, bffApi3};
        $VALUES = bffApiArr;
        $ENTRIES = EnumEntriesKt.a(bffApiArr);
    }

    public static BffApi valueOf(String str) {
        return (BffApi) Enum.valueOf(BffApi.class, str);
    }

    public static BffApi[] values() {
        return (BffApi[]) $VALUES.clone();
    }
}
