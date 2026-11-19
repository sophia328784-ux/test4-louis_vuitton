package com.vuitton.android.designkit.ui.theme.atoms.configurations;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.text.TextStyle;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ConfigurationButtonKt {
    public static final ConfigurationButton a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        long j2 = LVAppDesignKitTheme.c(composer).f48361b.u;
        long jB = Color.b(LVAppDesignKitTheme.h(composer).f48403c, LVAppDesignKitTheme.c(composer).f48361b.u);
        long j3 = LVAppDesignKitTheme.c(composer).f48361b.u;
        long j4 = LVAppDesignKitTheme.c(composer).f48361b.y;
        long j5 = LVAppDesignKitTheme.c(composer).f48361b.y;
        TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48428i;
        PaddingValuesImpl paddingValuesImplB = PaddingKt.b(LVAppDesignKitTheme.d(composer).o, LVAppDesignKitTheme.d(composer).f48383a);
        PaddingValuesImpl paddingValuesImplA = PaddingKt.a(LVAppDesignKitTheme.d(composer).l);
        float f2 = LVAppDesignKitTheme.d(composer).v;
        ConfigurationButton.Border.None none = ConfigurationButton.Border.None.f48541a;
        return new ConfigurationButton(j2, jB, j3, j4, j5, textStyle, paddingValuesImplB, paddingValuesImplA, none, none, none, 0.95f, f2, null);
    }

    public static final ConfigurationButton b(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        long j2 = LVAppDesignKitTheme.c(composer).f48361b.y;
        long jB = Color.b(LVAppDesignKitTheme.h(composer).f48403c, LVAppDesignKitTheme.c(composer).f48361b.y);
        long j3 = LVAppDesignKitTheme.c(composer).f48361b.y;
        long j4 = LVAppDesignKitTheme.c(composer).f48361b.u;
        long j5 = LVAppDesignKitTheme.c(composer).f48361b.u;
        TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48428i;
        PaddingValuesImpl paddingValuesImplB = PaddingKt.b(LVAppDesignKitTheme.d(composer).o, LVAppDesignKitTheme.d(composer).f48383a);
        PaddingValuesImpl paddingValuesImplA = PaddingKt.a(LVAppDesignKitTheme.d(composer).l);
        float f2 = LVAppDesignKitTheme.d(composer).v;
        ConfigurationButton.Border.None none = ConfigurationButton.Border.None.f48541a;
        return new ConfigurationButton(j2, jB, j3, j4, j5, textStyle, paddingValuesImplB, paddingValuesImplA, none, none, none, 0.95f, f2, null);
    }

    public static final ConfigurationButton c(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48428i;
        Color.f8866b.getClass();
        long j2 = Color.f8870h;
        return new ConfigurationButton(j2, Color.b(LVAppDesignKitTheme.h(composer).f48405f, LVAppDesignKitTheme.c(composer).f48361b.f48378f), j2, LVAppDesignKitTheme.c(composer).f48361b.u, LVAppDesignKitTheme.c(composer).f48361b.u, textStyle, PaddingKt.b(LVAppDesignKitTheme.d(composer).o, LVAppDesignKitTheme.d(composer).f48383a), PaddingKt.a(LVAppDesignKitTheme.d(composer).l), new ConfigurationButton.Border.Stroke(LVAppDesignKitTheme.c(composer).f48361b.p, LVAppDesignKitTheme.d(composer).f48385c, null), new ConfigurationButton.Border.Stroke(j2, LVAppDesignKitTheme.d(composer).f48385c, null), new ConfigurationButton.Border.Stroke(LVAppDesignKitTheme.c(composer).f48361b.p, LVAppDesignKitTheme.d(composer).f48385c, null), 0.95f, LVAppDesignKitTheme.d(composer).v, null);
    }

    public static final ConfigurationButton d(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48428i;
        Color.f8866b.getClass();
        long j2 = Color.f8870h;
        return new ConfigurationButton(j2, Color.b(LVAppDesignKitTheme.h(composer).f48405f, LVAppDesignKitTheme.c(composer).f48361b.y), j2, LVAppDesignKitTheme.c(composer).f48361b.y, LVAppDesignKitTheme.c(composer).f48361b.y, textStyle, PaddingKt.b(LVAppDesignKitTheme.d(composer).o, LVAppDesignKitTheme.d(composer).f48383a), PaddingKt.a(LVAppDesignKitTheme.d(composer).l), new ConfigurationButton.Border.Stroke(LVAppDesignKitTheme.c(composer).f48361b.s, LVAppDesignKitTheme.d(composer).f48385c, null), new ConfigurationButton.Border.Stroke(j2, LVAppDesignKitTheme.d(composer).f48385c, null), new ConfigurationButton.Border.Stroke(LVAppDesignKitTheme.c(composer).f48361b.s, LVAppDesignKitTheme.d(composer).f48385c, null), 0.95f, LVAppDesignKitTheme.d(composer).v, null);
    }
}
