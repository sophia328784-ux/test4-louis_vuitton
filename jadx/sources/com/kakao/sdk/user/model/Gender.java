package com.kakao.sdk.user.model;

import com.google.gson.annotations.SerializedName;
import com.kakao.sdk.common.json.UnknownValue;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/kakao/sdk/user/model/Gender;", "", "FEMALE", "MALE", "UNKNOWN", "user_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Gender {
    private static final /* synthetic */ Gender[] $VALUES;

    @SerializedName("female")
    public static final Gender FEMALE;

    @SerializedName("male")
    public static final Gender MALE;

    @UnknownValue
    public static final Gender UNKNOWN;

    static {
        Gender gender = new Gender("FEMALE", 0);
        FEMALE = gender;
        Gender gender2 = new Gender("MALE", 1);
        MALE = gender2;
        Gender gender3 = new Gender("UNKNOWN", 2);
        UNKNOWN = gender3;
        $VALUES = new Gender[]{gender, gender2, gender3};
    }

    public static Gender valueOf(String str) {
        return (Gender) Enum.valueOf(Gender.class, str);
    }

    public static Gender[] values() {
        return (Gender[]) $VALUES.clone();
    }
}
