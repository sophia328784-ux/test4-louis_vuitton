package defpackage;

import androidx.compose.foundation.contextmenu.ComposableSingletons$ContextMenuUiKt;
import androidx.compose.foundation.contextmenu.ContextMenuColors;
import androidx.compose.foundation.contextmenu.ContextMenuUiKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import com.google.ar.core.ImageMetadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function8;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class sn implements Function8 {
    @Override // kotlin.jvm.functions.Function8
    public final Object q(Object obj, Object obj2, Boolean bool, Object obj3, Object obj4, Object obj5, Composer composer, Integer num) {
        int i2;
        Modifier modifierE = (Modifier) obj;
        String str = (String) obj2;
        boolean zBooleanValue = bool.booleanValue();
        ContextMenuColors contextMenuColors = (ContextMenuColors) obj3;
        Function3 function3 = (Function3) obj4;
        Function0 function0 = (Function0) obj5;
        int iIntValue = num.intValue();
        ComposableSingletons$ContextMenuUiKt composableSingletons$ContextMenuUiKt = ComposableSingletons$ContextMenuUiKt.f4313a;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "lambda__1571120048$lambda$0");
        }
        Modifier modifier = modifierE;
        if ((iIntValue & 6) == 0) {
            i2 = (composer.K(modifier) ? 4 : 2) | iIntValue;
        } else {
            i2 = iIntValue;
        }
        if ((iIntValue & 48) == 0) {
            i2 |= composer.K(str) ? 32 : 16;
        }
        if ((iIntValue & KyberEngine.KyberPolyBytes) == 0) {
            i2 |= composer.b(zBooleanValue) ? 256 : 128;
        }
        if ((iIntValue & 3072) == 0) {
            i2 |= composer.K(contextMenuColors) ? 2048 : 1024;
        }
        if ((iIntValue & 24576) == 0) {
            i2 |= composer.y(function3) ? 16384 : 8192;
        }
        if ((iIntValue & ImageMetadata.EDGE_MODE) == 0) {
            i2 |= composer.y(function0) ? 131072 : 65536;
        }
        if (composer.p(i2 & 1, (599187 & i2) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            ContextMenuUiKt.c(str, zBooleanValue, contextMenuColors, modifier, function3, function0, composer, ((i2 >> 3) & 1022) | ((i2 << 9) & 7168) | (57344 & i2) | (i2 & ImageMetadata.JPEG_GPS_COORDINATES));
        } else {
            composer.D();
        }
        return Unit.f71739a;
    }
}
