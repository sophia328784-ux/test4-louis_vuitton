package androidx.media3.extractor.text.ttml;

import com.google.common.collect.ImmutableSet;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
final class TextEmphasis {
    public static final Pattern d = Pattern.compile("\\s+");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final ImmutableSet f16825e = ImmutableSet.r(2, "auto", "none");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final ImmutableSet f16826f = ImmutableSet.r(3, "dot", "sesame", "circle");
    public static final ImmutableSet g = ImmutableSet.r(2, "filled", "open");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final ImmutableSet f16827h = ImmutableSet.r(3, "after", "before", "outside");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16828a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f16829b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f16830c;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Position {
    }

    public TextEmphasis(int i2, int i3, int i4) {
        this.f16828a = i2;
        this.f16829b = i3;
        this.f16830c = i4;
    }
}
