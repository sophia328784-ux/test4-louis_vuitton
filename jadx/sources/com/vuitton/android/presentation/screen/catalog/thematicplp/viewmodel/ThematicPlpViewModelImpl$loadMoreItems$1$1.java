package com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel;

import com.vuitton.android.domain.monitoring.MonitorAction;
import com.vuitton.android.domain.monitoring.thematicplp.ThematicPlpMonitoring;
import com.vuitton.android.domain.usecase.catalog.GetThematicPlpThemesUseCase;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.CurrentThemeUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.mapper.ThematicPlpThemesMapperKt;
import com.vuitton.foundation.model.domain.model.catalog.thematicplp.ThematicPlpThemes;
import defpackage.md;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.thematicplp.viewmodel.ThematicPlpViewModelImpl$loadMoreItems$1$1", f = "ThematicPlpViewModelImpl.kt", l = {330, 340}, m = "invokeSuspend", v = 2)
final class ThematicPlpViewModelImpl$loadMoreItems$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Object f55552b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Object f55553c;
    public Collection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public CurrentThemeUiModel f55554e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f55555f;
    public final /* synthetic */ ThematicPlpViewModelImpl g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ String f55556h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ String f55557i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ int f55558j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ MonitorAction f55559k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ThematicPlpViewModelImpl$loadMoreItems$1$1(ThematicPlpViewModelImpl thematicPlpViewModelImpl, String str, String str2, int i2, MonitorAction monitorAction, Continuation continuation) {
        super(2, continuation);
        this.g = thematicPlpViewModelImpl;
        this.f55556h = str;
        this.f55557i = str2;
        this.f55558j = i2;
        this.f55559k = monitorAction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ThematicPlpViewModelImpl$loadMoreItems$1$1(this.g, this.f55556h, this.f55557i, this.f55558j, this.f55559k, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ThematicPlpViewModelImpl$loadMoreItems$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x00a4  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        Object obj2;
        Collection collection;
        CurrentThemeUiModel currentThemeUiModel;
        MutableStateFlow mutableStateFlow;
        Collection collection2;
        Throwable thA;
        MonitorAction monitorAction;
        ThematicPlpViewModelImpl thematicPlpViewModelImpl = this.g;
        MutableStateFlow mutableStateFlow2 = thematicPlpViewModelImpl.m;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f55555f;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetThematicPlpThemesUseCase getThematicPlpThemesUseCase = thematicPlpViewModelImpl.g;
            Integer num = new Integer(this.f55558j);
            this.f55555f = 1;
            objA = getThematicPlpThemesUseCase.a(this.f55556h, this.f55557i, num, this);
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
            currentThemeUiModel = this.f55554e;
            collection2 = this.d;
            mutableStateFlow = (MutableStateFlow) this.f55553c;
            obj2 = this.f55552b;
            ResultKt.b(obj);
        }
        mutableStateFlow.setValue(CurrentThemeUiModel.a(currentThemeUiModel, CollectionsKt.Y(collection2, (Iterable) obj)));
        thA = Result.a(obj2);
        monitorAction = this.f55559k;
        if (thA != null) {
            monitorAction.d(new ThematicPlpMonitoring.Error.OpenThematicPagesError(thA));
        }
        monitorAction.b();
        return Unit.f71739a;
        obj2 = objA;
        Result.Companion companion = Result.INSTANCE;
        if (!(obj2 instanceof Result.Failure)) {
            ThematicPlpThemes thematicPlpThemes = (ThematicPlpThemes) obj2;
            CurrentThemeUiModel currentThemeUiModel2 = (CurrentThemeUiModel) mutableStateFlow2.getValue();
            if (currentThemeUiModel2 == null || (collection = currentThemeUiModel2.f55428c) == null) {
                collection = EmptyList.f71768b;
            }
            thematicPlpViewModelImpl.n.setValue(ThematicPlpThemesMapperKt.b(thematicPlpThemes.f67035b));
            CurrentThemeUiModel currentThemeUiModelA = ThematicPlpThemesMapperKt.a(thematicPlpThemes.f67036c);
            Collection collection3 = collection;
            List list = currentThemeUiModelA.f55428c;
            this.f55552b = obj2;
            this.f55553c = mutableStateFlow2;
            this.d = collection3;
            this.f55554e = currentThemeUiModelA;
            this.f55555f = 2;
            Object objYc = ThematicPlpViewModelImpl.yc(thematicPlpViewModelImpl, list, this);
            if (objYc != coroutineSingletons) {
                currentThemeUiModel = currentThemeUiModelA;
                obj = objYc;
                mutableStateFlow = mutableStateFlow2;
                collection2 = collection3;
                mutableStateFlow.setValue(CurrentThemeUiModel.a(currentThemeUiModel, CollectionsKt.Y(collection2, (Iterable) obj)));
            }
            return coroutineSingletons;
        }
        thA = Result.a(obj2);
        monitorAction = this.f55559k;
        if (thA != null) {
            monitorAction.d(new ThematicPlpMonitoring.Error.OpenThematicPagesError(thA));
        }
        monitorAction.b();
        return Unit.f71739a;
    }
}
