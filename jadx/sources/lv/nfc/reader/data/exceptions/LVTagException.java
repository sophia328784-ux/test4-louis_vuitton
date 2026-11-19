package lv.nfc.reader.data.exceptions;

/* JADX INFO: loaded from: classes4.dex */
public class LVTagException extends Exception {
    private LVReadTagError error;
    private String message;
    private Throwable throwable;

    public LVTagException(LVReadTagError lVReadTagError, String str, Throwable th) {
        super(str, th);
        this.error = lVReadTagError;
        this.message = str;
        this.throwable = th;
    }

    public LVReadTagError getLVReadTagError() {
        return this.error;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    public Throwable getThrowable() {
        return this.throwable;
    }
}
