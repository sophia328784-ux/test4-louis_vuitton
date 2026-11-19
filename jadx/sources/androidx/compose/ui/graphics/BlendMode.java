package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/ui/graphics/BlendMode;", "", "Companion", "value", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
@JvmInline
public abstract class BlendMode {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f8847a = new Companion(null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f8848b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f8849c = 2;
    public static final int d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f8850e = 4;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f8851f = 5;
    public static final int g = 6;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f8852h = 7;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f8853i = 8;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f8854j = 9;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f8855k = 10;
    public static final int l = 11;
    public static final int m = 12;
    public static final int n = 13;
    public static final int o = 14;
    public static final int p = 15;
    public static final int q = 16;
    public static final int r = 17;
    public static final int s = 18;
    public static final int t = 19;
    public static final int u = 20;
    public static final int v = 21;
    public static final int w = 22;
    public static final int x = 23;
    public static final int y = 24;
    public static final int z = 25;
    public static final int A = 26;
    public static final int B = 27;
    public static final int C = 28;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/graphics/BlendMode$Companion;", "", "ui-graphics"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    public static String a(int i2) {
        if (i2 == 0) {
            return "Clear";
        }
        if (i2 == f8848b) {
            return "Src";
        }
        if (i2 == f8849c) {
            return "Dst";
        }
        if (i2 == d) {
            return "SrcOver";
        }
        if (i2 == f8850e) {
            return "DstOver";
        }
        if (i2 == f8851f) {
            return "SrcIn";
        }
        if (i2 == g) {
            return "DstIn";
        }
        if (i2 == f8852h) {
            return "SrcOut";
        }
        if (i2 == f8853i) {
            return "DstOut";
        }
        if (i2 == f8854j) {
            return "SrcAtop";
        }
        if (i2 == f8855k) {
            return "DstAtop";
        }
        if (i2 == l) {
            return "Xor";
        }
        if (i2 == m) {
            return "Plus";
        }
        if (i2 == n) {
            return "Modulate";
        }
        if (i2 == o) {
            return "Screen";
        }
        if (i2 == p) {
            return "Overlay";
        }
        if (i2 == q) {
            return "Darken";
        }
        if (i2 == r) {
            return "Lighten";
        }
        if (i2 == s) {
            return "ColorDodge";
        }
        if (i2 == t) {
            return "ColorBurn";
        }
        if (i2 == u) {
            return "HardLight";
        }
        if (i2 == v) {
            return "Softlight";
        }
        if (i2 == w) {
            return "Difference";
        }
        if (i2 == x) {
            return "Exclusion";
        }
        if (i2 == y) {
            return "Multiply";
        }
        if (i2 == z) {
            return "Hue";
        }
        if (i2 == A) {
            return "Saturation";
        }
        if (i2 == B) {
            return "Color";
        }
        return i2 == C ? "Luminosity" : "Unknown";
    }
}
