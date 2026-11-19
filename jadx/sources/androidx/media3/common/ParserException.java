package androidx.media3.common;

import defpackage.a;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class ParserException extends IOException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13906b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f13907c;

    public ParserException(String str, Throwable th, boolean z, int i2) {
        super(str, th);
        this.f13906b = z;
        this.f13907c = i2;
    }

    public static ParserException a(RuntimeException runtimeException, String str) {
        return new ParserException(str, runtimeException, true, 1);
    }

    public static ParserException b(String str) {
        return new ParserException(str, null, true, 4);
    }

    public static ParserException c(String str) {
        return new ParserException(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        StringBuilder sb = new StringBuilder();
        sb.append(message != null ? message.concat(" ") : "");
        sb.append("{contentIsMalformed=");
        sb.append(this.f13906b);
        sb.append(", dataType=");
        return a.i(this.f13907c, "}", sb);
    }
}
