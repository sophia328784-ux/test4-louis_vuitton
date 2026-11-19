package androidx.compose.ui.text.platform.extensions;

import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LocaleSpan;
import android.text.style.RelativeSizeSpan;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class SpannableExtensions_androidKt {
    public static final float a(long j2, float f2, Density density) {
        TextUnit.f11023b.getClass();
        if (TextUnit.a(j2, TextUnit.d)) {
            return f2;
        }
        long jB = TextUnit.b(j2);
        TextUnitType.Companion companion = TextUnitType.f11026b;
        companion.getClass();
        if (TextUnitType.a(jB, TextUnitType.f11027c)) {
            return density.E0(j2);
        }
        companion.getClass();
        if (TextUnitType.a(jB, TextUnitType.d)) {
            return TextUnit.c(j2) * f2;
        }
        return Float.NaN;
    }

    public static final float b(long j2, float f2, Density density) {
        float fC;
        long jB = TextUnit.b(j2);
        TextUnitType.f11026b.getClass();
        if (TextUnitType.a(jB, TextUnitType.f11027c)) {
            if (density.getF11003c() <= 1.05d) {
                return density.E0(j2);
            }
            fC = TextUnit.c(j2) / TextUnit.c(density.j0(f2));
        } else {
            if (!TextUnitType.a(jB, TextUnitType.d)) {
                return Float.NaN;
            }
            fC = TextUnit.c(j2);
        }
        return fC * f2;
    }

    public static final void c(Spannable spannable, long j2, int i2, int i3) {
        if (j2 != 16) {
            spannable.setSpan(new ForegroundColorSpan(ColorKt.i(j2)), i2, i3, 33);
        }
    }

    public static final void d(Spannable spannable, long j2, Density density, int i2, int i3) {
        long jB = TextUnit.b(j2);
        TextUnitType.f11026b.getClass();
        if (TextUnitType.a(jB, TextUnitType.f11027c)) {
            spannable.setSpan(new AbsoluteSizeSpan(MathKt.c(density.E0(j2)), false), i2, i3, 33);
        } else if (TextUnitType.a(jB, TextUnitType.d)) {
            spannable.setSpan(new RelativeSizeSpan(TextUnit.c(j2)), i2, i3, 33);
        }
    }

    public static final void e(Spannable spannable, LocaleList localeList, int i2, int i3) {
        if (localeList != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt.t(localeList, 10));
            Iterator it = localeList.f10873b.iterator();
            while (it.hasNext()) {
                arrayList.add(((Locale) it.next()).f10871a);
            }
            java.util.Locale[] localeArr = (java.util.Locale[]) arrayList.toArray(new java.util.Locale[0]);
            spannable.setSpan(new LocaleSpan(new android.os.LocaleList((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length))), i2, i3, 33);
        }
    }
}
