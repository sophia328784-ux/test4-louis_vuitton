package com.vuitton.android.presentation.loading;

import androidx.compose.runtime.MutableState;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import defpackage.k40;
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
import kotlinx.coroutines.DelayKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.presentation.loading.LvLoadingKt$LvLoading$1$1", f = "LvLoading.kt", l = {206}, m = "invokeSuspend", v = 2)
final class LvLoadingKt$LvLoading$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f51716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f51717c;
    public final /* synthetic */ LVModalBottomSheetState d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ long f51718e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ MutableState f51719f;
    public final /* synthetic */ MutableState g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LvLoadingKt$LvLoading$1$1(boolean z, LVModalBottomSheetState lVModalBottomSheetState, long j2, MutableState mutableState, MutableState mutableState2, Continuation continuation) {
        super(2, continuation);
        this.f51717c = z;
        this.d = lVModalBottomSheetState;
        this.f51718e = j2;
        this.f51719f = mutableState;
        this.g = mutableState2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new LvLoadingKt$LvLoading$1$1(this.f51717c, this.d, this.f51718e, this.f51719f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((LvLoadingKt$LvLoading$1$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f51716b;
        if (i2 == 0) {
            ResultKt.b(obj);
            boolean z = this.f51717c;
            LVModalBottomSheetState lVModalBottomSheetState = this.d;
            if (z) {
                lVModalBottomSheetState.e();
            } else {
                lVModalBottomSheetState.b(new k40(28));
            }
            if (!z) {
                this.f51716b = 1;
                if (DelayKt.b(this.f51718e, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            return Unit.f71739a;
        }
        if (i2 != 1) {
            md.k("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        Boolean bool = Boolean.TRUE;
        this.f51719f.setValue(bool);
        this.g.setValue(bool);
        return Unit.f71739a;
    }
}
