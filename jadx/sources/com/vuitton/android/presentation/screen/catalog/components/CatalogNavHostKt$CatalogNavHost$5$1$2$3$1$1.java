package com.vuitton.android.presentation.screen.catalog.components;

import com.vuitton.android.presentation.screen.catalog.CatalogTracker;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModel;
import com.vuitton.android.presentation.screen.catalog.models.CatalogTrackingUiModelKt;
import com.vuitton.android.presentation.screen.catalog.models.CategoryUiModel;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.components.CatalogNavHostKt$CatalogNavHost$5$1$2$3$1$1", f = "CatalogNavHost.kt", l = {}, m = "invokeSuspend", v = 2)
final class CatalogNavHostKt$CatalogNavHost$5$1$2$3$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ CatalogTracker f55272b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CategoryUiModel f55273c;
    public final /* synthetic */ Function2 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogNavHostKt$CatalogNavHost$5$1$2$3$1$1(CatalogTracker catalogTracker, CategoryUiModel categoryUiModel, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f55272b = catalogTracker;
        this.f55273c = categoryUiModel;
        this.d = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CatalogNavHostKt$CatalogNavHost$5$1$2$3$1$1(this.f55272b, this.f55273c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CatalogNavHostKt$CatalogNavHost$5$1$2$3$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        CategoryUiModel categoryUiModel = this.f55273c;
        String str = categoryUiModel.f55363a;
        String str2 = categoryUiModel.f55364b;
        CatalogTracker catalogTracker = this.f55272b;
        catalogTracker.getClass();
        str.getClass();
        str2.getClass();
        catalogTracker.f55231a.a(CatalogTrackingUiModelKt.a(new CatalogTrackingUiModel.SubcategoryScreen(str, str2)));
        this.d.invoke(str, str2);
        return Unit.f71739a;
    }
}
