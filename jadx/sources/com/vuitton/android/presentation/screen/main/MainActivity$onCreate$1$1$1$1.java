package com.vuitton.android.presentation.screen.main;

import androidx.compose.runtime.MutableState;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.RepeatOnLifecycleKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import defpackage.jx;
import defpackage.kb0;
import defpackage.lb0;
import defpackage.md;
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
@DebugMetadata(c = "com.vuitton.android.presentation.screen.main.MainActivity$onCreate$1$1$1$1", f = "MainActivity.kt", l = {329}, m = "invokeSuspend", v = 2)
final class MainActivity$onCreate$1$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f59005b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MainActivity f59006c;
    public final /* synthetic */ LVModalBottomSheetState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ MutableState f59007e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MainActivity$onCreate$1$1$1$1(MainActivity mainActivity, LVModalBottomSheetState lVModalBottomSheetState, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.f59006c = mainActivity;
        this.d = lVModalBottomSheetState;
        this.f59007e = mutableState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new MainActivity$onCreate$1$1$1$1(this.f59006c, this.d, this.f59007e, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((MainActivity$onCreate$1$1$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object obj2 = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f59005b;
        if (i2 == 0) {
            ResultKt.b(obj);
            MainActivity mainActivity = this.f59006c;
            lb0 lb0Var = new lb0(mainActivity, 3);
            jx jxVar = new jx(mainActivity, this.d, this.f59007e, 19);
            kb0 kb0Var = new kb0(mainActivity, 3);
            this.f59005b = 1;
            MainActivity.Companion companion = MainActivity.L;
            Object objA = RepeatOnLifecycleKt.a(mainActivity.getD(), Lifecycle.State.CREATED, new MainActivity$listenLinkSideEffect$2(mainActivity, lb0Var, jxVar, kb0Var, null), this);
            if (objA != obj2) {
                objA = Unit.f71739a;
            }
            if (objA == obj2) {
                return obj2;
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
