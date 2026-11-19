package com.vuitton.android.data.repository;

import com.vuitton.foundation.model.domain.model.connectivity.horizon.HorizonSpeakerSection;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionConnectedObject;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionHome;
import com.vuitton.foundation.model.domain.model.product.SkuId;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/vuitton/foundation/model/domain/model/product/SkuId;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.HorizonSpeakerRepositoryImpl$getHorizonSpeakerSkuListWithCoroutine$2", f = "HorizonSpeakerRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class HorizonSpeakerRepositoryImpl$getHorizonSpeakerSkuListWithCoroutine$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends SkuId>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConnectedObjectsConfig f47722b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HorizonSpeakerRepositoryImpl$getHorizonSpeakerSkuListWithCoroutine$2(ConnectedObjectsConfig connectedObjectsConfig, Continuation continuation) {
        super(2, continuation);
        this.f47722b = connectedObjectsConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new HorizonSpeakerRepositoryImpl$getHorizonSpeakerSkuListWithCoroutine$2(this.f47722b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((HorizonSpeakerRepositoryImpl$getHorizonSpeakerSkuListWithCoroutine$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SectionConnectedObject sectionConnectedObject;
        HorizonSpeakerSection horizonSpeakerSection;
        List list;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        SectionHome sectionHome = this.f47722b.f67332b;
        if (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (horizonSpeakerSection = sectionConnectedObject.f67339c) == null || (list = horizonSpeakerSection.f67325b) == null) {
            return EmptyList.f71768b;
        }
        List<String> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list2, 10));
        for (String str : list2) {
            SkuId.Companion companion = SkuId.INSTANCE;
            str.getClass();
            arrayList.add(new SkuId(str));
        }
        return arrayList;
    }
}
