package lv.nfc.reader.data.exceptions;

/* JADX INFO: loaded from: classes4.dex */
public class LVNetworkException extends Exception {
    private int code;
    private String message;
    private String step;

    public LVNetworkException(String str, int i2, String str2) {
        super(str2);
        this.step = str;
        this.code = i2;
        this.message = str2;
    }

    public int getCode() {
        return this.code;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.message;
    }

    public String getStep() {
        return this.step;
    }
}
