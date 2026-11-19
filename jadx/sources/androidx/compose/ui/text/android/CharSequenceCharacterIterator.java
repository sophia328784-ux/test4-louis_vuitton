package androidx.compose.ui.text.android;

import defpackage.md;
import java.text.CharacterIterator;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;", "Ljava/lang/Object;", "Ljava/text/CharacterIterator;", "", "charSequence", "", "start", "end", "<init>", "(Ljava/lang/CharSequence;II)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CharSequenceCharacterIterator implements CharacterIterator {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f10575b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f10576c;
    public final int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10577e;

    public CharSequenceCharacterIterator(CharSequence charSequence, int i2, int i3) {
        this.f10575b = charSequence;
        this.f10576c = i2;
        this.d = i3;
        this.f10577e = i2;
    }

    @Override // java.text.CharacterIterator
    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }

    @Override // java.text.CharacterIterator
    public final char current() {
        int i2 = this.f10577e;
        if (i2 == this.d) {
            return (char) 65535;
        }
        return this.f10575b.charAt(i2);
    }

    @Override // java.text.CharacterIterator
    public final char first() {
        this.f10577e = this.f10576c;
        return current();
    }

    @Override // java.text.CharacterIterator
    public final int getBeginIndex() {
        return this.f10576c;
    }

    @Override // java.text.CharacterIterator
    public final int getEndIndex() {
        return this.d;
    }

    @Override // java.text.CharacterIterator
    public final int getIndex() {
        return this.f10577e;
    }

    @Override // java.text.CharacterIterator
    public final char last() {
        int i2 = this.f10576c;
        int i3 = this.d;
        if (i2 == i3) {
            this.f10577e = i3;
            return (char) 65535;
        }
        int i4 = i3 - 1;
        this.f10577e = i4;
        return this.f10575b.charAt(i4);
    }

    @Override // java.text.CharacterIterator
    public final char next() {
        int i2 = this.f10577e + 1;
        this.f10577e = i2;
        int i3 = this.d;
        if (i2 < i3) {
            return this.f10575b.charAt(i2);
        }
        this.f10577e = i3;
        return (char) 65535;
    }

    @Override // java.text.CharacterIterator
    public final char previous() {
        int i2 = this.f10577e;
        if (i2 <= this.f10576c) {
            return (char) 65535;
        }
        int i3 = i2 - 1;
        this.f10577e = i3;
        return this.f10575b.charAt(i3);
    }

    @Override // java.text.CharacterIterator
    public final char setIndex(int i2) {
        if (i2 > this.d || this.f10576c > i2) {
            md.n("invalid position");
            return (char) 0;
        }
        this.f10577e = i2;
        return current();
    }
}
