package net.rtccloud.sdk.util;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public enum Input {
    APP_ID("[a-zA-Z0-9]{0,128}"),
    UID("[^&\"#%?, ]{3,128}"),
    DISPLAY_NAME("[^\"'<>:]{0,128}", true),
    TOKEN("[a-fA-F0-9]{0,128}"),
    PIN("[0-9]{6}"),
    SUFFIX("[a-zA-Z0-9]{1,128}"),
    MPID("[a-zA-Z0-9]{30}"),
    HASH("[a-fA-F0-9]{40}", true);

    private final boolean nullable;
    public final Pattern pattern;

    Input(String str) {
        this.pattern = Pattern.compile(str);
        this.nullable = false;
    }

    public boolean isValid(String str) {
        return str == null ? this.nullable : this.pattern.matcher(str).matches();
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.pattern.toString();
    }

    Input(String str, boolean z) {
        this.pattern = Pattern.compile(str);
        this.nullable = z;
    }
}
