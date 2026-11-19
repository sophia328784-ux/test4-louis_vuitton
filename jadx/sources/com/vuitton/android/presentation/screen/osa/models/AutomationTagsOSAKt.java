package com.vuitton.android.presentation.screen.osa.models;

import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AutomationTagsOSAKt {
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static final Pair a(String str) {
        str.getClass();
        String lowerCase = str.toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        switch (lowerCase.hashCode()) {
            case 21573216:
                if (lowerCase.equals("product_discovery")) {
                    return new Pair("osa_reasonProductDiscovery_radio", "osa_reasonProductDiscovery_text");
                }
                return null;
            case 661984804:
                if (lowerCase.equals("personalization")) {
                    return new Pair("osa_reasonPersonalization_radio", "osa_reasonPersonalization_text");
                }
                return null;
            case 1094177414:
                if (lowerCase.equals("repairs")) {
                    return new Pair("osa_reasonRepairs_radio", "osa_reasonRepairs_text");
                }
                return null;
            case 1897371316:
                if (lowerCase.equals("exchanges_returns")) {
                    return new Pair("osa_reasonExchangesReturns_radio", "osa_reasonExchangesReturns_text");
                }
                return null;
            default:
                return null;
        }
    }
}
