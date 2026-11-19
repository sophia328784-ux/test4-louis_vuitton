package defpackage;

import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextAlign;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.common.ModifierExtKt;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModelImpl;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.OrderStatusUiModel;
import com.vuitton.android.presentation.screen.thankyou.components.ThankYouScreenKt;
import com.vuitton.foundation.model.domain.model.audioplayer.AudioPlayerItem;
import com.vuitton.foundation.model.domain.model.audioplayer.PlayerState;
import kotlin.Unit;
import kotlin.jvm.functions.Function5;
import kotlinx.coroutines.flow.MutableStateFlow;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ub implements Function5 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80273b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f80274c;

    public /* synthetic */ ub(Object obj, int i2) {
        this.f80273b = i2;
        this.f80274c = obj;
    }

    @Override // kotlin.jvm.functions.Function5
    public final Object D(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object value;
        AudioPlayerItemUiModel audioPlayerItemUiModel;
        long j2;
        Long l;
        int i2;
        long j3;
        int i3 = this.f80273b;
        Object obj6 = this.f80274c;
        switch (i3) {
            case 0:
                boolean zBooleanValue = ((Boolean) obj).booleanValue();
                PlayerState playerState = (PlayerState) obj2;
                AudioPlayerItem audioPlayerItem = (AudioPlayerItem) obj3;
                long jLongValue = ((Long) obj4).longValue();
                Long l2 = (Long) obj5;
                long jLongValue2 = l2.longValue();
                playerState.getClass();
                MutableStateFlow mutableStateFlow = ((AudioPlayerViewModelImpl) obj6).g;
                do {
                    value = mutableStateFlow.getValue();
                    AudioPlayerControllerUiState audioPlayerControllerUiState = (AudioPlayerControllerUiState) value;
                    audioPlayerItemUiModel = audioPlayerItem != null ? new AudioPlayerItemUiModel(audioPlayerItem.f66584a, audioPlayerItem.f66585b, audioPlayerItem.f66586c, audioPlayerItem.d, audioPlayerItem.f66587e) : null;
                    j2 = jLongValue > 0 ? jLongValue : 0L;
                    l = jLongValue2 > 0 ? l2 : null;
                    audioPlayerControllerUiState.getClass();
                } while (!mutableStateFlow.i(value, new AudioPlayerControllerUiState(zBooleanValue, playerState, audioPlayerItemUiModel, j2, l)));
                break;
            default:
                OrderStatusUiModel orderStatusUiModel = (OrderStatusUiModel) obj6;
                int iIntValue = ((Integer) obj2).intValue();
                int iIntValue2 = ((Integer) obj3).intValue();
                Composer composer = (Composer) obj4;
                int iIntValue3 = ((Integer) obj5).intValue();
                float f2 = ThankYouScreenKt.f65243a;
                ((ColumnScope) obj).getClass();
                if ((iIntValue3 & 48) == 0) {
                    i2 = (composer.d(iIntValue) ? 32 : 16) | iIntValue3;
                } else {
                    i2 = iIntValue3;
                }
                if ((iIntValue3 & KyberEngine.KyberPolyBytes) == 0) {
                    i2 |= composer.d(iIntValue2) ? 256 : 128;
                }
                if (composer.p(i2 & 1, (i2 & 1169) != 1168)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    Modifier modifierM = PaddingKt.m(SizeKt.d(ModifierExtKt.e(new DTFunctionNameModifier("SuccessContent$lambda$0$0$1"), "thankYou_timelineStep_text"), 1.0f), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer).f48416e, LVAppDesignKitTheme.l(composer).f48418h, Call.Parameters.DEFAULT_CAMERA_ZOOM, 9);
                    TextStyle textStyle = LVAppDesignKitTheme.n(composer).f48427h;
                    if (iIntValue2 == iIntValue) {
                        composer.L(1826168209);
                        j3 = LVAppDesignKitTheme.c(composer).f48361b.f48382k;
                        composer.F();
                    } else {
                        composer.L(1826274322);
                        j3 = LVAppDesignKitTheme.c(composer).f48361b.l;
                        composer.F();
                    }
                    String str = (String) orderStatusUiModel.d.get(iIntValue);
                    TextAlign.f10959b.getClass();
                    TextKt.c(str, modifierM, j3, 0L, null, 0L, null, new TextAlign(TextAlign.g), 0L, 0, false, 0, 0, null, textStyle, composer, 0, 0, 130040);
                } else {
                    composer.D();
                }
                break;
        }
        return Unit.f71739a;
    }
}
