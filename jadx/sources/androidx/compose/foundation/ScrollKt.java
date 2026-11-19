package androidx.compose.foundation;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import defpackage.it0;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"foundation"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class ScrollKt {
    public static Modifier a(Modifier modifier, ScrollState scrollState, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        return c(modifier, scrollState, z, false);
    }

    public static final ScrollState b(Composer composer) {
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Object[] objArr = new Object[0];
        ScrollState.f4288j.getClass();
        SaverKt$Saver$1 saverKt$Saver$1 = ScrollState.f4289k;
        boolean zD = composer.d(0);
        Object objX = composer.x();
        if (zD || objX == Composer.Companion.f7939a) {
            objX = new it0(8);
            composer.q(objX);
        }
        return (ScrollState) RememberSaveableKt.b(objArr, saverKt$Saver$1, (Function0) objX, composer, 0);
    }

    public static Modifier c(Modifier modifier, ScrollState scrollState, boolean z, boolean z2) {
        Orientation orientation = z2 ? Orientation.Vertical : Orientation.Horizontal;
        MutableInteractionSource mutableInteractionSource = scrollState.d;
        float f2 = ClipScrollableContainerKt.f4166a;
        Orientation orientation2 = Orientation.Vertical;
        Modifier.Companion companion = Modifier.Companion.f8607b;
        return modifier.o(orientation == orientation2 ? ClipKt.a(companion, VerticalScrollableClipShape.f4306a) : ClipKt.a(companion, HorizontalScrollableClipShape.f4219a)).o(new ScrollableAreaElement(scrollState, orientation, z, false, null, mutableInteractionSource, null, true, null)).o(new ScrollingLayoutElement(scrollState, false, z2));
    }

    public static Modifier d(Modifier modifier, ScrollState scrollState, boolean z, int i2) {
        if ((i2 & 2) != 0) {
            z = true;
        }
        return c(modifier, scrollState, z, true);
    }
}
