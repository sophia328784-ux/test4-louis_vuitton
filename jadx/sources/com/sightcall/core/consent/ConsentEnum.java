package com.sightcall.core.consent;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/sightcall/core/consent/ConsentEnum;", "", "<init>", "(Ljava/lang/String;I)V", "SHOW_CONSENT_VIEW", "SHOW_DECLINE_VIEW", "core_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public enum ConsentEnum {
    SHOW_CONSENT_VIEW,
    SHOW_DECLINE_VIEW;

    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.a(values());

    public static EnumEntries<ConsentEnum> getEntries() {
        return $ENTRIES;
    }
}
