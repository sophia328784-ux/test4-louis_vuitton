package com.google.common.base;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class Splitter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CharMatcher f33487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f33488b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Strategy f33489c;
    public final int d;

    public static abstract class SplittingIterator extends AbstractIterator<String> {
        public final CharSequence d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final CharMatcher f33494e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final boolean f33495f;
        public int g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f33496h;

        public SplittingIterator(Splitter splitter, CharSequence charSequence) {
            this.f33458b = AbstractIterator.State.NOT_READY;
            this.g = 0;
            this.f33494e = splitter.f33487a;
            this.f33495f = splitter.f33488b;
            this.f33496h = splitter.d;
            this.d = charSequence;
        }

        public abstract int a(int i2);

        public abstract int b(int i2);
    }

    public interface Strategy {
        Iterator a(Splitter splitter, CharSequence charSequence);
    }

    public Splitter(Strategy strategy, boolean z, CharMatcher charMatcher, int i2) {
        this.f33489c = strategy;
        this.f33488b = z;
        this.f33487a = charMatcher;
        this.d = i2;
    }

    public static Splitter a(char c2) {
        return new Splitter(new a(new CharMatcher.Is(c2), 1));
    }

    public static Splitter b(String str) {
        Preconditions.h(!str.isEmpty(), "The separator may not be the empty string.");
        return str.length() == 1 ? a(str.charAt(0)) : new Splitter(new a(str, 0));
    }

    public final Iterable c(final String str) {
        return new Iterable<String>(this) { // from class: com.google.common.base.Splitter.5

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Splitter f33493c;

            {
                this.f33493c = this;
            }

            @Override // java.lang.Iterable
            public final Iterator<String> iterator() {
                String str2 = str;
                Splitter splitter = this.f33493c;
                return splitter.f33489c.a(splitter, str2);
            }

            public final String toString() {
                Joiner joiner = new Joiner(", ");
                StringBuilder sb = new StringBuilder();
                sb.append('[');
                joiner.a(sb, iterator());
                sb.append(']');
                return sb.toString();
            }
        };
    }

    public final List d(CharSequence charSequence) {
        charSequence.getClass();
        Iterator itA = this.f33489c.a(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (itA.hasNext()) {
            arrayList.add((String) itA.next());
        }
        return Collections.unmodifiableList(arrayList);
    }

    public Splitter(Strategy strategy) {
        this(strategy, false, CharMatcher.None.f33474c, Integer.MAX_VALUE);
    }
}
