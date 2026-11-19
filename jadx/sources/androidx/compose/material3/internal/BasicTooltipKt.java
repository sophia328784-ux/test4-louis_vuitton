package androidx.compose.material3.internal;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material3.TooltipState;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusChangedModifierKt;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.compose.ui.window.PopupProperties;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.github.druk.dnssd.NSType;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import defpackage.a4;
import defpackage.b3;
import defpackage.c1;
import defpackage.fc;
import defpackage.i1;
import defpackage.md;
import defpackage.n0;
import defpackage.p1;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class BasicTooltipKt {
    public static final void a(PopupPositionProvider popupPositionProvider, ComposableLambdaImpl composableLambdaImpl, TooltipState tooltipState, Modifier modifier, ComposableLambdaImpl composableLambdaImpl2, Composer composer, int i2) {
        PopupPositionProvider popupPositionProvider2;
        int i3;
        ComposableLambdaImpl composableLambdaImpl3;
        ComposableLambdaImpl composableLambdaImpl4;
        Modifier modifier2;
        MutableState mutableState;
        boolean z;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "BasicTooltipBox");
        }
        Modifier modifier3 = modifierE;
        GapComposer gapComposerH = composer.h(-1221877520);
        if ((i2 & 6) == 0) {
            popupPositionProvider2 = popupPositionProvider;
            i3 = (gapComposerH.K(popupPositionProvider2) ? 4 : 2) | i2;
        } else {
            popupPositionProvider2 = popupPositionProvider;
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            composableLambdaImpl3 = composableLambdaImpl;
            i3 |= gapComposerH.y(composableLambdaImpl3) ? 32 : 16;
        } else {
            composableLambdaImpl3 = composableLambdaImpl;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= (i2 & 512) == 0 ? gapComposerH.K(tooltipState) : gapComposerH.y(tooltipState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.K(modifier3) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.y(null) ? 16384 : 8192;
        }
        if ((i2 & ImageMetadata.EDGE_MODE) == 0) {
            i3 |= gapComposerH.b(false) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.b(true) ? 1048576 : 524288;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.b(false) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            composableLambdaImpl4 = composableLambdaImpl2;
            i3 |= gapComposerH.y(composableLambdaImpl4) ? 67108864 : 33554432;
        } else {
            composableLambdaImpl4 = composableLambdaImpl2;
        }
        int i4 = i3;
        if (gapComposerH.p(i4 & 1, (38347923 & i4) != 38347922)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX2);
            }
            MutableState mutableState2 = (MutableState) objX2;
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("BasicTooltipBox");
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function2 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function2);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (tooltipState.isVisible()) {
                gapComposerH.L(-1891243071);
                b(popupPositionProvider2, tooltipState, coroutineScope, false, mutableState2, composableLambdaImpl3, gapComposerH, (i4 & 14) | ImageMetadata.EDGE_MODE | ((i4 >> 3) & 112) | ((i4 >> 6) & 896) | ((i4 << 15) & 3670016));
                mutableState = mutableState2;
                gapComposerH = gapComposerH;
                z = false;
                gapComposerH.Z(false);
            } else {
                mutableState = mutableState2;
                z = false;
                gapComposerH.L(-1890863476);
                gapComposerH.Z(false);
            }
            modifier2 = modifier3;
            c(tooltipState, mutableState, modifier2, composableLambdaImpl4, gapComposerH, ((i4 >> 18) & 14) | KyberEngine.KyberPolyBytes | ((i4 >> 3) & 112) | ((i4 >> 12) & 7168) | (57344 & (i4 << 3)) | ((i4 >> 9) & ImageMetadata.JPEG_GPS_COORDINATES));
            gapComposerH.Z(true);
            boolean z2 = ((i4 & 896) == 256 || ((i4 & 512) != 0 && gapComposerH.y(tooltipState))) ? true : z;
            Object objX3 = gapComposerH.x();
            if (z2 || objX3 == composer$Companion$Empty$1) {
                objX3 = new c1(tooltipState, 18);
                gapComposerH.q(objX3);
            }
            EffectsKt.c(tooltipState, (Function1) objX3, gapComposerH);
        } else {
            modifier2 = modifier3;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new b3(popupPositionProvider, composableLambdaImpl, tooltipState, modifier2, composableLambdaImpl2, i2, 2);
        }
    }

    public static final void b(PopupPositionProvider popupPositionProvider, final TooltipState tooltipState, final CoroutineScope coroutineScope, boolean z, final MutableState mutableState, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        GapComposer gapComposerH = composer.h(-1413720282);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(popupPositionProvider) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= (i2 & 64) == 0 ? gapComposerH.K(tooltipState) : gapComposerH.y(tooltipState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(null) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(coroutineScope) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.b(z) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.K(mutableState) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 1048576 : 524288;
        }
        if (gapComposerH.p(i3 & 1, (599187 & i3) != 599186)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            final String strC = StringResources_androidKt.c(gapComposerH, R.string.tooltip_description);
            boolean zY = ((i3 & 112) == 32 || ((i3 & 64) != 0 && gapComposerH.y(tooltipState))) | ((i3 & 896) == 256) | gapComposerH.y(coroutineScope) | ((458752 & i3) == 131072);
            Object objX = gapComposerH.x();
            if (zY || objX == Composer.Companion.f7939a) {
                objX = new Function0() { // from class: androidx.compose.material3.internal.c
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        TooltipState tooltipState2 = tooltipState;
                        if (tooltipState2.isVisible()) {
                            BuildersKt.c(coroutineScope, null, null, new BasicTooltipKt$TooltipPopup$1$1$1(tooltipState2, null), 3);
                            mutableState.setValue(Boolean.FALSE);
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX);
            }
            AndroidPopup_androidKt.a(popupPositionProvider, (Function0) objX, new PopupProperties(z, false, false, false, 14, (DefaultConstructorMarker) null), ComposableLambdaKt.b(-1287705660, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.BasicTooltipKt$TooltipPopup$2
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
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    int iIntValue = ((Number) obj2).intValue();
                    if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        String str = strC;
                        boolean zK = composer2.K(str);
                        Object objX2 = composer2.x();
                        if (zK || objX2 == Composer.Companion.f7939a) {
                            objX2 = new a4(str, 3);
                            composer2.q(objX2);
                        }
                        Modifier modifierB = SemanticsModifierKt.b(Modifier.Companion.f8607b, false, (Function1) objX2);
                        Alignment.f8582a.getClass();
                        MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        int iG = composer2.G();
                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer2.n();
                        Modifier modifierC = ComposedModifierKt.c(composer2, modifierB);
                        ComposeUiNode.b0.getClass();
                        Function0 function0 = ComposeUiNode.Companion.f9641b;
                        if (composer2.getF7976a() == null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        composer2.B();
                        if (composer2.getS()) {
                            composer2.C(function0);
                        } else {
                            composer2.o();
                        }
                        Updater.c(composer2, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(composer2, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                        Function2 function2 = ComposeUiNode.Companion.g;
                        if (composer2.getS() || !Intrinsics.c(composer2.x(), Integer.valueOf(iG))) {
                            fc.A(function2, iG, composer2, iG);
                        }
                        Updater.c(composer2, modifierC, ComposeUiNode.Companion.d);
                        composableLambdaImpl.invoke(composer2, 0);
                        composer2.r();
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), gapComposerH, (i3 & 14) | 3072, 0);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new p1(popupPositionProvider, tooltipState, coroutineScope, z, mutableState, composableLambdaImpl, i2);
        }
    }

    public static final void c(final TooltipState tooltipState, final MutableState mutableState, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        int i3;
        if (modifier != null) {
            modifier = defpackage.a.e(modifier, "WrappedAnchor");
        }
        Modifier modifier2 = modifier;
        GapComposer gapComposerH = composer.h(1873232064);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.b(true) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= (i2 & 64) == 0 ? gapComposerH.K(tooltipState) : gapComposerH.y(tooltipState) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.K(mutableState) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.b(false) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(modifier2) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.y(composableLambdaImpl) ? 131072 : 65536;
        }
        if (gapComposerH.p(i3 & 1, (74899 & i3) != 74898)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            if (objX == Composer.Companion.f7939a) {
                objX = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX);
            }
            CoroutineScope coroutineScope = (CoroutineScope) objX;
            Modifier modifierB = KeyInputModifierKt.b(FocusChangedModifierKt.a(SuspendingPointerInputFilterKt.a(SuspendingPointerInputFilterKt.a(modifier2, tooltipState, new PointerInputEventHandler() { // from class: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1

                /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1, reason: invalid class name */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1", f = "BasicTooltip.kt", l = {203}, m = "invokeSuspend")
                final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public int f7556b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public /* synthetic */ Object f7557c;
                    public final /* synthetic */ PointerInputScope d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ TooltipState f7558e;

                    /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1, reason: invalid class name and collision with other inner class name */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1", f = "BasicTooltip.kt", l = {210, 216, 238}, m = "invokeSuspend")
                    final class C00211 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public MutableStateFlow f7559c;
                        public PointerEventPass d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public long f7560e;

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        public int f7561f;
                        public /* synthetic */ Object g;

                        /* JADX INFO: renamed from: h, reason: collision with root package name */
                        public final /* synthetic */ CoroutineScope f7562h;

                        /* JADX INFO: renamed from: i, reason: collision with root package name */
                        public final /* synthetic */ TooltipState f7563i;

                        /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$1, reason: invalid class name and collision with other inner class name */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "Landroidx/compose/ui/input/pointer/PointerInputChange;", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$1", f = "BasicTooltip.kt", l = {217}, m = "invokeSuspend")
                        final class C00221 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super PointerInputChange>, Object> {

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f7564c;
                            public /* synthetic */ Object d;

                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                            public final /* synthetic */ PointerEventPass f7565e;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public C00221(PointerEventPass pointerEventPass, Continuation continuation) {
                                super(2, continuation);
                                this.f7565e = pointerEventPass;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation create(Object obj, Continuation continuation) {
                                C00221 c00221 = new C00221(this.f7565e, continuation);
                                c00221.d = obj;
                                return c00221;
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return ((C00221) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i2 = this.f7564c;
                                if (i2 != 0) {
                                    if (i2 == 1) {
                                        ResultKt.b(obj);
                                        return obj;
                                    }
                                    md.k("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                ResultKt.b(obj);
                                AwaitPointerEventScope awaitPointerEventScope = (AwaitPointerEventScope) this.d;
                                this.f7564c = 1;
                                Object objJ = TapGestureDetectorKt.j(awaitPointerEventScope, this.f7565e, this);
                                return objJ == coroutineSingletons ? coroutineSingletons : objJ;
                            }
                        }

                        /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3, reason: invalid class name */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3", f = "BasicTooltip.kt", l = {BERTags.FLAGS, 227, 227}, m = "invokeSuspend")
                        final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public Throwable f7566b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public int f7567c;
                            public final /* synthetic */ MutableStateFlow d;

                            /* JADX INFO: renamed from: e, reason: collision with root package name */
                            public final /* synthetic */ TooltipState f7568e;

                            /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1, reason: invalid class name and collision with other inner class name */
                            @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "", "isLongPressed", ""}, k = 3, mv = {2, 0, 0}, xi = 48)
                            @DebugMetadata(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1", f = "BasicTooltip.kt", l = {}, m = "invokeSuspend")
                            final class C00231 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {

                                /* JADX INFO: renamed from: b, reason: collision with root package name */
                                public /* synthetic */ boolean f7569b;

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public final /* synthetic */ TooltipState f7570c;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public C00231(TooltipState tooltipState, Continuation continuation) {
                                    super(2, continuation);
                                    this.f7570c = tooltipState;
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation create(Object obj, Continuation continuation) {
                                    C00231 c00231 = new C00231(this.f7570c, continuation);
                                    c00231.f7569b = ((Boolean) obj).booleanValue();
                                    return c00231;
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    Boolean bool = (Boolean) obj;
                                    bool.booleanValue();
                                    return ((C00231) create(bool, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object obj) {
                                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                    ResultKt.b(obj);
                                    if (!this.f7569b) {
                                        this.f7570c.dismiss();
                                    }
                                    return Unit.f71739a;
                                }
                            }

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public AnonymousClass3(MutableStateFlow mutableStateFlow, TooltipState tooltipState, Continuation continuation) {
                                super(2, continuation);
                                this.d = mutableStateFlow;
                                this.f7568e = tooltipState;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation create(Object obj, Continuation continuation) {
                                return new AnonymousClass3(this.d, this.f7568e, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return ((AnonymousClass3) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                            }

                            /* JADX WARN: Code restructure failed: missing block: B:22:0x004e, code lost:
                            
                                if (kotlinx.coroutines.flow.FlowKt.g(r6, r9, r8) == r0) goto L30;
                             */
                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            /*
                                Code decompiled incorrectly, please refer to instructions dump.
                                To view partially-correct add '--show-bad-code' argument
                            */
                            public final java.lang.Object invokeSuspend(java.lang.Object r9) throws java.lang.Throwable {
                                /*
                                    r8 = this;
                                    kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                    int r1 = r8.f7567c
                                    r2 = 0
                                    r3 = 3
                                    r4 = 2
                                    r5 = 1
                                    kotlinx.coroutines.flow.MutableStateFlow r6 = r8.d
                                    androidx.compose.material3.TooltipState r7 = r8.f7568e
                                    if (r1 == 0) goto L2a
                                    if (r1 == r5) goto L24
                                    if (r1 == r4) goto L20
                                    if (r1 == r3) goto L1a
                                    java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                                    defpackage.md.k(r8)
                                    return r2
                                L1a:
                                    java.lang.Throwable r8 = r8.f7566b
                                    kotlin.ResultKt.b(r9)
                                    goto L6b
                                L20:
                                    kotlin.ResultKt.b(r9)
                                    goto L51
                                L24:
                                    kotlin.ResultKt.b(r9)     // Catch: java.lang.Throwable -> L28
                                    goto L3d
                                L28:
                                    r9 = move-exception
                                    goto L54
                                L2a:
                                    kotlin.ResultKt.b(r9)
                                    java.lang.Boolean r9 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L28
                                    r6.a(r9)     // Catch: java.lang.Throwable -> L28
                                    androidx.compose.foundation.MutatePriority r9 = androidx.compose.foundation.MutatePriority.PreventUserInput     // Catch: java.lang.Throwable -> L28
                                    r8.f7567c = r5     // Catch: java.lang.Throwable -> L28
                                    java.lang.Object r9 = r7.c(r9, r8)     // Catch: java.lang.Throwable -> L28
                                    if (r9 != r0) goto L3d
                                    goto L69
                                L3d:
                                    boolean r9 = r7.isVisible()
                                    if (r9 == 0) goto L51
                                    androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1 r9 = new androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1
                                    r9.<init>(r7, r2)
                                    r8.f7567c = r4
                                    java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.g(r6, r9, r8)
                                    if (r8 != r0) goto L51
                                    goto L69
                                L51:
                                    kotlin.Unit r8 = kotlin.Unit.f71739a
                                    return r8
                                L54:
                                    boolean r1 = r7.isVisible()
                                    if (r1 == 0) goto L6c
                                    androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1 r1 = new androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1$1$1$3$1
                                    r1.<init>(r7, r2)
                                    r8.f7566b = r9
                                    r8.f7567c = r3
                                    java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.g(r6, r1, r8)
                                    if (r8 != r0) goto L6a
                                L69:
                                    return r0
                                L6a:
                                    r8 = r9
                                L6b:
                                    r9 = r8
                                L6c:
                                    throw r9
                                */
                                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$1.AnonymousClass1.C00211.AnonymousClass3.invokeSuspend(java.lang.Object):java.lang.Object");
                            }
                        }

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00211(CoroutineScope coroutineScope, TooltipState tooltipState, Continuation continuation) {
                            super(2, continuation);
                            this.f7562h = coroutineScope;
                            this.f7563i = tooltipState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            C00211 c00211 = new C00211(this.f7562h, this.f7563i, continuation);
                            c00211.g = obj;
                            return c00211;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((C00211) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                        }

                        /* JADX WARN: Code duplicated, block: B:41:0x00c4  */
                        /* JADX WARN: Code duplicated, block: B:44:0x00c9 A[Catch: all -> 0x0019, TRY_LEAVE, TryCatch #3 {all -> 0x0019, blocks: (B:8:0x0014, B:42:0x00c5, B:44:0x00c9), top: B:54:0x0014 }] */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) throws Throwable {
                            MutableStateFlow mutableStateFlowA;
                            PointerEventPass pointerEventPass;
                            long j2;
                            AwaitPointerEventScope awaitPointerEventScope;
                            MutableStateFlow mutableStateFlow;
                            MutableStateFlow mutableStateFlow2;
                            PointerInputChange pointerInputChange;
                            CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                            int i2 = this.f7561f;
                            if (i2 == 0) {
                                ResultKt.b(obj);
                                AwaitPointerEventScope awaitPointerEventScope2 = (AwaitPointerEventScope) this.g;
                                mutableStateFlowA = StateFlowKt.a(Boolean.FALSE);
                                long jB = awaitPointerEventScope2.getViewConfiguration().b();
                                pointerEventPass = PointerEventPass.Initial;
                                this.g = awaitPointerEventScope2;
                                this.f7559c = mutableStateFlowA;
                                this.d = pointerEventPass;
                                this.f7560e = jB;
                                this.f7561f = 1;
                                Object objB = TapGestureDetectorKt.b(awaitPointerEventScope2, pointerEventPass, this, 1);
                                if (objB != coroutineSingletons) {
                                    j2 = jB;
                                    awaitPointerEventScope = awaitPointerEventScope2;
                                    obj = objB;
                                }
                                return coroutineSingletons;
                            }
                            if (i2 != 1) {
                                if (i2 != 2) {
                                    if (i2 != 3) {
                                        md.k("call to 'resume' before 'invoke' with coroutine");
                                        return null;
                                    }
                                    mutableStateFlow2 = (MutableStateFlow) this.g;
                                    try {
                                        ResultKt.b(obj);
                                        pointerInputChange = (PointerInputChange) obj;
                                        if (pointerInputChange != null) {
                                            pointerInputChange.a();
                                        }
                                        mutableStateFlow2.a(Boolean.FALSE);
                                        return Unit.f71739a;
                                    } catch (Throwable th) {
                                        th = th;
                                        mutableStateFlow2.a(Boolean.FALSE);
                                        throw th;
                                    }
                                }
                                PointerEventPass pointerEventPass2 = this.d;
                                mutableStateFlow = this.f7559c;
                                awaitPointerEventScope = (AwaitPointerEventScope) this.g;
                                try {
                                    ResultKt.b(obj);
                                    mutableStateFlow.a(Boolean.FALSE);
                                } catch (PointerEventTimeoutCancellationException unused) {
                                    pointerEventPass = pointerEventPass2;
                                    mutableStateFlowA = mutableStateFlow;
                                    BuildersKt.c(this.f7562h, null, CoroutineStart.UNDISPATCHED, new AnonymousClass3(mutableStateFlowA, this.f7563i, null), 1);
                                    this.g = mutableStateFlowA;
                                    this.f7559c = null;
                                    this.d = null;
                                    this.f7561f = 3;
                                    obj = TapGestureDetectorKt.j(awaitPointerEventScope, pointerEventPass, this);
                                    if (obj != coroutineSingletons) {
                                        mutableStateFlow2 = mutableStateFlowA;
                                        pointerInputChange = (PointerInputChange) obj;
                                        if (pointerInputChange != null) {
                                            pointerInputChange.a();
                                        }
                                        mutableStateFlow2.a(Boolean.FALSE);
                                    }
                                    return coroutineSingletons;
                                } catch (Throwable th2) {
                                    th = th2;
                                    mutableStateFlow2 = mutableStateFlow;
                                    mutableStateFlow2.a(Boolean.FALSE);
                                    throw th;
                                }
                                return Unit.f71739a;
                            }
                            long j3 = this.f7560e;
                            PointerEventPass pointerEventPass3 = this.d;
                            MutableStateFlow mutableStateFlow3 = this.f7559c;
                            AwaitPointerEventScope awaitPointerEventScope3 = (AwaitPointerEventScope) this.g;
                            ResultKt.b(obj);
                            pointerEventPass = pointerEventPass3;
                            mutableStateFlowA = mutableStateFlow3;
                            j2 = j3;
                            awaitPointerEventScope = awaitPointerEventScope3;
                            long j4 = j2;
                            int i3 = ((PointerInputChange) obj).f9334i;
                            PointerType.f9367b.getClass();
                            if (i3 == PointerType.f9368c || i3 == PointerType.f9369e) {
                                try {
                                    try {
                                        C00221 c00221 = new C00221(pointerEventPass, null);
                                        this.g = awaitPointerEventScope;
                                        this.f7559c = mutableStateFlowA;
                                        this.d = pointerEventPass;
                                        this.f7561f = 2;
                                        if (awaitPointerEventScope.c1(j4, c00221, this) != coroutineSingletons) {
                                            mutableStateFlow = mutableStateFlowA;
                                            mutableStateFlow.a(Boolean.FALSE);
                                        }
                                    } catch (PointerEventTimeoutCancellationException unused2) {
                                        BuildersKt.c(this.f7562h, null, CoroutineStart.UNDISPATCHED, new AnonymousClass3(mutableStateFlowA, this.f7563i, null), 1);
                                        this.g = mutableStateFlowA;
                                        this.f7559c = null;
                                        this.d = null;
                                        this.f7561f = 3;
                                        obj = TapGestureDetectorKt.j(awaitPointerEventScope, pointerEventPass, this);
                                        if (obj != coroutineSingletons) {
                                            mutableStateFlow2 = mutableStateFlowA;
                                            pointerInputChange = (PointerInputChange) obj;
                                            if (pointerInputChange != null) {
                                                pointerInputChange.a();
                                            }
                                            mutableStateFlow2.a(Boolean.FALSE);
                                            return Unit.f71739a;
                                        }
                                    }
                                    return coroutineSingletons;
                                } catch (Throwable th3) {
                                    th = th3;
                                    mutableStateFlow2 = mutableStateFlowA;
                                    mutableStateFlow2.a(Boolean.FALSE);
                                    throw th;
                                }
                            }
                            return Unit.f71739a;
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(PointerInputScope pointerInputScope, TooltipState tooltipState, Continuation continuation) {
                        super(2, continuation);
                        this.d = pointerInputScope;
                        this.f7558e = tooltipState;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f7558e, continuation);
                        anonymousClass1.f7557c = obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i2 = this.f7556b;
                        if (i2 == 0) {
                            ResultKt.b(obj);
                            C00211 c00211 = new C00211((CoroutineScope) this.f7557c, this.f7558e, null);
                            this.f7556b = 1;
                            if (ForEachGestureKt.b(this.d, c00211, this) == coroutineSingletons) {
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

                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                    Object objD = CoroutineScopeKt.d(new AnonymousClass1(pointerInputScope, tooltipState, null), continuation);
                    return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
                }
            }), tooltipState, new PointerInputEventHandler() { // from class: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2

                /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1, reason: invalid class name */
                @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                @DebugMetadata(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1", f = "BasicTooltip.kt", l = {NSType.TKEY}, m = "invokeSuspend")
                final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                    /* JADX INFO: renamed from: b, reason: collision with root package name */
                    public int f7572b;

                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                    public /* synthetic */ Object f7573c;
                    public final /* synthetic */ PointerInputScope d;

                    /* JADX INFO: renamed from: e, reason: collision with root package name */
                    public final /* synthetic */ TooltipState f7574e;

                    /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1, reason: invalid class name and collision with other inner class name */
                    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1", f = "BasicTooltip.kt", l = {NSType.MAILB}, m = "invokeSuspend")
                    final class C00241 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public PointerEventPass f7575c;
                        public int d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public /* synthetic */ Object f7576e;

                        /* JADX INFO: renamed from: f, reason: collision with root package name */
                        public final /* synthetic */ CoroutineScope f7577f;
                        public final /* synthetic */ TooltipState g;

                        /* JADX INFO: renamed from: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1$1, reason: invalid class name and collision with other inner class name */
                        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                        @DebugMetadata(c = "androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1$1", f = "BasicTooltip.kt", l = {258}, m = "invokeSuspend")
                        final class C00251 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {

                            /* JADX INFO: renamed from: b, reason: collision with root package name */
                            public int f7578b;

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ TooltipState f7579c;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public C00251(TooltipState tooltipState, Continuation continuation) {
                                super(2, continuation);
                                this.f7579c = tooltipState;
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Continuation create(Object obj, Continuation continuation) {
                                return new C00251(this.f7579c, continuation);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj, Object obj2) {
                                return ((C00251) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                            }

                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                            public final Object invokeSuspend(Object obj) {
                                CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                                int i2 = this.f7578b;
                                if (i2 == 0) {
                                    ResultKt.b(obj);
                                    MutatePriority mutatePriority = MutatePriority.UserInput;
                                    this.f7578b = 1;
                                    if (this.f7579c.c(mutatePriority, this) == coroutineSingletons) {
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

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C00241(CoroutineScope coroutineScope, TooltipState tooltipState, Continuation continuation) {
                            super(2, continuation);
                            this.f7577f = coroutineScope;
                            this.g = tooltipState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation create(Object obj, Continuation continuation) {
                            C00241 c00241 = new C00241(this.f7577f, this.g, continuation);
                            c00241.f7576e = obj;
                            return c00241;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            return ((C00241) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                        }

                        /* JADX WARN: Code duplicated, block: B:11:0x0030 A[RETURN] */
                        /* JADX WARN: Code duplicated, block: B:14:0x0047  */
                        /* JADX WARN: Code duplicated, block: B:16:0x0054  */
                        /* JADX WARN: Code duplicated, block: B:17:0x0060  */
                        /* JADX WARN: Code duplicated, block: B:19:0x0064  */
                        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002e -> B:12:0x0031). Please report as a decompilation issue!!! */
                        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:0:?
                            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                            */
                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final java.lang.Object invokeSuspend(java.lang.Object r8) {
                            /*
                                r7 = this;
                                kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                int r1 = r7.d
                                r2 = 0
                                r3 = 1
                                if (r1 == 0) goto L1a
                                if (r1 != r3) goto L14
                                androidx.compose.ui.input.pointer.PointerEventPass r1 = r7.f7575c
                                java.lang.Object r4 = r7.f7576e
                                androidx.compose.ui.input.pointer.AwaitPointerEventScope r4 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r4
                                kotlin.ResultKt.b(r8)
                                goto L31
                            L14:
                                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                                defpackage.md.k(r7)
                                return r2
                            L1a:
                                kotlin.ResultKt.b(r8)
                                java.lang.Object r8 = r7.f7576e
                                androidx.compose.ui.input.pointer.AwaitPointerEventScope r8 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r8
                                androidx.compose.ui.input.pointer.PointerEventPass r1 = androidx.compose.ui.input.pointer.PointerEventPass.Main
                                r4 = r8
                            L24:
                                r7.f7576e = r4
                                r7.f7575c = r1
                                r7.d = r3
                                java.lang.Object r8 = r4.N0(r1, r7)
                                if (r8 != r0) goto L31
                                return r0
                            L31:
                                androidx.compose.ui.input.pointer.PointerEvent r8 = (androidx.compose.ui.input.pointer.PointerEvent) r8
                                java.util.List r5 = r8.f9305a
                                r6 = 0
                                java.lang.Object r5 = r5.get(r6)
                                androidx.compose.ui.input.pointer.PointerInputChange r5 = (androidx.compose.ui.input.pointer.PointerInputChange) r5
                                int r5 = r5.f9334i
                                androidx.compose.ui.input.pointer.PointerType$Companion r6 = androidx.compose.ui.input.pointer.PointerType.f9367b
                                r6.getClass()
                                int r6 = androidx.compose.ui.input.pointer.PointerType.d
                                if (r5 != r6) goto L24
                                int r8 = r8.f9309f
                                androidx.compose.ui.input.pointer.PointerEventType$Companion r5 = androidx.compose.ui.input.pointer.PointerEventType.f9310a
                                r5.getClass()
                                int r5 = androidx.compose.ui.input.pointer.PointerEventType.f9313e
                                androidx.compose.material3.TooltipState r6 = r7.g
                                if (r8 != r5) goto L60
                                androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1$1 r8 = new androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2$1$1$1
                                r8.<init>(r6, r2)
                                r5 = 3
                                kotlinx.coroutines.CoroutineScope r6 = r7.f7577f
                                kotlinx.coroutines.BuildersKt.c(r6, r2, r2, r8, r5)
                                goto L24
                            L60:
                                int r5 = androidx.compose.ui.input.pointer.PointerEventType.f9314f
                                if (r8 != r5) goto L24
                                r6.dismiss()
                                goto L24
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.BasicTooltipKt$handleGestures$2.AnonymousClass1.C00241.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public AnonymousClass1(PointerInputScope pointerInputScope, TooltipState tooltipState, Continuation continuation) {
                        super(2, continuation);
                        this.d = pointerInputScope;
                        this.f7574e = tooltipState;
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Continuation create(Object obj, Continuation continuation) {
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.d, this.f7574e, continuation);
                        anonymousClass1.f7573c = obj;
                        return anonymousClass1;
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        return ((AnonymousClass1) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
                        int i2 = this.f7572b;
                        if (i2 == 0) {
                            ResultKt.b(obj);
                            C00241 c00241 = new C00241((CoroutineScope) this.f7573c, this.f7574e, null);
                            this.f7572b = 1;
                            if (this.d.c0(c00241, this) == coroutineSingletons) {
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

                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                    Object objD = CoroutineScopeKt.d(new AnonymousClass1(pointerInputScope, tooltipState, null), continuation);
                    return objD == CoroutineSingletons.COROUTINE_SUSPENDED ? objD : Unit.f71739a;
                }
            }).o(new ParentSemanticsNodeElement(new n0(StringResources_androidKt.c(gapComposerH, R.string.tooltip_label), coroutineScope, tooltipState, 6))), new a(coroutineScope, tooltipState, 1)), new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.material3.internal.BasicTooltipKt$keyboardBehavior$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    android.view.KeyEvent keyEvent = ((KeyEvent) obj).f9235a;
                    if (!tooltipState.isVisible()) {
                        mutableState.setValue(Boolean.FALSE);
                    }
                    return Boolean.FALSE;
                }
            });
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Function2 function2 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function2);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            composableLambdaImpl.invoke(gapComposerH, Integer.valueOf((i3 >> 15) & 14));
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i1(tooltipState, mutableState, modifier2, composableLambdaImpl, i2, 4);
        }
    }
}
