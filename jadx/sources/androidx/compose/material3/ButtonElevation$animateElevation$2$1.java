package androidx.compose.material3;

import androidx.compose.animation.core.Animatable;
import androidx.compose.foundation.interaction.Interaction;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.ButtonElevation$animateElevation$2$1", f = "Button.kt", l = {998, 1007}, m = "invokeSuspend")
final class ButtonElevation$animateElevation$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f6645b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Animatable f6646c;
    public final /* synthetic */ float d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f6647e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ButtonElevation f6648f;
    public final /* synthetic */ Interaction g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ButtonElevation$animateElevation$2$1(Animatable animatable, float f2, boolean z, ButtonElevation buttonElevation, Interaction interaction, Continuation continuation) {
        super(2, continuation);
        this.f6646c = animatable;
        this.d = f2;
        this.f6647e = z;
        this.f6648f = buttonElevation;
        this.g = interaction;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new ButtonElevation$animateElevation$2$1(this.f6646c, this.d, this.f6647e, this.f6648f, this.g, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((ButtonElevation$animateElevation$2$1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0041, code lost:
    
        if (r9.f(r1, r8) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x008b, code lost:
    
        if (androidx.compose.material3.internal.ElevationKt.a(r9, r5, r2, r8.g, r8) == r0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008d, code lost:
    
        return r0;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r1 = r8.f6645b
            r2 = 0
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L19
            if (r1 == r4) goto L14
            if (r1 != r3) goto Le
            goto L14
        Le:
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r8)
            return r2
        L14:
            kotlin.ResultKt.b(r9)
            goto L8e
        L19:
            kotlin.ResultKt.b(r9)
            androidx.compose.animation.core.Animatable r9 = r8.f6646c
            androidx.compose.runtime.MutableState r1 = r9.f3775e
            androidx.compose.runtime.SnapshotMutableStateImpl r1 = (androidx.compose.runtime.SnapshotMutableStateImpl) r1
            java.lang.Object r1 = r1.getF10755b()
            androidx.compose.ui.unit.Dp r1 = (androidx.compose.ui.unit.Dp) r1
            float r1 = r1.f11006b
            float r5 = r8.d
            boolean r1 = androidx.compose.ui.unit.Dp.b(r1, r5)
            if (r1 != 0) goto L8e
            boolean r1 = r8.f6647e
            if (r1 != 0) goto L44
            androidx.compose.ui.unit.Dp r1 = new androidx.compose.ui.unit.Dp
            r1.<init>(r5)
            r8.f6645b = r4
            java.lang.Object r8 = r9.f(r1, r8)
            if (r8 != r0) goto L8e
            goto L8d
        L44:
            androidx.compose.runtime.MutableState r1 = r9.f3775e
            androidx.compose.runtime.SnapshotMutableStateImpl r1 = (androidx.compose.runtime.SnapshotMutableStateImpl) r1
            java.lang.Object r1 = r1.getF10755b()
            androidx.compose.ui.unit.Dp r1 = (androidx.compose.ui.unit.Dp) r1
            float r1 = r1.f11006b
            androidx.compose.material3.ButtonElevation r4 = r8.f6648f
            float r6 = r4.f6639b
            boolean r6 = androidx.compose.ui.unit.Dp.b(r1, r6)
            if (r6 == 0) goto L68
            androidx.compose.foundation.interaction.PressInteraction$Press r1 = new androidx.compose.foundation.interaction.PressInteraction$Press
            androidx.compose.ui.geometry.Offset$Companion r4 = androidx.compose.ui.geometry.Offset.f8806b
            r4.getClass()
            r6 = 0
            r1.<init>(r6, r2)
            r2 = r1
            goto L83
        L68:
            float r6 = r4.d
            boolean r6 = androidx.compose.ui.unit.Dp.b(r1, r6)
            if (r6 == 0) goto L76
            androidx.compose.foundation.interaction.HoverInteraction$Enter r2 = new androidx.compose.foundation.interaction.HoverInteraction$Enter
            r2.<init>()
            goto L83
        L76:
            float r4 = r4.f6640c
            boolean r1 = androidx.compose.ui.unit.Dp.b(r1, r4)
            if (r1 == 0) goto L83
            androidx.compose.foundation.interaction.FocusInteraction$Focus r2 = new androidx.compose.foundation.interaction.FocusInteraction$Focus
            r2.<init>()
        L83:
            r8.f6645b = r3
            androidx.compose.foundation.interaction.Interaction r1 = r8.g
            java.lang.Object r8 = androidx.compose.material3.internal.ElevationKt.a(r9, r5, r2, r1, r8)
            if (r8 != r0) goto L8e
        L8d:
            return r0
        L8e:
            kotlin.Unit r8 = kotlin.Unit.f71739a
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ButtonElevation$animateElevation$2$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
