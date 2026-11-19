package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
public final class SaversKt$ColorSaver$2 implements Function1<Object, Color> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SaversKt$ColorSaver$2 f10514b = new SaversKt$ColorSaver$2();

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        if (Intrinsics.c(obj, Boolean.FALSE)) {
            Color.f8866b.getClass();
            return new Color(Color.f8871i);
        }
        obj.getClass();
        return new Color(ColorKt.b(((Integer) obj).intValue()));
    }
}
