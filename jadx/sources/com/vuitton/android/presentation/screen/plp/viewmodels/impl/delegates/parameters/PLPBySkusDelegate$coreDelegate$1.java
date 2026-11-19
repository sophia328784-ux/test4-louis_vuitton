package com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters;

import com.vuitton.android.domain.usecase.plp.GetSkusPLPUseCase;
import com.vuitton.android.presentation.screen.pdp.models.uimodels.SkuIdUiModel;
import com.vuitton.android.presentation.screen.plp.models.PLPTrackingUiModel;
import com.vuitton.foundation.model.domain.model.plp.PlpPagination;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/plp/PlpPagination;", "skus", "", "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;", "<unused var>", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.viewmodels.impl.delegates.parameters.PLPBySkusDelegate$coreDelegate$1", f = "PLPBySkusDelegate.kt", l = {37}, m = "invokeSuspend", v = 2)
public final class PLPBySkusDelegate$coreDelegate$1 extends SuspendLambda implements Function3<List<? extends SkuIdUiModel>, Integer, Continuation<? super Result<? extends PlpPagination>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f63229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ List f63230c;
    public final /* synthetic */ GetSkusPLPUseCase d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Function1 f63231e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPBySkusDelegate$coreDelegate$1(GetSkusPLPUseCase getSkusPLPUseCase, Function1 function1, Continuation continuation) {
        super(3, continuation);
        this.d = getSkusPLPUseCase;
        this.f63231e = function1;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        ((Number) obj2).intValue();
        PLPBySkusDelegate$coreDelegate$1 pLPBySkusDelegate$coreDelegate$1 = new PLPBySkusDelegate$coreDelegate$1(this.d, this.f63231e, (Continuation) obj3);
        pLPBySkusDelegate$coreDelegate$1.f63230c = (List) obj;
        return pLPBySkusDelegate$coreDelegate$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objA;
        List list = this.f63230c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f63229b;
        if (i2 == 0) {
            ResultKt.b(obj);
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
            Iterator it = list2.iterator();
            while (it.hasNext()) {
                String str = ((SkuIdUiModel) it.next()).f61764b;
                SkuIdUiModel.f61763c.getClass();
                SkuIdUiModel.Companion.b(str);
                arrayList.add(new SkuId(str));
            }
            this.f63230c = null;
            this.f63229b = 1;
            objA = this.d.a(arrayList, this);
            if (objA == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            objA = ((Result) obj).f71708b;
        }
        Result.Companion companion = Result.INSTANCE;
        if (!(objA instanceof Result.Failure)) {
            this.f63231e.invoke(PLPTrackingUiModel.Screen.f62896a);
        }
        return new Result(objA);
    }
}
