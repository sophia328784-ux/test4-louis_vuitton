package androidx.constraintlayout.core.parser;

/* JADX INFO: loaded from: classes.dex */
public class CLParsingException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f11415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f11416c;

    public CLParsingException(String str, CLElement cLElement) {
        super(str);
        this.f11415b = str;
        if (cLElement != null) {
            this.f11416c = cLElement.v();
        } else {
            this.f11416c = "unknown";
        }
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder("CLParsingException (");
        sb.append(hashCode());
        sb.append(") : ");
        sb.append(this.f11415b + " (" + this.f11416c + " at line 0)");
        return sb.toString();
    }
}
