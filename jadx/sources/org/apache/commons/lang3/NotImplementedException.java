package org.apache.commons.lang3;

/* JADX INFO: loaded from: classes2.dex */
public class NotImplementedException extends UnsupportedOperationException {
    private static final long serialVersionUID = 20131021;

    public NotImplementedException(String str) {
        this(str, (String) null);
    }

    public NotImplementedException() {
    }

    public NotImplementedException(String str, String str2) {
        super(str);
    }

    public NotImplementedException(String str, Throwable th) {
        this(str, th, null);
    }

    public NotImplementedException(String str, Throwable th, String str2) {
        super(str, th);
    }

    public NotImplementedException(Throwable th) {
        this(th, (String) null);
    }

    public NotImplementedException(Throwable th, String str) {
        super(th);
    }
}
