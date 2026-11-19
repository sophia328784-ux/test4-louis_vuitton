package com.google.android.gms.fido.u2f.api.messagebased;

/* JADX INFO: loaded from: classes2.dex */
public class RequestType$UnsupportedRequestTypeException extends Exception {
    public RequestType$UnsupportedRequestTypeException(String str) {
        super("Unsupported request type ".concat(String.valueOf(str)));
    }
}
