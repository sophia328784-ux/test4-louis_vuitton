package com.dynatrace.android.agent.comm;

/* JADX INFO: loaded from: classes2.dex */
public class InvalidResponseException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HttpResponse f27326b;

    public InvalidResponseException(String str, HttpResponse httpResponse) {
        super(str);
        this.f27326b = httpResponse;
    }

    public InvalidResponseException(String str, Throwable th, HttpResponse httpResponse) {
        super(str, th);
        this.f27326b = httpResponse;
    }
}
