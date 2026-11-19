package com.vuitton.android.core.coroutine.operator;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.core.coroutine.operator.RetryMechanismKt", f = "RetryMechanism.kt", l = {39, 48}, m = "retry", v = 2)
final class RetryMechanismKt$retry$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f43486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f43487c;
    public int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f43488e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public RetryMechanism f43489f;
    public Function1 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Ref$ObjectRef f43490h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Ref$ObjectRef f43491i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f43492j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f43493k;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f43492j = obj;
        this.f43493k |= Integer.MIN_VALUE;
        return RetryMechanismKt.a(0, 0L, null, null, this);
    }
}
