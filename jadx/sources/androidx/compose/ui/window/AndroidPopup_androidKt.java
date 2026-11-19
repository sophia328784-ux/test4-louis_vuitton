package androidx.compose.ui.window;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.OnRemeasuredModifierKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u0017\u0010\u0003\u001a\r\u0012\u0004\u0012\u00020\u00010\u0000¢\u0006\u0002\b\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lkotlin/Function0;", "", "Landroidx/compose/runtime/Composable;", "currentContent", "ui"}, k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class AndroidPopup_androidKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final DynamicProvidableCompositionLocal f11122a = CompositionLocalKt.c(AndroidPopup_androidKt$LocalPopupTestTag$1.f11125c);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final DynamicProvidableCompositionLocal f11123b = CompositionLocalKt.c(AndroidPopup_androidKt$LocalIsInPopupLayout$1.f11124c);

    /* JADX WARN: Code duplicated, block: B:100:0x023a  */
    /* JADX WARN: Code duplicated, block: B:102:0x0241  */
    /* JADX WARN: Code duplicated, block: B:103:0x0245  */
    /* JADX WARN: Code duplicated, block: B:105:0x026c  */
    /* JADX WARN: Code duplicated, block: B:107:0x0272  */
    /* JADX WARN: Code duplicated, block: B:110:0x027c  */
    /* JADX WARN: Code duplicated, block: B:112:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003e  */
    /* JADX WARN: Code duplicated, block: B:25:0x0046  */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:31:0x0053  */
    /* JADX WARN: Code duplicated, block: B:33:0x0059  */
    /* JADX WARN: Code duplicated, block: B:34:0x005c  */
    /* JADX WARN: Code duplicated, block: B:38:0x0067  */
    /* JADX WARN: Code duplicated, block: B:39:0x0069  */
    /* JADX WARN: Code duplicated, block: B:42:0x0072 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:47:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:50:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:51:0x0110  */
    /* JADX WARN: Code duplicated, block: B:54:0x0124  */
    /* JADX WARN: Code duplicated, block: B:55:0x0126  */
    /* JADX WARN: Code duplicated, block: B:58:0x012f  */
    /* JADX WARN: Code duplicated, block: B:59:0x0131  */
    /* JADX WARN: Code duplicated, block: B:63:0x014a  */
    /* JADX WARN: Code duplicated, block: B:66:0x0165  */
    /* JADX WARN: Code duplicated, block: B:67:0x0167  */
    /* JADX WARN: Code duplicated, block: B:70:0x016e  */
    /* JADX WARN: Code duplicated, block: B:71:0x0170  */
    /* JADX WARN: Code duplicated, block: B:77:0x018d  */
    /* JADX WARN: Code duplicated, block: B:80:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:81:0x01af  */
    /* JADX WARN: Code duplicated, block: B:85:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:89:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:93:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:97:0x0217  */
    public static final void a(PopupPositionProvider popupPositionProvider, Function0 function0, final PopupProperties popupProperties, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i2, final int i3) {
        int i4;
        Function0 function1;
        PopupProperties popupProperties2;
        boolean z;
        final Function0 function2;
        RecomposeScopeImpl recomposeScopeImplB0;
        final Function0 function3;
        View view;
        Density density;
        String str;
        final LayoutDirection layoutDirection;
        GapComposer.CompositionContextImpl compositionContextImplH;
        final MutableState mutableStateL;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        UUID uuid;
        boolean zBooleanValue;
        Object objX2;
        int i5;
        boolean z2;
        String str2;
        int i6;
        final PopupLayout popupLayout;
        int i7;
        int i8;
        boolean z3;
        int i9;
        boolean z4;
        boolean zK;
        Object objX3;
        boolean z5;
        boolean z6;
        boolean zK2;
        Object objX4;
        boolean z7;
        boolean z8;
        Object objX5;
        boolean zY;
        Object objX6;
        boolean zY2;
        Object objX7;
        boolean zY3;
        Object objX8;
        MeasurePolicy measurePolicy;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function4;
        int i10;
        int i11;
        final PopupPositionProvider popupPositionProvider2 = popupPositionProvider;
        GapComposer gapComposerH = composer.h(-1772091631);
        if ((i2 & 6) == 0) {
            i4 = (gapComposerH.K(popupPositionProvider2) ? 4 : 2) | i2;
        } else {
            i4 = i2;
        }
        int i12 = i3 & 2;
        if (i12 == 0) {
            if ((i2 & 48) == 0) {
                function1 = function0;
                i4 |= gapComposerH.y(function1) ? 32 : 16;
            }
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                popupProperties2 = popupProperties;
                if (gapComposerH.K(popupProperties2)) {
                    i11 = 256;
                } else {
                    i11 = 128;
                }
                i4 |= i11;
            } else {
                popupProperties2 = popupProperties;
            }
            if ((i2 & 3072) == 0) {
                if (gapComposerH.y(composableLambdaImpl)) {
                    i10 = 2048;
                } else {
                    i10 = 1024;
                }
                i4 |= i10;
            }
            if ((i4 & 1171) != 1170) {
                z = true;
            } else {
                z = false;
            }
            if (gapComposerH.p(i4 & 1, z)) {
                if (i12 != 0) {
                    function3 = null;
                } else {
                    function3 = function1;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                view = (View) gapComposerH.k(AndroidCompositionLocals_androidKt.f9939f);
                density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
                str = (String) gapComposerH.k(f11122a);
                layoutDirection = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
                compositionContextImplH = gapComposerH.H();
                mutableStateL = SnapshotStateKt.l(composableLambdaImpl, gapComposerH);
                Object[] objArr = new Object[0];
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = AndroidPopup_androidKt$Popup$popupId$1$1.f11145c;
                    gapComposerH.q(objX);
                }
                uuid = (UUID) RememberSaveableKt.d(objArr, (Function0) objX, gapComposerH, 48);
                zBooleanValue = ((Boolean) gapComposerH.k(f11123b)).booleanValue();
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    z2 = false;
                    i5 = i4;
                    i6 = 32;
                    str2 = str;
                    final PopupLayout popupLayout2 = new PopupLayout(function3, popupProperties2, str2, view, density, popupPositionProvider2, uuid, zBooleanValue, null, 256, null);
                    popupPositionProvider2 = popupPositionProvider2;
                    popupLayout2.m(compositionContextImplH, new ComposableLambdaImpl(-297523940, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupLayout$1$1$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            Composer composer2 = (Composer) obj;
                            int iIntValue = ((Number) obj2).intValue();
                            if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                                ProvidedValue providedValueC = AndroidPopup_androidKt.f11123b.c(Boolean.TRUE);
                                final PopupLayout popupLayout3 = popupLayout2;
                                final MutableState mutableState = mutableStateL;
                                CompositionLocalKt.a(providedValueC, ComposableLambdaKt.b(1022273628, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupLayout$1$1$1.1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(2);
                                    }

                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj3, Object obj4) {
                                        Composer composer3 = (Composer) obj3;
                                        int iIntValue2 = ((Number) obj4).intValue();
                                        if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                                            Object objX9 = composer3.x();
                                            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                            if (objX9 == composer$Companion$Empty$2) {
                                                objX9 = AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$1$1.f11148c;
                                                composer3.q(objX9);
                                            }
                                            Modifier modifierB = SemanticsModifierKt.b(Modifier.Companion.f8607b, false, (Function1) objX9);
                                            final PopupLayout popupLayout4 = popupLayout3;
                                            boolean zY4 = composer3.y(popupLayout4);
                                            Object objX10 = composer3.x();
                                            if (zY4 || objX10 == composer$Companion$Empty$2) {
                                                objX10 = new Function1<IntSize, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$2$1
                                                    {
                                                        super(1);
                                                    }

                                                    @Override // kotlin.jvm.functions.Function1
                                                    public final Object invoke(Object obj5) {
                                                        IntSize intSize = new IntSize(((IntSize) obj5).f11021a);
                                                        PopupLayout popupLayout5 = popupLayout4;
                                                        popupLayout5.m11setPopupContentSizefhxjrPA(intSize);
                                                        popupLayout5.q();
                                                        return Unit.f71739a;
                                                    }
                                                };
                                                composer3.q(objX10);
                                            }
                                            Modifier modifierA = AlphaKt.a(OnRemeasuredModifierKt.a(modifierB, (Function1) objX10), popupLayout4.getCanCalculatePosition() ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidPopup_androidKt.f11122a;
                                            Function2 function5 = (Function2) mutableState.getF10755b();
                                            Object objX11 = composer3.x();
                                            if (objX11 == composer$Companion$Empty$2) {
                                                objX11 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1
                                                    @Override // androidx.compose.ui.layout.MeasurePolicy
                                                    /* JADX INFO: renamed from: measure-3p2s80s */
                                                    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
                                                        int size = list.size();
                                                        if (size == 0) {
                                                            return measureScope.V0(0, 0, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1.1
                                                                @Override // kotlin.jvm.functions.Function1
                                                                public final /* bridge */ /* synthetic */ Object invoke(Object obj5) {
                                                                    return Unit.f71739a;
                                                                }
                                                            });
                                                        }
                                                        if (size == 1) {
                                                            final Placeable placeableT = ((Measurable) list.get(0)).T(j2);
                                                            return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1.2
                                                                {
                                                                    super(1);
                                                                }

                                                                @Override // kotlin.jvm.functions.Function1
                                                                public final Object invoke(Object obj5) {
                                                                    Placeable.PlacementScope.y((Placeable.PlacementScope) obj5, placeableT, 0, 0);
                                                                    return Unit.f71739a;
                                                                }
                                                            });
                                                        }
                                                        final ArrayList arrayList = new ArrayList(list.size());
                                                        int size2 = list.size();
                                                        int iMax = 0;
                                                        int iMax2 = 0;
                                                        for (int i13 = 0; i13 < size2; i13++) {
                                                            Placeable placeableT2 = ((Measurable) list.get(i13)).T(j2);
                                                            iMax = Math.max(iMax, placeableT2.f9548b);
                                                            iMax2 = Math.max(iMax2, placeableT2.f9549c);
                                                            arrayList.add(placeableT2);
                                                        }
                                                        return measureScope.V0(iMax, iMax2, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1.3
                                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                            {
                                                                super(1);
                                                            }

                                                            @Override // kotlin.jvm.functions.Function1
                                                            public final Object invoke(Object obj5) {
                                                                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj5;
                                                                List list2 = arrayList;
                                                                int iF = CollectionsKt.F(list2);
                                                                if (iF >= 0) {
                                                                    int i14 = 0;
                                                                    while (true) {
                                                                        Placeable.PlacementScope.y(placementScope, (Placeable) list2.get(i14), 0, 0);
                                                                        if (i14 == iF) {
                                                                            break;
                                                                        }
                                                                        i14++;
                                                                    }
                                                                }
                                                                return Unit.f71739a;
                                                            }
                                                        });
                                                    }
                                                };
                                                composer3.q(objX11);
                                            }
                                            MeasurePolicy measurePolicy2 = (MeasurePolicy) objX11;
                                            int iHashCode2 = Long.hashCode(composer3.getT());
                                            PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                            Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierA);
                                            ComposeUiNode.b0.getClass();
                                            Function0 function6 = ComposeUiNode.Companion.f9641b;
                                            if (composer3.getF7976a() == null) {
                                                ComposablesKt.b();
                                                throw null;
                                            }
                                            composer3.B();
                                            if (composer3.getS()) {
                                                composer3.C(function6);
                                            } else {
                                                composer3.o();
                                            }
                                            Updater.c(composer3, measurePolicy2, ComposeUiNode.Companion.f9644f);
                                            Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                            Updater.c(composer3, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                            Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                                            Updater.c(composer3, modifierC2, ComposeUiNode.Companion.d);
                                            function5.invoke(composer3, 0);
                                            composer3.r();
                                        } else {
                                            composer3.D();
                                        }
                                        return Unit.f71739a;
                                    }
                                }, composer2), composer2, 56);
                            } else {
                                composer2.D();
                            }
                            return Unit.f71739a;
                        }
                    }));
                    gapComposerH.q(popupLayout2);
                    objX2 = popupLayout2;
                } else {
                    i5 = i4;
                    z2 = false;
                    str2 = str;
                    i6 = 32;
                }
                popupLayout = (PopupLayout) objX2;
                boolean zY4 = gapComposerH.y(popupLayout);
                i7 = i5;
                i8 = i7 & 112;
                if (i8 == i6) {
                    z3 = true;
                } else {
                    z3 = z2;
                }
                boolean z9 = zY4 | z3;
                i9 = i7 & 896;
                if (i9 == 256) {
                    z4 = true;
                } else {
                    z4 = z2;
                }
                zK = z9 | z4 | gapComposerH.K(str2) | gapComposerH.d(layoutDirection.ordinal());
                objX3 = gapComposerH.x();
                if (zK || objX3 == composer$Companion$Empty$1) {
                    final String str3 = str2;
                    objX3 = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            final PopupLayout popupLayout3 = popupLayout;
                            popupLayout3.r.addView(popupLayout3, popupLayout3.params);
                            popupLayout3.n(function3, popupProperties, str3, layoutDirection);
                            return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1
                                @Override // androidx.compose.runtime.DisposableEffectResult
                                public final void dispose() {
                                    PopupLayout popupLayout4 = popupLayout3;
                                    popupLayout4.e();
                                    popupLayout4.setTag(R.id.view_tree_lifecycle_owner, null);
                                    popupLayout4.r.removeViewImmediate(popupLayout4);
                                }
                            };
                        }
                    };
                    gapComposerH.q(objX3);
                }
                EffectsKt.c(popupLayout, (Function1) objX3, gapComposerH);
                boolean zY5 = gapComposerH.y(popupLayout);
                if (i8 == i6) {
                    z5 = true;
                } else {
                    z5 = z2;
                }
                boolean z10 = zY5 | z5;
                if (i9 == 256) {
                    z6 = true;
                } else {
                    z6 = z2;
                }
                zK2 = z10 | z6 | gapComposerH.K(str2) | gapComposerH.d(layoutDirection.ordinal());
                objX4 = gapComposerH.x();
                if (zK2 || objX4 == composer$Companion$Empty$1) {
                    final String str4 = str2;
                    objX4 = new Function0<Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$3$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            popupLayout.n(function3, popupProperties, str4, layoutDirection);
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX4);
                }
                EffectsKt.i((Function0) objX4, gapComposerH);
                boolean zY6 = gapComposerH.y(popupLayout);
                if ((i7 & 14) == 4) {
                    z7 = true;
                } else {
                    z7 = z2;
                }
                z8 = zY6 | z7;
                objX5 = gapComposerH.x();
                if (z8 || objX5 == composer$Companion$Empty$1) {
                    objX5 = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$4$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            PopupPositionProvider popupPositionProvider3 = popupPositionProvider2;
                            PopupLayout popupLayout3 = popupLayout;
                            popupLayout3.setPositionProvider(popupPositionProvider3);
                            popupLayout3.q();
                            return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$4$1$invoke$$inlined$onDispose$1
                                @Override // androidx.compose.runtime.DisposableEffectResult
                                public final void dispose() {
                                }
                            };
                        }
                    };
                    gapComposerH.q(objX5);
                }
                EffectsKt.c(popupPositionProvider2, (Function1) objX5, gapComposerH);
                zY = gapComposerH.y(popupLayout);
                objX6 = gapComposerH.x();
                if (zY || objX6 == composer$Companion$Empty$1) {
                    objX6 = new AndroidPopup_androidKt$Popup$5$1(popupLayout, null);
                    gapComposerH.q(objX6);
                }
                EffectsKt.e(gapComposerH, popupLayout, (Function2) objX6);
                DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("Popup");
                zY2 = gapComposerH.y(popupLayout);
                objX7 = gapComposerH.x();
                if (zY2 || objX7 == composer$Companion$Empty$1) {
                    objX7 = new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$7$1
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            LayoutCoordinates layoutCoordinatesD0 = ((LayoutCoordinates) obj).d0();
                            layoutCoordinatesD0.getClass();
                            popupLayout.p(layoutCoordinatesD0);
                            return Unit.f71739a;
                        }
                    };
                    gapComposerH.q(objX7);
                }
                Modifier modifierA = OnGloballyPositionedModifierKt.a(dTFunctionNameModifier, (Function1) objX7);
                zY3 = gapComposerH.y(popupLayout) | gapComposerH.d(layoutDirection.ordinal());
                objX8 = gapComposerH.x();
                if (zY3 || objX8 == composer$Companion$Empty$1) {
                    objX8 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1

                        /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1$1, reason: invalid class name */
                        @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
                        final class AnonymousClass1 extends Lambda implements Function1<Placeable.PlacementScope, Unit> {

                            /* JADX INFO: renamed from: c, reason: collision with root package name */
                            public static final AnonymousClass1 f11140c = new AnonymousClass1(1);

                            @Override // kotlin.jvm.functions.Function1
                            public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                                return Unit.f71739a;
                            }
                        }

                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        /* JADX INFO: renamed from: measure-3p2s80s */
                        public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
                            popupLayout.setParentLayoutDirection(layoutDirection);
                            return measureScope.V0(0, 0, MapsKt.c(), AnonymousClass1.f11140c);
                        }
                    };
                    gapComposerH.q(objX8);
                }
                measurePolicy = (MeasurePolicy) objX8;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifierA);
                ComposeUiNode.b0.getClass();
                function4 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function4);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                gapComposerH.Z(true);
                function2 = function3;
            } else {
                gapComposerH.D();
                function2 = function1;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$9
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Number) obj2).intValue();
                        AndroidPopup_androidKt.a(popupPositionProvider2, function2, popupProperties, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i4 |= 48;
        function1 = function0;
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            popupProperties2 = popupProperties;
            if (gapComposerH.K(popupProperties2)) {
                i11 = 256;
            } else {
                i11 = 128;
            }
            i4 |= i11;
        } else {
            popupProperties2 = popupProperties;
        }
        if ((i2 & 3072) == 0) {
            if (gapComposerH.y(composableLambdaImpl)) {
                i10 = 2048;
            } else {
                i10 = 1024;
            }
            i4 |= i10;
        }
        if ((i4 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposerH.p(i4 & 1, z)) {
            if (i12 != 0) {
                function3 = null;
            } else {
                function3 = function1;
            }
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            view = (View) gapComposerH.k(AndroidCompositionLocals_androidKt.f9939f);
            density = (Density) gapComposerH.k(CompositionLocalsKt.f10031h);
            str = (String) gapComposerH.k(f11122a);
            layoutDirection = (LayoutDirection) gapComposerH.k(CompositionLocalsKt.n);
            compositionContextImplH = gapComposerH.H();
            mutableStateL = SnapshotStateKt.l(composableLambdaImpl, gapComposerH);
            Object[] objArr2 = new Object[0];
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = AndroidPopup_androidKt$Popup$popupId$1$1.f11145c;
                gapComposerH.q(objX);
            }
            uuid = (UUID) RememberSaveableKt.d(objArr2, (Function0) objX, gapComposerH, 48);
            zBooleanValue = ((Boolean) gapComposerH.k(f11123b)).booleanValue();
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                z2 = false;
                i5 = i4;
                i6 = 32;
                str2 = str;
                final PopupLayout popupLayout3 = new PopupLayout(function3, popupProperties2, str2, view, density, popupPositionProvider2, uuid, zBooleanValue, null, 256, null);
                popupPositionProvider2 = popupPositionProvider2;
                popupLayout3.m(compositionContextImplH, new ComposableLambdaImpl(-297523940, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupLayout$1$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Composer composer2 = (Composer) obj;
                        int iIntValue = ((Number) obj2).intValue();
                        if (composer2.p(iIntValue & 1, (iIntValue & 3) != 2)) {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            ProvidedValue providedValueC = AndroidPopup_androidKt.f11123b.c(Boolean.TRUE);
                            final PopupLayout popupLayout4 = popupLayout3;
                            final MutableState mutableState = mutableStateL;
                            CompositionLocalKt.a(providedValueC, ComposableLambdaKt.b(1022273628, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupLayout$1$1$1.1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(2);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj3, Object obj4) {
                                    Composer composer3 = (Composer) obj3;
                                    int iIntValue2 = ((Number) obj4).intValue();
                                    if (composer3.p(iIntValue2 & 1, (iIntValue2 & 3) != 2)) {
                                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                                        Object objX9 = composer3.x();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
                                        if (objX9 == composer$Companion$Empty$2) {
                                            objX9 = AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$1$1.f11148c;
                                            composer3.q(objX9);
                                        }
                                        Modifier modifierB = SemanticsModifierKt.b(Modifier.Companion.f8607b, false, (Function1) objX9);
                                        final PopupLayout popupLayout5 = popupLayout4;
                                        boolean zY7 = composer3.y(popupLayout5);
                                        Object objX10 = composer3.x();
                                        if (zY7 || objX10 == composer$Companion$Empty$2) {
                                            objX10 = new Function1<IntSize, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$popupLayout$1$1$1$1$2$1
                                                {
                                                    super(1);
                                                }

                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object invoke(Object obj5) {
                                                    IntSize intSize = new IntSize(((IntSize) obj5).f11021a);
                                                    PopupLayout popupLayout6 = popupLayout5;
                                                    popupLayout6.m11setPopupContentSizefhxjrPA(intSize);
                                                    popupLayout6.q();
                                                    return Unit.f71739a;
                                                }
                                            };
                                            composer3.q(objX10);
                                        }
                                        Modifier modifierA2 = AlphaKt.a(OnRemeasuredModifierKt.a(modifierB, (Function1) objX10), popupLayout5.getCanCalculatePosition() ? 1.0f : Call.Parameters.DEFAULT_CAMERA_ZOOM);
                                        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidPopup_androidKt.f11122a;
                                        Function2 function5 = (Function2) mutableState.getF10755b();
                                        Object objX11 = composer3.x();
                                        if (objX11 == composer$Companion$Empty$2) {
                                            objX11 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1
                                                @Override // androidx.compose.ui.layout.MeasurePolicy
                                                /* JADX INFO: renamed from: measure-3p2s80s */
                                                public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
                                                    int size = list.size();
                                                    if (size == 0) {
                                                        return measureScope.V0(0, 0, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1.1
                                                            @Override // kotlin.jvm.functions.Function1
                                                            public final /* bridge */ /* synthetic */ Object invoke(Object obj5) {
                                                                return Unit.f71739a;
                                                            }
                                                        });
                                                    }
                                                    if (size == 1) {
                                                        final Placeable placeableT = ((Measurable) list.get(0)).T(j2);
                                                        return measureScope.V0(placeableT.f9548b, placeableT.f9549c, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1.2
                                                            {
                                                                super(1);
                                                            }

                                                            @Override // kotlin.jvm.functions.Function1
                                                            public final Object invoke(Object obj5) {
                                                                Placeable.PlacementScope.y((Placeable.PlacementScope) obj5, placeableT, 0, 0);
                                                                return Unit.f71739a;
                                                            }
                                                        });
                                                    }
                                                    final List<? extends Placeable> arrayList = new ArrayList(list.size());
                                                    int size2 = list.size();
                                                    int iMax = 0;
                                                    int iMax2 = 0;
                                                    for (int i13 = 0; i13 < size2; i13++) {
                                                        Placeable placeableT2 = ((Measurable) list.get(i13)).T(j2);
                                                        iMax = Math.max(iMax, placeableT2.f9548b);
                                                        iMax2 = Math.max(iMax2, placeableT2.f9549c);
                                                        arrayList.add(placeableT2);
                                                    }
                                                    return measureScope.V0(iMax, iMax2, MapsKt.c(), new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1.3
                                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                        {
                                                            super(1);
                                                        }

                                                        @Override // kotlin.jvm.functions.Function1
                                                        public final Object invoke(Object obj5) {
                                                            Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj5;
                                                            List list2 = arrayList;
                                                            int iF = CollectionsKt.F(list2);
                                                            if (iF >= 0) {
                                                                int i14 = 0;
                                                                while (true) {
                                                                    Placeable.PlacementScope.y(placementScope, (Placeable) list2.get(i14), 0, 0);
                                                                    if (i14 == iF) {
                                                                        break;
                                                                    }
                                                                    i14++;
                                                                }
                                                            }
                                                            return Unit.f71739a;
                                                        }
                                                    });
                                                }
                                            };
                                            composer3.q(objX11);
                                        }
                                        MeasurePolicy measurePolicy2 = (MeasurePolicy) objX11;
                                        int iHashCode2 = Long.hashCode(composer3.getT());
                                        PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                                        Modifier modifierC2 = ComposedModifierKt.c(composer3, modifierA2);
                                        ComposeUiNode.b0.getClass();
                                        Function0 function6 = ComposeUiNode.Companion.f9641b;
                                        if (composer3.getF7976a() == null) {
                                            ComposablesKt.b();
                                            throw null;
                                        }
                                        composer3.B();
                                        if (composer3.getS()) {
                                            composer3.C(function6);
                                        } else {
                                            composer3.o();
                                        }
                                        Updater.c(composer3, measurePolicy2, ComposeUiNode.Companion.f9644f);
                                        Updater.c(composer3, persistentCompositionLocalMapN, ComposeUiNode.Companion.f9643e);
                                        Updater.c(composer3, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                                        Updater.b(composer3, ComposeUiNode.Companion.f9645h);
                                        Updater.c(composer3, modifierC2, ComposeUiNode.Companion.d);
                                        function5.invoke(composer3, 0);
                                        composer3.r();
                                    } else {
                                        composer3.D();
                                    }
                                    return Unit.f71739a;
                                }
                            }, composer2), composer2, 56);
                        } else {
                            composer2.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                gapComposerH.q(popupLayout3);
                objX2 = popupLayout3;
            } else {
                i5 = i4;
                z2 = false;
                str2 = str;
                i6 = 32;
            }
            popupLayout = (PopupLayout) objX2;
            boolean zY7 = gapComposerH.y(popupLayout);
            i7 = i5;
            i8 = i7 & 112;
            if (i8 == i6) {
                z3 = true;
            } else {
                z3 = z2;
            }
            boolean z11 = zY7 | z3;
            i9 = i7 & 896;
            if (i9 == 256) {
                z4 = true;
            } else {
                z4 = z2;
            }
            zK = z11 | z4 | gapComposerH.K(str2) | gapComposerH.d(layoutDirection.ordinal());
            objX3 = gapComposerH.x();
            if (zK) {
                final String str5 = str2;
                objX3 = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        final PopupLayout popupLayout4 = popupLayout;
                        popupLayout4.r.addView(popupLayout4, popupLayout4.params);
                        popupLayout4.n(function3, popupProperties, str5, layoutDirection);
                        return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public final void dispose() {
                                PopupLayout popupLayout5 = popupLayout4;
                                popupLayout5.e();
                                popupLayout5.setTag(R.id.view_tree_lifecycle_owner, null);
                                popupLayout5.r.removeViewImmediate(popupLayout5);
                            }
                        };
                    }
                };
                gapComposerH.q(objX3);
            } else {
                final String str6 = str2;
                objX3 = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        final PopupLayout popupLayout4 = popupLayout;
                        popupLayout4.r.addView(popupLayout4, popupLayout4.params);
                        popupLayout4.n(function3, popupProperties, str6, layoutDirection);
                        return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$2$1$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public final void dispose() {
                                PopupLayout popupLayout5 = popupLayout4;
                                popupLayout5.e();
                                popupLayout5.setTag(R.id.view_tree_lifecycle_owner, null);
                                popupLayout5.r.removeViewImmediate(popupLayout5);
                            }
                        };
                    }
                };
                gapComposerH.q(objX3);
            }
            EffectsKt.c(popupLayout, (Function1) objX3, gapComposerH);
            boolean zY8 = gapComposerH.y(popupLayout);
            if (i8 == i6) {
                z5 = true;
            } else {
                z5 = z2;
            }
            boolean z12 = zY8 | z5;
            if (i9 == 256) {
                z6 = true;
            } else {
                z6 = z2;
            }
            zK2 = z12 | z6 | gapComposerH.K(str2) | gapComposerH.d(layoutDirection.ordinal());
            objX4 = gapComposerH.x();
            if (zK2) {
                final String str7 = str2;
                objX4 = new Function0<Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$3$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        popupLayout.n(function3, popupProperties, str7, layoutDirection);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX4);
            } else {
                final String str8 = str2;
                objX4 = new Function0<Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$3$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        popupLayout.n(function3, popupProperties, str8, layoutDirection);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX4);
            }
            EffectsKt.i((Function0) objX4, gapComposerH);
            boolean zY9 = gapComposerH.y(popupLayout);
            if ((i7 & 14) == 4) {
                z7 = true;
            } else {
                z7 = z2;
            }
            z8 = zY9 | z7;
            objX5 = gapComposerH.x();
            if (z8) {
                objX5 = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$4$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        PopupPositionProvider popupPositionProvider3 = popupPositionProvider2;
                        PopupLayout popupLayout4 = popupLayout;
                        popupLayout4.setPositionProvider(popupPositionProvider3);
                        popupLayout4.q();
                        return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$4$1$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public final void dispose() {
                            }
                        };
                    }
                };
                gapComposerH.q(objX5);
            } else {
                objX5 = new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$4$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        PopupPositionProvider popupPositionProvider3 = popupPositionProvider2;
                        PopupLayout popupLayout4 = popupLayout;
                        popupLayout4.setPositionProvider(popupPositionProvider3);
                        popupLayout4.q();
                        return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$4$1$invoke$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public final void dispose() {
                            }
                        };
                    }
                };
                gapComposerH.q(objX5);
            }
            EffectsKt.c(popupPositionProvider2, (Function1) objX5, gapComposerH);
            zY = gapComposerH.y(popupLayout);
            objX6 = gapComposerH.x();
            if (zY) {
                objX6 = new AndroidPopup_androidKt$Popup$5$1(popupLayout, null);
                gapComposerH.q(objX6);
            } else {
                objX6 = new AndroidPopup_androidKt$Popup$5$1(popupLayout, null);
                gapComposerH.q(objX6);
            }
            EffectsKt.e(gapComposerH, popupLayout, (Function2) objX6);
            DTFunctionNameModifier dTFunctionNameModifier2 = new DTFunctionNameModifier("Popup");
            zY2 = gapComposerH.y(popupLayout);
            objX7 = gapComposerH.x();
            if (zY2) {
                objX7 = new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$7$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LayoutCoordinates layoutCoordinatesD0 = ((LayoutCoordinates) obj).d0();
                        layoutCoordinatesD0.getClass();
                        popupLayout.p(layoutCoordinatesD0);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX7);
            } else {
                objX7 = new Function1<LayoutCoordinates, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$7$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        LayoutCoordinates layoutCoordinatesD0 = ((LayoutCoordinates) obj).d0();
                        layoutCoordinatesD0.getClass();
                        popupLayout.p(layoutCoordinatesD0);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX7);
            }
            Modifier modifierA2 = OnGloballyPositionedModifierKt.a(dTFunctionNameModifier2, (Function1) objX7);
            zY3 = gapComposerH.y(popupLayout) | gapComposerH.d(layoutDirection.ordinal());
            objX8 = gapComposerH.x();
            if (zY3) {
                objX8 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1

                    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1$1, reason: invalid class name */
                    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
                    final class AnonymousClass1 extends Lambda implements Function1<Placeable.PlacementScope, Unit> {

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public static final AnonymousClass1 f11140c = new AnonymousClass1(1);

                        @Override // kotlin.jvm.functions.Function1
                        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            return Unit.f71739a;
                        }
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
                        popupLayout.setParentLayoutDirection(layoutDirection);
                        return measureScope.V0(0, 0, MapsKt.c(), AnonymousClass1.f11140c);
                    }
                };
                gapComposerH.q(objX8);
            } else {
                objX8 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1

                    /* JADX INFO: renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1$1, reason: invalid class name */
                    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/layout/Placeable$PlacementScope;", "invoke"}, k = 3, mv = {2, 1, 0}, xi = 48)
                    final class AnonymousClass1 extends Lambda implements Function1<Placeable.PlacementScope, Unit> {

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public static final AnonymousClass1 f11140c = new AnonymousClass1(1);

                        @Override // kotlin.jvm.functions.Function1
                        public final /* bridge */ /* synthetic */ Object invoke(Object obj) {
                            return Unit.f71739a;
                        }
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    /* JADX INFO: renamed from: measure-3p2s80s */
                    public final MeasureResult mo1measure3p2s80s(MeasureScope measureScope, List list, long j2) {
                        popupLayout.setParentLayoutDirection(layoutDirection);
                        return measureScope.V0(0, 0, MapsKt.c(), AnonymousClass1.f11140c);
                    }
                };
                gapComposerH.q(objX8);
            }
            measurePolicy = (MeasurePolicy) objX8;
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifierA2);
            ComposeUiNode.b0.getClass();
            function4 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function4);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            gapComposerH.Z(true);
            function2 = function3;
        } else {
            gapComposerH.D();
            function2 = function1;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$9
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AndroidPopup_androidKt.a(popupPositionProvider2, function2, popupProperties, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), i3);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final boolean b(View view) {
        ViewGroup.LayoutParams layoutParams = view.getRootView().getLayoutParams();
        WindowManager.LayoutParams layoutParams2 = layoutParams instanceof WindowManager.LayoutParams ? (WindowManager.LayoutParams) layoutParams : null;
        return (layoutParams2 == null || (layoutParams2.flags & 8192) == 0) ? false : true;
    }
}
