package kotlin.text;

import defpackage.b21;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0010\u000e\n\u0002\u0010\r\n\u0002\b\u0005\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0007B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lkotlin/text/LinesIterator;", "", "", "", "string", "<init>", "(Ljava/lang/CharSequence;)V", "State", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
final class LinesIterator implements Iterator<String>, KMappedMarker {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f74539b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f74540c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f74541e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f74542f;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0082\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004¨\u0006\u0007"}, d2 = {"Lkotlin/text/LinesIterator$State;", "", "", "UNKNOWN", "I", "HAS_NEXT", "EXHAUSTED", "kotlin-stdlib"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class State {
        public State(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new State(null);
    }

    public LinesIterator(CharSequence charSequence) {
        charSequence.getClass();
        this.f74539b = charSequence;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i2;
        int i3;
        int i4 = this.f74540c;
        if (i4 != 0) {
            return i4 == 1;
        }
        if (this.f74542f < 0) {
            this.f74540c = 2;
            return false;
        }
        CharSequence charSequence = this.f74539b;
        int length = charSequence.length();
        int length2 = charSequence.length();
        for (int i5 = this.d; i5 < length2; i5++) {
            char cCharAt = charSequence.charAt(i5);
            if (cCharAt == '\n' || cCharAt == '\r') {
                i2 = (cCharAt == '\r' && (i3 = i5 + 1) < charSequence.length() && charSequence.charAt(i3) == '\n') ? 2 : 1;
                length = i5;
                this.f74540c = 1;
                this.f74542f = i2;
                this.f74541e = length;
                return true;
            }
        }
        i2 = -1;
        this.f74540c = 1;
        this.f74542f = i2;
        this.f74541e = length;
        return true;
    }

    @Override // java.util.Iterator
    public final String next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        this.f74540c = 0;
        int i2 = this.f74541e;
        int i3 = this.d;
        this.d = this.f74542f + i2;
        return this.f74539b.subSequence(i3, i2).toString();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
