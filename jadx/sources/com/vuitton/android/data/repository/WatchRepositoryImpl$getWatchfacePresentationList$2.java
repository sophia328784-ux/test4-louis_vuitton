package com.vuitton.android.data.repository;

import com.vuitton.android.data.exception.ConnectivityException;
import com.vuitton.foundation.model.domain.model.connectivity.common.Video;
import com.vuitton.foundation.model.domain.model.connectivity.sync.ConnectedObjectsConfig;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionConnectedObject;
import com.vuitton.foundation.model.domain.model.connectivity.sync.SectionHome;
import com.vuitton.foundation.model.domain.model.connectivity.watch.SectionPromise;
import com.vuitton.foundation.model.domain.model.connectivity.watch.SectionWatchfaces;
import com.vuitton.foundation.model.domain.model.connectivity.watchface.Content;
import com.vuitton.foundation.model.domain.model.connectivity.watchface.WatchfacePresentation;
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
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/watchface/WatchfacePresentation;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.WatchRepositoryImpl$getWatchfacePresentationList$2", f = "WatchRepositoryImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class WatchRepositoryImpl$getWatchfacePresentationList$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends WatchfacePresentation>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ConnectedObjectsConfig f48192b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f48193c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchRepositoryImpl$getWatchfacePresentationList$2(ConnectedObjectsConfig connectedObjectsConfig, List list, Continuation continuation) {
        super(2, continuation);
        this.f48192b = connectedObjectsConfig;
        this.f48193c = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WatchRepositoryImpl$getWatchfacePresentationList$2(this.f48192b, this.f48193c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchRepositoryImpl$getWatchfacePresentationList$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws ConnectivityException.NoWatchfaceException {
        SectionConnectedObject sectionConnectedObject;
        SectionPromise sectionPromise;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        SectionHome sectionHome = this.f48192b.f67332b;
        List list = (sectionHome == null || (sectionConnectedObject = sectionHome.f67342a) == null || (sectionPromise = sectionConnectedObject.f67337a) == null) ? null : sectionPromise.f67397i;
        List list2 = list;
        if (list2 == null || list2.isEmpty()) {
            throw new ConnectivityException.NoWatchfaceException();
        }
        List<SectionWatchfaces> list3 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.t(list3, 10));
        for (SectionWatchfaces sectionWatchfaces : list3) {
            sectionWatchfaces.getClass();
            String str = sectionWatchfaces.f67402c;
            String str2 = sectionWatchfaces.d;
            Content content = sectionWatchfaces.f67401b;
            arrayList.add(new WatchfacePresentation(str, str2, content != null ? content.f67408e : null, sectionWatchfaces.f67400a, content != null ? content.f67409f : null, content != null ? content.f67406b : null, new Video(content != null ? content.g : null, content != null ? content.f67410h : null), new Video(content != null ? content.f67407c : null, content != null ? content.d : null), content != null ? content.f67405a : null, sectionWatchfaces.f67403e));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : arrayList) {
            if (((WatchfacePresentation) obj2).f67418j.containsAll(this.f48193c)) {
                arrayList2.add(obj2);
            }
        }
        return arrayList2;
    }
}
