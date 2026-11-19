package com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.SurfaceView;
import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.TweenSpec;
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
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.viewinterop.AndroidView_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.compose.LocalLifecycleOwnerKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.android.filament.Engine;
import com.google.android.filament.EntityManager;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.LightManager;
import com.google.android.filament.Material;
import com.google.android.filament.MaterialInstance;
import com.google.android.filament.Scene;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.google.android.filament.utils.KTX1Loader;
import com.google.android.filament.utils.TextureLoaderKt;
import com.google.android.filament.utils.TextureType;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.ar.MatrixKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.BaseLv3dViewerHelper;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.MaterialHelperKt;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.MeshResources;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.ModelViewer;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.Scene3DConfiguration;
import com.vuitton.android.presentation.screen.immersivearticle.immersive3D.base.SensorDataManager;
import defpackage.bg;
import defpackage.bn;
import defpackage.c30;
import defpackage.fa0;
import defpackage.jx;
import defpackage.l00;
import defpackage.n00;
import defpackage.oa;
import defpackage.py;
import defpackage.tr;
import defpackage.x3;
import defpackage.ya0;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.rtccloud.sdk.Call;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007¨\u0006\t²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0004\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0005\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0006\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\b\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"", "localGyro", "Landroidx/lifecycle/LifecycleOwner;", "lifecycleOwner", "isStartAnimationFinished", "isSceneLoaded", "isCardLoaded", "isFrontCardLoaded", "is3dError", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class Lv3dCardViewerComposableKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Lv3dCardViewerUiModel f58553a = new Lv3dCardViewerUiModel("models/card_scene", null, null, null, null, false, false, 126, null);

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f58567a;

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
            f58567a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x025a  */
    /* JADX WARN: Code duplicated, block: B:103:0x026f  */
    /* JADX WARN: Code duplicated, block: B:105:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:107:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:109:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:111:0x02ec  */
    /* JADX WARN: Code duplicated, block: B:113:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:115:0x0328  */
    /* JADX WARN: Code duplicated, block: B:116:0x0347  */
    /* JADX WARN: Code duplicated, block: B:119:0x0387  */
    /* JADX WARN: Code duplicated, block: B:121:0x0390  */
    /* JADX WARN: Code duplicated, block: B:123:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:126:0x0416  */
    /* JADX WARN: Code duplicated, block: B:131:0x04a1  */
    /* JADX WARN: Code duplicated, block: B:133:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:135:0x04a9  */
    /* JADX WARN: Code duplicated, block: B:137:0x04be  */
    /* JADX WARN: Code duplicated, block: B:140:0x04e7  */
    /* JADX WARN: Code duplicated, block: B:146:0x050a  */
    /* JADX WARN: Code duplicated, block: B:155:0x0552  */
    /* JADX WARN: Code duplicated, block: B:158:0x0573  */
    /* JADX WARN: Code duplicated, block: B:159:0x0575  */
    /* JADX WARN: Code duplicated, block: B:165:0x0584  */
    /* JADX WARN: Code duplicated, block: B:171:0x05c2  */
    /* JADX WARN: Code duplicated, block: B:174:0x05e1  */
    /* JADX WARN: Code duplicated, block: B:178:0x0608  */
    /* JADX WARN: Code duplicated, block: B:181:0x063e  */
    /* JADX WARN: Code duplicated, block: B:183:0x0645  */
    /* JADX WARN: Code duplicated, block: B:184:0x0649  */
    /* JADX WARN: Code duplicated, block: B:187:0x0675  */
    /* JADX WARN: Code duplicated, block: B:188:0x06ed  */
    /* JADX WARN: Code duplicated, block: B:191:0x070b  */
    /* JADX WARN: Code duplicated, block: B:199:0x0746  */
    /* JADX WARN: Code duplicated, block: B:201:0x077f  */
    /* JADX WARN: Code duplicated, block: B:203:0x0784  */
    /* JADX WARN: Code duplicated, block: B:206:0x0794  */
    /* JADX WARN: Code duplicated, block: B:210:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:211:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x0096  */
    /* JADX WARN: Code duplicated, block: B:44:0x0098  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:48:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:51:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:55:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:62:0x00db  */
    /* JADX WARN: Code duplicated, block: B:65:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:67:0x0125  */
    /* JADX WARN: Code duplicated, block: B:69:0x012c  */
    /* JADX WARN: Code duplicated, block: B:70:0x0130  */
    /* JADX WARN: Code duplicated, block: B:73:0x0199  */
    /* JADX WARN: Code duplicated, block: B:75:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:77:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:79:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:82:0x01df  */
    /* JADX WARN: Code duplicated, block: B:85:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:88:0x020f  */
    /* JADX WARN: Code duplicated, block: B:91:0x0221  */
    /* JADX WARN: Code duplicated, block: B:94:0x0234  */
    /* JADX WARN: Code duplicated, block: B:97:0x0247  */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(Modifier modifier, Lv3dCardViewerUiModel lv3dCardViewerUiModel, boolean z, Function1 function1, Function0 function0, Scene3DConfiguration.BlossomConfiguration blossomConfiguration, Function0 function2, Composer composer, int i2, int i3) {
        int i4;
        Function0 function3;
        int i5;
        Function0 function4;
        int i6;
        boolean z2;
        Function1 function5;
        boolean z3;
        Modifier modifier2;
        Function0 function6;
        Function0 function7;
        RecomposeScopeImpl recomposeScopeImplB0;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function0 function8;
        Function0 function9;
        boolean zBooleanValue;
        BoxScopeInstance boxScopeInstance;
        Function0 function10;
        Function0 function11;
        Object objX;
        final MutableState mutableState;
        Context context;
        Object objX2;
        CoroutineScope coroutineScope;
        MutableState mutableStateL;
        Object objX3;
        final MutableState mutableState2;
        Object objX4;
        SurfaceView surfaceView;
        Object objX5;
        MutableState mutableState3;
        Object objX6;
        MutableState mutableState4;
        Object objX7;
        MutableState mutableState5;
        Object objX8;
        MutableState mutableState6;
        Object objX9;
        boolean z4;
        SurfaceView surfaceView2;
        Context context2;
        MutableState mutableState7;
        boolean z5;
        Continuation continuation;
        CoroutineScope coroutineScope2;
        final Lv3dCardViewerHelper lv3dCardViewerHelper;
        Object objX10;
        final SensorDataManager sensorDataManager;
        boolean zY;
        Object objX11;
        boolean z6;
        boolean z7;
        Object objX12;
        Throwable th;
        final CoroutineScope coroutineScope3;
        boolean zY2;
        Object objX13;
        MutableState mutableState8;
        Object objX14;
        LifecycleEventObserver lifecycleEventObserver;
        boolean zK;
        Object objX15;
        MeasurePolicy measurePolicyD;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifier3;
        Modifier modifierC;
        Function0 function12;
        TweenSpec tweenSpec;
        boolean z8;
        MutableState mutableState9;
        BoxScopeInstance boxScopeInstance2;
        String str;
        SurfaceView surfaceView3;
        boolean zY3;
        Object objX16;
        boolean z9;
        Lv3dCardViewerHelper lv3dCardViewerHelper2;
        String str2;
        Bitmap bitmap;
        Bitmap bitmap2;
        ByteBuffer byteBufferC;
        ModelViewer modelViewer;
        Scene scene;
        Engine engine;
        Texture texture;
        Scene3DConfiguration scene3DConfiguration;
        Texture textureA;
        TextureSampler textureSampler;
        MaterialInstance materialInstance;
        MaterialInstance materialInstance2;
        MeasurePolicy measurePolicyD2;
        int iHashCode2;
        PersistentCompositionLocalMap persistentCompositionLocalMapU2;
        Modifier modifierC2;
        Function0 function13;
        RecomposeScopeImpl recomposeScopeImplB1;
        Object objX17;
        Object objX18;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = defpackage.a.e(dTFunctionNameModifier, "Lv3dCardViewerComposable");
        }
        lv3dCardViewerUiModel.getClass();
        Bitmap bitmap3 = lv3dCardViewerUiModel.f58579e;
        Bitmap bitmap4 = lv3dCardViewerUiModel.d;
        function1.getClass();
        GapComposer gapComposerH = composer.h(1359489658);
        Applier applier = gapComposerH.f7976a;
        int i7 = i3 & 1;
        if (i7 != 0) {
            i4 = i2 | 6;
        } else {
            i4 = i2 | (gapComposerH.K(dTFunctionNameModifier) ? 4 : 2);
        }
        int i8 = i4 | (gapComposerH.y(lv3dCardViewerUiModel) ? 32 : 16);
        int i9 = i8 | KyberEngine.KyberPolyBytes;
        int i10 = i3 & 16;
        if (i10 != 0) {
            i5 = i8 | 24960;
            function3 = function0;
        } else {
            function3 = function0;
            i5 = i9 | (gapComposerH.y(function3) ? 16384 : 8192);
        }
        int i11 = i5 | (gapComposerH.K(blossomConfiguration) ? 131072 : 65536);
        int i12 = i3 & 64;
        if (i12 == 0) {
            if ((i2 & 1572864) == 0) {
                function4 = function2;
                i11 |= gapComposerH.y(function4) ? 1048576 : 524288;
            }
            i6 = i11;
            if ((i11 & 599187) != 599186) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (gapComposerH.p(i6 & 1, z2)) {
                if (i7 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("Lv3dCardViewerComposable");
                }
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i10 != 0) {
                    objX18 = gapComposerH.x();
                    if (objX18 == composer$Companion$Empty$1) {
                        objX18 = new fa0(6);
                        gapComposerH.q(objX18);
                    }
                    function8 = (Function0) objX18;
                } else {
                    function8 = function3;
                }
                if (i12 != 0) {
                    objX17 = gapComposerH.x();
                    if (objX17 == composer$Companion$Empty$1) {
                        objX17 = new fa0(7);
                        gapComposerH.q(objX17);
                    }
                    function9 = (Function0) objX17;
                } else {
                    function9 = function4;
                }
                OpaqueKey opaqueKey = ComposerKt.f7940a;
                zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                boxScopeInstance = BoxScopeInstance.f4938a;
                if (zBooleanValue) {
                    gapComposerH.L(-984865155);
                    Color.f8866b.getClass();
                    Modifier modifierB = BackgroundKt.b(dTFunctionNameModifier, Color.f8870h, RectangleShapeKt.f8913a);
                    Alignment.f8582a.getClass();
                    measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                    iHashCode2 = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU2 = gapComposerH.U();
                    modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB);
                    ComposeUiNode.b0.getClass();
                    function13 = ComposeUiNode.Companion.f9641b;
                    if (applier != null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function13);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    TextKt.c("This is 3d !", boxScopeInstance.g(tr.e(gapComposerH, modifierC2, ComposeUiNode.Companion.d, "Lv3dCardViewerComposable"), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262136);
                    gapComposerH.Z(true);
                    gapComposerH.Z(false);
                    recomposeScopeImplB1 = gapComposerH.b0();
                    if (recomposeScopeImplB1 != null) {
                        recomposeScopeImplB1.d = new oa(dTFunctionNameModifier, lv3dCardViewerUiModel, function1, function8, blossomConfiguration, function9, i2, i3);
                        return;
                    }
                    return;
                }
                function10 = function8;
                function11 = function9;
                gapComposerH.L(-984547064);
                gapComposerH.Z(false);
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = SnapshotStateKt.g(true);
                    gapComposerH.q(objX);
                }
                mutableState = (MutableState) objX;
                context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                    gapComposerH.q(objX2);
                }
                coroutineScope = (CoroutineScope) objX2;
                mutableStateL = SnapshotStateKt.l(gapComposerH.k(LocalLifecycleOwnerKt.f13562a), gapComposerH);
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX3);
                }
                mutableState2 = (MutableState) objX3;
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new SurfaceView(context);
                    gapComposerH.q(objX4);
                }
                surfaceView = (SurfaceView) objX4;
                objX5 = gapComposerH.x();
                if (objX5 == composer$Companion$Empty$1) {
                    objX5 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX5);
                }
                mutableState3 = (MutableState) objX5;
                objX6 = gapComposerH.x();
                if (objX6 == composer$Companion$Empty$1) {
                    objX6 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX6);
                }
                mutableState4 = (MutableState) objX6;
                objX7 = gapComposerH.x();
                if (objX7 == composer$Companion$Empty$1) {
                    objX7 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX7);
                }
                mutableState5 = (MutableState) objX7;
                objX8 = gapComposerH.x();
                if (objX8 == composer$Companion$Empty$1) {
                    objX8 = SnapshotStateKt.g(Boolean.FALSE);
                    gapComposerH.q(objX8);
                }
                mutableState6 = (MutableState) objX8;
                objX9 = gapComposerH.x();
                if (objX9 == composer$Companion$Empty$1) {
                    coroutineScope2 = coroutineScope;
                    lv3dCardViewerHelper2 = new Lv3dCardViewerHelper(surfaceView, context, new c30(10, mutableState3), new c30(11, mutableState5), new c30(12, mutableState4), new c30(9, mutableState2), new x3(function1, mutableState6, 11), new py(function11, 25), blossomConfiguration);
                    z5 = false;
                    surfaceView2 = surfaceView;
                    context2 = context;
                    str2 = lv3dCardViewerUiModel.f58576a;
                    continuation = null;
                    bitmap = lv3dCardViewerUiModel.f58577b;
                    bitmap2 = lv3dCardViewerUiModel.f58578c;
                    if (bitmap != null) {
                        lv3dCardViewerHelper2.J = bitmap;
                    }
                    if (bitmap2 != null) {
                        lv3dCardViewerHelper2.K = bitmap2;
                    }
                    if (bitmap4 != 0) {
                        lv3dCardViewerHelper2.L = bitmap4;
                    }
                    if (bitmap3 != null) {
                        lv3dCardViewerHelper2.M = bitmap3;
                    }
                    if (str2 != null) {
                        String strConcat = str2.concat(".gltf");
                        SurfaceView surfaceView4 = lv3dCardViewerHelper2.f58503a;
                        byteBufferC = BaseLv3dViewerHelper.c(surfaceView4, strConcat);
                        EntityManager entityManagerC = EntityManager.c();
                        modelViewer = lv3dCardViewerHelper2.r;
                        int i13 = modelViewer.l;
                        scene = modelViewer.f58520h;
                        entityManagerC.b(i13);
                        ByteBuffer byteBufferC2 = BaseLv3dViewerHelper.c(surfaceView4, "models/sneakers_ibl.ktx");
                        engine = modelViewer.f58516b;
                        texture = KTX1Loader.f28658a.a(engine, byteBufferC2, new KTX1Loader.Options()).f28659a;
                        scene3DConfiguration = lv3dCardViewerHelper2.f58504b;
                        if (texture != null) {
                            IndirectLight.Builder builder = new IndirectLight.Builder();
                            long nativeObject = texture.getNativeObject();
                            long j2 = builder.f28551b;
                            IndirectLight.nBuilderReflections(j2, nativeObject);
                            IndirectLight.nIntensity(j2, scene3DConfiguration.f58526a);
                            scene.f(builder.a(engine));
                        }
                        Context context3 = lv3dCardViewerHelper2.v;
                        ByteBuffer byteBufferE = MatrixKt.e(context3, "materials/lit.filamat");
                        Material.Builder builder2 = new Material.Builder();
                        int iRemaining = byteBufferE.remaining();
                        builder2.f28559a = byteBufferE;
                        builder2.f28560b = iRemaining;
                        Material materialA = builder2.a(engine);
                        lv3dCardViewerHelper2.D = materialA;
                        lv3dCardViewerHelper2.E = materialA.b();
                        Resources resources = context3.getResources();
                        resources.getClass();
                        textureA = TextureLoaderKt.a(engine, resources, R.drawable.lv_blossom_background_new, TextureType.COLOR);
                        textureSampler = new TextureSampler();
                        materialInstance = lv3dCardViewerHelper2.E;
                        if (materialInstance != null) {
                            Intrinsics.h("materialInstance");
                            throw null;
                        }
                        materialInstance.i("texture", textureA, textureSampler);
                        materialInstance2 = lv3dCardViewerHelper2.E;
                        if (materialInstance2 != null) {
                            Intrinsics.h("materialInstance");
                            throw null;
                        }
                        MeshResources meshResourcesA = MaterialHelperKt.a(modelViewer, materialInstance2);
                        lv3dCardViewerHelper2.F = meshResourcesA;
                        lv3dCardViewerHelper2.n = meshResourcesA.f58513a;
                        float f2 = scene3DConfiguration.f58527b;
                        if (lv3dCardViewerHelper2.o == 0) {
                            lv3dCardViewerHelper2.o = EntityManager.c().a();
                        }
                        int color = android.graphics.Color.parseColor("#AF69EE");
                        float[] fArr = {android.graphics.Color.red(color) / 255.0f, android.graphics.Color.green(color) / 255.0f, android.graphics.Color.blue(color) / 255.0f};
                        LightManager.Builder builder3 = new LightManager.Builder(LightManager.Type.SPOT);
                        float f3 = fArr[0];
                        float f4 = fArr[1];
                        float f5 = fArr[2];
                        long j3 = builder3.f28555b;
                        LightManager.nBuilderColor(j3, f3, f4, f5);
                        LightManager.nBuilderIntensity(j3, f2);
                        LightManager.nBuilderPosition(j3, scene3DConfiguration.f58530f, scene3DConfiguration.g, scene3DConfiguration.f58531h);
                        LightManager.nBuilderDirection(j3, scene3DConfiguration.f58528c, scene3DConfiguration.d, scene3DConfiguration.f58529e);
                        float f6 = scene3DConfiguration.f58532i;
                        LightManager.nBuilderSpotLightCone(j3, f6, f6);
                        LightManager.nBuilderFalloff(j3, scene3DConfiguration.f58533j);
                        builder3.a(engine, lv3dCardViewerHelper2.o);
                        scene.b(lv3dCardViewerHelper2.o);
                        float f7 = scene3DConfiguration.f58534k;
                        if (lv3dCardViewerHelper2.p == 0) {
                            lv3dCardViewerHelper2.p = EntityManager.c().a();
                        }
                        int color2 = android.graphics.Color.parseColor("#FAACCB");
                        float[] fArr2 = {android.graphics.Color.red(color2) / 255.0f, android.graphics.Color.green(color2) / 255.0f, android.graphics.Color.blue(color2) / 255.0f};
                        LightManager.Builder builder4 = new LightManager.Builder(LightManager.Type.DIRECTIONAL);
                        float f8 = fArr2[0];
                        float f9 = fArr2[1];
                        float f10 = fArr2[2];
                        long j4 = builder4.f28555b;
                        LightManager.nBuilderColor(j4, f8, f9, f10);
                        LightManager.nBuilderIntensity(j4, f7);
                        LightManager.nBuilderIntensityCandela(j4, f7);
                        LightManager.nBuilderDirection(j4, scene3DConfiguration.l, scene3DConfiguration.m, scene3DConfiguration.n);
                        builder4.a(engine, lv3dCardViewerHelper2.p);
                        scene.b(lv3dCardViewerHelper2.p);
                        z4 = true;
                        lv3dCardViewerHelper2.O = true;
                        try {
                            modelViewer.c(byteBufferC, new l00(lv3dCardViewerHelper2, 28));
                            Function1 function14 = lv3dCardViewerHelper2.w;
                            Boolean bool = Boolean.TRUE;
                            function14.invoke(bool);
                            lv3dCardViewerHelper2.e();
                            lv3dCardViewerHelper2.h();
                            lv3dCardViewerHelper2.a();
                            lv3dCardViewerHelper2.y.invoke(bool);
                        } catch (Exception unused) {
                            lv3dCardViewerHelper2.A.invoke(Boolean.TRUE);
                        }
                        gapComposerH = gapComposerH;
                    } else {
                        coroutineScope2 = coroutineScope2;
                        function10 = function10;
                        z4 = true;
                    }
                    gapComposerH.q(lv3dCardViewerHelper2);
                    objX9 = lv3dCardViewerHelper2;
                    mutableState7 = mutableStateL;
                } else {
                    z4 = true;
                    dTFunctionNameModifier = dTFunctionNameModifier;
                    bitmap3 = bitmap3;
                    function10 = function10;
                    mutableState3 = mutableState3;
                    surfaceView2 = surfaceView;
                    context2 = context;
                    mutableState7 = mutableStateL;
                    z5 = false;
                    continuation = null;
                    coroutineScope2 = coroutineScope;
                    bitmap4 = bitmap4;
                }
                lv3dCardViewerHelper = (Lv3dCardViewerHelper) objX9;
                objX10 = gapComposerH.x();
                if (objX10 == composer$Companion$Empty$1) {
                    objX10 = new SensorDataManager(context2);
                    gapComposerH.q(objX10);
                }
                sensorDataManager = (SensorDataManager) objX10;
                Boolean bool2 = (Boolean) mutableState3.getF10755b();
                bool2.getClass();
                zY = gapComposerH.y(lv3dCardViewerHelper);
                objX11 = gapComposerH.x();
                if (!zY || objX11 == composer$Companion$Empty$1) {
                    function5 = function1;
                    objX11 = new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$5$1(lv3dCardViewerHelper, function5, mutableState3, continuation);
                    gapComposerH.q(objX11);
                } else {
                    function5 = function1;
                }
                EffectsKt.e(gapComposerH, bool2, (Function2) objX11);
                if (bitmap3 != null || bitmap4 == null) {
                    gapComposerH.L(-982105752);
                    gapComposerH.Z(z5);
                } else {
                    gapComposerH.L(-982370027);
                    Boolean bool3 = (Boolean) mutableState5.getF10755b();
                    bool3.getClass();
                    boolean zY4 = gapComposerH.y(lv3dCardViewerHelper);
                    Object objX19 = gapComposerH.x();
                    if (zY4 || objX19 == composer$Companion$Empty$1) {
                        objX19 = new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$6$1(lv3dCardViewerHelper, function5, mutableState5, null);
                        gapComposerH.q(objX19);
                    }
                    EffectsKt.e(gapComposerH, bool3, (Function2) objX19);
                    gapComposerH.Z(z5);
                }
                Boolean bool4 = (Boolean) mutableState4.getF10755b();
                bool4.getClass();
                boolean zY5 = gapComposerH.y(lv3dCardViewerHelper);
                if ((i6 & 57344) == 16384) {
                    z6 = z4;
                } else {
                    z6 = false;
                }
                z7 = zY5 | z6;
                objX12 = gapComposerH.x();
                if (!z7 || objX12 == composer$Companion$Empty$1) {
                    function6 = function10;
                    th = null;
                    objX12 = new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$7$1(lv3dCardViewerHelper, function6, mutableState4, null);
                    gapComposerH.q(objX12);
                } else {
                    function6 = function10;
                    th = null;
                }
                EffectsKt.e(gapComposerH, bool4, (Function2) objX12);
                Boolean bool5 = (Boolean) mutableState.getF10755b();
                bool5.getClass();
                Boolean bool6 = (Boolean) mutableState2.getF10755b();
                bool6.getClass();
                coroutineScope3 = coroutineScope2;
                zY2 = gapComposerH.y(coroutineScope3) | gapComposerH.y(sensorDataManager) | gapComposerH.y(lv3dCardViewerHelper);
                objX13 = gapComposerH.x();
                if (!zY2 || objX13 == composer$Companion$Empty$1) {
                    objX13 = new Function1() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.a
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj) {
                            Lv3dCardViewerUiModel lv3dCardViewerUiModel2 = Lv3dCardViewerComposableKt.f58553a;
                            ((DisposableEffectScope) obj).getClass();
                            boolean zBooleanValue2 = ((Boolean) mutableState.getF10755b()).booleanValue();
                            final SensorDataManager sensorDataManager2 = sensorDataManager;
                            if (zBooleanValue2 && ((Boolean) mutableState2.getF10755b()).booleanValue()) {
                                DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                                BuildersKt.c(coroutineScope3, DefaultIoScheduler.f75161b, null, new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$8$1$1(sensorDataManager2, lv3dCardViewerHelper, null), 2);
                            } else {
                                sensorDataManager2.b();
                            }
                            return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$lambda$29$0$$inlined$onDispose$1
                                @Override // androidx.compose.runtime.DisposableEffectResult
                                public final void dispose() {
                                    sensorDataManager2.b();
                                }
                            };
                        }
                    };
                    mutableState8 = mutableState;
                    gapComposerH.q(objX13);
                } else {
                    mutableState8 = mutableState;
                }
                EffectsKt.b(bool5, bool6, (Function1) objX13, gapComposerH);
                objX14 = gapComposerH.x();
                if (objX14 == composer$Companion$Empty$1) {
                    objX14 = new bn(lv3dCardViewerHelper, mutableState8, 3);
                    gapComposerH.q(objX14);
                }
                lifecycleEventObserver = (LifecycleEventObserver) objX14;
                LifecycleOwner lifecycleOwner = (LifecycleOwner) mutableState7.getF10755b();
                zK = gapComposerH.K(mutableState7) | gapComposerH.y(lifecycleEventObserver) | gapComposerH.y(lv3dCardViewerHelper);
                objX15 = gapComposerH.x();
                if (zK || objX15 == composer$Companion$Empty$1) {
                    objX15 = new jx(lifecycleEventObserver, mutableState7, lv3dCardViewerHelper, 16);
                    gapComposerH.q(objX15);
                }
                EffectsKt.c(lifecycleOwner, (Function1) objX15, gapComposerH);
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifier3 = dTFunctionNameModifier;
                modifierC = ComposedModifierKt.c(gapComposerH, modifier3);
                ComposeUiNode.b0.getClass();
                function12 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    Throwable th2 = th;
                    ComposablesKt.b();
                    throw th2;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function12);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                if (((Boolean) mutableState6.getF10755b()).booleanValue()) {
                    str = "Lv3dCardViewerComposable";
                    Modifier modifierG = boxScopeInstance.g(n00.i(gapComposerH, -1313026682, str), Alignment.Companion.f8587f);
                    String strC = StringResources_androidKt.c(gapComposerH, R.string.dmsn_3D_id_error);
                    long j5 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                    TextAlign.f10959b.getClass();
                    GapComposer gapComposer = gapComposerH;
                    mutableState9 = mutableState4;
                    boxScopeInstance2 = boxScopeInstance;
                    tweenSpec = th;
                    z8 = false;
                    TextKt.c(strC, modifierG, j5, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, null, gapComposer, 0, 0, 261112);
                    gapComposerH = gapComposer;
                    gapComposerH.Z(false);
                } else {
                    tweenSpec = th;
                    z8 = false;
                    mutableState9 = mutableState4;
                    boxScopeInstance2 = boxScopeInstance;
                    str = "Lv3dCardViewerComposable";
                    gapComposerH.L(-1312732895);
                    surfaceView3 = surfaceView2;
                    zY3 = gapComposerH.y(surfaceView3);
                    objX16 = gapComposerH.x();
                    if (zY3 || objX16 == composer$Companion$Empty$1) {
                        objX16 = new ya0(surfaceView3, 0);
                        gapComposerH.q(objX16);
                    }
                    AndroidView_androidKt.a((Function1) objX16, null, null, gapComposerH, 0, 6);
                    gapComposerH.Z(false);
                }
                Modifier modifierG2 = boxScopeInstance2.g(new DTFunctionNameModifier(str), Alignment.Companion.f8587f);
                if (!((Boolean) mutableState9.getF10755b()).booleanValue() || ((Boolean) mutableState6.getF10755b()).booleanValue()) {
                    z9 = z8;
                } else {
                    z9 = true;
                }
                ExitTransition exitTransitionB = EnterExitTransitionKt.h(tweenSpec, 3).b(EnterExitTransitionKt.j(tweenSpec, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7));
                EnterTransition enterTransitionB = EnterExitTransitionKt.f(tweenSpec, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.i(tweenSpec, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7));
                ComposableSingletons$Lv3dCardViewerComposableKt.f58551a.getClass();
                GapComposer gapComposer2 = gapComposerH;
                AnimatedVisibilityKt.e(z9, modifierG2, enterTransitionB, exitTransitionB, null, ComposableSingletons$Lv3dCardViewerComposableKt.f58552b, gapComposer2, 200064, 16);
                gapComposerH = gapComposer2;
                gapComposerH.Z(true);
                z3 = true;
                function7 = function11;
                modifier2 = modifier3;
            } else {
                function5 = function1;
                gapComposerH.D();
                z3 = z;
                modifier2 = dTFunctionNameModifier;
                function6 = function3;
                function7 = function4;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new bg(modifier2, lv3dCardViewerUiModel, z3, function5, function6, blossomConfiguration, function7, i2, i3);
            }
        }
        i11 |= 1572864;
        function4 = function2;
        i6 = i11;
        if ((i11 & 599187) != 599186) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposerH.p(i6 & 1, z2)) {
            if (i7 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("Lv3dCardViewerComposable");
            }
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i10 != 0) {
                objX18 = gapComposerH.x();
                if (objX18 == composer$Companion$Empty$1) {
                    objX18 = new fa0(6);
                    gapComposerH.q(objX18);
                }
                function8 = (Function0) objX18;
            } else {
                function8 = function3;
            }
            if (i12 != 0) {
                objX17 = gapComposerH.x();
                if (objX17 == composer$Companion$Empty$1) {
                    objX17 = new fa0(7);
                    gapComposerH.q(objX17);
                }
                function9 = (Function0) objX17;
            } else {
                function9 = function4;
            }
            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
            zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
            boxScopeInstance = BoxScopeInstance.f4938a;
            if (zBooleanValue) {
                gapComposerH.L(-984865155);
                Color.f8866b.getClass();
                Modifier modifierB2 = BackgroundKt.b(dTFunctionNameModifier, Color.f8870h, RectangleShapeKt.f8913a);
                Alignment.f8582a.getClass();
                measurePolicyD2 = BoxKt.d(Alignment.Companion.f8584b, false);
                iHashCode2 = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU2 = gapComposerH.U();
                modifierC2 = ComposedModifierKt.c(gapComposerH, modifierB2);
                ComposeUiNode.b0.getClass();
                function13 = ComposeUiNode.Companion.f9641b;
                if (applier != null) {
                    ComposablesKt.b();
                    throw null;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function13);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD2, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU2, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode2), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                TextKt.c("This is 3d !", boxScopeInstance.g(tr.e(gapComposerH, modifierC2, ComposeUiNode.Companion.d, "Lv3dCardViewerComposable"), Alignment.Companion.f8587f), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, null, gapComposerH, 6, 0, 262136);
                gapComposerH.Z(true);
                gapComposerH.Z(false);
                recomposeScopeImplB1 = gapComposerH.b0();
                if (recomposeScopeImplB1 != null) {
                    recomposeScopeImplB1.d = new oa(dTFunctionNameModifier, lv3dCardViewerUiModel, function1, function8, blossomConfiguration, function9, i2, i3);
                    return;
                }
                return;
            }
            function10 = function8;
            function11 = function9;
            gapComposerH.L(-984547064);
            gapComposerH.Z(false);
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                objX = SnapshotStateKt.g(true);
                gapComposerH.q(objX);
            }
            mutableState = (MutableState) objX;
            context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX2);
            }
            coroutineScope = (CoroutineScope) objX2;
            mutableStateL = SnapshotStateKt.l(gapComposerH.k(LocalLifecycleOwnerKt.f13562a), gapComposerH);
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX3);
            }
            mutableState2 = (MutableState) objX3;
            objX4 = gapComposerH.x();
            if (objX4 == composer$Companion$Empty$1) {
                objX4 = new SurfaceView(context);
                gapComposerH.q(objX4);
            }
            surfaceView = (SurfaceView) objX4;
            objX5 = gapComposerH.x();
            if (objX5 == composer$Companion$Empty$1) {
                objX5 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX5);
            }
            mutableState3 = (MutableState) objX5;
            objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$1) {
                objX6 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX6);
            }
            mutableState4 = (MutableState) objX6;
            objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX7);
            }
            mutableState5 = (MutableState) objX7;
            objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX8);
            }
            mutableState6 = (MutableState) objX8;
            objX9 = gapComposerH.x();
            if (objX9 == composer$Companion$Empty$1) {
                coroutineScope2 = coroutineScope;
                lv3dCardViewerHelper2 = new Lv3dCardViewerHelper(surfaceView, context, new c30(10, mutableState3), new c30(11, mutableState5), new c30(12, mutableState4), new c30(9, mutableState2), new x3(function1, mutableState6, 11), new py(function11, 25), blossomConfiguration);
                z5 = false;
                surfaceView2 = surfaceView;
                context2 = context;
                str2 = lv3dCardViewerUiModel.f58576a;
                continuation = null;
                bitmap = lv3dCardViewerUiModel.f58577b;
                bitmap2 = lv3dCardViewerUiModel.f58578c;
                if (bitmap != null) {
                    lv3dCardViewerHelper2.J = bitmap;
                }
                if (bitmap2 != null) {
                    lv3dCardViewerHelper2.K = bitmap2;
                }
                if (bitmap4 != 0) {
                    lv3dCardViewerHelper2.L = bitmap4;
                }
                if (bitmap3 != null) {
                    lv3dCardViewerHelper2.M = bitmap3;
                }
                if (str2 != null) {
                    String strConcat2 = str2.concat(".gltf");
                    SurfaceView surfaceView5 = lv3dCardViewerHelper2.f58503a;
                    byteBufferC = BaseLv3dViewerHelper.c(surfaceView5, strConcat2);
                    EntityManager entityManagerC2 = EntityManager.c();
                    modelViewer = lv3dCardViewerHelper2.r;
                    int i14 = modelViewer.l;
                    scene = modelViewer.f58520h;
                    entityManagerC2.b(i14);
                    ByteBuffer byteBufferC3 = BaseLv3dViewerHelper.c(surfaceView5, "models/sneakers_ibl.ktx");
                    engine = modelViewer.f58516b;
                    texture = KTX1Loader.f28658a.a(engine, byteBufferC3, new KTX1Loader.Options()).f28659a;
                    scene3DConfiguration = lv3dCardViewerHelper2.f58504b;
                    if (texture != null) {
                        IndirectLight.Builder builder5 = new IndirectLight.Builder();
                        long nativeObject2 = texture.getNativeObject();
                        long j6 = builder5.f28551b;
                        IndirectLight.nBuilderReflections(j6, nativeObject2);
                        IndirectLight.nIntensity(j6, scene3DConfiguration.f58526a);
                        scene.f(builder5.a(engine));
                    }
                    Context context4 = lv3dCardViewerHelper2.v;
                    ByteBuffer byteBufferE2 = MatrixKt.e(context4, "materials/lit.filamat");
                    Material.Builder builder6 = new Material.Builder();
                    int iRemaining2 = byteBufferE2.remaining();
                    builder6.f28559a = byteBufferE2;
                    builder6.f28560b = iRemaining2;
                    Material materialA2 = builder6.a(engine);
                    lv3dCardViewerHelper2.D = materialA2;
                    lv3dCardViewerHelper2.E = materialA2.b();
                    Resources resources2 = context4.getResources();
                    resources2.getClass();
                    textureA = TextureLoaderKt.a(engine, resources2, R.drawable.lv_blossom_background_new, TextureType.COLOR);
                    textureSampler = new TextureSampler();
                    materialInstance = lv3dCardViewerHelper2.E;
                    if (materialInstance != null) {
                        Intrinsics.h("materialInstance");
                        throw null;
                    }
                    materialInstance.i("texture", textureA, textureSampler);
                    materialInstance2 = lv3dCardViewerHelper2.E;
                    if (materialInstance2 != null) {
                        Intrinsics.h("materialInstance");
                        throw null;
                    }
                    MeshResources meshResourcesA2 = MaterialHelperKt.a(modelViewer, materialInstance2);
                    lv3dCardViewerHelper2.F = meshResourcesA2;
                    lv3dCardViewerHelper2.n = meshResourcesA2.f58513a;
                    float f11 = scene3DConfiguration.f58527b;
                    if (lv3dCardViewerHelper2.o == 0) {
                        lv3dCardViewerHelper2.o = EntityManager.c().a();
                    }
                    int color3 = android.graphics.Color.parseColor("#AF69EE");
                    float[] fArr3 = {android.graphics.Color.red(color3) / 255.0f, android.graphics.Color.green(color3) / 255.0f, android.graphics.Color.blue(color3) / 255.0f};
                    LightManager.Builder builder7 = new LightManager.Builder(LightManager.Type.SPOT);
                    float f12 = fArr3[0];
                    float f13 = fArr3[1];
                    float f14 = fArr3[2];
                    long j7 = builder7.f28555b;
                    LightManager.nBuilderColor(j7, f12, f13, f14);
                    LightManager.nBuilderIntensity(j7, f11);
                    LightManager.nBuilderPosition(j7, scene3DConfiguration.f58530f, scene3DConfiguration.g, scene3DConfiguration.f58531h);
                    LightManager.nBuilderDirection(j7, scene3DConfiguration.f58528c, scene3DConfiguration.d, scene3DConfiguration.f58529e);
                    float f15 = scene3DConfiguration.f58532i;
                    LightManager.nBuilderSpotLightCone(j7, f15, f15);
                    LightManager.nBuilderFalloff(j7, scene3DConfiguration.f58533j);
                    builder7.a(engine, lv3dCardViewerHelper2.o);
                    scene.b(lv3dCardViewerHelper2.o);
                    float f16 = scene3DConfiguration.f58534k;
                    if (lv3dCardViewerHelper2.p == 0) {
                        lv3dCardViewerHelper2.p = EntityManager.c().a();
                    }
                    int color4 = android.graphics.Color.parseColor("#FAACCB");
                    float[] fArr4 = {android.graphics.Color.red(color4) / 255.0f, android.graphics.Color.green(color4) / 255.0f, android.graphics.Color.blue(color4) / 255.0f};
                    LightManager.Builder builder8 = new LightManager.Builder(LightManager.Type.DIRECTIONAL);
                    float f17 = fArr4[0];
                    float f18 = fArr4[1];
                    float f19 = fArr4[2];
                    long j8 = builder8.f28555b;
                    LightManager.nBuilderColor(j8, f17, f18, f19);
                    LightManager.nBuilderIntensity(j8, f16);
                    LightManager.nBuilderIntensityCandela(j8, f16);
                    LightManager.nBuilderDirection(j8, scene3DConfiguration.l, scene3DConfiguration.m, scene3DConfiguration.n);
                    builder8.a(engine, lv3dCardViewerHelper2.p);
                    scene.b(lv3dCardViewerHelper2.p);
                    z4 = true;
                    lv3dCardViewerHelper2.O = true;
                    modelViewer.c(byteBufferC, new l00(lv3dCardViewerHelper2, 28));
                    Function1 function15 = lv3dCardViewerHelper2.w;
                    Boolean bool7 = Boolean.TRUE;
                    function15.invoke(bool7);
                    lv3dCardViewerHelper2.e();
                    lv3dCardViewerHelper2.h();
                    lv3dCardViewerHelper2.a();
                    lv3dCardViewerHelper2.y.invoke(bool7);
                    gapComposerH = gapComposerH;
                } else {
                    coroutineScope2 = coroutineScope2;
                    function10 = function10;
                    z4 = true;
                }
                gapComposerH.q(lv3dCardViewerHelper2);
                objX9 = lv3dCardViewerHelper2;
                mutableState7 = mutableStateL;
            } else {
                z4 = true;
                dTFunctionNameModifier = dTFunctionNameModifier;
                bitmap3 = bitmap3;
                function10 = function10;
                mutableState3 = mutableState3;
                surfaceView2 = surfaceView;
                context2 = context;
                mutableState7 = mutableStateL;
                z5 = false;
                continuation = null;
                coroutineScope2 = coroutineScope;
                bitmap4 = bitmap4;
            }
            lv3dCardViewerHelper = (Lv3dCardViewerHelper) objX9;
            objX10 = gapComposerH.x();
            if (objX10 == composer$Companion$Empty$1) {
                objX10 = new SensorDataManager(context2);
                gapComposerH.q(objX10);
            }
            sensorDataManager = (SensorDataManager) objX10;
            Boolean bool8 = (Boolean) mutableState3.getF10755b();
            bool8.getClass();
            zY = gapComposerH.y(lv3dCardViewerHelper);
            objX11 = gapComposerH.x();
            if (zY) {
                function5 = function1;
                objX11 = new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$5$1(lv3dCardViewerHelper, function5, mutableState3, continuation);
                gapComposerH.q(objX11);
            } else {
                function5 = function1;
                objX11 = new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$5$1(lv3dCardViewerHelper, function5, mutableState3, continuation);
                gapComposerH.q(objX11);
            }
            EffectsKt.e(gapComposerH, bool8, (Function2) objX11);
            if (bitmap3 != null) {
                gapComposerH.L(-982105752);
                gapComposerH.Z(z5);
            } else {
                gapComposerH.L(-982105752);
                gapComposerH.Z(z5);
            }
            Boolean bool9 = (Boolean) mutableState4.getF10755b();
            bool9.getClass();
            boolean zY6 = gapComposerH.y(lv3dCardViewerHelper);
            if ((i6 & 57344) == 16384) {
                z6 = z4;
            } else {
                z6 = false;
            }
            z7 = zY6 | z6;
            objX12 = gapComposerH.x();
            if (z7) {
                function6 = function10;
                th = null;
                objX12 = new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$7$1(lv3dCardViewerHelper, function6, mutableState4, null);
                gapComposerH.q(objX12);
            } else {
                function6 = function10;
                th = null;
                objX12 = new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$7$1(lv3dCardViewerHelper, function6, mutableState4, null);
                gapComposerH.q(objX12);
            }
            EffectsKt.e(gapComposerH, bool9, (Function2) objX12);
            Boolean bool10 = (Boolean) mutableState.getF10755b();
            bool10.getClass();
            Boolean bool11 = (Boolean) mutableState2.getF10755b();
            bool11.getClass();
            coroutineScope3 = coroutineScope2;
            zY2 = gapComposerH.y(coroutineScope3) | gapComposerH.y(sensorDataManager) | gapComposerH.y(lv3dCardViewerHelper);
            objX13 = gapComposerH.x();
            if (zY2) {
                objX13 = new Function1() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Lv3dCardViewerUiModel lv3dCardViewerUiModel2 = Lv3dCardViewerComposableKt.f58553a;
                        ((DisposableEffectScope) obj).getClass();
                        boolean zBooleanValue2 = ((Boolean) mutableState.getF10755b()).booleanValue();
                        final SensorDataManager sensorDataManager2 = sensorDataManager;
                        if (zBooleanValue2 && ((Boolean) mutableState2.getF10755b()).booleanValue()) {
                            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                            BuildersKt.c(coroutineScope3, DefaultIoScheduler.f75161b, null, new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$8$1$1(sensorDataManager2, lv3dCardViewerHelper, null), 2);
                        } else {
                            sensorDataManager2.b();
                        }
                        return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$lambda$29$0$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public final void dispose() {
                                sensorDataManager2.b();
                            }
                        };
                    }
                };
                mutableState8 = mutableState;
                gapComposerH.q(objX13);
            } else {
                objX13 = new Function1() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        Lv3dCardViewerUiModel lv3dCardViewerUiModel2 = Lv3dCardViewerComposableKt.f58553a;
                        ((DisposableEffectScope) obj).getClass();
                        boolean zBooleanValue2 = ((Boolean) mutableState.getF10755b()).booleanValue();
                        final SensorDataManager sensorDataManager2 = sensorDataManager;
                        if (zBooleanValue2 && ((Boolean) mutableState2.getF10755b()).booleanValue()) {
                            DefaultScheduler defaultScheduler = Dispatchers.f74659a;
                            BuildersKt.c(coroutineScope3, DefaultIoScheduler.f75161b, null, new Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$8$1$1(sensorDataManager2, lv3dCardViewerHelper, null), 2);
                        } else {
                            sensorDataManager2.b();
                        }
                        return new DisposableEffectResult() { // from class: com.vuitton.android.presentation.screen.immersivearticle.immersive3D.viewer3D.card.Lv3dCardViewerComposableKt$Lv3dCardViewerComposable$lambda$29$0$$inlined$onDispose$1
                            @Override // androidx.compose.runtime.DisposableEffectResult
                            public final void dispose() {
                                sensorDataManager2.b();
                            }
                        };
                    }
                };
                mutableState8 = mutableState;
                gapComposerH.q(objX13);
            }
            EffectsKt.b(bool10, bool11, (Function1) objX13, gapComposerH);
            objX14 = gapComposerH.x();
            if (objX14 == composer$Companion$Empty$1) {
                objX14 = new bn(lv3dCardViewerHelper, mutableState8, 3);
                gapComposerH.q(objX14);
            }
            lifecycleEventObserver = (LifecycleEventObserver) objX14;
            LifecycleOwner lifecycleOwner2 = (LifecycleOwner) mutableState7.getF10755b();
            zK = gapComposerH.K(mutableState7) | gapComposerH.y(lifecycleEventObserver) | gapComposerH.y(lv3dCardViewerHelper);
            objX15 = gapComposerH.x();
            if (zK) {
                objX15 = new jx(lifecycleEventObserver, mutableState7, lv3dCardViewerHelper, 16);
                gapComposerH.q(objX15);
            } else {
                objX15 = new jx(lifecycleEventObserver, mutableState7, lv3dCardViewerHelper, 16);
                gapComposerH.q(objX15);
            }
            EffectsKt.c(lifecycleOwner2, (Function1) objX15, gapComposerH);
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            OpaqueKey opaqueKey4 = ComposerKt.f7940a;
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifier3 = dTFunctionNameModifier;
            modifierC = ComposedModifierKt.c(gapComposerH, modifier3);
            ComposeUiNode.b0.getClass();
            function12 = ComposeUiNode.Companion.f9641b;
            if (applier != null) {
                Throwable th3 = th;
                ComposablesKt.b();
                throw th3;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function12);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            if (((Boolean) mutableState6.getF10755b()).booleanValue()) {
                str = "Lv3dCardViewerComposable";
                Modifier modifierG3 = boxScopeInstance.g(n00.i(gapComposerH, -1313026682, str), Alignment.Companion.f8587f);
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.dmsn_3D_id_error);
                long j9 = LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k;
                TextAlign.f10959b.getClass();
                GapComposer gapComposer3 = gapComposerH;
                mutableState9 = mutableState4;
                boxScopeInstance2 = boxScopeInstance;
                tweenSpec = th;
                z8 = false;
                TextKt.c(strC2, modifierG3, j9, 0L, null, 0L, null, new TextAlign(TextAlign.f10961e), 0L, 0, false, 0, 0, null, null, gapComposer3, 0, 0, 261112);
                gapComposerH = gapComposer3;
                gapComposerH.Z(false);
            } else {
                tweenSpec = th;
                z8 = false;
                mutableState9 = mutableState4;
                boxScopeInstance2 = boxScopeInstance;
                str = "Lv3dCardViewerComposable";
                gapComposerH.L(-1312732895);
                surfaceView3 = surfaceView2;
                zY3 = gapComposerH.y(surfaceView3);
                objX16 = gapComposerH.x();
                if (zY3) {
                    objX16 = new ya0(surfaceView3, 0);
                    gapComposerH.q(objX16);
                } else {
                    objX16 = new ya0(surfaceView3, 0);
                    gapComposerH.q(objX16);
                }
                AndroidView_androidKt.a((Function1) objX16, null, null, gapComposerH, 0, 6);
                gapComposerH.Z(false);
            }
            Modifier modifierG4 = boxScopeInstance2.g(new DTFunctionNameModifier(str), Alignment.Companion.f8587f);
            if (((Boolean) mutableState9.getF10755b()).booleanValue()) {
                z9 = z8;
            } else {
                z9 = z8;
            }
            ExitTransition exitTransitionB2 = EnterExitTransitionKt.h(tweenSpec, 3).b(EnterExitTransitionKt.j(tweenSpec, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7));
            EnterTransition enterTransitionB2 = EnterExitTransitionKt.f(tweenSpec, Call.Parameters.DEFAULT_CAMERA_ZOOM, 3).b(EnterExitTransitionKt.i(tweenSpec, Call.Parameters.DEFAULT_CAMERA_ZOOM, 7));
            ComposableSingletons$Lv3dCardViewerComposableKt.f58551a.getClass();
            GapComposer gapComposer4 = gapComposerH;
            AnimatedVisibilityKt.e(z9, modifierG4, enterTransitionB2, exitTransitionB2, null, ComposableSingletons$Lv3dCardViewerComposableKt.f58552b, gapComposer4, 200064, 16);
            gapComposerH = gapComposer4;
            gapComposerH.Z(true);
            z3 = true;
            function7 = function11;
            modifier2 = modifier3;
        } else {
            function5 = function1;
            gapComposerH.D();
            z3 = z;
            modifier2 = dTFunctionNameModifier;
            function6 = function3;
            function7 = function4;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new bg(modifier2, lv3dCardViewerUiModel, z3, function5, function6, blossomConfiguration, function7, i2, i3);
        }
    }
}
