package com.vuitton.android.data.repository;

import com.vuitton.android.data.dto.connectivity.watch.WatchDto;
import com.vuitton.foundation.model.domain.model.connectivity.Watch;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.eac.EACTags;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.repository.WatchRepositoryImpl$getWatches$3$1", f = "WatchRepositoryImpl.kt", l = {EACTags.ELEMENT_LIST, 76}, m = "invokeSuspend", v = 2)
final class WatchRepositoryImpl$getWatches$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super List<? extends Watch>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public WatchRepositoryImpl f48184b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Collection f48185c;
    public Iterator d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public WatchDto f48186e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Collection f48187f;
    public String g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f48188h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f48189i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f48190j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f48191k;
    public int l;
    public int m;
    public final /* synthetic */ WatchRepositoryImpl n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WatchRepositoryImpl$getWatches$3$1(WatchRepositoryImpl watchRepositoryImpl, Continuation continuation) {
        super(2, continuation);
        this.n = watchRepositoryImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new WatchRepositoryImpl$getWatches$3$1(this.n, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((WatchRepositoryImpl$getWatches$3$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:24:0x00a2 A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:7:0x002c, B:30:0x00e1, B:32:0x00eb, B:34:0x00ef, B:36:0x00f3, B:38:0x00f7, B:40:0x0107, B:22:0x009c, B:24:0x00a2, B:26:0x00b1, B:39:0x0101, B:41:0x010d, B:14:0x0044, B:21:0x006b, B:17:0x0051), top: B:56:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:26:0x00b1 A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:7:0x002c, B:30:0x00e1, B:32:0x00eb, B:34:0x00ef, B:36:0x00f3, B:38:0x00f7, B:40:0x0107, B:22:0x009c, B:24:0x00a2, B:26:0x00b1, B:39:0x0101, B:41:0x010d, B:14:0x0044, B:21:0x006b, B:17:0x0051), top: B:56:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:29:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:32:0x00eb A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:7:0x002c, B:30:0x00e1, B:32:0x00eb, B:34:0x00ef, B:36:0x00f3, B:38:0x00f7, B:40:0x0107, B:22:0x009c, B:24:0x00a2, B:26:0x00b1, B:39:0x0101, B:41:0x010d, B:14:0x0044, B:21:0x006b, B:17:0x0051), top: B:56:0x000c }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:39:0x0101 A[Catch: all -> 0x0033, TryCatch #0 {all -> 0x0033, blocks: (B:7:0x002c, B:30:0x00e1, B:32:0x00eb, B:34:0x00ef, B:36:0x00f3, B:38:0x00f7, B:40:0x0107, B:22:0x009c, B:24:0x00a2, B:26:0x00b1, B:39:0x0101, B:41:0x010d, B:14:0x0044, B:21:0x006b, B:17:0x0051), top: B:56:0x000c }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00dd -> B:30:0x00e1). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x0101 -> B:40:0x0107). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 364
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.data.repository.WatchRepositoryImpl$getWatches$3$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
