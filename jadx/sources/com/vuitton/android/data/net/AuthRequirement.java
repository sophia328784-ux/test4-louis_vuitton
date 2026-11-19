package com.vuitton.android.data.net;

import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/vuitton/android/data/net/AuthRequirement;", "", "FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE", "ADD_SFID_HEADER_FOR_PERMANENT_USER", "TRIGGER_REFRESH_TOKEN", "ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER", "NONE", DbParams.KEY_DATA}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AuthRequirement {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AuthRequirement[] $VALUES;
    public static final AuthRequirement ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER;
    public static final AuthRequirement ADD_SFID_HEADER_FOR_PERMANENT_USER;
    public static final AuthRequirement FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE;
    public static final AuthRequirement NONE;
    public static final AuthRequirement TRIGGER_REFRESH_TOKEN;

    static {
        AuthRequirement authRequirement = new AuthRequirement("FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE", 0);
        FORCE_ADD_SFID_AND_SLAS_HEADERS_FOR_TWIST_LOCALE = authRequirement;
        AuthRequirement authRequirement2 = new AuthRequirement("ADD_SFID_HEADER_FOR_PERMANENT_USER", 1);
        ADD_SFID_HEADER_FOR_PERMANENT_USER = authRequirement2;
        AuthRequirement authRequirement3 = new AuthRequirement("TRIGGER_REFRESH_TOKEN", 2);
        TRIGGER_REFRESH_TOKEN = authRequirement3;
        AuthRequirement authRequirement4 = new AuthRequirement("ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER", 3);
        ADD_SFID_AND_SLAS_HEADERS_ONLY_FOR_TWIST_LOGGED_IN_USER = authRequirement4;
        AuthRequirement authRequirement5 = new AuthRequirement("NONE", 4);
        NONE = authRequirement5;
        AuthRequirement[] authRequirementArr = {authRequirement, authRequirement2, authRequirement3, authRequirement4, authRequirement5};
        $VALUES = authRequirementArr;
        $ENTRIES = EnumEntriesKt.a(authRequirementArr);
    }

    public static AuthRequirement valueOf(String str) {
        return (AuthRequirement) Enum.valueOf(AuthRequirement.class, str);
    }

    public static AuthRequirement[] values() {
        return (AuthRequirement[]) $VALUES.clone();
    }
}
