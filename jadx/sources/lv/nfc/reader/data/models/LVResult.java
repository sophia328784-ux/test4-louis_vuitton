package lv.nfc.reader.data.models;

/* JADX INFO: loaded from: classes4.dex */
public class LVResult<T> {
    private T data;
    private Exception exception;
    private boolean success;

    public LVResult(T t) {
        this.success = true;
        this.data = t;
        this.exception = null;
    }

    public T getData() {
        return this.data;
    }

    public Exception getException() {
        return this.exception;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public LVResult(Exception exc) {
        this.success = false;
        this.data = null;
        this.exception = exc;
    }
}
