package com.vuitton.android.designkit.ui.theme.molecules.topbar;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.material3.TopAppBarScrollBehavior;
import androidx.compose.material3.TopAppBarState;
import defpackage.md;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;", "velocity", ""}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.designkit.ui.theme.molecules.topbar.LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1", f = "LVMediumTopBar.kt", l = {151}, m = "invokeSuspend", v = 2)
final class LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1 extends SuspendLambda implements Function3<CoroutineScope, Float, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f48748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ float f48749c;
    public final /* synthetic */ TopAppBarScrollBehavior d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1(TopAppBarScrollBehavior topAppBarScrollBehavior, Continuation continuation) {
        super(3, continuation);
        this.d = topAppBarScrollBehavior;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        float fFloatValue = ((Number) obj2).floatValue();
        LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1 lVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1 = new LVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1(this.d, (Continuation) obj3);
        lVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1.f48749c = fFloatValue;
        return lVMediumTopBarKt$LVMediumTopBar$appBarDragModifier$2$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        float f2 = this.f48749c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f48748b;
        if (i2 == 0) {
            ResultKt.b(obj);
            TopAppBarScrollBehavior topAppBarScrollBehavior = this.d;
            TopAppBarState f6904a = topAppBarScrollBehavior.getF6904a();
            DecayAnimationSpec f6906c = topAppBarScrollBehavior.getF6906c();
            AnimationSpec f6905b = topAppBarScrollBehavior.getF6905b();
            this.f48749c = f2;
            this.f48748b = 1;
            if (LVMediumTopBarKt.c(f6904a, f2, f6906c, f6905b, this) == coroutineSingletons) {
                return coroutineSingletons;
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
