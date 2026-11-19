package com.vuitton.android.presentation.screen.cart.models;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/vuitton/android/presentation/screen/cart/models/CartPreviousScreen;", "", "MAIN", "PDP", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class CartPreviousScreen {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ CartPreviousScreen[] $VALUES;
    public static final CartPreviousScreen MAIN;
    public static final CartPreviousScreen PDP;

    static {
        CartPreviousScreen cartPreviousScreen = new CartPreviousScreen("MAIN", 0);
        MAIN = cartPreviousScreen;
        CartPreviousScreen cartPreviousScreen2 = new CartPreviousScreen("PDP", 1);
        PDP = cartPreviousScreen2;
        CartPreviousScreen[] cartPreviousScreenArr = {cartPreviousScreen, cartPreviousScreen2};
        $VALUES = cartPreviousScreenArr;
        $ENTRIES = EnumEntriesKt.a(cartPreviousScreenArr);
    }

    public static EnumEntries a() {
        return $ENTRIES;
    }

    public static CartPreviousScreen valueOf(String str) {
        return (CartPreviousScreen) Enum.valueOf(CartPreviousScreen.class, str);
    }

    public static CartPreviousScreen[] values() {
        return (CartPreviousScreen[]) $VALUES.clone();
    }
}
