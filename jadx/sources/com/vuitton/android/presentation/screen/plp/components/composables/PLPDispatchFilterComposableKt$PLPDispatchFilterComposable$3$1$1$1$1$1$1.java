package com.vuitton.android.presentation.screen.plp.components.composables;

import androidx.compose.foundation.lazy.LazyListItemInfo;
import androidx.compose.foundation.lazy.LazyListLayoutInfo;
import androidx.compose.foundation.lazy.LazyListState;
import defpackage.md;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.screen.plp.components.composables.PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1$1$1", f = "PLPDispatchFilterComposable.kt", l = {96}, m = "invokeSuspend", v = 2)
final class PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f62740b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LazyListState f62741c;
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1$1$1(int i2, LazyListState lazyListState, Continuation continuation) {
        super(2, continuation);
        this.f62741c = lazyListState;
        this.d = i2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1$1$1(this.d, this.f62741c, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((PLPDispatchFilterComposableKt$PLPDispatchFilterComposable$3$1$1$1$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        int i2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i3 = this.f62740b;
        Object obj2 = null;
        if (i3 == 0) {
            ResultKt.b(obj);
            LazyListState lazyListState = this.f62741c;
            LazyListLayoutInfo lazyListLayoutInfoJ = lazyListState.j();
            Iterator it = lazyListLayoutInfoJ.getF5211k().iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                i2 = this.d;
                if (!zHasNext) {
                    break;
                }
                Object next = it.next();
                if (((LazyListItemInfo) next).getF5212a() == i2) {
                    obj2 = next;
                    break;
                }
            }
            LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) obj2;
            int iE = lazyListLayoutInfoJ.e() - ((((int) (lazyListLayoutInfoJ.a() >> 32)) - (lazyListItemInfo != null ? lazyListItemInfo.getQ() : 0)) / 2);
            this.f62740b = 1;
            if (lazyListState.f(i2, iE, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i3 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return Unit.f71739a;
    }
}
