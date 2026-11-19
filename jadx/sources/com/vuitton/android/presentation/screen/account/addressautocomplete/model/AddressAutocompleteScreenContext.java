package com.vuitton.android.presentation.screen.account.addressautocomplete.model;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressautocomplete/model/AddressAutocompleteScreenContext;", "", "PROFILE_ADDRESS", "NATIVE_REGISTER_ADDRESS", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AddressAutocompleteScreenContext {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AddressAutocompleteScreenContext[] $VALUES;
    public static final AddressAutocompleteScreenContext NATIVE_REGISTER_ADDRESS;
    public static final AddressAutocompleteScreenContext PROFILE_ADDRESS;

    static {
        AddressAutocompleteScreenContext addressAutocompleteScreenContext = new AddressAutocompleteScreenContext("PROFILE_ADDRESS", 0);
        PROFILE_ADDRESS = addressAutocompleteScreenContext;
        AddressAutocompleteScreenContext addressAutocompleteScreenContext2 = new AddressAutocompleteScreenContext("NATIVE_REGISTER_ADDRESS", 1);
        NATIVE_REGISTER_ADDRESS = addressAutocompleteScreenContext2;
        AddressAutocompleteScreenContext[] addressAutocompleteScreenContextArr = {addressAutocompleteScreenContext, addressAutocompleteScreenContext2};
        $VALUES = addressAutocompleteScreenContextArr;
        $ENTRIES = EnumEntriesKt.a(addressAutocompleteScreenContextArr);
    }

    public static AddressAutocompleteScreenContext valueOf(String str) {
        return (AddressAutocompleteScreenContext) Enum.valueOf(AddressAutocompleteScreenContext.class, str);
    }

    public static AddressAutocompleteScreenContext[] values() {
        return (AddressAutocompleteScreenContext[]) $VALUES.clone();
    }
}
