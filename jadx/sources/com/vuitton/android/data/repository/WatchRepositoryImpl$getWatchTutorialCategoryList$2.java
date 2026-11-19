package com.vuitton.android.data.repository;

import com.vuitton.android.data.exception.ConnectivityException;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionConnectedObject;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionHome;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionTutorials;
import com.vuitton.foundation.model.domain.model.connectivity.sync.WatchTutorialCategory;
import com.vuitton.foundation.model.domain.model.connectivity.watch.SectionPromise;
import java.util.ArrayList;
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

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/sync/WatchTutorialCategory;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.WatchRepositoryImpl$getWatchTutorialCategoryList$2", f = "WatchRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class WatchRepositoryImpl$getWatchTutorialCategoryList$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends WatchTutorialCategory>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConnectedObjectsConfig f48183b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchRepositoryImpl$getWatchTutorialCategoryList$2(ConnectedObjectsConfig connectedObjectsConfig, Continuation continuation) {
        super(2, continuation);
        this.f48183b = connectedObjectsConfig;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WatchRepositoryImpl$getWatchTutorialCategoryList$2(this.f48183b, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchRepositoryImpl$getWatchTutorialCategoryList$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws ConnectivityException.WatchTutorialException {
        SectionConnectedObject sectionConnectedObject;
        SectionPromise sectionPromise;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        SectionHome sectionHome = this.f48183b.f67332b;
        List list = (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (sectionPromise = sectionConnectedObject.f67337a) == null) ? null : sectionPromise.g;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            throw new ConnectivityException.WatchTutorialException();
        }
        List<SectionTutorials> list3 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
        for (SectionTutorials sectionTutorials : list3) {
            List list4 = sectionTutorials.d;
            String str = sectionTutorials.f67345b;
            String str2 = sectionTutorials.f67347e;
            String str3 = sectionTutorials.f67344a;
            if (str == null || str.length() == 0) {
                str = null;
            }
            arrayList.add(new WatchTutorialCategory(str2, str3, str, list4 != null ? new ArrayList(list4) : new ArrayList()));
        }
        return arrayList;
    }
}
