package com.vuitton.android.presentation.screen.audioguide;

import com.batch.android.s.b;
import com.vuitton.android.data.monitoring.DynatraceMonitorAction;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.audioguide.AudioGuideMonitoring;
import com.vuitton.android.domain.usecase.account.accessibility.GetAllAccessibilityValuesUseCase;
import com.vuitton.android.presentation.model.common.A11ySettings;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideBottomSheet;
import com.vuitton.android.presentation.screen.audioguide.models.AudioGuideViewState;
import com.vuitton.foundation.logger.Logger;
import com.vuitton.foundation.model.domain.model.account.accessibility.AccessibilityPreferenceType;
import defpackage.md;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.audioguide.AudioGuideViewModelImpl$initAudioGuide$1", f = "AudioGuideViewModelImpl.kt", l = {145}, m = "invokeSuspend", v = 2)
final class AudioGuideViewModelImpl$initAudioGuide$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MonitorAction f52992b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f52993c;
    public final /* synthetic */ AudioGuideViewModelImpl d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioGuideViewModelImpl$initAudioGuide$1(AudioGuideViewModelImpl audioGuideViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.d = audioGuideViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new AudioGuideViewModelImpl$initAudioGuide$1(this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((AudioGuideViewModelImpl$initAudioGuide$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objYc;
        MonitorAction monitorAction;
        A11ySettings a11ySettings;
        Object value;
        Object objA;
        AudioGuideViewModelImpl audioGuideViewModelImpl = this.d;
        Logger logger = audioGuideViewModelImpl.f52978a;
        String str = audioGuideViewModelImpl.t;
        MutableStateFlow mutableStateFlow = audioGuideViewModelImpl.w;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f52993c;
        if (i2 == 0) {
            ResultKt.b(obj);
            if (str == null) {
                mutableStateFlow.setValue(AudioGuideViewState.Error.f53223a);
                logger.c("AudioGuideViewModelImpl", "AudioGuideId is missing", null);
                return Unit.f71739a;
            }
            DynatraceMonitorAction dynatraceMonitorActionA = audioGuideViewModelImpl.f52979b.a(audioGuideViewModelImpl.v, AudioGuideMonitoring.Action.OpenTableOfContent.f48820a);
            dynatraceMonitorActionA.c(str, b.a.f24015b);
            this.f52992b = dynatraceMonitorActionA;
            this.f52993c = 1;
            objYc = AudioGuideViewModelImpl.yc(audioGuideViewModelImpl, null, this);
            if (objYc == coroutineSingletons) {
                return coroutineSingletons;
            }
            monitorAction = dynatraceMonitorActionA;
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            monitorAction = this.f52992b;
            ResultKt.b(obj);
            objYc = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objYc instanceof Result.Failure)) {
            String str2 = audioGuideViewModelImpl.u;
            if (str2 == null) {
                audioGuideViewModelImpl.y.setValue(AudioGuideBottomSheet.BeforeStart.f53153a);
            } else {
                audioGuideViewModelImpl.m6(str2, true, true);
            }
            GetAllAccessibilityValuesUseCase getAllAccessibilityValuesUseCase = audioGuideViewModelImpl.o;
            AccessibilityPreferenceType accessibilityPreferenceType = AccessibilityPreferenceType.SIMPLIFY_NAVIGATION;
            AccessibilityPreferenceType accessibilityPreferenceType2 = AccessibilityPreferenceType.DISABLE_AUTOPLAY;
            AccessibilityPreferenceType accessibilityPreferenceType3 = AccessibilityPreferenceType.ENHANCED_CONTRAST;
            Object objA2 = getAllAccessibilityValuesUseCase.a(accessibilityPreferenceType, accessibilityPreferenceType2, accessibilityPreferenceType3);
            if (Result.a(objA2) == null) {
                Map map = (Map) objA2;
                Boolean bool = (Boolean) map.get(accessibilityPreferenceType2);
                boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                Boolean bool2 = (Boolean) map.get(accessibilityPreferenceType3);
                boolean zBooleanValue2 = bool2 != null ? bool2.booleanValue() : false;
                Boolean bool3 = (Boolean) map.get(accessibilityPreferenceType);
                a11ySettings = new A11ySettings(zBooleanValue, zBooleanValue2, bool3 != null ? bool3.booleanValue() : false);
            } else {
                a11ySettings = new A11ySettings(false, false, false, 7, null);
            }
            do {
                value = mutableStateFlow.getValue();
                objA = (AudioGuideViewState) value;
                AudioGuideViewState.Success success = objA instanceof AudioGuideViewState.Success ? (AudioGuideViewState.Success) objA : null;
                if (success != null) {
                    objA = AudioGuideViewState.Success.a(success, null, null, null, 0L, null, a11ySettings, 31);
                }
            } while (!mutableStateFlow.i(value, objA));
        }
        Throwable thA = Result.a(objYc);
        if (thA != null) {
            mutableStateFlow.setValue(AudioGuideViewState.Error.f53223a);
            logger.c("AudioGuideViewModelImpl", "Failed to load audio guide", thA);
            monitorAction.d(new AudioGuideMonitoring.Error.OpenTableOfContentError(thA));
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
