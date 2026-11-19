package com.linecorp.linesdk.internal.pkce;

/* JADX INFO: loaded from: classes2.dex */
public enum CodeChallengeMethod {
    PLAIN("plain"),
    S256("S256");

    private final String value;

    CodeChallengeMethod(String str) {
        this.value = str;
    }

    public final String a() {
        return this.value;
    }
}
