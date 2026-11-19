package com.sightcall.universal.util;

import android.text.SpannableStringBuilder;
import java.util.ArrayDeque;
import java.util.Deque;

/* JADX INFO: loaded from: classes3.dex */
public class Truss {
    private final SpannableStringBuilder builder = new SpannableStringBuilder();
    private final Deque<Span> stack = new ArrayDeque();

    public static final class Span {
        final Object span;
        final int start;

        public Span(int i2, Object obj) {
            this.start = i2;
            this.span = obj;
        }
    }

    public Truss append(int i2) {
        this.builder.append((CharSequence) String.valueOf(i2));
        return this;
    }

    public CharSequence build() {
        while (!this.stack.isEmpty()) {
            popSpan();
        }
        return this.builder;
    }

    public Truss popSpan() {
        Span spanRemoveLast = this.stack.removeLast();
        SpannableStringBuilder spannableStringBuilder = this.builder;
        spannableStringBuilder.setSpan(spanRemoveLast.span, spanRemoveLast.start, spannableStringBuilder.length(), 17);
        return this;
    }

    public Truss pushSpan(Object obj) {
        this.stack.addLast(new Span(this.builder.length(), obj));
        return this;
    }

    public Truss append(CharSequence charSequence) {
        if (charSequence == null) {
            return this;
        }
        this.builder.append(charSequence);
        return this;
    }

    public Truss append(char c2) {
        this.builder.append(c2);
        return this;
    }

    public Truss append(String str) {
        if (str == null) {
            return this;
        }
        this.builder.append((CharSequence) str);
        return this;
    }
}
