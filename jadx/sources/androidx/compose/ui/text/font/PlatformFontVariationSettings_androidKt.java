package androidx.compose.ui.text.font;

import android.content.Context;
import android.os.Build;
import androidx.compose.ui.unit.AndroidDensity_androidKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.util.ListUtilsKt;
import defpackage.s60;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"ui-text"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PlatformFontVariationSettings_androidKt {
    public static final String a(FontVariation$Settings fontVariation$Settings, Context context) {
        boolean z;
        float fA;
        Density densityA = AndroidDensity_androidKt.a(context);
        int i2 = 0;
        int i3 = (Build.VERSION.SDK_INT < 31 || context.getResources().getConfiguration().fontWeightAdjustment == Integer.MAX_VALUE) ? 0 : context.getResources().getConfiguration().fontWeightAdjustment;
        if (i3 == 0) {
            return ListUtilsKt.a(fontVariation$Settings.f10726a, null, new s60(densityA, 3), 31);
        }
        List list = fontVariation$Settings.f10726a;
        int size = list.size();
        String strConcat = "";
        boolean z2 = false;
        while (i2 < size) {
            FontVariation$Setting fontVariation$Setting = (FontVariation$Setting) list.get(i2);
            if (Intrinsics.c(fontVariation$Setting.b(), "wght")) {
                fA = RangesKt.c(fontVariation$Setting.a() + i3, 1.0f, 1000.0f);
                z = true;
            } else {
                z = z2;
                fA = fontVariation$Setting.a();
            }
            if (i2 != 0) {
                strConcat = strConcat.concat(",");
            }
            strConcat = strConcat + '\'' + fontVariation$Setting.b() + "' " + fA;
            i2++;
            z2 = z;
        }
        if (z2) {
            return strConcat;
        }
        float fC = RangesKt.c(i3 + 400.0f, 1.0f, 1000.0f);
        if (!fontVariation$Settings.f10726a.isEmpty()) {
            strConcat = strConcat.concat(",");
        }
        return strConcat + "'wght' " + fC;
    }
}
