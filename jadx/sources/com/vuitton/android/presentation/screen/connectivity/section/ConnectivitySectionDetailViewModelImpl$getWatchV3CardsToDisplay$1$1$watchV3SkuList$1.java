package com.vuitton.android.presentation.screen.connectivity.section;

import com.vuitton.android.domain.usecase.connectivity.watchv3.GetWatchV3SkuListUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.connectivity.section.ConnectivitySectionDetailViewModelImpl$getWatchV3CardsToDisplay$1$1$watchV3SkuList$1", f = "ConnectivitySectionDetailViewModelImpl.kt", l = {163}, m = "invokeSuspend", v = 2)
final class ConnectivitySectionDetailViewModelImpl$getWatchV3CardsToDisplay$1$1$watchV3SkuList$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends SkuIdUiModel>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f56308b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ConnectivitySectionDetailViewModelImpl f56309c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectivitySectionDetailViewModelImpl$getWatchV3CardsToDisplay$1$1$watchV3SkuList$1(ConnectivitySectionDetailViewModelImpl connectivitySectionDetailViewModelImpl, Continuation continuation) {
        super(2, continuation);
        this.f56309c = connectivitySectionDetailViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ConnectivitySectionDetailViewModelImpl$getWatchV3CardsToDisplay$1$1$watchV3SkuList$1(this.f56309c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ConnectivitySectionDetailViewModelImpl$getWatchV3CardsToDisplay$1$1$watchV3SkuList$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f56308b;
        if (i2 == 0) {
            ResultKt.b(obj);
            GetWatchV3SkuListUseCase getWatchV3SkuListUseCase = this.f56309c.f56277j;
            this.f56308b = 1;
            obj = getWatchV3SkuListUseCase.a(this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        Iterable iterable = (Iterable) obj;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(iterable, 10));
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            String str = ((SkuId) it.next()).f67933a;
            SkuIdUiModel.f61763c.getClass();
            SkuIdUiModel.Companion.c(str);
            arrayList.add(new SkuIdUiModel(str));
        }
        return arrayList;
    }
}
