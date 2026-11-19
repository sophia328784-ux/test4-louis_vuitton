package defpackage;

import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.ContentTransform;
import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.gestures.DraggableAnchorsConfig;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.SnapshotMutableLongStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.Placeable;
import com.vuitton.android.presentation.compose.components.DismissVerticalDirection;
import com.vuitton.android.presentation.compose.components.DismissVerticalValue;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideUiModel;
import java.util.Set;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class qb implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f79065c;
    public final /* synthetic */ Object d;

    public /* synthetic */ qb(Object obj, float f2, int i2) {
        this.f79064b = i2;
        this.d = obj;
        this.f79065c = f2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f79064b;
        float f2 = this.f79065c;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                AudioGuideUiModel.AudioGuideColorsUiModel audioGuideColorsUiModel = (AudioGuideUiModel.AudioGuideColorsUiModel) obj2;
                DrawScope drawScope = (DrawScope) obj;
                drawScope.getClass();
                float fIntBitsToFloat = Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)) / 2.0f;
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(fIntBitsToFloat)) << 32) | (((long) Float.floatToRawIntBits(fIntBitsToFloat)) & BodyPartID.bodyIdMax);
                CornerRadius.Companion companion = CornerRadius.f8802a;
                DrawScope.H0(drawScope, audioGuideColorsUiModel.f53210e, 0L, drawScope.b(), jFloatToRawIntBits, null, 242);
                float fIntBitsToFloat2 = Float.intBitsToFloat((int) (drawScope.b() >> 32)) * f2;
                float fIntBitsToFloat3 = Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax));
                if (fIntBitsToFloat2 < fIntBitsToFloat3) {
                    fIntBitsToFloat2 = fIntBitsToFloat3;
                }
                long j2 = audioGuideColorsUiModel.f53207a;
                long jFloatToRawIntBits2 = (((long) Float.floatToRawIntBits(fIntBitsToFloat2)) << 32) | (((long) Float.floatToRawIntBits(Float.intBitsToFloat((int) (drawScope.b() & BodyPartID.bodyIdMax)))) & BodyPartID.bodyIdMax);
                Size.Companion companion2 = Size.f8820b;
                DrawScope.H0(drawScope, j2, 0L, jFloatToRawIntBits2, jFloatToRawIntBits, null, 242);
                return Unit.f71739a;
            case 1:
                Function1 function1 = (Function1) obj2;
                AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj;
                return new ContentTransform(((ContentTransform) function1.invoke(animatedContentTransitionScope)).f3552a, ((ContentTransform) function1.invoke(animatedContentTransitionScope)).f3553b, f2, null);
            case 2:
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                placementScope.getClass();
                placementScope.j((Placeable) obj2, -((int) Math.floor(f2)), 0, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                return Unit.f71739a;
            case 3:
                Set set = (Set) obj2;
                DraggableAnchorsConfig draggableAnchorsConfig = (DraggableAnchorsConfig) obj;
                draggableAnchorsConfig.getClass();
                draggableAnchorsConfig.a(DismissVerticalValue.Default, Call.Parameters.DEFAULT_CAMERA_ZOOM);
                if (set.contains(DismissVerticalDirection.TopToBottom)) {
                    draggableAnchorsConfig.a(DismissVerticalValue.DismissedToBottom, f2);
                }
                if (set.contains(DismissVerticalDirection.BottomToTop)) {
                    draggableAnchorsConfig.a(DismissVerticalValue.DismissedToTop, -f2);
                }
                return Unit.f71739a;
            default:
                Transition transition = (Transition) obj2;
                long jLongValue = ((Long) obj).longValue();
                boolean zI = transition.i();
                MutableLongState mutableLongState = transition.g;
                if (!zI) {
                    SnapshotMutableLongStateImpl snapshotMutableLongStateImpl = (SnapshotMutableLongStateImpl) mutableLongState;
                    if (snapshotMutableLongStateImpl.b() == Long.MIN_VALUE) {
                        ((SnapshotMutableLongStateImpl) mutableLongState).D(jLongValue);
                        ((SnapshotMutableStateImpl) transition.f3988a.f4030a).setValue(Boolean.TRUE);
                    }
                    long jB = jLongValue - snapshotMutableLongStateImpl.b();
                    if (f2 != Call.Parameters.DEFAULT_CAMERA_ZOOM) {
                        jB = MathKt.d(jB / ((double) f2));
                    }
                    transition.p(jB);
                    transition.j(jB, f2 == Call.Parameters.DEFAULT_CAMERA_ZOOM);
                }
                return Unit.f71739a;
        }
    }
}
