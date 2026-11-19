package androidx.compose.ui.text.android;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÇ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/android/StaticLayoutFactory;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class StaticLayoutFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final StaticLayoutFactory23 f10596a = new StaticLayoutFactory23();

    public static StaticLayout a(CharSequence charSequence, TextPaint textPaint, int i2, int i3, TextDirectionHeuristic textDirectionHeuristic, Layout.Alignment alignment, int i4, TextUtils.TruncateAt truncateAt, int i5, float f2, float f3, int i6, boolean z, boolean z2, int i7, int i8, int i9, int i10, int[] iArr, int[] iArr2) {
        StaticLayoutParams staticLayoutParams = new StaticLayoutParams(charSequence, 0, i3, textPaint, i2, textDirectionHeuristic, alignment, i4, truncateAt, i5, f2, f3, i6, z, z2, i7, i8, i9, i10, iArr, iArr2);
        f10596a.getClass();
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(staticLayoutParams.f10597a, staticLayoutParams.f10598b, staticLayoutParams.f10599c, staticLayoutParams.d, staticLayoutParams.f10600e);
        builderObtain.setTextDirection(staticLayoutParams.f10601f);
        builderObtain.setAlignment(staticLayoutParams.g);
        builderObtain.setMaxLines(staticLayoutParams.f10602h);
        builderObtain.setEllipsize(staticLayoutParams.f10603i);
        builderObtain.setEllipsizedWidth(staticLayoutParams.f10604j);
        builderObtain.setLineSpacing(staticLayoutParams.l, staticLayoutParams.f10605k);
        builderObtain.setIncludePad(staticLayoutParams.n);
        builderObtain.setBreakStrategy(staticLayoutParams.p);
        builderObtain.setHyphenationFrequency(staticLayoutParams.s);
        builderObtain.setIndents(staticLayoutParams.t, staticLayoutParams.u);
        builderObtain.setJustificationMode(staticLayoutParams.m);
        builderObtain.setUseLineSpacingFromFallbacks(staticLayoutParams.o);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 33) {
            StaticLayoutFactory33.b(builderObtain, staticLayoutParams.q, staticLayoutParams.r);
        }
        if (i11 >= 35) {
            StaticLayoutFactory35.a(builderObtain);
        }
        return builderObtain.build();
    }
}
