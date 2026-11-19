package com.vuitton.android.presentation.screen.filter.quickaccess.components;

import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.filter.quickaccess.components.SimpleFilterLineKt$SimpleFilterLine$1$1", f = "SimpleFilterLine.kt", l = {70}, m = "invokeSuspend", v = 2)
final class SimpleFilterLineKt$SimpleFilterLine$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f58111b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f58112c;
    public final /* synthetic */ ScrollState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f58113e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleFilterLineKt$SimpleFilterLine$1$1(String str, ScrollState scrollState, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f58112c = str;
        this.d = scrollState;
        this.f58113e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SimpleFilterLineKt$SimpleFilterLine$1$1(this.f58112c, this.d, this.f58113e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((SimpleFilterLineKt$SimpleFilterLine$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f58111b;
        if (i2 == 0) {
            ResultKt.b(obj);
            MutableState mutableState = this.f58113e;
            String str = (String) mutableState.getF10755b();
            String str2 = this.f58112c;
            if (!Intrinsics.c(str, str2)) {
                mutableState.setValue(str2);
                this.f58111b = 1;
                ScrollState scrollState = this.d;
                if (ScrollExtensionsKt.b(scrollState, 0 - ((SnapshotMutableIntStateImpl) scrollState.f4290a).f(), this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
