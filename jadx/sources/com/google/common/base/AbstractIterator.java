package com.google.common.base;

import defpackage.b21;
import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
abstract class AbstractIterator<T> implements Iterator<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public State f33458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f33459c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class State {
        private static final /* synthetic */ State[] $VALUES;
        public static final State DONE;
        public static final State FAILED;
        public static final State NOT_READY;
        public static final State READY;

        static {
            State state = new State("READY", 0);
            READY = state;
            State state2 = new State("NOT_READY", 1);
            NOT_READY = state2;
            State state3 = new State("DONE", 2);
            DONE = state3;
            State state4 = new State("FAILED", 3);
            FAILED = state4;
            $VALUES = new State[]{state, state2, state3, state4};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) $VALUES.clone();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        String string;
        CharMatcher charMatcher;
        State state = this.f33458b;
        State state2 = State.FAILED;
        Preconditions.q(state != state2);
        int iOrdinal = this.f33458b.ordinal();
        if (iOrdinal == 0) {
            return true;
        }
        if (iOrdinal != 2) {
            this.f33458b = state2;
            Splitter.SplittingIterator splittingIterator = (Splitter.SplittingIterator) this;
            int i2 = splittingIterator.g;
            while (true) {
                int i3 = splittingIterator.g;
                if (i3 == -1) {
                    splittingIterator.f33458b = State.DONE;
                    string = null;
                    break;
                }
                int iB = splittingIterator.b(i3);
                CharSequence charSequence = splittingIterator.d;
                if (iB == -1) {
                    iB = charSequence.length();
                    splittingIterator.g = -1;
                } else {
                    splittingIterator.g = splittingIterator.a(iB);
                }
                int i4 = splittingIterator.g;
                if (i4 == i2) {
                    int i5 = i4 + 1;
                    splittingIterator.g = i5;
                    if (i5 > charSequence.length()) {
                        splittingIterator.g = -1;
                    }
                } else {
                    while (true) {
                        charMatcher = splittingIterator.f33494e;
                        if (i2 >= iB || !charMatcher.j(charSequence.charAt(i2))) {
                            break;
                        }
                        i2++;
                    }
                    while (iB > i2 && charMatcher.j(charSequence.charAt(iB - 1))) {
                        iB--;
                    }
                    if (!splittingIterator.f33495f || i2 != iB) {
                        int i6 = splittingIterator.f33496h;
                        if (i6 == 1) {
                            iB = charSequence.length();
                            splittingIterator.g = -1;
                            while (iB > i2 && charMatcher.j(charSequence.charAt(iB - 1))) {
                                iB--;
                            }
                        } else {
                            splittingIterator.f33496h = i6 - 1;
                        }
                        string = charSequence.subSequence(i2, iB).toString();
                        break;
                    }
                    i2 = splittingIterator.g;
                }
            }
            this.f33459c = string;
            if (this.f33458b != State.DONE) {
                this.f33458b = State.READY;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            b21.x();
            return null;
        }
        this.f33458b = State.NOT_READY;
        String str = this.f33459c;
        this.f33459c = null;
        return str;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
