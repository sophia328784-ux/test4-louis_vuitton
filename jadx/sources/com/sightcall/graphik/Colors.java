package com.sightcall.graphik;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.res.ColorResources_androidKt;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\b\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b\t\u0010\u0007R\u0011\u0010\n\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b\u000b\u0010\u0007R\u0011\u0010\f\u001a\u00020\u00058G¢\u0006\u0006\u001a\u0004\b\r\u0010\u0007¨\u0006\u000e"}, d2 = {"Lcom/sightcall/graphik/Colors;", "", "<init>", "()V", "consentTitleTextColor", "Landroidx/compose/ui/graphics/Color;", "getConsentTitleTextColor", "(Landroidx/compose/runtime/Composer;I)J", "consentButtonBackground", "getConsentButtonBackground", "consentButtonTextColor", "getConsentButtonTextColor", "consentBodyTextColor", "getConsentBodyTextColor", "graphik_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class Colors {
    public static final int $stable = 0;

    public final long getConsentBodyTextColor(Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return ColorResources_androidKt.a(composer, R.color.universal_consentMainTextColor);
    }

    public final long getConsentButtonBackground(Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return ColorResources_androidKt.a(composer, R.color.universal_consentBackgroundButton);
    }

    public final long getConsentButtonTextColor(Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return ColorResources_androidKt.a(composer, R.color.universal_consentFullButtonTextColor);
    }

    public final long getConsentTitleTextColor(Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        return ColorResources_androidKt.a(composer, R.color.universal_consentTitleTextColor);
    }
}
