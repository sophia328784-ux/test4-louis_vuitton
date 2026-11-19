package com.vuitton.android.presentation.screen.catalog.thematicplp.screen;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.hapticfeedback.HapticFeedbackType;
import androidx.compose.ui.hapticfeedback.PlatformHapticFeedbackType;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.CurrentThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.viewstate.ThematicPlpViewState;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"com/vuitton/android/presentation/screen/catalog/thematicplp/screen/ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1", "Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;", "presentation"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1 implements NestedScrollConnection {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f55468b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableFloatState f55469c;
    public final /* synthetic */ ThematicPlpViewState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function0 f55470e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ CoroutineScope f55471f;
    public final /* synthetic */ float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ HapticFeedback f55472h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ MutableState f55473i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ Function0 f55474j;

    public ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1(MutableFloatState mutableFloatState, ThematicPlpViewState thematicPlpViewState, Function0 function0, CoroutineScope coroutineScope, float f2, HapticFeedback hapticFeedback, MutableState mutableState, Function0 function1) {
        this.f55469c = mutableFloatState;
        this.d = thematicPlpViewState;
        this.f55470e = function0;
        this.f55471f = coroutineScope;
        this.g = f2;
        this.f55472h = hapticFeedback;
        this.f55473i = mutableState;
        this.f55474j = function1;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long A0(int i2, long j2, long j3) {
        if (!((Boolean) this.f55473i.getF10755b()).booleanValue()) {
            this.f55469c.w(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f55468b = false;
        }
        Offset.f8806b.getClass();
        return 0L;
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final Object P(long j2, long j3, Continuation continuation) {
        this.f55469c.w(Call.Parameters.DEFAULT_CAMERA_ZOOM);
        this.f55468b = false;
        return super.P(j2, j3, continuation);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long l0(int i2, long j2) {
        MutableState mutableState = this.f55473i;
        boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
        CoroutineScope coroutineScope = this.f55471f;
        if (zBooleanValue) {
            CurrentThemeUiModel currentThemeUiModel = this.d.f55588e;
            if ((currentThemeUiModel != null ? currentThemeUiModel.f55427b : null) != null) {
                this.f55470e.mo47invoke();
            } else {
                BuildersKt.c(coroutineScope, null, null, new ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$1(this, null), 3);
            }
        }
        int i3 = (int) (j2 & BodyPartID.bodyIdMax);
        float fIntBitsToFloat = Float.intBitsToFloat(i3);
        MutableFloatState mutableFloatState = this.f55469c;
        if (fIntBitsToFloat < Call.Parameters.DEFAULT_CAMERA_ZOOM && ((Boolean) mutableState.getF10755b()).booleanValue() && this.f55468b) {
            mutableFloatState.w(mutableFloatState.a() - Float.intBitsToFloat(i3));
            float fA = mutableFloatState.a();
            float f2 = this.g;
            HapticFeedback hapticFeedback = this.f55472h;
            if (fA > f2) {
                mutableFloatState.w(Call.Parameters.DEFAULT_CAMERA_ZOOM);
                this.f55468b = false;
                BuildersKt.c(coroutineScope, null, null, new ThematicPlpScreenKt$ThematicPlpScreen$nestedScrollConnection$1$1$onPreScroll$2(hapticFeedback, this.f55474j, null), 3);
            } else {
                HapticFeedbackType.f9193b.getClass();
                hapticFeedback.a(PlatformHapticFeedbackType.d);
            }
        } else if (Float.intBitsToFloat(i3) > Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            mutableFloatState.w(Call.Parameters.DEFAULT_CAMERA_ZOOM);
            this.f55468b = false;
        }
        Offset.f8806b.getClass();
        return 0L;
    }
}
