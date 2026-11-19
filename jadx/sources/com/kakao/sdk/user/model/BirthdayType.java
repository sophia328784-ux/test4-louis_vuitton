package com.kakao.sdk.user.model;

import com.google.gson.annotations.SerializedName;
import com.kakao.sdk.common.json.UnknownValue;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/kakao/sdk/user/model/BirthdayType;", "", "SOLAR", "LUNAR", "UNKNOWN", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class BirthdayType {
    private static final /* synthetic */ BirthdayType[] $VALUES;

    @SerializedName("LUNAR")
    public static final BirthdayType LUNAR;

    @SerializedName("SOLAR")
    public static final BirthdayType SOLAR;

    @UnknownValue
    public static final BirthdayType UNKNOWN;

    static {
        BirthdayType birthdayType = new BirthdayType("SOLAR", 0);
        SOLAR = birthdayType;
        BirthdayType birthdayType2 = new BirthdayType("LUNAR", 1);
        LUNAR = birthdayType2;
        BirthdayType birthdayType3 = new BirthdayType("UNKNOWN", 2);
        UNKNOWN = birthdayType3;
        $VALUES = new BirthdayType[]{birthdayType, birthdayType2, birthdayType3};
    }

    public static BirthdayType valueOf(String str) {
        return (BirthdayType) Enum.valueOf(BirthdayType.class, str);
    }

    public static BirthdayType[] values() {
        return (BirthdayType[]) $VALUES.clone();
    }
}
