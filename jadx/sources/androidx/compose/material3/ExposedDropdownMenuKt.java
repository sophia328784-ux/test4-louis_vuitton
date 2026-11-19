package androidx.compose.material3;

import android.content.res.Configuration;
import android.view.View;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material3.internal.BackHandler_androidKt;
import androidx.compose.material3.internal.Strings;
import androidx.compose.material3.internal.Strings_androidKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.focus.FocusRequesterModifierKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntRect;
import com.vuitton.android.R;
import defpackage.cu;
import defpackage.hf;
import defpackage.i4;
import defpackage.kg;
import defpackage.nd;
import defpackage.qw;
import defpackage.rw;
import defpackage.u8;
import defpackage.um;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003*8\b\u0007\u0010\t\"\u00020\u00002\u00020\u0000B*\b\u0001\u0012\b\b\u0002\u0012\u0004\b\b(\u0003\u0012\u001c\b\u0004\u0012\u0018\b\u000bB\u0014\b\u0005\u0012\b\b\u0006\u0012\u0004\b\b(\u0007\u0012\u0006\b\b\u0012\u0002\b\f¨\u0006\u000f²\u0006\u0010\u0010\u000b\u001a\u0004\u0018\u00010\n8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\r\u001a\u00020\f8\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u000e\u001a\u00020\f8\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/material3/ExposedDropdownMenuAnchorType;", "Lkotlin/Deprecated;", "message", "Renamed to ExposedDropdownMenuAnchorType", "replaceWith", "Lkotlin/ReplaceWith;", "expression", "ExposedDropdownMenuAnchorType", "imports", "MenuAnchorType", "Landroidx/compose/ui/layout/LayoutCoordinates;", "anchorCoordinates", "", "anchorWidth", "menuMaxHeight", "material3"}, k = 2, mv = {2, 0, 0}, xi = 48)
public abstract class ExposedDropdownMenuKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f6925a = 0;

    static {
        Dp.Companion companion = Dp.f11004c;
    }

    public static final void a(boolean z, Function1 function1, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i2) {
        ComposableLambdaImpl composableLambdaImpl2;
        boolean z2;
        final boolean z3 = z;
        final Function1 function2 = function1;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "ExposedDropdownMenuBox");
        }
        Modifier modifier2 = modifierE;
        GapComposer gapComposerH = composer.h(1597265892);
        int i3 = i2 | (gapComposerH.b(z3) ? 4 : 2) | (gapComposerH.y(function2) ? 32 : 16) | (gapComposerH.K(modifier2) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Configuration configuration = (Configuration) gapComposerH.k(AndroidCompositionLocals_androidKt.f9935a);
            View view = (View) gapComposerH.k(AndroidCompositionLocals_androidKt.f9939f);
            boolean zK = gapComposerH.K(configuration) | gapComposerH.K(view);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (zK || objX == composer$Companion$Empty$1) {
                objX = new WindowBoundsCalculator(view);
                gapComposerH.q(objX);
            }
            WindowBoundsCalculator windowBoundsCalculator = (WindowBoundsCalculator) objX;
            Density density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            int iB0 = density.B0(MenuKt.f7027a);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = SnapshotStateKt.g(null);
                gapComposerH.q(objX2);
            }
            MutableState mutableState = (MutableState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX3);
            }
            final MutableIntState mutableIntState = (MutableIntState) objX3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = SnapshotIntStateKt.a(0);
                gapComposerH.q(objX4);
            }
            final MutableIntState mutableIntState2 = (MutableIntState) objX4;
            Object objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = new FocusRequester();
                gapComposerH.q(objX5);
            }
            final FocusRequester focusRequester = (FocusRequester) objX5;
            final SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) gapComposerH.k(CompositionLocalsKt.r);
            int i4 = Strings.f7646a;
            final String strA = Strings_androidKt.a(gapComposerH, R.string.m3c_dropdown_menu_expanded);
            final String strA2 = Strings_androidKt.a(gapComposerH, R.string.m3c_dropdown_menu_collapsed);
            final String strA3 = Strings_androidKt.a(gapComposerH, R.string.m3c_dropdown_menu_toggle);
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                ExposedDropdownMenuAnchorType.f6913b.getClass();
                objX6 = SnapshotStateKt.g(new ExposedDropdownMenuAnchorType(ExposedDropdownMenuAnchorType.f6914c));
                gapComposerH.q(objX6);
            }
            final MutableState mutableState2 = (MutableState) objX6;
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX7);
            }
            final MutableState mutableState3 = (MutableState) objX7;
            int i5 = i3 & 14;
            int i6 = i3 & 112;
            boolean zK2 = (i5 == 4) | (i6 == 32) | gapComposerH.K(windowBoundsCalculator) | gapComposerH.K(density);
            Object objX8 = gapComposerH.x();
            if (zK2 || objX8 == composer$Companion$Empty$1) {
                objX8 = new ExposedDropdownMenuBoxScopeImpl() { // from class: androidx.compose.material3.ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1
                    @Override // androidx.compose.material3.ExposedDropdownMenuBoxScope
                    public final Modifier b(Modifier modifier3, boolean z4) {
                        return LayoutModifierKt.a(modifier3, new cu(z4, mutableIntState, mutableIntState2, 1));
                    }

                    @Override // androidx.compose.material3.ExposedDropdownMenuBoxScope
                    public final boolean c() {
                        return ((Boolean) mutableState3.getF10755b()).booleanValue();
                    }

                    @Override // androidx.compose.material3.ExposedDropdownMenuBoxScope
                    public final String d() {
                        return ((ExposedDropdownMenuAnchorType) mutableState2.getF10755b()).f6916a;
                    }

                    @Override // androidx.compose.material3.ExposedDropdownMenuBoxScope
                    public final Modifier e(Modifier modifier3, final String str) {
                        Modifier modifierA = FocusRequesterModifierKt.a(modifier3, focusRequester);
                        MutableState mutableState4 = mutableState2;
                        Modifier modifierO = modifierA.o(new ExposedDropdownMenuAnchorElement(new rw(str, mutableState4, 0)));
                        Function1 function3 = function2;
                        final boolean z4 = z3;
                        final nd ndVar = new nd(mutableState4, str, function3, z4);
                        int i7 = ExposedDropdownMenuKt.f6925a;
                        Modifier modifierA2 = SuspendingPointerInputFilterKt.a(Modifier.Companion.f8607b, ndVar, new PointerInputEventHandler() { // from class: androidx.compose.material3.ExposedDropdownMenuKt$expandable$1

                            /* JADX INFO: renamed from: androidx.compose.material3.ExposedDropdownMenuKt$expandable$1$1, reason: invalid class name */
                            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {2, 0, 0}, xi = 48)
                            @DebugMetadata(c = "androidx.compose.material3.ExposedDropdownMenuKt$expandable$1$1", f = "ExposedDropdownMenu.kt", l = {1426, 1430}, m = "invokeSuspend")
                            final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {

                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                public int f6937c;
                                public /* synthetic */ Object d;

                                /* JADX INFO: renamed from: e, reason: collision with root package name */
                                public final /* synthetic */ String f6938e;

                                /* JADX INFO: renamed from: f, reason: collision with root package name */
                                public final /* synthetic */ nd f6939f;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public AnonymousClass1(String str, nd ndVar, Continuation continuation) {
                                    super(2, continuation);
                                    this.f6938e = str;
                                    this.f6939f = ndVar;
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation create(Object obj, Continuation continuation) {
                                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.f6938e, this.f6939f, continuation);
                                    anonymousClass1.d = obj;
                                    return anonymousClass1;
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj, Object obj2) {
                                    return ((AnonymousClass1) create((AwaitPointerEventScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
                                }

                                /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
                                
                                    if (r7 == r0) goto L18;
                                 */
                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                    To view partially-correct add '--show-bad-code' argument
                                */
                                public final java.lang.Object invokeSuspend(java.lang.Object r7) {
                                    /*
                                        r6 = this;
                                        kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
                                        int r1 = r6.f6937c
                                        r2 = 0
                                        r3 = 2
                                        r4 = 1
                                        if (r1 == 0) goto L1f
                                        if (r1 == r4) goto L17
                                        if (r1 != r3) goto L11
                                        kotlin.ResultKt.b(r7)
                                        goto L55
                                    L11:
                                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                                        defpackage.md.k(r6)
                                        return r2
                                    L17:
                                        java.lang.Object r1 = r6.d
                                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                                        kotlin.ResultKt.b(r7)
                                        goto L34
                                    L1f:
                                        kotlin.ResultKt.b(r7)
                                        java.lang.Object r7 = r6.d
                                        r1 = r7
                                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                                        androidx.compose.ui.input.pointer.PointerEventPass r7 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                                        r6.d = r1
                                        r6.f6937c = r4
                                        java.lang.Object r7 = androidx.compose.foundation.gestures.TapGestureDetectorKt.b(r1, r7, r6, r4)
                                        if (r7 != r0) goto L34
                                        goto L54
                                    L34:
                                        androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
                                        androidx.compose.material3.ExposedDropdownMenuAnchorType$Companion r4 = androidx.compose.material3.ExposedDropdownMenuAnchorType.f6913b
                                        r4.getClass()
                                        java.lang.String r4 = androidx.compose.material3.ExposedDropdownMenuAnchorType.f6915e
                                        java.lang.String r5 = r6.f6938e
                                        boolean r4 = kotlin.jvm.internal.Intrinsics.c(r5, r4)
                                        if (r4 == 0) goto L48
                                        r7.a()
                                    L48:
                                        androidx.compose.ui.input.pointer.PointerEventPass r7 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                                        r6.d = r2
                                        r6.f6937c = r3
                                        java.lang.Object r7 = androidx.compose.foundation.gestures.TapGestureDetectorKt.j(r1, r7, r6)
                                        if (r7 != r0) goto L55
                                    L54:
                                        return r0
                                    L55:
                                        androidx.compose.ui.input.pointer.PointerInputChange r7 = (androidx.compose.ui.input.pointer.PointerInputChange) r7
                                        if (r7 == 0) goto L5e
                                        nd r6 = r6.f6939f
                                        r6.mo47invoke()
                                    L5e:
                                        kotlin.Unit r6 = kotlin.Unit.f71739a
                                        return r6
                                    */
                                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ExposedDropdownMenuKt$expandable$1.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
                                }
                            }

                            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                                Object objB = ForEachGestureKt.b(pointerInputScope, new AnonymousClass1(str, ndVar, null), continuation);
                                return objB == CoroutineSingletons.COROUTINE_SUSPENDED ? objB : Unit.f71739a;
                            }
                        });
                        final MutableState mutableState5 = mutableState3;
                        return modifierO.o(SemanticsModifierKt.b(KeyInputModifierKt.b(modifierA2, new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.material3.ExposedDropdownMenuKt$expandable$2
                            /* JADX WARN: Code duplicated, block: B:10:0x003f  */
                            /* JADX WARN: Code duplicated, block: B:11:0x0043  */
                            /* JADX WARN: Code duplicated, block: B:13:0x0049  */
                            /* JADX WARN: Code duplicated, block: B:8:0x0030  */
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj) {
                                boolean zC;
                                nd ndVar2;
                                android.view.KeyEvent keyEvent = ((KeyEvent) obj).f9235a;
                                int i8 = ExposedDropdownMenuKt.f6925a;
                                int iB = KeyEvent_androidKt.b(keyEvent);
                                KeyEventType.f9236a.getClass();
                                int i9 = KeyEventType.f9237b;
                                String str2 = str;
                                if (iB == i9) {
                                    if (ExposedDropdownMenuKt.c(keyEvent)) {
                                        ExposedDropdownMenuAnchorType.f6913b.getClass();
                                        zC = Intrinsics.c(str2, ExposedDropdownMenuAnchorType.d);
                                        ndVar2 = ndVar;
                                        if (!zC) {
                                            ndVar2.mo47invoke();
                                        } else if (ExposedDropdownMenuKt.c(keyEvent)) {
                                            ndVar2.mo47invoke();
                                            return Boolean.TRUE;
                                        }
                                    } else {
                                        long jA = Key_androidKt.a(keyEvent.getKeyCode());
                                        Key.f9226a.getClass();
                                        if (Key.a(jA, Key.r)) {
                                            ExposedDropdownMenuAnchorType.f6913b.getClass();
                                            zC = Intrinsics.c(str2, ExposedDropdownMenuAnchorType.d);
                                            ndVar2 = ndVar;
                                            if (!zC) {
                                                ndVar2.mo47invoke();
                                            } else if (ExposedDropdownMenuKt.c(keyEvent)) {
                                                ndVar2.mo47invoke();
                                                return Boolean.TRUE;
                                            }
                                        }
                                    }
                                }
                                ExposedDropdownMenuAnchorType.f6913b.getClass();
                                boolean zC2 = Intrinsics.c(str2, ExposedDropdownMenuAnchorType.d);
                                MutableState mutableState6 = mutableState5;
                                if (zC2 && z4) {
                                    long jA2 = Key_androidKt.a(keyEvent.getKeyCode());
                                    Key.f9226a.getClass();
                                    if (Key.a(jA2, Key.q) || Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.f9230f) || Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.f9229e)) {
                                        Boolean bool = Boolean.TRUE;
                                        mutableState6.setValue(bool);
                                        return bool;
                                    }
                                }
                                Boolean bool2 = Boolean.FALSE;
                                mutableState6.setValue(bool2);
                                return bool2;
                            }
                        }), false, new kg(str, z4, strA, strA2, strA3, ndVar, softwareKeyboardController)));
                    }
                };
                focusRequester = focusRequester;
                z3 = z3;
                function2 = function2;
                gapComposerH.q(objX8);
            }
            ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1 = (ExposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1) objX8;
            boolean zY = gapComposerH.y(windowBoundsCalculator) | gapComposerH.d(iB0);
            Object objX9 = gapComposerH.x();
            if (zY || objX9 == composer$Companion$Empty$1) {
                objX9 = new um(windowBoundsCalculator, iB0, mutableState, mutableIntState, mutableIntState2);
                gapComposerH.q(objX9);
            }
            Modifier modifierA = OnGloballyPositionedModifierKt.a(modifier2, (Function1) objX9);
            Alignment.f8582a.getClass();
            MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            int iG = gapComposerH.G();
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
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
            Function2 function3 = ComposeUiNode.Companion.g;
            if (gapComposerH.S || !Intrinsics.c(gapComposerH.x(), Integer.valueOf(iG))) {
                defpackage.a.t(iG, gapComposerH, iG, function3);
            }
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            composableLambdaImpl2 = composableLambdaImpl;
            composableLambdaImpl2.A(exposedDropdownMenuKt$ExposedDropdownMenuBox$scope$1$1, gapComposerH, 48);
            gapComposerH.Z(true);
            if (z3) {
                gapComposerH.L(209894723);
                boolean zY2 = gapComposerH.y(windowBoundsCalculator) | gapComposerH.d(iB0);
                Object objX10 = gapComposerH.x();
                if (zY2 || objX10 == composer$Companion$Empty$1) {
                    objX10 = new qw(windowBoundsCalculator, iB0, mutableState, mutableIntState2);
                    gapComposerH.q(objX10);
                }
                z2 = false;
                ExposedDropdownMenu_androidKt.a((Function0) objX10, gapComposerH, 0);
                gapComposerH.Z(false);
            } else {
                z2 = false;
                gapComposerH.L(210228190);
                gapComposerH.Z(false);
            }
            boolean z4 = i5 == 4 ? true : z2;
            Object objX11 = gapComposerH.x();
            if (z4 || objX11 == composer$Companion$Empty$1) {
                objX11 = new hf(z3, focusRequester, 2);
                gapComposerH.q(objX11);
            }
            EffectsKt.i((Function0) objX11, gapComposerH);
            boolean z5 = i6 == 32 ? true : z2;
            Object objX12 = gapComposerH.x();
            if (z5 || objX12 == composer$Companion$Empty$1) {
                objX12 = new u8(function2, 21);
                gapComposerH.q(objX12);
            }
            BackHandler_androidKt.a(i5, gapComposerH, (Function0) objX12, z3);
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            modifier2 = modifier2;
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new i4(z3, function2, modifier2, composableLambdaImpl2, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0028  */
    public static final int b(IntRect intRect, Rect rect, int i2) {
        int iC;
        if (rect == null) {
            return 0;
        }
        int i3 = intRect.f11018b;
        int i4 = i3 + i2;
        int i5 = intRect.d;
        int i6 = i5 - i2;
        float f2 = rect.f8812b;
        if (f2 <= i5) {
            float f3 = rect.d;
            if (f3 < i3) {
                iC = i6 - i4;
            } else {
                iC = MathKt.c(Math.max(f2 - i4, i6 - f3));
            }
        } else {
            iC = i6 - i4;
        }
        return Math.max(iC, 0);
    }

    public static final boolean c(android.view.KeyEvent keyEvent) {
        long jA = KeyEvent_androidKt.a(keyEvent);
        Key.Companion companion = Key.f9226a;
        companion.getClass();
        if (Key.a(jA, Key.f9232i)) {
            return true;
        }
        companion.getClass();
        if (Key.a(jA, Key.s)) {
            return true;
        }
        companion.getClass();
        return Key.a(jA, Key.F);
    }
}
