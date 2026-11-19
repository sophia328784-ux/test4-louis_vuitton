package androidx.compose.material3;

import androidx.compose.material3.tokens.SmallIconButtonTokens;
import androidx.compose.material3.tokens.StandardIconButtonTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import kotlin.Metadata;
import kotlin.jvm.JvmInline;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/compose/material3/IconButtonDefaults;", "", "IconButtonWidthOption", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class IconButtonDefaults {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0087@\u0018\u00002\u00020\u0001:\u0001\u0002\u0088\u0001\u0003\u0092\u0001\u00020\u0004¨\u0006\u0005"}, d2 = {"Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption;", "", "Companion", "value", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
    @JvmInline
    public static final class IconButtonWidthOption {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final Companion f7000a = new Companion(null);

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f7001b = 1;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/compose/material3/IconButtonDefaults$IconButtonWidthOption$Companion;", "", "material3"}, k = 1, mv = {2, 0, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            }
        }
    }

    public static IconButtonColors a(ColorScheme colorScheme, long j2) {
        IconButtonColors iconButtonColors = colorScheme.b0;
        if (iconButtonColors != null) {
            return iconButtonColors;
        }
        Color.f8866b.getClass();
        long j3 = Color.f8870h;
        IconButtonColors iconButtonColors2 = new IconButtonColors(j3, j2, j3, Color.b(StandardIconButtonTokens.f7875a, j2), null);
        colorScheme.b0 = iconButtonColors2;
        return iconButtonColors2;
    }

    public static IconButtonColors b(long j2, long j3, Composer composer) {
        Color.f8866b.getClass();
        long j4 = Color.f8871i;
        long jB = Color.b(StandardIconButtonTokens.f7875a, j3);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return a(MaterialTheme.a(composer), ((Color) composer.k(ContentColorKt.f6730a)).f8872a).a(j2, j3, j4, jB);
    }

    public static long c() {
        float f2;
        IconButtonWidthOption.Companion companion = IconButtonWidthOption.f7000a;
        companion.getClass();
        int i2 = IconButtonWidthOption.f7001b;
        companion.getClass();
        if (i2 == 0) {
            f2 = SmallIconButtonTokens.f7865e + SmallIconButtonTokens.f7866f;
            Dp.Companion companion2 = Dp.f11004c;
        } else {
            float f3 = SmallIconButtonTokens.f7864c;
            f2 = f3 + f3;
            Dp.Companion companion3 = Dp.f11004c;
        }
        return DpKt.a(SmallIconButtonTokens.d + f2, SmallIconButtonTokens.f7862a);
    }
}
