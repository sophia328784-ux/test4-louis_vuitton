package com.perfectcorp.common.debug;

/* JADX INFO: loaded from: classes3.dex */
public class NotAnError extends Throwable {
    public NotAnError() {
        this("Don't panic. This is a call stack for reference.");
    }

    public NotAnError(String str) {
        super(str);
    }
}
