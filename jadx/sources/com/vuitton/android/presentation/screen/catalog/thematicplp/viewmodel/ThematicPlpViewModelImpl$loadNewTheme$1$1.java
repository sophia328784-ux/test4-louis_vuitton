package com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel;

import androidx.lifecycle.ViewModelKt;
import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.thematicplp.ThematicPlpMonitoring;
import com.vuitton.android.domain.usecase.catalog.GetThematicPlpThemesUseCase;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.CurrentThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.ThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.mapper.ThematicPlpThemesMapperKt;
import com.vuitton.foundation.model.domain.model.catalog.thematicplp.ThematicPlpThemes;
import defpackage.md;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$loadNewTheme$1$1", f = "ThematicPlpViewModelImpl.kt", l = {269, 275}, m = "invokeSuspend", v = 2)
final class ThematicPlpViewModelImpl$loadNewTheme$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f55560b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ThematicPlpViewModelImpl f55561c;
    public ThemeUiModel d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ThematicPlpThemes f55562e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public CurrentThemeUiModel f55563f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ThematicPlpViewModelImpl f55564h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ ThemeUiModel f55565i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ MonitorAction f55566j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ String f55567k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpViewModelImpl$loadNewTheme$1$1(ThematicPlpViewModelImpl thematicPlpViewModelImpl, ThemeUiModel themeUiModel, MonitorAction monitorAction, String str, Continuation continuation) {
        super(2, continuation);
        this.f55564h = thematicPlpViewModelImpl;
        this.f55565i = themeUiModel;
        this.f55566j = monitorAction;
        this.f55567k = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThematicPlpViewModelImpl$loadNewTheme$1$1(this.f55564h, this.f55565i, this.f55566j, this.f55567k, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThematicPlpViewModelImpl$loadNewTheme$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00e7  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        ThematicPlpThemes thematicPlpThemes;
        Object obj2;
        ThematicPlpViewModelImpl thematicPlpViewModelImpl;
        CurrentThemeUiModel currentThemeUiModel;
        Throwable thA;
        ThematicPlpViewModelImpl thematicPlpViewModelImpl2 = this.f55564h;
        MutableStateFlow mutableStateFlow = thematicPlpViewModelImpl2.t;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.g;
        MonitorAction monitorAction = this.f55566j;
        ThemeUiModel themeUiModel = this.f55565i;
        if (i2 == 0) {
            ResultKt.b(obj);
            CurrentThemeUiModel currentThemeUiModel2 = (CurrentThemeUiModel) thematicPlpViewModelImpl2.o.get(themeUiModel.f55435a);
            if (currentThemeUiModel2 != null) {
                thematicPlpViewModelImpl2.m.setValue(currentThemeUiModel2);
                BuildersKt.c(ViewModelKt.a(thematicPlpViewModelImpl2), null, null, new ThematicPlpViewModelImpl$triggerThemeVocalization$1(thematicPlpViewModelImpl2, null), 3);
                thematicPlpViewModelImpl2.p();
                if (monitorAction != null) {
                    monitorAction.b();
                    Result.Companion companion = Result.INSTANCE;
                }
                return Unit.f71739a;
            }
            mutableStateFlow.setValue(Boolean.TRUE);
            GetThematicPlpThemesUseCase getThematicPlpThemesUseCase = thematicPlpViewModelImpl2.g;
            String str = themeUiModel.f55435a;
            Integer num = new Integer(0);
            this.g = 1;
            objA = getThematicPlpThemesUseCase.a(this.f55567k, str, num, this);
            if (objA != coroutineSingletons) {
            }
            return coroutineSingletons;
        }
        if (i2 == 1) {
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        } else {
            if (i2 != 2) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            currentThemeUiModel = this.f55563f;
            thematicPlpThemes = this.f55562e;
            themeUiModel = this.d;
            thematicPlpViewModelImpl = this.f55561c;
            obj2 = this.f55560b;
            ResultKt.b(obj);
        }
        CurrentThemeUiModel currentThemeUiModelA = CurrentThemeUiModel.a(currentThemeUiModel, (List) obj);
        thematicPlpViewModelImpl.o.put(themeUiModel.f55435a, currentThemeUiModelA);
        thematicPlpViewModelImpl.n.setValue(ThematicPlpThemesMapperKt.b(thematicPlpThemes.f67035b));
        thematicPlpViewModelImpl.m.setValue(currentThemeUiModelA);
        BuildersKt.c(ViewModelKt.a(thematicPlpViewModelImpl), null, null, new ThematicPlpViewModelImpl$triggerThemeVocalization$1(thematicPlpViewModelImpl, null), 3);
        objA = obj2;
        thA = Result.a(objA);
        if (thA != null && monitorAction != null) {
            monitorAction.d(new ThematicPlpMonitoring.Error.OpenThematicPagesError(thA));
        }
        thematicPlpViewModelImpl2.p();
        mutableStateFlow.setValue(Boolean.FALSE);
        if (monitorAction != null) {
            monitorAction.b();
        }
        return Unit.f71739a;
        Result.Companion companion2 = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            thematicPlpThemes = (ThematicPlpThemes) objA;
            CurrentThemeUiModel currentThemeUiModelA2 = ThematicPlpThemesMapperKt.a(thematicPlpThemes.f67036c);
            List list = currentThemeUiModelA2.f55428c;
            this.f55560b = objA;
            this.f55561c = thematicPlpViewModelImpl2;
            this.d = themeUiModel;
            this.f55562e = thematicPlpThemes;
            this.f55563f = currentThemeUiModelA2;
            this.g = 2;
            Object objYc = ThematicPlpViewModelImpl.yc(thematicPlpViewModelImpl2, list, this);
            if (objYc != coroutineSingletons) {
                Object obj3 = objA;
                obj = objYc;
                obj2 = obj3;
                thematicPlpViewModelImpl = thematicPlpViewModelImpl2;
                currentThemeUiModel = currentThemeUiModelA2;
                CurrentThemeUiModel currentThemeUiModelA3 = CurrentThemeUiModel.a(currentThemeUiModel, (List) obj);
                thematicPlpViewModelImpl.o.put(themeUiModel.f55435a, currentThemeUiModelA3);
                thematicPlpViewModelImpl.n.setValue(ThematicPlpThemesMapperKt.b(thematicPlpThemes.f67035b));
                thematicPlpViewModelImpl.m.setValue(currentThemeUiModelA3);
                BuildersKt.c(ViewModelKt.a(thematicPlpViewModelImpl), null, null, new ThematicPlpViewModelImpl$triggerThemeVocalization$1(thematicPlpViewModelImpl, null), 3);
                objA = obj2;
            }
            return coroutineSingletons;
        }
        thA = Result.a(objA);
        if (thA != null) {
            monitorAction.d(new ThematicPlpMonitoring.Error.OpenThematicPagesError(thA));
        }
        thematicPlpViewModelImpl2.p();
        mutableStateFlow.setValue(Boolean.FALSE);
        if (monitorAction != null) {
            monitorAction.b();
        }
        return Unit.f71739a;
    }
}
