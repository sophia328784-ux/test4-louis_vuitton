package com.vuitton.foundation.model.domain.model.authentication.oauth;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/authentication/oauth/InvalidNameScope;", "", "FIRST_NAME", "LAST_NAME", "FIRST_NAME2", "LAST_NAME2", "UNDEFINED", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class InvalidNameScope {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InvalidNameScope[] $VALUES;
    public static final InvalidNameScope FIRST_NAME;
    public static final InvalidNameScope FIRST_NAME2;
    public static final InvalidNameScope LAST_NAME;
    public static final InvalidNameScope LAST_NAME2;
    public static final InvalidNameScope UNDEFINED;

    static {
        InvalidNameScope invalidNameScope = new InvalidNameScope("FIRST_NAME", 0);
        FIRST_NAME = invalidNameScope;
        InvalidNameScope invalidNameScope2 = new InvalidNameScope("LAST_NAME", 1);
        LAST_NAME = invalidNameScope2;
        InvalidNameScope invalidNameScope3 = new InvalidNameScope("FIRST_NAME2", 2);
        FIRST_NAME2 = invalidNameScope3;
        InvalidNameScope invalidNameScope4 = new InvalidNameScope("LAST_NAME2", 3);
        LAST_NAME2 = invalidNameScope4;
        InvalidNameScope invalidNameScope5 = new InvalidNameScope("UNDEFINED", 4);
        UNDEFINED = invalidNameScope5;
        InvalidNameScope[] invalidNameScopeArr = {invalidNameScope, invalidNameScope2, invalidNameScope3, invalidNameScope4, invalidNameScope5};
        $VALUES = invalidNameScopeArr;
        $ENTRIES = EnumEntriesKt.a(invalidNameScopeArr);
    }

    public static InvalidNameScope valueOf(String str) {
        return (InvalidNameScope) Enum.valueOf(InvalidNameScope.class, str);
    }

    public static InvalidNameScope[] values() {
        return (InvalidNameScope[]) $VALUES.clone();
    }
}
