package com.vuitton.foundation.model.domain.model.place;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;", "", "REGISTER", "ADDRESS_BOOK", "ONLINE_STORE_APPOINTMENT", "TRAVEL", "FIND_IN_STORE", "domain"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AutocompleteContext {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AutocompleteContext[] $VALUES;
    public static final AutocompleteContext ADDRESS_BOOK;
    public static final AutocompleteContext FIND_IN_STORE;
    public static final AutocompleteContext ONLINE_STORE_APPOINTMENT;
    public static final AutocompleteContext REGISTER;
    public static final AutocompleteContext TRAVEL;

    static {
        AutocompleteContext autocompleteContext = new AutocompleteContext("REGISTER", 0);
        REGISTER = autocompleteContext;
        AutocompleteContext autocompleteContext2 = new AutocompleteContext("ADDRESS_BOOK", 1);
        ADDRESS_BOOK = autocompleteContext2;
        AutocompleteContext autocompleteContext3 = new AutocompleteContext("ONLINE_STORE_APPOINTMENT", 2);
        ONLINE_STORE_APPOINTMENT = autocompleteContext3;
        AutocompleteContext autocompleteContext4 = new AutocompleteContext("TRAVEL", 3);
        TRAVEL = autocompleteContext4;
        AutocompleteContext autocompleteContext5 = new AutocompleteContext("FIND_IN_STORE", 4);
        FIND_IN_STORE = autocompleteContext5;
        AutocompleteContext[] autocompleteContextArr = {autocompleteContext, autocompleteContext2, autocompleteContext3, autocompleteContext4, autocompleteContext5};
        $VALUES = autocompleteContextArr;
        $ENTRIES = EnumEntriesKt.a(autocompleteContextArr);
    }

    public static AutocompleteContext valueOf(String str) {
        return (AutocompleteContext) Enum.valueOf(AutocompleteContext.class, str);
    }

    public static AutocompleteContext[] values() {
        return (AutocompleteContext[]) $VALUES.clone();
    }
}
