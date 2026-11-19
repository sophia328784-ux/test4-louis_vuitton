package com.vuitton.foundation.model.domain.model.product.universal;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/product/universal/VariationType;", "", "COLOR", "MATERIAL", "MODEL_SIZE", "CARAT", "SIZE", "LANGUAGE", "FINISH", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class VariationType {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ VariationType[] $VALUES;
    public static final VariationType CARAT;
    public static final VariationType COLOR;
    public static final VariationType FINISH;
    public static final VariationType LANGUAGE;
    public static final VariationType MATERIAL;
    public static final VariationType MODEL_SIZE;
    public static final VariationType SIZE;

    static {
        VariationType variationType = new VariationType("COLOR", 0);
        COLOR = variationType;
        VariationType variationType2 = new VariationType("MATERIAL", 1);
        MATERIAL = variationType2;
        VariationType variationType3 = new VariationType("MODEL_SIZE", 2);
        MODEL_SIZE = variationType3;
        VariationType variationType4 = new VariationType("CARAT", 3);
        CARAT = variationType4;
        VariationType variationType5 = new VariationType("SIZE", 4);
        SIZE = variationType5;
        VariationType variationType6 = new VariationType("LANGUAGE", 5);
        LANGUAGE = variationType6;
        VariationType variationType7 = new VariationType("FINISH", 6);
        FINISH = variationType7;
        VariationType[] variationTypeArr = {variationType, variationType2, variationType3, variationType4, variationType5, variationType6, variationType7};
        $VALUES = variationTypeArr;
        $ENTRIES = EnumEntriesKt.a(variationTypeArr);
    }

    public static EnumEntries a() {
        return $ENTRIES;
    }

    public static VariationType valueOf(String str) {
        return (VariationType) Enum.valueOf(VariationType.class, str);
    }

    public static VariationType[] values() {
        return (VariationType[]) $VALUES.clone();
    }
}
