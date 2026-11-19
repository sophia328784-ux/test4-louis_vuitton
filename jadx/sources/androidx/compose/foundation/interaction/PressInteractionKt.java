package androidx.compose.foundation.interaction;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class PressInteractionKt {
    public static final MutableState a(MutableInteractionSource mutableInteractionSource, Composer composer, int i2) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object objX = composer.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objX == composer$Companion$Empty$1) {
            objX = SnapshotStateKt.g(Boolean.FALSE);
            composer.q(objX);
        }
        MutableState mutableState = (MutableState) objX;
        boolean z = (((i2 & 14) ^ 6) > 4 && composer.K(mutableInteractionSource)) || (i2 & 6) == 4;
        Object objX2 = composer.x();
        if (z || objX2 == composer$Companion$Empty$1) {
            objX2 = new PressInteractionKt$collectIsPressedAsState$1$1(mutableInteractionSource, mutableState, null);
            composer.q(objX2);
        }
        EffectsKt.e(composer, mutableInteractionSource, (Function2) objX2);
        return mutableState;
    }
}
