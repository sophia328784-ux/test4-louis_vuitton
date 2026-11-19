package defpackage;

import androidx.compose.material3.BottomSheetScaffoldKt;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.internal.AnchoredDraggableKt;
import androidx.compose.material3.internal.DraggableAnchors;
import androidx.compose.material3.internal.DraggableAnchorsConfig;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import com.vuitton.android.presentation.compose.components.LVSubShadowKt;
import com.vuitton.android.presentation.screen.plp.components.composables.brandcontent.PLPProductFullscreenComposableKt;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class fh implements Function2 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69144b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f69145c;
    public final /* synthetic */ Object d;

    public /* synthetic */ fh(SheetState sheetState, float f2) {
        this.f69144b = 0;
        this.d = sheetState;
        this.f69145c = f2;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0073 A[PHI: r9
      0x0073: PHI (r9v8 androidx.compose.material3.SheetValue) = 
      (r9v6 androidx.compose.material3.SheetValue)
      (r9v9 androidx.compose.material3.SheetValue)
      (r9v10 androidx.compose.material3.SheetValue)
      (r9v11 androidx.compose.material3.SheetValue)
      (r9v12 androidx.compose.material3.SheetValue)
      (r9v13 androidx.compose.material3.SheetValue)
      (r9v14 androidx.compose.material3.SheetValue)
     binds: [B:34:0x00ad, B:25:0x0092, B:28:0x009b, B:31:0x00a4, B:15:0x0071, B:18:0x007b, B:21:0x0084] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        SheetValue sheetValue;
        int i2 = this.f69144b;
        final float f2 = this.f69145c;
        Object obj3 = this.d;
        switch (i2) {
            case 0:
                final SheetState sheetState = (SheetState) obj3;
                final float fG = Constraints.g(((Constraints) obj2).f10999a);
                final float f3 = (int) (((IntSize) obj).f11021a & BodyPartID.bodyIdMax);
                DraggableAnchors draggableAnchorsA = AnchoredDraggableKt.a(new Function1() { // from class: hh
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj4) {
                        DraggableAnchorsConfig draggableAnchorsConfig = (DraggableAnchorsConfig) obj4;
                        SheetState sheetState2 = sheetState;
                        boolean z = sheetState2.f7208a;
                        float f4 = fG;
                        float f5 = f2;
                        if (!z) {
                            draggableAnchorsConfig.a(SheetValue.PartiallyExpanded, f4 - f5);
                        }
                        float f6 = f3;
                        if (f6 != f5) {
                            draggableAnchorsConfig.a(SheetValue.Expanded, Math.max(f4 - f6, Call.Parameters.DEFAULT_CAMERA_ZOOM));
                        }
                        if (!sheetState2.f7210c) {
                            draggableAnchorsConfig.a(SheetValue.Hidden, f4);
                        }
                        return Unit.f71739a;
                    }
                });
                SheetValue sheetValue2 = (SheetValue) sheetState.f7211e.f7521h.getF10755b();
                int i3 = BottomSheetScaffoldKt.WhenMappings.f6628a[sheetValue2.ordinal()];
                if (i3 == 1) {
                    sheetValue = SheetValue.Hidden;
                    if (draggableAnchorsA.d(sheetValue)) {
                        sheetValue2 = sheetValue;
                    }
                } else if (i3 == 2) {
                    sheetValue = SheetValue.PartiallyExpanded;
                    if (draggableAnchorsA.d(sheetValue)) {
                        sheetValue2 = sheetValue;
                    } else {
                        sheetValue = SheetValue.Expanded;
                        if (draggableAnchorsA.d(sheetValue)) {
                            sheetValue2 = sheetValue;
                        } else {
                            sheetValue = SheetValue.Hidden;
                            if (draggableAnchorsA.d(sheetValue)) {
                                sheetValue2 = sheetValue;
                            }
                        }
                    }
                } else {
                    if (i3 != 3) {
                        v40.g();
                        return null;
                    }
                    sheetValue = SheetValue.Expanded;
                    if (draggableAnchorsA.d(sheetValue)) {
                        sheetValue2 = sheetValue;
                    } else {
                        sheetValue = SheetValue.PartiallyExpanded;
                        if (draggableAnchorsA.d(sheetValue)) {
                            sheetValue2 = sheetValue;
                        } else {
                            sheetValue = SheetValue.Hidden;
                            if (draggableAnchorsA.d(sheetValue)) {
                                sheetValue2 = sheetValue;
                            }
                        }
                    }
                }
                return new Pair(draggableAnchorsA, sheetValue2);
            case 1:
                ((Integer) obj2).getClass();
                LVSubShadowKt.a((Modifier) obj3, f2, (Composer) obj, RecomposeScopeImplKt.a(7));
                return Unit.f71739a;
            default:
                ((Integer) obj2).getClass();
                PLPProductFullscreenComposableKt.b((PlpProductUiModel) obj3, f2, (Composer) obj, RecomposeScopeImplKt.a(1));
                return Unit.f71739a;
        }
    }

    public /* synthetic */ fh(Object obj, float f2, int i2, int i3) {
        this.f69144b = i3;
        this.d = obj;
        this.f69145c = f2;
    }
}
