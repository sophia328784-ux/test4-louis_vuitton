package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class SaversKt$ColorSaver$1 implements Function2<SaverScope, Color, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SaversKt$ColorSaver$1 f10513b = new SaversKt$ColorSaver$1();

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        long j2 = ((Color) obj2).f8872a;
        return j2 == 16 ? Boolean.FALSE : Integer.valueOf(ColorKt.i(j2));
    }
}
