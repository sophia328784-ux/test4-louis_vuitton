package com.vuitton.android.presentation.screen.catalog.components;

import com.vuitton.android.presentation.screen.catalog.models.PLPEntryUiModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.catalog.components.CatalogNavHostKt$CatalogNavHost$5$1$3$3$1", f = "CatalogNavHost.kt", l = {}, m = "invokeSuspend", v = 2)
final class CatalogNavHostKt$CatalogNavHost$5$1$3$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Function2 f55277b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f55278c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CatalogNavHostKt$CatalogNavHost$5$1$3$3$1(Function2 function2, List list, Continuation continuation) {
        super(2, continuation);
        this.f55277b = function2;
        this.f55278c = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new CatalogNavHostKt$CatalogNavHost$5$1$3$3$1(this.f55277b, this.f55278c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((CatalogNavHostKt$CatalogNavHost$5$1$3$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        List list = this.f55278c;
        PLPEntryUiModel pLPEntryUiModel = (PLPEntryUiModel) CollectionsKt.firstOrNull(list);
        String str = pLPEntryUiModel != null ? pLPEntryUiModel.f55372a : null;
        if (str == null) {
            str = "";
        }
        PLPEntryUiModel pLPEntryUiModel2 = (PLPEntryUiModel) CollectionsKt.firstOrNull(list);
        String str2 = pLPEntryUiModel2 != null ? pLPEntryUiModel2.f55374c : null;
        this.f55277b.invoke(str, str2 != null ? str2 : "");
        return Unit.f71739a;
    }
}
