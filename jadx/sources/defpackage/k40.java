package defpackage;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.material3.InteractiveComponentSizeKt;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.ui.layout.HorizontalAlignmentLine;
import androidx.compose.ui.unit.Dp;
import com.vuitton.android.data.dto.account.orders.ItemDto;
import com.vuitton.android.data.dto.account.orders.OrderCustomizationDto$$serializer;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVCheckboxKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVColorDotIconKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVIconButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.LVLinkKt;
import com.vuitton.android.designkit.ui.theme.molecules.LVPushCardKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlinx.serialization.builtins.BuiltinSerializersKt;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.json.JsonArraySerializer;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonNullSerializer;
import kotlinx.serialization.json.JsonObjectSerializer;
import kotlinx.serialization.json.JsonPrimitiveSerializer;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class k40 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71560b;

    public /* synthetic */ k40(int i2) {
        this.f71560b = i2;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f71560b) {
            case 0:
                HorizontalAlignmentLine horizontalAlignmentLine = InteractiveComponentSizeKt.f7011a;
                return Boolean.TRUE;
            case 1:
                HorizontalAlignmentLine horizontalAlignmentLine2 = InteractiveComponentSizeKt.f7011a;
                return new Dp(48.0f);
            case 2:
                ItemDto.Companion companion = ItemDto.Companion;
                return new ArrayListSerializer(BuiltinSerializersKt.d(StringSerializer.f75684a));
            case 3:
                ItemDto.Companion companion2 = ItemDto.Companion;
                return new ArrayListSerializer(OrderCustomizationDto$$serializer.f44389a);
            case 4:
                JsonElementSerializer jsonElementSerializer = JsonElementSerializer.f75746a;
                return JsonPrimitiveSerializer.f75764b;
            case 5:
                JsonElementSerializer jsonElementSerializer2 = JsonElementSerializer.f75746a;
                return JsonNullSerializer.f75755b;
            case 6:
                JsonElementSerializer jsonElementSerializer3 = JsonElementSerializer.f75746a;
                return JsonObjectSerializer.f75759b;
            case 7:
                JsonElementSerializer jsonElementSerializer4 = JsonElementSerializer.f75746a;
                return JsonArraySerializer.f75721b;
            case 8:
                CubicBezierEasing cubicBezierEasing = LVButtonKt.f48454a;
                return Unit.f71739a;
            case 9:
                CubicBezierEasing cubicBezierEasing2 = LVButtonKt.f48454a;
                throw new IllegalStateException("no local LV buttons provided");
            case 10:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = LVCheckboxKt.f48456a;
                throw new IllegalStateException("no local LV checkboxes provided");
            case 11:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = LVColorDotIconKt.f48469a;
                throw new IllegalStateException("no local LV shape icons provided");
            case 12:
                return Unit.f71739a;
            case 13:
                return Unit.f71739a;
            case 14:
                return Unit.f71739a;
            case 15:
                return Unit.f71739a;
            case 16:
                return Unit.f71739a;
            case 17:
                return Unit.f71739a;
            case 18:
                CubicBezierEasing cubicBezierEasing3 = LVIconButtonKt.f48475a;
                throw new IllegalStateException("no local LV icon buttons provided");
            case 19:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = LVLinkKt.f48485a;
                throw new IllegalStateException("no local LV links provided");
            case 20:
                return Unit.f71739a;
            case 21:
                CubicBezierEasing cubicBezierEasing4 = LVMediumTopBarKt.f48747a;
                return PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            case 22:
                CubicBezierEasing cubicBezierEasing5 = LVMediumTopBarKt.f48747a;
                return PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            case 23:
                CubicBezierEasing cubicBezierEasing6 = LVMediumTopBarKt.f48747a;
                return PrimitiveSnapshotStateKt.a(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            case 24:
                return Unit.f71739a;
            case 25:
                return Unit.f71739a;
            case 26:
                return Unit.f71739a;
            case 27:
                return Unit.f71739a;
            case 28:
                LVModalBottomSheetState.Companion companion3 = LVModalBottomSheetState.d;
                return Unit.f71739a;
            default:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = LVPushCardKt.f48653a;
                throw new IllegalStateException("no local LV push card provided");
        }
    }
}
