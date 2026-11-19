package com.vuitton.android.data.repository;

import com.vuitton.android.data.api.connectivity.WatchApiV2;
import com.vuitton.android.data.dto.travel.TravelDto;
import com.vuitton.foundation.model.domain.model.connectivity.travel.Travel;
import defpackage.md;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/travel/Travel;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.TravelRepositoryImpl$getTravelList$2$1", f = "TravelRepositoryImpl.kt", l = {34}, m = "invokeSuspend", v = 2)
final class TravelRepositoryImpl$getTravelList$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends Travel>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TravelRepositoryImpl f48079c;
    public final /* synthetic */ String d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TravelRepositoryImpl$getTravelList$2$1(TravelRepositoryImpl travelRepositoryImpl, String str, Continuation continuation) {
        super(2, continuation);
        this.f48079c = travelRepositoryImpl;
        this.d = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new TravelRepositoryImpl$getTravelList$2$1(this.f48079c, this.d, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((TravelRepositoryImpl$getTravelList$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48078b;
        if (i2 == 0) {
            ResultKt.b(obj);
            WatchApiV2 watchApiV2 = this.f48079c.f48055a;
            String strA = TokenExtKt.a(this.d);
            this.f48078b = 1;
            obj = watchApiV2.getTravels(strA, this);
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
        ArrayList arrayList = new ArrayList();
        Iterator it = ((Iterable) obj).iterator();
        while (it.hasNext()) {
            Travel travelE = TravelRepositoryImpl.e((TravelDto) it.next());
            if (travelE != null) {
                arrayList.add(travelE);
            }
        }
        return arrayList;
    }
}
