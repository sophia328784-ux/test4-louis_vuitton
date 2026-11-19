package lv.nfc.reader.data.exceptions;

/* JADX INFO: loaded from: classes4.dex */
public enum LVReadTagError {
    none("None"),
    lostTag("lostTag"),
    technicalError("technicalError");

    private final String name;

    LVReadTagError(String str) {
        this.name = str;
    }

    public boolean equalsName(String str) {
        return this.name.equals(str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.name;
    }
}
