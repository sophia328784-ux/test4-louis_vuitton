package defpackage;

import androidx.compose.foundation.gestures.ContentInViewNode;
import androidx.compose.foundation.gestures.DefaultFlingBehavior;
import androidx.compose.foundation.gestures.NestedScrollScope;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.UpdatableAnimationState;
import androidx.compose.runtime.MutableState;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairCalendarViewState;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.Job;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class n0 implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76407b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76408c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f76409e;

    public /* synthetic */ n0(ContentInViewNode contentInViewNode, UpdatableAnimationState updatableAnimationState, Job job, NestedScrollScope nestedScrollScope) {
        this.f76407b = 17;
        this.f76408c = contentInViewNode;
        this.d = job;
        this.f76409e = nestedScrollScope;
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0253  */
    /* JADX WARN: Code duplicated, block: B:103:0x0262  */
    /* JADX WARN: Code duplicated, block: B:106:0x026f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0283  */
    /* JADX WARN: Code duplicated, block: B:114:0x0285 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:115:0x0287  */
    /* JADX WARN: Code duplicated, block: B:309:0x027d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:90:0x023c  */
    /* JADX WARN: Code duplicated, block: B:91:0x023f  */
    /* JADX WARN: Code duplicated, block: B:93:0x0242  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [androidx.media3.common.Player, androidx.media3.exoplayer.ExoPlayer] */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v3, types: [androidx.compose.ui.graphics.Canvas] */
    /* JADX WARN: Type inference failed for: r10v4 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v3, types: [androidx.compose.ui.graphics.AndroidPaint] */
    /* JADX WARN: Type inference failed for: r15v4 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r1v11, types: [androidx.media3.common.Player$Listener, com.vuitton.android.presentation.screen.aicompanion.components.onboarding.AICompanionOnboardingScreenKt$AICompanionOnboardingScreen$2$1$listener$1] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v15 java.lang.Object, still in use, count: 2, list:
          (r5v15 java.lang.Object) from 0x0238: PHI (r5 I:??) = (r5v12 java.lang.Object), (r5v15 java.lang.Object) binds: [B:87:0x0237, B:307:0x0238] A[DONT_GENERATE, DONT_INLINE]
          (r5v15 java.lang.Object) from 0x022c: CHECK_CAST (com.vuitton.android.presentation.screen.dynamicform.model.field.type.value.FormEnumDependentValueUiModel) (r5v15 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // kotlin.jvm.functions.Function1
    public final java.lang.Object invoke(java.lang.Object r22) {
        /*
            Method dump skipped, instruction units count: 2236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.n0.invoke(java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ n0(DistantRepairCalendarViewState distantRepairCalendarViewState, Function0 function0, MutableState mutableState) {
        this.f76407b = 23;
        this.f76408c = distantRepairCalendarViewState;
        this.f76409e = function0;
        this.d = mutableState;
    }

    public /* synthetic */ n0(Object obj, Object obj2, Object obj3, int i2) {
        this.f76407b = i2;
        this.f76408c = obj;
        this.d = obj2;
        this.f76409e = obj3;
    }

    public /* synthetic */ n0(Ref$FloatRef ref$FloatRef, ScrollScope scrollScope, Ref$FloatRef ref$FloatRef2, DefaultFlingBehavior defaultFlingBehavior) {
        this.f76407b = 20;
        this.f76408c = ref$FloatRef;
        this.d = scrollScope;
        this.f76409e = ref$FloatRef2;
    }
}
