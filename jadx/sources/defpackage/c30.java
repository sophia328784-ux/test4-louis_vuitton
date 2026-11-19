package defpackage;

import androidx.activity.result.ActivityResult;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.material3.SheetValue;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVSegmentedControlKt;
import com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleContentKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerUiModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormBottomSheetScreen;
import com.vuitton.android.presentation.screen.pdp.components.PdpBottomSheetType;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class c30 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21046b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableState f21047c;

    public /* synthetic */ c30(int i2, MutableState mutableState) {
        this.f21046b = i2;
        this.f21047c = mutableState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int i2 = this.f21046b;
        boolean z = false;
        MutableState mutableState = this.f21047c;
        switch (i2) {
            case 0:
                Boolean bool = (Boolean) obj;
                bool.getClass();
                mutableState.setValue(bool);
                return Unit.f71739a;
            case 1:
                Boolean bool2 = (Boolean) obj;
                bool2.booleanValue();
                float f2 = ImmersiveArticleContentKt.f58386a;
                mutableState.setValue(bool2);
                return Unit.f71739a;
            case 2:
                LayoutCoordinates layoutCoordinates = (LayoutCoordinates) obj;
                layoutCoordinates.getClass();
                mutableState.setValue(new Size(IntSizeKt.d(layoutCoordinates.a())));
                return Unit.f71739a;
            case 3:
                CubicBezierEasing cubicBezierEasing = LVButtonKt.f48454a;
                mutableState.setValue(new IntSize(((IntSize) obj).f11021a));
                return Unit.f71739a;
            case 4:
                LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) obj;
                layoutCoordinates2.getClass();
                mutableState.setValue(new IntSize(layoutCoordinates2.a()));
                return Unit.f71739a;
            case 5:
                LayoutCoordinates layoutCoordinates3 = (LayoutCoordinates) obj;
                layoutCoordinates3.getClass();
                mutableState.setValue(new IntSize(layoutCoordinates3.a()));
                return Unit.f71739a;
            case 6:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVSegmentedControlKt.f48661b;
                mutableState.setValue(new IntSize(((IntSize) obj).f11021a));
                return Unit.f71739a;
            case 7:
                TextLayoutResult textLayoutResult = (TextLayoutResult) obj;
                textLayoutResult.getClass();
                mutableState.setValue(textLayoutResult);
                return Unit.f71739a;
            case 8:
                mutableState.setValue(new IntSize(((IntSize) obj).f11021a));
                return Unit.f71739a;
            case 9:
                Boolean bool3 = (Boolean) obj;
                bool3.booleanValue();
                Lv3dCardViewerUiModel lv3dCardViewerUiModel = Lv3dCardViewerComposableKt.f58553a;
                mutableState.setValue(bool3);
                return Unit.f71739a;
            case 10:
                Boolean bool4 = (Boolean) obj;
                bool4.booleanValue();
                Lv3dCardViewerUiModel lv3dCardViewerUiModel2 = Lv3dCardViewerComposableKt.f58553a;
                mutableState.setValue(bool4);
                return Unit.f71739a;
            case 11:
                Boolean bool5 = (Boolean) obj;
                bool5.booleanValue();
                Lv3dCardViewerUiModel lv3dCardViewerUiModel3 = Lv3dCardViewerComposableKt.f58553a;
                mutableState.setValue(bool5);
                return Unit.f71739a;
            case 12:
                Boolean bool6 = (Boolean) obj;
                bool6.booleanValue();
                Lv3dCardViewerUiModel lv3dCardViewerUiModel4 = Lv3dCardViewerComposableKt.f58553a;
                mutableState.setValue(bool6);
                return Unit.f71739a;
            case 13:
                Rect rect = (Rect) obj;
                rect.getClass();
                mutableState.setValue(rect);
                return Unit.f71739a;
            case 14:
                ActivityResult activityResult = (ActivityResult) obj;
                activityResult.getClass();
                if (activityResult.f731b == -1) {
                    ((Function0) mutableState.getF10755b()).mo47invoke();
                }
                return Unit.f71739a;
            case 15:
                Boolean bool7 = (Boolean) obj;
                bool7.booleanValue();
                mutableState.setValue(bool7);
                return Unit.f71739a;
            case 16:
                SheetValue sheetValue = (SheetValue) obj;
                sheetValue.getClass();
                if (!(((OsaLocationFormBottomSheetScreen) mutableState.getF10755b()) instanceof OsaLocationFormBottomSheetScreen.OsaPreBookErrorBottomSheet) ? sheetValue != SheetValue.PartiallyExpanded : sheetValue != SheetValue.Hidden) {
                    z = true;
                }
                return Boolean.valueOf(z);
            case 17:
                Boolean bool8 = (Boolean) obj;
                bool8.booleanValue();
                mutableState.setValue(bool8);
                return Unit.f71739a;
            case 18:
                LayoutCoordinates layoutCoordinates4 = (LayoutCoordinates) obj;
                layoutCoordinates4.getClass();
                mutableState.setValue(LayoutCoordinatesKt.b(layoutCoordinates4, true));
                return Unit.f71739a;
            case 19:
                String str = (String) obj;
                str.getClass();
                mutableState.setValue(str);
                return Unit.f71739a;
            case 20:
                ((Boolean) obj).booleanValue();
                mutableState.setValue(Boolean.TRUE);
                return Unit.f71739a;
            case 21:
                String str2 = (String) obj;
                str2.getClass();
                mutableState.setValue(str2);
                return Unit.f71739a;
            case 22:
                mutableState.setValue(Boolean.valueOf(!((Boolean) obj).booleanValue()));
                return Unit.f71739a;
            case 23:
                PdpBottomSheetType pdpBottomSheetType = (PdpBottomSheetType) obj;
                pdpBottomSheetType.getClass();
                mutableState.setValue(pdpBottomSheetType);
                return Unit.f71739a;
            case 24:
                CacheDrawScope cacheDrawScope = (CacheDrawScope) obj;
                cacheDrawScope.getClass();
                return cacheDrawScope.e(new xg0(Brush.Companion.b(Brush.f8862a, CollectionsKt.P(new Color(ColorKt.b(0)), new Color(ColorKt.c(3439329279L))), Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14), mutableState, 12));
            case 25:
                Rect rect2 = (Rect) obj;
                rect2.getClass();
                mutableState.setValue(rect2);
                return Unit.f71739a;
            case 26:
                mutableState.setValue((LayoutCoordinates) obj);
                return Unit.f71739a;
            case 27:
                Boolean bool9 = (Boolean) obj;
                bool9.getClass();
                mutableState.setValue(bool9);
                return Unit.f71739a;
            case 28:
                mutableState.setValue(((Boolean) obj).booleanValue() ? null : "sort-by");
                return Unit.f71739a;
            default:
                TextLayoutResult textLayoutResult2 = (TextLayoutResult) obj;
                textLayoutResult2.getClass();
                mutableState.setValue(textLayoutResult2);
                return Unit.f71739a;
        }
    }
}
