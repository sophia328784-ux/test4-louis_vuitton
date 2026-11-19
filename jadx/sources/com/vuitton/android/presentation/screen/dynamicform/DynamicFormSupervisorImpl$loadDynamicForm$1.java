package com.vuitton.android.presentation.screen.dynamicform;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.dynamicform.DynamicFormSupervisorImpl", f = "DynamicFormSupervisorImpl.kt", l = {55}, m = "loadDynamicForm-LiYkppA", v = 2)
final class DynamicFormSupervisorImpl$loadDynamicForm$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Function1 f57471b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Function2 f57472c;
    public Function1 d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Function0 f57473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Function1 f57474f;
    public Function2 g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Function1 f57475h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Function1 f57476i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public /* synthetic */ Object f57477j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ DynamicFormSupervisorImpl f57478k;
    public int l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DynamicFormSupervisorImpl$loadDynamicForm$1(DynamicFormSupervisorImpl dynamicFormSupervisorImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.f57478k = dynamicFormSupervisorImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.f57477j = obj;
        this.l |= Integer.MIN_VALUE;
        Object objB = this.f57478k.b(null, null, null, null, null, null, null, null, null, this);
        return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : new Result(objB);
    }
}
