package androidx.compose.material3;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 0, 0}, xi = 48)
final class SliderDefaults$Track$5$1 implements Function3<DrawScope, Offset, Color, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SliderDefaults$Track$5$1 f7241b = new SliderDefaults$Track$5$1();

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        DrawScope drawScope = (DrawScope) obj;
        long j2 = ((Offset) obj2).f8808a;
        long j3 = ((Color) obj3).f8872a;
        SliderDefaults sliderDefaults = SliderDefaults.f7235a;
        DrawScope.r0(drawScope, j3, drawScope.u1(SliderDefaults.f7237c) / 2.0f, j2, null, 120);
        return Unit.f71739a;
    }
}
