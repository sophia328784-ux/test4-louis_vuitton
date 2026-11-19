package androidx.constraintlayout.core.parser;

/* JADX INFO: loaded from: classes.dex */
public class CLString extends CLElement {
    public CLString(char[] cArr) {
        super(cArr);
    }

    public static CLString z(String str) {
        CLString cLString = new CLString(str.toCharArray());
        cLString.f11410c = 0L;
        cLString.x(str.length() - 1);
        return cLString;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof CLString) && h().equals(((CLString) obj).h())) {
            return true;
        }
        return super.equals(obj);
    }
}
