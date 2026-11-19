package com.vuitton.android.presentation.screen.mylv;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$initData$1", f = "MyLvViewModelImpl.kt", l = {306, 307, 315, 321}, m = "invokeSuspend", v = 2)
final class MyLvViewModelImpl$initData$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public MyLvViewModelImpl f59284b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Throwable f59285c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f59286e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public /* synthetic */ Object f59287f;
    public final /* synthetic */ MyLvViewModelImpl g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MyLvViewModelImpl$initData$1(Continuation continuation, MyLvViewModelImpl myLvViewModelImpl) {
        super(2, continuation);
        this.g = myLvViewModelImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        MyLvViewModelImpl$initData$1 myLvViewModelImpl$initData$1 = new MyLvViewModelImpl$initData$1(continuation, this.g);
        myLvViewModelImpl$initData$1.f59287f = obj;
        return myLvViewModelImpl$initData$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MyLvViewModelImpl$initData$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:50:0x0101 A[LOOP:1: B:50:0x0101->B:67:?, LOOP_START] */
    /* JADX WARN: Code duplicated, block: B:55:0x013c  */
    /* JADX WARN: Code duplicated, block: B:59:0x014b  */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00fe, code lost:
    
        if (com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl.yc(r2, true, r18) == r4) goto L54;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) {
        /*
            Method dump skipped, instruction units count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vuitton.android.presentation.screen.mylv.MyLvViewModelImpl$initData$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
