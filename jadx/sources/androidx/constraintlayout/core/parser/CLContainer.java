package androidx.constraintlayout.core.parser;

import defpackage.fc;
import defpackage.pq0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class CLContainer extends CLElement {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList f11408f;

    public CLContainer(char[] cArr) {
        super(cArr);
        this.f11408f = new ArrayList();
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    /* JADX INFO: renamed from: A, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public CLContainer f() {
        CLContainer cLContainer = (CLContainer) super.f();
        ArrayList arrayList = new ArrayList(this.f11408f.size());
        Iterator it = this.f11408f.iterator();
        while (it.hasNext()) {
            CLElement cLElementF = ((CLElement) it.next()).f();
            cLElementF.f11411e = cLContainer;
            arrayList.add(cLElementF);
        }
        cLContainer.f11408f = arrayList;
        return cLContainer;
    }

    public final CLElement D(int i2) throws CLParsingException {
        if (i2 < 0 || i2 >= this.f11408f.size()) {
            throw new CLParsingException(pq0.k(i2, "no element at index "), this);
        }
        return (CLElement) this.f11408f.get(i2);
    }

    public final CLElement E(String str) throws CLParsingException {
        Iterator it = this.f11408f.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) ((CLElement) it.next());
            if (cLKey.h().equals(str)) {
                if (cLKey.f11408f.size() > 0) {
                    return (CLElement) cLKey.f11408f.get(0);
                }
                return null;
            }
        }
        throw new CLParsingException(fc.h("no element for key <", str, ">"), this);
    }

    public final float F(int i2) throws CLParsingException {
        CLElement cLElementD = D(i2);
        if (cLElementD != null) {
            return cLElementD.i();
        }
        throw new CLParsingException(pq0.k(i2, "no float at index "), this);
    }

    public final float G(String str) throws CLParsingException {
        CLElement cLElementE = E(str);
        if (cLElementE != null) {
            return cLElementE.i();
        }
        StringBuilder sbR = pq0.r("no float found for key <", str, ">, found [");
        sbR.append(cLElementE.v());
        sbR.append("] : ");
        sbR.append(cLElementE);
        throw new CLParsingException(sbR.toString(), this);
    }

    public final int J(int i2) throws CLParsingException {
        CLElement cLElementD = D(i2);
        if (cLElementD != null) {
            return cLElementD.u();
        }
        throw new CLParsingException(pq0.k(i2, "no int at index "), this);
    }

    public final CLElement K(int i2) {
        if (i2 < 0 || i2 >= this.f11408f.size()) {
            return null;
        }
        return (CLElement) this.f11408f.get(i2);
    }

    public final CLElement L(String str) {
        Iterator it = this.f11408f.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) ((CLElement) it.next());
            if (cLKey.h().equals(str)) {
                if (cLKey.f11408f.size() <= 0) {
                    break;
                }
                return (CLElement) cLKey.f11408f.get(0);
            }
        }
        return null;
    }

    public final String M(int i2) throws CLParsingException {
        CLElement cLElementD = D(i2);
        if (cLElementD instanceof CLString) {
            return cLElementD.h();
        }
        throw new CLParsingException(pq0.k(i2, "no string at index "), this);
    }

    public final String N(String str) throws CLParsingException {
        CLElement cLElementE = E(str);
        if (cLElementE instanceof CLString) {
            return cLElementE.h();
        }
        StringBuilder sbS = fc.s("no string found for key <", str, ">, found [", cLElementE != null ? cLElementE.v() : null, "] : ");
        sbS.append(cLElementE);
        throw new CLParsingException(sbS.toString(), this);
    }

    public final String O(String str) {
        CLElement cLElementL = L(str);
        if (cLElementL instanceof CLString) {
            return cLElementL.h();
        }
        return null;
    }

    public final boolean P(String str) {
        for (CLElement cLElement : this.f11408f) {
            if ((cLElement instanceof CLKey) && ((CLKey) cLElement).h().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public final ArrayList Q() {
        ArrayList arrayList = new ArrayList();
        for (CLElement cLElement : this.f11408f) {
            if (cLElement instanceof CLKey) {
                arrayList.add(((CLKey) cLElement).h());
            }
        }
        return arrayList;
    }

    public final void R(String str, CLElement cLElement) {
        Iterator it = this.f11408f.iterator();
        while (it.hasNext()) {
            CLKey cLKey = (CLKey) ((CLElement) it.next());
            if (cLKey.h().equals(str)) {
                int size = cLKey.f11408f.size();
                ArrayList arrayList = cLKey.f11408f;
                if (size > 0) {
                    arrayList.set(0, cLElement);
                    return;
                } else {
                    arrayList.add(cLElement);
                    return;
                }
            }
        }
        CLKey cLKey2 = new CLKey(str.toCharArray());
        cLKey2.f11410c = 0L;
        cLKey2.x(str.length() - 1);
        int size2 = cLKey2.f11408f.size();
        ArrayList arrayList2 = cLKey2.f11408f;
        if (size2 > 0) {
            arrayList2.set(0, cLElement);
        } else {
            arrayList2.add(cLElement);
        }
        this.f11408f.add(cLKey2);
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CLContainer) {
            return this.f11408f.equals(((CLContainer) obj).f11408f);
        }
        return false;
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public int hashCode() {
        return Objects.hash(this.f11408f, Integer.valueOf(super.hashCode()));
    }

    @Override // androidx.constraintlayout.core.parser.CLElement
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        for (CLElement cLElement : this.f11408f) {
            if (sb.length() > 0) {
                sb.append("; ");
            }
            sb.append(cLElement);
        }
        return super.toString() + " = <" + ((Object) sb) + " >";
    }

    public final void z(CLElement cLElement) {
        this.f11408f.add(cLElement);
    }
}
