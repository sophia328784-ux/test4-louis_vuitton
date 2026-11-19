package com.google.android.exoplayer2.text.span;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class TextEmphasisSpan implements LanguageFeatureSpan {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f28356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f28357b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f28358c;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MarkFill {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MarkShape {
    }

    public TextEmphasisSpan(int i2, int i3, int i4) {
        this.f28356a = i2;
        this.f28357b = i3;
        this.f28358c = i4;
    }
}
