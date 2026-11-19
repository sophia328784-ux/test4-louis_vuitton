package androidx.constraintlayout.core.parser;

import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class CLObject extends CLContainer implements Iterable<CLKey> {

    public static class CLObjectIterator implements Iterator<CLKey> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public CLObject f11413b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f11414c;

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f11414c < this.f11413b.f11408f.size();
        }

        @Override // java.util.Iterator
        public final CLKey next() {
            CLKey cLKey = (CLKey) this.f11413b.f11408f.get(this.f11414c);
            this.f11414c++;
            return cLKey;
        }
    }

    public CLObject(char[] cArr) {
        super(cArr);
    }

    @Override // androidx.constraintlayout.core.parser.CLContainer, androidx.constraintlayout.core.parser.CLElement
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final CLObject f() {
        return (CLObject) super.f();
    }

    @Override // androidx.constraintlayout.core.parser.CLContainer, androidx.constraintlayout.core.parser.CLElement
    /* JADX INFO: renamed from: clone */
    public final Object f() {
        return (CLObject) super.f();
    }

    @Override // java.lang.Iterable
    public final Iterator<CLKey> iterator() {
        CLObjectIterator cLObjectIterator = new CLObjectIterator();
        cLObjectIterator.f11414c = 0;
        cLObjectIterator.f11413b = this;
        return cLObjectIterator;
    }
}
