package com.vuitton.foundation.model.domain.model.common.editorial;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/common/editorial/LiveFormat;", "", "LANDSCAPE", "PORTRAIT", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveFormat {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LiveFormat[] $VALUES;
    public static final LiveFormat LANDSCAPE;
    public static final LiveFormat PORTRAIT;

    static {
        LiveFormat liveFormat = new LiveFormat("LANDSCAPE", 0);
        LANDSCAPE = liveFormat;
        LiveFormat liveFormat2 = new LiveFormat("PORTRAIT", 1);
        PORTRAIT = liveFormat2;
        LiveFormat[] liveFormatArr = {liveFormat, liveFormat2};
        $VALUES = liveFormatArr;
        $ENTRIES = EnumEntriesKt.a(liveFormatArr);
    }

    public static LiveFormat valueOf(String str) {
        return (LiveFormat) Enum.valueOf(LiveFormat.class, str);
    }

    public static LiveFormat[] values() {
        return (LiveFormat[]) $VALUES.clone();
    }
}
