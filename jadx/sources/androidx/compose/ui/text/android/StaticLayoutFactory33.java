package androidx.compose.ui.text.android;

import android.graphics.text.LineBreakConfig;
import android.text.StaticLayout;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÃ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/ui/text/android/StaticLayoutFactory33;", "", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
abstract class StaticLayoutFactory33 {
    public static final boolean a(StaticLayout staticLayout) {
        return staticLayout.isFallbackLineSpacingEnabled();
    }

    public static final void b(StaticLayout.Builder builder, int i2, int i3) {
        builder.setLineBreakConfig(new LineBreakConfig.Builder().setLineBreakStyle(i2).setLineBreakWordStyle(i3).build());
    }
}
