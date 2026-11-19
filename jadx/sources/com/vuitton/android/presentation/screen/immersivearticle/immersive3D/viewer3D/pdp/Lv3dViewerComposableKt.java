package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp;

import android.content.Context;
import android.view.SurfaceView;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.BaseLv3dViewerHelper;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt;
import defpackage.cj;
import defpackage.jx;
import defpackage.l00;
import defpackage.n00;
import defpackage.nm;
import defpackage.qt;
import defpackage.tr;
import defpackage.y2;
import defpackage.ya0;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "localGyro", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class Lv3dViewerComposableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lv3dViewerUiModel f58587a = new Lv3dViewerUiModel("models/pdp_scene", "https://ndam-publish-prp.louisvuitton.com/content/dam/lv/3d-assets/shoes/sneaker-club-2023q3/BP9U1PTX02_3D_LD-R.gltf", null, "ADD TO CART", false, null, false, 116, null);

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58597a;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f58597a = iArr;
        }
    }

    public static final void a(final Lv3dViewerUiModel lv3dViewerUiModel, boolean z, Function1 function1, Function0 function0, Function1 function2, Function0 function3, Function0 function4, Composer composer, int i2) {
        int i3;
        Function1 function5;
        Function0 function6;
        SurfaceView surfaceView;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Context context;
        Object obj;
        Object obj2;
        GapComposer gapComposerH = composer.h(427565042);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(lv3dViewerUiModel) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if ((i2 & 48) == 0) {
            i3 |= gapComposerH.b(z) ? 32 : 16;
        }
        if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
            i3 |= gapComposerH.y(function1) ? 256 : 128;
        }
        if ((i2 & 3072) == 0) {
            i3 |= gapComposerH.y(function0) ? 2048 : 1024;
        }
        if ((i2 & 24576) == 0) {
            i3 |= gapComposerH.K(null) ? 16384 : 8192;
        }
        if ((196608 & i2) == 0) {
            i3 |= gapComposerH.K(null) ? 131072 : 65536;
        }
        if ((1572864 & i2) == 0) {
            function5 = function2;
            i3 |= gapComposerH.y(function5) ? 1048576 : 524288;
        } else {
            function5 = function2;
        }
        if ((12582912 & i2) == 0) {
            i3 |= gapComposerH.y(function3) ? 8388608 : 4194304;
        }
        if ((100663296 & i2) == 0) {
            function6 = function4;
            i3 |= gapComposerH.y(function6) ? 67108864 : 33554432;
        } else {
            function6 = function4;
        }
        if (gapComposerH.p(i3 & 1, (38347923 & i3) != 38347922)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0 && !gapComposerH.h0()) {
                gapComposerH.D();
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = SnapshotStateKt.g(Boolean.valueOf(z));
                gapComposerH.q(objX);
            }
            final MutableState mutableState = (MutableState) objX;
            Context context2 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX2;
            MutableState mutableStateL = SnapshotStateKt.l(gapComposerH.k(LocalLifecycleOwnerKt.f13562a), gapComposerH);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$2) {
                objX3 = new SurfaceView(context2);
                gapComposerH.q(objX3);
            }
            SurfaceView surfaceView2 = (SurfaceView) objX3;
            int i4 = i3;
            Object objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$2) {
                surfaceView = surfaceView2;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                Function0 function7 = function6;
                context = context2;
                Lv3dViewerHelper lv3dViewerHelper = new Lv3dViewerHelper(context, surfaceView, LifecycleOwnerKt.a((LifecycleOwner) mutableStateL.getF10755b()), function1, new y2(function0, 18), function5, function3, function7);
                String str = lv3dViewerUiModel.f58612a;
                String str2 = lv3dViewerUiModel.f58613b;
                String str3 = lv3dViewerUiModel.f58614c;
                if (StringExtKt.a(str2)) {
                    str2.getClass();
                    lv3dViewerHelper.c0 = str2;
                }
                if (StringExtKt.a(str3)) {
                    str3.getClass();
                    lv3dViewerHelper.b0 = str3;
                }
                Function1 function8 = lv3dViewerHelper.z;
                if (str != null && str2 != null && StringExtKt.a(str2) && StringExtKt.a(str3)) {
                    try {
                        ByteBuffer byteBufferC = BaseLv3dViewerHelper.c(lv3dViewerHelper.f58503a, str.concat(".gltf"));
                        lv3dViewerHelper.j();
                        lv3dViewerHelper.r.c(byteBufferC, new l00(lv3dViewerHelper, 29));
                        lv3dViewerHelper.g();
                        lv3dViewerHelper.l();
                        lv3dViewerHelper.a();
                    } catch (Exception unused) {
                        function8.invoke(Error3dType.Local3DFileLoading);
                    }
                    DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                    BuildersKt.c(lv3dViewerHelper.w, DefaultIoScheduler.f75161b, null, new Lv3dViewerHelper$loadLocalGltf$4(lv3dViewerHelper, null), 2);
                }
                if (!StringExtKt.a(str3)) {
                    function8.invoke(Error3dType.MissingBackground);
                } else if (!StringExtKt.a(str2)) {
                    function8.invoke(Error3dType.MissingModel);
                }
                gapComposerH.q(lv3dViewerHelper);
                objX4 = lv3dViewerHelper;
            } else {
                surfaceView = surfaceView2;
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                context = context2;
            }
            final Lv3dViewerHelper lv3dViewerHelper2 = (Lv3dViewerHelper) objX4;
            boolean zY = gapComposerH.y(lv3dViewerHelper2) | ((i4 & 57344) == 16384);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$1) {
                obj = null;
                objX5 = new Lv3dViewerComposableKt$Internal3dComponent$1$1(lv3dViewerHelper2, null);
                gapComposerH.q(objX5);
            } else {
                obj = null;
            }
            EffectsKt.e(gapComposerH, obj, (Function2) objX5);
            boolean zY2 = gapComposerH.y(lv3dViewerHelper2) | ((i4 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072);
            Object objX6 = gapComposerH.x();
            if (zY2 || objX6 == composer$Companion$Empty$1) {
                obj2 = null;
                objX6 = new Lv3dViewerComposableKt$Internal3dComponent$2$1(lv3dViewerHelper2, null);
                gapComposerH.q(objX6);
            } else {
                obj2 = null;
            }
            EffectsKt.e(gapComposerH, obj2, (Function2) objX6);
            Object objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = new SensorDataManager(context);
                gapComposerH.q(objX7);
            }
            final SensorDataManager sensorDataManager = (SensorDataManager) objX7;
            Object objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = new qt(lv3dViewerHelper2, z, mutableState);
                gapComposerH.q(objX8);
            }
            LifecycleEventObserver lifecycleEventObserver = (LifecycleEventObserver) objX8;
            LifecycleOwner lifecycleOwner = (LifecycleOwner) mutableStateL.getF10755b();
            boolean zK = gapComposerH.K(mutableStateL) | gapComposerH.y(lifecycleEventObserver) | gapComposerH.y(lv3dViewerHelper2);
            Object objX9 = gapComposerH.x();
            if (zK || objX9 == composer$Companion$Empty$1) {
                objX9 = new jx(lifecycleEventObserver, mutableStateL, lv3dViewerHelper2, 17);
                gapComposerH.q(objX9);
            }
            EffectsKt.c(lifecycleOwner, (Function1) objX9, gapComposerH);
            Boolean bool = (Boolean) mutableState.getF10755b();
            bool.getClass();
            Boolean boolValueOf = Boolean.valueOf(lv3dViewerUiModel.f58615e);
            boolean zY3 = ((((i4 & 14) ^ 6) > 4 && gapComposerH.K(lv3dViewerUiModel)) || (i4 & 6) == 4) | gapComposerH.y(coroutineScope) | gapComposerH.y(sensorDataManager) | gapComposerH.y(lv3dViewerHelper2);
            Object objX10 = gapComposerH.x();
            if (zY3 || objX10 == composer$Companion$Empty$1) {
                Function1 function9 = new Function1() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj3) {
                        Lv3dViewerUiModel lv3dViewerUiModel2 = Lv3dViewerComposableKt.f58587a;
                        ((DisposableEffectScope) obj3).getClass();
                        boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
                        final SensorDataManager sensorDataManager2 = sensorDataManager;
                        if (zBooleanValue && lv3dViewerUiModel.f58615e) {
                            DefaultScheduler defaultScheduler2 = Dispatchers.f74659a;
                            BuildersKt.c(coroutineScope, DefaultIoScheduler.f75161b, null, new Lv3dViewerComposableKt$Internal3dComponent$4$1$1(sensorDataManager2, lv3dViewerHelper2, null), 2);
                        } else {
                            sensorDataManager2.b();
                        }
                        return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.pdp.Lv3dViewerComposableKt$Internal3dComponent$lambda$11$0$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public final void dispose() {
                                sensorDataManager2.b();
                            }
                        };
                    }
                };
                gapComposerH.q(function9);
                objX10 = function9;
            }
            EffectsKt.b(bool, boolValueOf, (Function1) objX10, gapComposerH);
            boolean zY4 = gapComposerH.y(surfaceView);
            Object objX11 = gapComposerH.x();
            if (zY4 || objX11 == composer$Companion$Empty$1) {
                objX11 = new ya0(surfaceView, 1);
                gapComposerH.q(objX11);
            }
            AndroidView_androidKt.a((Function1) objX11, null, null, gapComposerH, 0, 6);
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new nm(lv3dViewerUiModel, z, function1, function0, function2, function3, function4, i2);
        }
    }

    /* JADX WARN: Code duplicated, block: B:102:0x015a  */
    /* JADX WARN: Code duplicated, block: B:104:0x0163  */
    /* JADX WARN: Code duplicated, block: B:105:0x0167  */
    /* JADX WARN: Code duplicated, block: B:108:0x018b  */
    /* JADX WARN: Code duplicated, block: B:109:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:111:0x020b  */
    /* JADX WARN: Code duplicated, block: B:113:0x0233  */
    /* JADX WARN: Code duplicated, block: B:115:0x023a  */
    /* JADX WARN: Code duplicated, block: B:116:0x023e  */
    /* JADX WARN: Code duplicated, block: B:118:0x029a  */
    /* JADX WARN: Code duplicated, block: B:120:0x029e  */
    /* JADX WARN: Code duplicated, block: B:123:0x02f1  */
    /* JADX WARN: Code duplicated, block: B:128:0x0308  */
    /* JADX WARN: Code duplicated, block: B:130:0x0344  */
    /* JADX WARN: Code duplicated, block: B:132:0x0359  */
    /* JADX WARN: Code duplicated, block: B:134:0x035e  */
    /* JADX WARN: Code duplicated, block: B:137:0x036d  */
    /* JADX WARN: Code duplicated, block: B:139:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x0060  */
    /* JADX WARN: Code duplicated, block: B:31:0x0066  */
    /* JADX WARN: Code duplicated, block: B:32:0x0069  */
    /* JADX WARN: Code duplicated, block: B:36:0x0070  */
    /* JADX WARN: Code duplicated, block: B:38:0x0078  */
    /* JADX WARN: Code duplicated, block: B:39:0x007b  */
    /* JADX WARN: Code duplicated, block: B:41:0x007f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0086  */
    /* JADX WARN: Code duplicated, block: B:46:0x008e  */
    /* JADX WARN: Code duplicated, block: B:47:0x0091  */
    /* JADX WARN: Code duplicated, block: B:49:0x0095  */
    /* JADX WARN: Code duplicated, block: B:52:0x009f  */
    /* JADX WARN: Code duplicated, block: B:54:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:55:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:60:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:62:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:65:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:68:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:70:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00db  */
    /* JADX WARN: Code duplicated, block: B:80:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:83:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:90:0x0113 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:91:0x0115  */
    /* JADX WARN: Code duplicated, block: B:92:0x011b  */
    /* JADX WARN: Code duplicated, block: B:94:0x011f  */
    /* JADX WARN: Code duplicated, block: B:98:0x012e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0131  */
    public static final void b(Modifier modifier, boolean z, boolean z2, Lv3dViewerUiModel lv3dViewerUiModel, final Function1 function1, final Function0 function0, final Function0 function2, final Function0 function3, final Function1 function4, Composer composer, final int i2, final int i3, final int i4) {
        int i5;
        boolean z3;
        int i6;
        int i7;
        Modifier modifier2;
        boolean z4;
        GapComposer gapComposer;
        final boolean z5;
        final boolean z6;
        final Modifier modifier3;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        Modifier modifier4;
        boolean z7;
        boolean z8;
        boolean z9;
        BiasAlignment biasAlignment;
        MeasurePolicy measurePolicyD;
        boolean z10;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Function0 function5;
        Function2 function6;
        Function2 function7;
        Function2 function8;
        Function1 function9;
        Function2 function10;
        BoxScopeInstance boxScopeInstance;
        GapComposer gapComposer2;
        int i8;
        boolean z11;
        boolean z12;
        BoxScopeInstance boxScopeInstance2;
        boolean z13;
        MeasurePolicy measurePolicyD2;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        boolean z14;
        boolean z15;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        Modifier modifierE = modifier;
        final Lv3dViewerUiModel lv3dViewerUiModel2 = lv3dViewerUiModel;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "Lv3dViewerComposable");
        }
        function1.getClass();
        function0.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        GapComposer gapComposerH = composer.h(-1482790496);
        Applier applier = gapComposerH.f7976a;
        int i15 = i4 & 1;
        if (i15 != 0) {
            i5 = i2 | 6;
        } else if ((i2 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i2;
        } else {
            i5 = i2;
        }
        int i16 = i5 | 48;
        int i17 = i4 & 4;
        if (i17 == 0) {
            if ((i2 & KyberEngine.KyberPolyBytes) == 0) {
                z3 = z2;
                i16 |= gapComposerH.b(z3) ? 256 : 128;
            }
            if ((i2 & 3072) == 0) {
                if (gapComposerH.K(lv3dViewerUiModel2)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i16 |= i14;
            }
            if ((i2 & 24576) != 0) {
                if (gapComposerH.y(function1)) {
                    i13 = 16384;
                } else {
                    i13 = 8192;
                }
                i16 |= i13;
            }
            if ((196608 & i2) != 0) {
                if (gapComposerH.y(function0)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i16 |= i12;
            }
            i6 = i16 | 14155776;
            if ((100663296 & i2) != 0) {
                if (gapComposerH.y(function2)) {
                    i11 = 67108864;
                } else {
                    i11 = 33554432;
                }
                i6 |= i11;
            }
            if ((805306368 & i2) != 0) {
                if (gapComposerH.y(function3)) {
                    i10 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i10 = 268435456;
                }
                i6 |= i10;
            }
            if ((i3 & 6) == 0) {
                if (gapComposerH.y(function4)) {
                    i9 = 4;
                } else {
                    i9 = 2;
                }
                i7 = i3 | i9;
            } else {
                i7 = i3;
            }
            modifier2 = modifierE;
            if ((i6 & 306783379) == 306783378 || (i7 & 3) != 2) {
                z4 = true;
            } else {
                z4 = false;
            }
            if (gapComposerH.p(i6 & 1, z4)) {
                gapComposerH.y0();
                if ((i2 & 1) != 0 || gapComposerH.h0()) {
                    if (i15 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("Lv3dViewerComposable");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i17 != 0) {
                        z3 = false;
                    }
                    modifier4 = dTFunctionNameModifier;
                    z7 = true;
                } else {
                    gapComposerH.D();
                    z7 = z;
                    modifier4 = modifier2;
                }
                z8 = z3;
                gapComposerH.a0();
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                if (lv3dViewerUiModel2.f58616f != Error3dType.None) {
                    z9 = true;
                } else {
                    z9 = false;
                }
                Alignment.f8582a.getClass();
                biasAlignment = Alignment.Companion.f8584b;
                measurePolicyD = BoxKt.d(biasAlignment, false);
                z10 = z7;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, modifier4);
                ComposeUiNode.b0.getClass();
                function5 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function5);
                } else {
                    gapComposerH.o();
                }
                function6 = ComposeUiNode.Companion.f9644f;
                Updater.c(gapComposerH, measurePolicyD, function6);
                function7 = ComposeUiNode.Companion.f9643e;
                Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
                Integer numValueOf = Integer.valueOf(iHashCode);
                function8 = ComposeUiNode.Companion.g;
                Updater.c(gapComposerH, numValueOf, function8);
                function9 = ComposeUiNode.Companion.f9645h;
                Updater.b(gapComposerH, function9);
                function10 = ComposeUiNode.Companion.d;
                Updater.c(gapComposerH, modifierC, function10);
                boxScopeInstance = BoxScopeInstance.f4938a;
                if (z9) {
                    Modifier modifierG = boxScopeInstance.g(n00.i(gapComposerH, -2142488811, "Lv3dViewerComposable"), Alignment.Companion.f8587f);
                    String strF = cj.f(gapComposerH, -761839495, R.string.dmsn_3D_PDP_error, gapComposerH, false);
                    long j2 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    TextAlign.f10959b.getClass();
                    TextKt.c(strF, modifierG, j2, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, null, gapComposerH, 0, 0, 261112);
                    gapComposerH.Z(false);
                    lv3dViewerUiModel2 = lv3dViewerUiModel;
                    i8 = 3;
                    modifier4 = modifier4;
                    boxScopeInstance2 = boxScopeInstance;
                    z12 = true;
                    z11 = false;
                    z13 = z10;
                } else {
                    gapComposerH.L(-2141944172);
                    if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                        gapComposerH.L(-2141915776);
                        Color.f8866b.getClass();
                        Modifier modifierB = BackgroundKt.b(modifier4, Color.f8870h, RectangleShapeKt.f8913a);
                        measurePolicyD2 = BoxKt.d(biasAlignment, false);
                        iHashCode2 = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU2 = gapComposerH.U();
                        modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
                        if (applier != null) {
                            ComposablesKt.b();
                            throw null;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function5);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD2, function6);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
                        cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
                        i8 = 3;
                        TextKt.c("This is 3d !", boxScopeInstance.g(tr.e(gapComposerH, modifierC2, function10, "Lv3dViewerComposable"), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262136);
                        gapComposer2 = gapComposerH;
                        gapComposer2.Z(true);
                        gapComposer2.Z(false);
                        lv3dViewerUiModel2 = lv3dViewerUiModel;
                        z11 = false;
                        z12 = true;
                        boxScopeInstance2 = boxScopeInstance;
                        z13 = z10;
                    } else {
                        gapComposer2 = gapComposerH;
                        i8 = 3;
                        gapComposer2.L(-2141528369);
                        int i18 = i6 >> 6;
                        int i19 = ((i6 >> 9) & 14) | (i6 & 112) | (i18 & 896) | (i18 & 7168) | (57344 & i18) | (i18 & ImageMetadata.JPEG_GPS_COORDINATES) | ((i7 << 18) & 3670016);
                        int i20 = i6 >> 3;
                        z11 = false;
                        z12 = true;
                        boxScopeInstance2 = boxScopeInstance;
                        z13 = z10;
                        a(lv3dViewerUiModel, z13, function1, function0, function4, function2, function3, gapComposer2, i19 | (29360128 & i20) | (i20 & 234881024));
                        lv3dViewerUiModel2 = lv3dViewerUiModel;
                        gapComposer2.Z(false);
                    }
                    gapComposer2.Z(z11);
                }
                if (z8) {
                    Modifier modifierG2 = boxScopeInstance2.g(n00.i(gapComposer2, -2140949971, "Lv3dViewerComposable"), Alignment.Companion.f8587f);
                    if (!lv3dViewerUiModel2.f58615e || z9) {
                        gapComposer2 = gapComposerH;
                        z15 = z11;
                    } else {
                        z15 = z12;
                    }
                    ExitTransition exitTransitionB = EnterExitTransitionKt.h(null, i8).b(EnterExitTransitionKt.j(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7));
                    EnterTransition enterTransitionB = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, i8).b(EnterExitTransitionKt.i(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7));
                    ComposableSingletons$Lv3dViewerComposableKt.f58585a.getClass();
                    boolean z16 = z11;
                    GapComposer gapComposer3 = gapComposer2;
                    z14 = z12;
                    AnimatedVisibilityKt.e(z15, modifierG2, enterTransitionB, exitTransitionB, null, ComposableSingletons$Lv3dViewerComposableKt.f58586b, gapComposer3, 200064, 16);
                    gapComposer = gapComposer3;
                    gapComposer.Z(z16);
                } else {
                    gapComposer2 = gapComposerH;
                    boolean z17 = z11;
                    gapComposer = gapComposer2;
                    z14 = z12;
                    gapComposer.L(-2140556612);
                    gapComposer.Z(z17);
                }
                gapComposer.Z(z14);
                z5 = z13;
                modifier3 = modifier4;
                z6 = z8;
            } else {
                gapComposer = gapComposerH;
                gapComposer.D();
                z5 = z;
                z6 = z3;
                modifier3 = modifier2;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2() { // from class: ab0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        Lv3dViewerComposableKt.b(modifier3, z5, z6, lv3dViewerUiModel2, function1, function0, function2, function3, function4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), RecomposeScopeImplKt.a(i3), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i16 = i5 | 432;
        z3 = z2;
        if ((i2 & 3072) == 0) {
            if (gapComposerH.K(lv3dViewerUiModel2)) {
                i14 = 2048;
            } else {
                i14 = 1024;
            }
            i16 |= i14;
        }
        if ((i2 & 24576) != 0) {
            if (gapComposerH.y(function1)) {
                i13 = 16384;
            } else {
                i13 = 8192;
            }
            i16 |= i13;
        }
        if ((196608 & i2) != 0) {
            if (gapComposerH.y(function0)) {
                i12 = 131072;
            } else {
                i12 = 65536;
            }
            i16 |= i12;
        }
        i6 = i16 | 14155776;
        if ((100663296 & i2) != 0) {
            if (gapComposerH.y(function2)) {
                i11 = 67108864;
            } else {
                i11 = 33554432;
            }
            i6 |= i11;
        }
        if ((805306368 & i2) != 0) {
            if (gapComposerH.y(function3)) {
                i10 = PKIFailureInfo.duplicateCertReq;
            } else {
                i10 = 268435456;
            }
            i6 |= i10;
        }
        if ((i3 & 6) == 0) {
            if (gapComposerH.y(function4)) {
                i9 = 4;
            } else {
                i9 = 2;
            }
            i7 = i3 | i9;
        } else {
            i7 = i3;
        }
        modifier2 = modifierE;
        if ((i6 & 306783379) == 306783378) {
            z4 = true;
        } else {
            z4 = true;
        }
        if (gapComposerH.p(i6 & 1, z4)) {
            gapComposerH.y0();
            if ((i2 & 1) != 0) {
                if (i15 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Lv3dViewerComposable");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i17 != 0) {
                    z3 = false;
                }
                modifier4 = dTFunctionNameModifier;
                z7 = true;
            } else {
                if (i15 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Lv3dViewerComposable");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i17 != 0) {
                    z3 = false;
                }
                modifier4 = dTFunctionNameModifier;
                z7 = true;
            }
            z8 = z3;
            gapComposerH.a0();
            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
            if (lv3dViewerUiModel2.f58616f != Error3dType.None) {
                z9 = true;
            } else {
                z9 = false;
            }
            Alignment.f8582a.getClass();
            biasAlignment = Alignment.Companion.f8584b;
            measurePolicyD = BoxKt.d(biasAlignment, false);
            z10 = z7;
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, modifier4);
            ComposeUiNode.b0.getClass();
            function5 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function5);
            } else {
                gapComposerH.o();
            }
            function6 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, measurePolicyD, function6);
            function7 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function7);
            Integer numValueOf2 = Integer.valueOf(iHashCode);
            function8 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf2, function8);
            function9 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function9);
            function10 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function10);
            boxScopeInstance = BoxScopeInstance.f4938a;
            if (z9) {
                Modifier modifierG3 = boxScopeInstance.g(n00.i(gapComposerH, -2142488811, "Lv3dViewerComposable"), Alignment.Companion.f8587f);
                String strF2 = cj.f(gapComposerH, -761839495, R.string.dmsn_3D_PDP_error, gapComposerH, false);
                long j3 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                TextAlign.f10959b.getClass();
                TextKt.c(strF2, modifierG3, j3, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, null, gapComposerH, 0, 0, 261112);
                gapComposerH.Z(false);
                lv3dViewerUiModel2 = lv3dViewerUiModel;
                i8 = 3;
                modifier4 = modifier4;
                boxScopeInstance2 = boxScopeInstance;
                z12 = true;
                z11 = false;
                z13 = z10;
            } else {
                gapComposerH.L(-2141944172);
                if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                    gapComposerH.L(-2141915776);
                    Color.f8866b.getClass();
                    Modifier modifierB2 = BackgroundKt.b(modifier4, Color.f8870h, RectangleShapeKt.f8913a);
                    measurePolicyD2 = BoxKt.d(biasAlignment, false);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function5);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD2, function6);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, function7);
                    cj.t(iHashCode2, gapComposerH, function8, gapComposerH, function9);
                    i8 = 3;
                    TextKt.c("This is 3d !", boxScopeInstance.g(tr.e(gapComposerH, modifierC2, function10, "Lv3dViewerComposable"), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262136);
                    gapComposer2 = gapComposerH;
                    gapComposer2.Z(true);
                    gapComposer2.Z(false);
                    lv3dViewerUiModel2 = lv3dViewerUiModel;
                    z11 = false;
                    z12 = true;
                    boxScopeInstance2 = boxScopeInstance;
                    z13 = z10;
                } else {
                    gapComposer2 = gapComposerH;
                    i8 = 3;
                    gapComposer2.L(-2141528369);
                    int i110 = i6 >> 6;
                    int i111 = ((i6 >> 9) & 14) | (i6 & 112) | (i110 & 896) | (i110 & 7168) | (57344 & i110) | (i110 & ImageMetadata.JPEG_GPS_COORDINATES) | ((i7 << 18) & 3670016);
                    int i21 = i6 >> 3;
                    z11 = false;
                    z12 = true;
                    boxScopeInstance2 = boxScopeInstance;
                    z13 = z10;
                    a(lv3dViewerUiModel, z13, function1, function0, function4, function2, function3, gapComposer2, i111 | (29360128 & i21) | (i21 & 234881024));
                    lv3dViewerUiModel2 = lv3dViewerUiModel;
                    gapComposer2.Z(false);
                }
                gapComposer2.Z(z11);
            }
            if (z8) {
                Modifier modifierG4 = boxScopeInstance2.g(n00.i(gapComposer2, -2140949971, "Lv3dViewerComposable"), Alignment.Companion.f8587f);
                if (lv3dViewerUiModel2.f58615e) {
                    gapComposer2 = gapComposerH;
                    z15 = z11;
                } else {
                    gapComposer2 = gapComposerH;
                    z15 = z11;
                }
                ExitTransition exitTransitionB2 = EnterExitTransitionKt.h(null, i8).b(EnterExitTransitionKt.j(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7));
                EnterTransition enterTransitionB2 = EnterExitTransitionKt.f(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, i8).b(EnterExitTransitionKt.i(null, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7));
                ComposableSingletons$Lv3dViewerComposableKt.f58585a.getClass();
                boolean z18 = z11;
                GapComposer gapComposer4 = gapComposer2;
                z14 = z12;
                AnimatedVisibilityKt.e(z15, modifierG4, enterTransitionB2, exitTransitionB2, null, ComposableSingletons$Lv3dViewerComposableKt.f58586b, gapComposer4, 200064, 16);
                gapComposer = gapComposer4;
                gapComposer.Z(z18);
            } else {
                gapComposer2 = gapComposerH;
                boolean z19 = z11;
                gapComposer = gapComposer2;
                z14 = z12;
                gapComposer.L(-2140556612);
                gapComposer.Z(z19);
            }
            gapComposer.Z(z14);
            z5 = z13;
            modifier3 = modifier4;
            z6 = z8;
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
            z5 = z;
            z6 = z3;
            modifier3 = modifier2;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: ab0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    Lv3dViewerComposableKt.b(modifier3, z5, z6, lv3dViewerUiModel2, function1, function0, function2, function3, function4, (Composer) obj, RecomposeScopeImplKt.a(i2 | 1), RecomposeScopeImplKt.a(i3), i4);
                    return Unit.f71739a;
                }
            };
        }
    }
}
