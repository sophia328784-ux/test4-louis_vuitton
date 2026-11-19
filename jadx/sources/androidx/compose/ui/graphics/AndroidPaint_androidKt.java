package androidx.compose.ui.graphics;

import kotlin.Metadata;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005*8\b\u0007\u0010\t\"\u00020\u00002\u00020\u0000B*\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003\u0012\u001c\b\u0004\u0012\u0018\b\u000bB\u0014\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0006\b\b\u0012\u0002\b\f¨\u0006\n"}, d2 = {"Landroid/graphics/Paint;", "Lkotlin/Deprecated;", "message", "Use android.graphics.Paint directly instead", "replaceWith", "Lkotlin/ReplaceWith;", "expression", "android.graphics.Paint", "imports", "NativePaint", "ui-graphics"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidPaint_androidKt {

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f8839a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final /* synthetic */ int[] f8840b;

        static {
            try {
                new int[android.graphics.Paint.Style.values().length][android.graphics.Paint.Style.STROKE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            int[] iArr = new int[android.graphics.Paint.Cap.values().length];
            try {
                iArr[android.graphics.Paint.Cap.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[android.graphics.Paint.Cap.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[android.graphics.Paint.Cap.SQUARE.ordinal()] = 3;
            } catch (NoSuchFieldError unused4) {
            }
            f8839a = iArr;
            int[] iArr2 = new int[android.graphics.Paint.Join.values().length];
            try {
                iArr2[android.graphics.Paint.Join.MITER.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[android.graphics.Paint.Join.BEVEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[android.graphics.Paint.Join.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            f8840b = iArr2;
        }
    }

    public static final android.graphics.Paint a(Paint paint) {
        if (!(paint instanceof AndroidPaint)) {
            InlineClassHelperKt.a("Extracting native reference is only supported from androidx.compose.ui.graphics.AndroidPaint instances but received " + Reflection.f71922a.b(paint.getClass()).getF74431c());
        }
        return ((AndroidPaint) paint).f8835a;
    }
}
