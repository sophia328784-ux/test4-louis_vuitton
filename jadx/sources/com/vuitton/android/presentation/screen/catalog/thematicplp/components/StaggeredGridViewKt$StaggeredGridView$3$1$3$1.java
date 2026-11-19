package com.vuitton.android.presentation.screen.catalog.thematicplp.components;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
final class StaggeredGridViewKt$StaggeredGridView$3$1$3$1 implements Function2<Composer, Integer, Modifier> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final StaggeredGridViewKt$StaggeredGridView$3$1$3$1 f55401b = new StaggeredGridViewKt$StaggeredGridView$3$1$3$1();

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        Composer composer = (Composer) obj;
        ((Number) obj2).intValue();
        composer.L(-1159170990);
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Modifier modifierC = OffsetKt.c(Modifier.Companion.f8607b, Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.d(composer).t, 1);
        composer.F();
        return modifierC;
    }
}
