package com.vuitton.android.designkit.ui.theme;

import androidx.compose.material3.RippleConfiguration;
import androidx.compose.material3.RippleDefaults;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"system"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class RippleKt {
    public static final RippleConfiguration a(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return new RippleConfiguration(LVAppDesignKitTheme.c(composer).f48361b.f48382k, RippleDefaults.f7163a, null);
    }

    public static final RippleConfiguration b(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return new RippleConfiguration(LVAppDesignKitTheme.c(composer).f48361b.f48374a, null, 2, null);
    }
}
