package com.kakao.sdk.auth.model;

import com.google.gson.annotations.SerializedName;
import kotlin.Metadata;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001j\u0002\b\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/kakao/sdk/auth/model/Prompt;", "", "LOGIN", "CREATE", "SELECT_ACCOUNT", "CERT", "UNIFY_DAUM", "auth_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Prompt {
    private static final /* synthetic */ Prompt[] $VALUES;

    @SerializedName("cert")
    public static final Prompt CERT;

    @SerializedName("create")
    public static final Prompt CREATE;

    @SerializedName("login")
    public static final Prompt LOGIN;

    @SerializedName("select_account")
    public static final Prompt SELECT_ACCOUNT;

    @SerializedName("unify_daum")
    public static final Prompt UNIFY_DAUM;

    static {
        Prompt prompt = new Prompt("LOGIN", 0);
        LOGIN = prompt;
        Prompt prompt2 = new Prompt("CREATE", 1);
        CREATE = prompt2;
        Prompt prompt3 = new Prompt("SELECT_ACCOUNT", 2);
        SELECT_ACCOUNT = prompt3;
        Prompt prompt4 = new Prompt("CERT", 3);
        CERT = prompt4;
        Prompt prompt5 = new Prompt("UNIFY_DAUM", 4);
        UNIFY_DAUM = prompt5;
        $VALUES = new Prompt[]{prompt, prompt2, prompt3, prompt4, prompt5};
    }

    public static Prompt valueOf(String str) {
        return (Prompt) Enum.valueOf(Prompt.class, str);
    }

    public static Prompt[] values() {
        return (Prompt[]) $VALUES.clone();
    }
}
