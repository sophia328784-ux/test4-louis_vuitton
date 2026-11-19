package com.vuitton.android.presentation.screen.pdp.vto.beauty;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$checkAvailabilityForSkus$1", f = "BeautyVtoViewModelImpl.kt", l = {1236, 1237, 1259}, m = "invokeSuspend", v = 2)
final class BeautyVtoViewModelImpl$checkAvailabilityForSkus$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList f61870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List f61871c;
    public Collection d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Iterator f61872e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f61873f;
    public int g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f61874h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f61875i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f61876j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoViewModelImpl f61877k;
    public final /* synthetic */ ListBuilder l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BeautyVtoViewModelImpl$checkAvailabilityForSkus$1(BeautyVtoViewModelImpl beautyVtoViewModelImpl, ListBuilder listBuilder, Continuation continuation) {
        super(2, continuation);
        this.f61877k = beautyVtoViewModelImpl;
        this.l = listBuilder;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        BeautyVtoViewModelImpl$checkAvailabilityForSkus$1 beautyVtoViewModelImpl$checkAvailabilityForSkus$1 = new BeautyVtoViewModelImpl$checkAvailabilityForSkus$1(this.f61877k, this.l, continuation);
        beautyVtoViewModelImpl$checkAvailabilityForSkus$1.f61876j = obj;
        return beautyVtoViewModelImpl$checkAvailabilityForSkus$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((BeautyVtoViewModelImpl$checkAvailabilityForSkus$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:29:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:31:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:33:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:37:0x0108  */
    /* JADX WARN: Code duplicated, block: B:40:0x011b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0128  */
    /* JADX WARN: Code duplicated, block: B:43:0x012a  */
    /* JADX WARN: Code duplicated, block: B:49:0x0138  */
    /* JADX WARN: Code duplicated, block: B:50:0x013b  */
    /* JADX WARN: Code duplicated, block: B:53:0x014d  */
    /* JADX WARN: Code duplicated, block: B:61:0x0133 A[SYNTHETIC] */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x008f, code lost:
    
        if (r1 == r2) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00cc, code lost:
    
        if (r6 == r2) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0175, code lost:
    
        if (r1.u(r3, r17) == r2) goto L55;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x00cc -> B:25:0x00d0). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModelImpl$checkAvailabilityForSkus$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
