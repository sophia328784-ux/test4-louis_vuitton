package defpackage;

import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.IntOffset;
import com.vuitton.android.presentation.screen.aicompanion.components.entrypoint.AICompanionTooltipKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s1 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79671b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f79672c;
    public final /* synthetic */ Object d;

    public /* synthetic */ s1(long j2, State state) {
        this.f79671b = 2;
        this.f79672c = j2;
        this.d = state;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79671b;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                Path path = (Path) obj2;
                DrawScope drawScope = (DrawScope) obj;
                float f2 = AICompanionTooltipKt.f52836a;
                drawScope.getClass();
                path.reset();
                path.a(Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                path.c(Float.intBitsToFloat((int) (drawScope.b() >> 32)) / 2.0f, Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)));
                path.c(Float.intBitsToFloat((int) (drawScope.b() >> 32)), Call.Parameters.DEFAULT_CAMERA_ZOOM);
                path.close();
                DrawScope.U(drawScope, path, this.f79672c, null, 60);
                break;
            case 1:
                LazyLayoutItemAnimation lazyLayoutItemAnimation = (LazyLayoutItemAnimation) obj2;
                long jC = IntOffset.c(((IntOffset) ((Animatable) obj).d()).f11014a, this.f79672c);
                LazyLayoutItemAnimation.Companion companion = LazyLayoutItemAnimation.s;
                lazyLayoutItemAnimation.h(jC);
                lazyLayoutItemAnimation.f5425c.mo47invoke();
                break;
            default:
                DrawScope drawScope2 = (DrawScope) obj;
                float f3 = ModalBottomSheetKt.f7058a;
                DrawScope.k0(drawScope2, this.f79672c, 0L, 0L, RangesKt.c(((Number) ((State) obj2).getF10755b()).floatValue(), Call.Parameters.DEFAULT_CAMERA_ZOOM, 1.0f), null, 118);
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ s1(Object obj, long j2, int i2) {
        this.f79671b = i2;
        this.d = obj;
        this.f79672c = j2;
    }
}
