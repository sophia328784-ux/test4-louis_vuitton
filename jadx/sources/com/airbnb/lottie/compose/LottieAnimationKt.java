package com.airbnb.lottie.compose;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$Fit$1;
import androidx.compose.ui.layout.ScaleFactor;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import com.airbnb.lottie.AsyncUpdates;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieFeatureFlag;
import com.airbnb.lottie.RenderMode;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.CompositionLayer;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.LottieValueAnimator;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.airbnb.lottie.value.LottieValueCallback;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import defpackage.a;
import defpackage.et;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmc.BodyPartID;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002¨\u0006\u0004²\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/airbnb/lottie/compose/LottieDynamicProperties;", "setDynamicProperties", "", "progress", "lottie-compose_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public abstract class LottieAnimationKt {
    public static final void a(final LottieComposition lottieComposition, Modifier modifier, boolean z, int i2, LottieDynamicProperties lottieDynamicProperties, Composer composer, final int i3, final int i4, final int i5) {
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "LottieAnimation");
        }
        GapComposer gapComposerH = composer.h(1331239405);
        if ((i5 & 2) != 0) {
            dTFunctionNameModifier = new DTFunctionNameModifier("LottieAnimation");
        }
        final Modifier modifier2 = dTFunctionNameModifier;
        boolean z2 = (i5 & 4) != 0 ? true : z;
        int i6 = (i5 & 64) != 0 ? 1 : i2;
        final RenderMode renderMode = RenderMode.AUTOMATIC;
        LottieDynamicProperties lottieDynamicProperties2 = (i5 & 16384) != 0 ? null : lottieDynamicProperties;
        Alignment.f8582a.getClass();
        final BiasAlignment biasAlignment = Alignment.Companion.f8587f;
        ContentScale.f9447a.getClass();
        ContentScale$Companion$Fit$1 contentScale$Companion$Fit$1 = ContentScale.Companion.f9450c;
        final AsyncUpdates asyncUpdates = AsyncUpdates.AUTOMATIC;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        final int i7 = i6;
        final boolean z3 = z2;
        final LottieAnimatable lottieAnimatableA = AnimateLottieCompositionAsStateKt.a(lottieComposition, z3, null, i7, gapComposerH, 896);
        gapComposerH.w(185157769);
        boolean zK = gapComposerH.K(lottieAnimatableA);
        Object objX = gapComposerH.x();
        if (zK || objX == Composer.Companion.f7939a) {
            objX = new Function0<Float>() { // from class: com.airbnb.lottie.compose.LottieAnimationKt$LottieAnimation$6$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    return Float.valueOf(((Number) lottieAnimatableA.getF10755b()).floatValue());
                }
            };
            gapComposerH.q(objX);
        }
        gapComposerH.Z(false);
        int i8 = i3 >> 12;
        b(lottieComposition, (Function0) objX, modifier2, false, false, true, false, renderMode, false, lottieDynamicProperties2, biasAlignment, contentScale$Companion$Fit$1, true, false, null, asyncUpdates, false, gapComposerH, ((i3 << 3) & 896) | 1073741832 | (i8 & 7168) | (57344 & i8) | (i8 & ImageMetadata.JPEG_GPS_COORDINATES), 32768, 0);
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final LottieDynamicProperties lottieDynamicProperties3 = lottieDynamicProperties2;
            recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>(lottieComposition, modifier2, z3, i7, renderMode, lottieDynamicProperties3, biasAlignment, asyncUpdates, i3, i4, i5) { // from class: com.airbnb.lottie.compose.LottieAnimationKt$LottieAnimation$7

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ LottieComposition f21993c;
                public final /* synthetic */ Modifier d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ boolean f21994e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ int f21995f;
                public final /* synthetic */ LottieDynamicProperties g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Alignment f21996h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ int f21997i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ int f21998j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ int f21999k;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                    ContentScale.Companion companion = ContentScale.Companion.f9448a;
                    this.g = lottieDynamicProperties3;
                    this.f21996h = biasAlignment;
                    this.f21997i = i3;
                    this.f21998j = i4;
                    this.f21999k = i5;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    Composer composer2 = (Composer) obj;
                    ((Number) obj2).intValue();
                    ContentScale.Companion companion = ContentScale.Companion.f9448a;
                    LottieAnimationKt.a(this.f21993c, this.d, this.f21994e, this.f21995f, this.g, composer2, RecomposeScopeImplKt.a(this.f21997i | 1), RecomposeScopeImplKt.a(this.f21998j), this.f21999k);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(final LottieComposition lottieComposition, final Function0 function0, Modifier modifier, boolean z, boolean z2, boolean z3, boolean z4, RenderMode renderMode, boolean z5, LottieDynamicProperties lottieDynamicProperties, Alignment alignment, ContentScale contentScale, boolean z6, boolean z7, Map map, AsyncUpdates asyncUpdates, boolean z8, Composer composer, final int i2, final int i3, final int i4) {
        final Alignment alignment2;
        ContentScale contentScale2;
        Modifier dTFunctionNameModifier = modifier;
        if (dTFunctionNameModifier != null) {
            dTFunctionNameModifier = a.e(dTFunctionNameModifier, "LottieAnimation");
        }
        function0.getClass();
        GapComposer gapComposerH = composer.h(382909894);
        if ((i4 & 4) != 0) {
            dTFunctionNameModifier = new DTFunctionNameModifier("LottieAnimation");
        }
        final boolean z9 = (i4 & 8) != 0 ? false : z;
        final boolean z10 = (i4 & 16) != 0 ? false : z2;
        final boolean z11 = (i4 & 32) != 0 ? true : z3;
        final boolean z12 = (i4 & 64) != 0 ? false : z4;
        final RenderMode renderMode2 = (i4 & 128) != 0 ? RenderMode.AUTOMATIC : renderMode;
        final boolean z13 = (i4 & 256) != 0 ? false : z5;
        final LottieDynamicProperties lottieDynamicProperties2 = (i4 & 512) != 0 ? null : lottieDynamicProperties;
        if ((i4 & 1024) != 0) {
            Alignment.f8582a.getClass();
            alignment2 = Alignment.Companion.f8587f;
        } else {
            alignment2 = alignment;
        }
        if ((i4 & 2048) != 0) {
            ContentScale.f9447a.getClass();
            contentScale2 = ContentScale.Companion.f9450c;
        } else {
            contentScale2 = contentScale;
        }
        final boolean z14 = (i4 & 4096) != 0 ? true : z6;
        final boolean z15 = (i4 & 8192) != 0 ? false : z7;
        Map map2 = (i4 & 16384) != 0 ? null : map;
        final AsyncUpdates asyncUpdates2 = (i4 & 32768) != 0 ? AsyncUpdates.AUTOMATIC : asyncUpdates;
        boolean z16 = (i4 & 65536) != 0 ? false : z8;
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        gapComposerH.w(185152185);
        Object objX = gapComposerH.x();
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
        if (objX == composer$Companion$Empty$1) {
            objX = new LottieDrawable();
            gapComposerH.q(objX);
        }
        final LottieDrawable lottieDrawable = (LottieDrawable) objX;
        gapComposerH.Z(false);
        gapComposerH.w(185152232);
        Object objX2 = gapComposerH.x();
        if (objX2 == composer$Companion$Empty$1) {
            objX2 = new Matrix();
            gapComposerH.q(objX2);
        }
        final Matrix matrix = (Matrix) objX2;
        gapComposerH.Z(false);
        gapComposerH.w(185152312);
        boolean zK = gapComposerH.K(lottieComposition);
        Object objX3 = gapComposerH.x();
        if (zK || objX3 == composer$Companion$Empty$1) {
            objX3 = SnapshotStateKt.g(null);
            gapComposerH.q(objX3);
        }
        final MutableState mutableState = (MutableState) objX3;
        gapComposerH.Z(false);
        gapComposerH.w(185152364);
        if (lottieComposition == null || lottieComposition.b() == Call.Parameters.DEFAULT_CAMERA_ZOOM) {
            final boolean z17 = z11;
            final Map map3 = map2;
            final Modifier modifier2 = dTFunctionNameModifier;
            final LottieDynamicProperties lottieDynamicProperties3 = lottieDynamicProperties2;
            final boolean z18 = z9;
            final boolean z19 = z10;
            final boolean z20 = z14;
            final boolean z21 = z15;
            final boolean z22 = z16;
            final ContentScale contentScale3 = contentScale2;
            BoxKt.a(modifier2, gapComposerH, (i2 >> 6) & 14);
            gapComposerH.Z(false);
            RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                recomposeScopeImplB0.d = new Function2<Composer, Integer, Unit>() { // from class: com.airbnb.lottie.compose.LottieAnimationKt$LottieAnimation$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        ((Number) obj2).intValue();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        int i5 = i4;
                        LottieAnimationKt.b(lottieComposition, function0, modifier2, z18, z19, z17, z12, renderMode2, z13, lottieDynamicProperties3, alignment2, contentScale3, z20, z21, map3, asyncUpdates2, z22, (Composer) obj, iA, iA2, i5);
                        return Unit.f71739a;
                    }
                };
                return;
            }
            return;
        }
        gapComposerH.Z(false);
        final Rect rect = lottieComposition.f21754k;
        final Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
        int iWidth = rect.width();
        int iHeight = rect.height();
        dTFunctionNameModifier.getClass();
        final ContentScale contentScale4 = contentScale2;
        Modifier modifierO = dTFunctionNameModifier.o(new LottieAnimationSizeElement(iWidth, iHeight));
        final Modifier modifier3 = dTFunctionNameModifier;
        final AsyncUpdates asyncUpdates3 = asyncUpdates2;
        final boolean z23 = z13;
        final Alignment alignment3 = alignment2;
        final Map map4 = map2;
        final boolean z24 = z12;
        final boolean z25 = z16;
        Function1<DrawScope, Unit> function1 = new Function1<DrawScope, Unit>() { // from class: com.airbnb.lottie.compose.LottieAnimationKt$LottieAnimation$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                DrawScope drawScope = (DrawScope) obj;
                drawScope.getClass();
                Canvas canvasA = drawScope.getF8996c().a();
                Rect rect2 = rect;
                long jFloatToRawIntBits = (((long) Float.floatToRawIntBits(rect2.height())) & BodyPartID.bodyIdMax) | (((long) Float.floatToRawIntBits(rect2.width())) << 32);
                Size.Companion companion = Size.f8820b;
                long jA = IntSizeKt.a(MathKt.c(Size.d(drawScope.b())), MathKt.c(Size.b(drawScope.b())));
                long jA2 = contentScale4.a(jFloatToRawIntBits, drawScope.b());
                float fD = Size.d(jFloatToRawIntBits);
                int i5 = ScaleFactor.f9565a;
                int i6 = (int) (jA2 >> 32);
                int iIntBitsToFloat = (int) (Float.intBitsToFloat(i6) * fD);
                float fB = Size.b(jFloatToRawIntBits);
                int i7 = (int) (jA2 & BodyPartID.bodyIdMax);
                long jA3 = alignment3.a(IntSizeKt.a(iIntBitsToFloat, (int) (Float.intBitsToFloat(i7) * fB)), jA, drawScope.getLayoutDirection());
                Matrix matrix2 = matrix;
                matrix2.reset();
                IntOffset.Companion companion2 = IntOffset.f11012b;
                matrix2.preTranslate((int) (jA3 >> 32), (int) (jA3 & BodyPartID.bodyIdMax));
                matrix2.preScale(Float.intBitsToFloat(i6), Float.intBitsToFloat(i7));
                LottieFeatureFlag lottieFeatureFlag = LottieFeatureFlag.MergePathsApi19;
                LottieDrawable lottieDrawable2 = lottieDrawable;
                lottieDrawable2.g(lottieFeatureFlag, z24);
                lottieDrawable2.f21761f = z25;
                lottieDrawable2.u = renderMode2;
                lottieDrawable2.d();
                lottieDrawable2.K = asyncUpdates3;
                lottieDrawable2.n(lottieComposition);
                Map map5 = lottieDrawable2.f21765k;
                Map map6 = map4;
                if (map6 != map5) {
                    lottieDrawable2.f21765k = map6;
                    lottieDrawable2.invalidateSelf();
                }
                MutableState mutableState2 = mutableState;
                LottieDynamicProperties lottieDynamicProperties4 = (LottieDynamicProperties) mutableState2.getF10755b();
                LottieDynamicProperties lottieDynamicProperties5 = lottieDynamicProperties2;
                if (lottieDynamicProperties5 != lottieDynamicProperties4) {
                    LottieDynamicProperties lottieDynamicProperties6 = (LottieDynamicProperties) mutableState2.getF10755b();
                    if (lottieDynamicProperties6 != null) {
                        for (LottieDynamicProperty lottieDynamicProperty : lottieDynamicProperties6.f22019a) {
                            lottieDrawable2.a(lottieDynamicProperty.f22030b, lottieDynamicProperty.f22029a, null);
                        }
                        for (LottieDynamicProperty lottieDynamicProperty2 : lottieDynamicProperties6.f22020b) {
                            lottieDrawable2.a(lottieDynamicProperty2.f22030b, lottieDynamicProperty2.f22029a, null);
                        }
                        for (LottieDynamicProperty lottieDynamicProperty3 : lottieDynamicProperties6.f22021c) {
                            lottieDrawable2.a(lottieDynamicProperty3.f22030b, lottieDynamicProperty3.f22029a, null);
                        }
                        for (LottieDynamicProperty lottieDynamicProperty4 : lottieDynamicProperties6.d) {
                            lottieDrawable2.a(lottieDynamicProperty4.f22030b, lottieDynamicProperty4.f22029a, null);
                        }
                        for (LottieDynamicProperty lottieDynamicProperty5 : lottieDynamicProperties6.f22022e) {
                            lottieDrawable2.a(lottieDynamicProperty5.f22030b, lottieDynamicProperty5.f22029a, null);
                        }
                        for (LottieDynamicProperty lottieDynamicProperty6 : lottieDynamicProperties6.f22023f) {
                            lottieDrawable2.a(lottieDynamicProperty6.f22030b, lottieDynamicProperty6.f22029a, null);
                        }
                        for (LottieDynamicProperty lottieDynamicProperty7 : lottieDynamicProperties6.g) {
                            lottieDrawable2.a(lottieDynamicProperty7.f22030b, lottieDynamicProperty7.f22029a, null);
                        }
                        for (LottieDynamicProperty lottieDynamicProperty8 : lottieDynamicProperties6.f22024h) {
                            lottieDrawable2.a(lottieDynamicProperty8.f22030b, lottieDynamicProperty8.f22029a, null);
                        }
                        for (LottieDynamicProperty lottieDynamicProperty9 : lottieDynamicProperties6.f22025i) {
                            lottieDrawable2.a(lottieDynamicProperty9.f22030b, lottieDynamicProperty9.f22029a, null);
                        }
                        for (LottieDynamicProperty lottieDynamicProperty10 : lottieDynamicProperties6.f22026j) {
                            lottieDrawable2.a(lottieDynamicProperty10.f22030b, lottieDynamicProperty10.f22029a, null);
                        }
                    }
                    if (lottieDynamicProperties5 != null) {
                        for (LottieDynamicProperty lottieDynamicProperty11 : lottieDynamicProperties5.f22019a) {
                            KeyPath keyPath = lottieDynamicProperty11.f22030b;
                            Object obj2 = lottieDynamicProperty11.f22029a;
                            final Function1 function2 = lottieDynamicProperty11.f22031c;
                            lottieDrawable2.a(keyPath, obj2, new LottieValueCallback() { // from class: com.airbnb.lottie.compose.LottieDynamicPropertiesKt$toValueCallback$1
                                @Override // com.airbnb.lottie.value.LottieValueCallback
                                public final Object a(LottieFrameInfo lottieFrameInfo) {
                                    lottieFrameInfo.getClass();
                                    return function2.invoke(lottieFrameInfo);
                                }
                            });
                        }
                        for (LottieDynamicProperty lottieDynamicProperty12 : lottieDynamicProperties5.f22020b) {
                            KeyPath keyPath2 = lottieDynamicProperty12.f22030b;
                            Object obj3 = lottieDynamicProperty12.f22029a;
                            final Function1 function3 = lottieDynamicProperty12.f22031c;
                            lottieDrawable2.a(keyPath2, obj3, new LottieValueCallback() { // from class: com.airbnb.lottie.compose.LottieDynamicPropertiesKt$toValueCallback$1
                                @Override // com.airbnb.lottie.value.LottieValueCallback
                                public final Object a(LottieFrameInfo lottieFrameInfo) {
                                    lottieFrameInfo.getClass();
                                    return function3.invoke(lottieFrameInfo);
                                }
                            });
                        }
                        for (LottieDynamicProperty lottieDynamicProperty13 : lottieDynamicProperties5.f22021c) {
                            KeyPath keyPath3 = lottieDynamicProperty13.f22030b;
                            Object obj4 = lottieDynamicProperty13.f22029a;
                            final Function1 function4 = lottieDynamicProperty13.f22031c;
                            lottieDrawable2.a(keyPath3, obj4, new LottieValueCallback() { // from class: com.airbnb.lottie.compose.LottieDynamicPropertiesKt$toValueCallback$1
                                @Override // com.airbnb.lottie.value.LottieValueCallback
                                public final Object a(LottieFrameInfo lottieFrameInfo) {
                                    lottieFrameInfo.getClass();
                                    return function4.invoke(lottieFrameInfo);
                                }
                            });
                        }
                        for (LottieDynamicProperty lottieDynamicProperty14 : lottieDynamicProperties5.d) {
                            KeyPath keyPath4 = lottieDynamicProperty14.f22030b;
                            Object obj5 = lottieDynamicProperty14.f22029a;
                            final Function1 function5 = lottieDynamicProperty14.f22031c;
                            lottieDrawable2.a(keyPath4, obj5, new LottieValueCallback() { // from class: com.airbnb.lottie.compose.LottieDynamicPropertiesKt$toValueCallback$1
                                @Override // com.airbnb.lottie.value.LottieValueCallback
                                public final Object a(LottieFrameInfo lottieFrameInfo) {
                                    lottieFrameInfo.getClass();
                                    return function5.invoke(lottieFrameInfo);
                                }
                            });
                        }
                        for (LottieDynamicProperty lottieDynamicProperty15 : lottieDynamicProperties5.f22022e) {
                            KeyPath keyPath5 = lottieDynamicProperty15.f22030b;
                            Object obj6 = lottieDynamicProperty15.f22029a;
                            final Function1 function6 = lottieDynamicProperty15.f22031c;
                            lottieDrawable2.a(keyPath5, obj6, new LottieValueCallback() { // from class: com.airbnb.lottie.compose.LottieDynamicPropertiesKt$toValueCallback$1
                                @Override // com.airbnb.lottie.value.LottieValueCallback
                                public final Object a(LottieFrameInfo lottieFrameInfo) {
                                    lottieFrameInfo.getClass();
                                    return function6.invoke(lottieFrameInfo);
                                }
                            });
                        }
                        for (LottieDynamicProperty lottieDynamicProperty16 : lottieDynamicProperties5.f22023f) {
                            KeyPath keyPath6 = lottieDynamicProperty16.f22030b;
                            Object obj7 = lottieDynamicProperty16.f22029a;
                            final Function1 function7 = lottieDynamicProperty16.f22031c;
                            lottieDrawable2.a(keyPath6, obj7, new LottieValueCallback() { // from class: com.airbnb.lottie.compose.LottieDynamicPropertiesKt$toValueCallback$1
                                @Override // com.airbnb.lottie.value.LottieValueCallback
                                public final Object a(LottieFrameInfo lottieFrameInfo) {
                                    lottieFrameInfo.getClass();
                                    return function7.invoke(lottieFrameInfo);
                                }
                            });
                        }
                        for (LottieDynamicProperty lottieDynamicProperty17 : lottieDynamicProperties5.g) {
                            KeyPath keyPath7 = lottieDynamicProperty17.f22030b;
                            Object obj8 = lottieDynamicProperty17.f22029a;
                            final Function1 function8 = lottieDynamicProperty17.f22031c;
                            lottieDrawable2.a(keyPath7, obj8, new LottieValueCallback() { // from class: com.airbnb.lottie.compose.LottieDynamicPropertiesKt$toValueCallback$1
                                @Override // com.airbnb.lottie.value.LottieValueCallback
                                public final Object a(LottieFrameInfo lottieFrameInfo) {
                                    lottieFrameInfo.getClass();
                                    return function8.invoke(lottieFrameInfo);
                                }
                            });
                        }
                        for (LottieDynamicProperty lottieDynamicProperty18 : lottieDynamicProperties5.f22024h) {
                            KeyPath keyPath8 = lottieDynamicProperty18.f22030b;
                            Object obj9 = lottieDynamicProperty18.f22029a;
                            final Function1 function9 = lottieDynamicProperty18.f22031c;
                            lottieDrawable2.a(keyPath8, obj9, new LottieValueCallback() { // from class: com.airbnb.lottie.compose.LottieDynamicPropertiesKt$toValueCallback$1
                                @Override // com.airbnb.lottie.value.LottieValueCallback
                                public final Object a(LottieFrameInfo lottieFrameInfo) {
                                    lottieFrameInfo.getClass();
                                    return function9.invoke(lottieFrameInfo);
                                }
                            });
                        }
                        for (LottieDynamicProperty lottieDynamicProperty19 : lottieDynamicProperties5.f22025i) {
                            KeyPath keyPath9 = lottieDynamicProperty19.f22030b;
                            Object obj10 = lottieDynamicProperty19.f22029a;
                            final Function1 function10 = lottieDynamicProperty19.f22031c;
                            lottieDrawable2.a(keyPath9, obj10, new LottieValueCallback() { // from class: com.airbnb.lottie.compose.LottieDynamicPropertiesKt$toValueCallback$1
                                @Override // com.airbnb.lottie.value.LottieValueCallback
                                public final Object a(LottieFrameInfo lottieFrameInfo) {
                                    lottieFrameInfo.getClass();
                                    return function10.invoke(lottieFrameInfo);
                                }
                            });
                        }
                        for (LottieDynamicProperty lottieDynamicProperty20 : lottieDynamicProperties5.f22026j) {
                            KeyPath keyPath10 = lottieDynamicProperty20.f22030b;
                            Object obj11 = lottieDynamicProperty20.f22029a;
                            final Function1 function11 = lottieDynamicProperty20.f22031c;
                            lottieDrawable2.a(keyPath10, obj11, new LottieValueCallback() { // from class: com.airbnb.lottie.compose.LottieDynamicPropertiesKt$toValueCallback$1
                                @Override // com.airbnb.lottie.value.LottieValueCallback
                                public final Object a(LottieFrameInfo lottieFrameInfo) {
                                    lottieFrameInfo.getClass();
                                    return function11.invoke(lottieFrameInfo);
                                }
                            });
                        }
                    }
                    mutableState2.setValue(lottieDynamicProperties5);
                }
                boolean z26 = lottieDrawable2.q;
                boolean z27 = z9;
                if (z26 != z27) {
                    lottieDrawable2.q = z27;
                    CompositionLayer compositionLayer = lottieDrawable2.o;
                    if (compositionLayer != null) {
                        compositionLayer.q(z27);
                    }
                }
                lottieDrawable2.r = z10;
                lottieDrawable2.s = z11;
                lottieDrawable2.m = z23;
                boolean z28 = lottieDrawable2.n;
                boolean z29 = z14;
                if (z29 != z28) {
                    lottieDrawable2.n = z29;
                    CompositionLayer compositionLayer2 = lottieDrawable2.o;
                    if (compositionLayer2 != null) {
                        compositionLayer2.K = z29;
                    }
                    lottieDrawable2.invalidateSelf();
                }
                boolean z30 = lottieDrawable2.t;
                boolean z31 = z15;
                if (z31 != z30) {
                    lottieDrawable2.t = z31;
                    lottieDrawable2.invalidateSelf();
                }
                Iterator it = LottieDrawable.O.iterator();
                Marker markerD = null;
                while (it.hasNext()) {
                    markerD = lottieDrawable2.f21758b.d((String) it.next());
                    if (markerD != null) {
                        break;
                    }
                }
                if (lottieDrawable2.b(context) || markerD == null) {
                    lottieDrawable2.p(((Number) function0.mo47invoke()).floatValue());
                } else {
                    lottieDrawable2.p(markerD.f22085b);
                }
                lottieDrawable2.setBounds(0, 0, rect2.width(), rect2.height());
                android.graphics.Canvas canvasA2 = AndroidCanvas_androidKt.a(canvasA);
                et etVar = lottieDrawable2.M;
                ThreadPoolExecutor threadPoolExecutor = LottieDrawable.P;
                LottieValueAnimator lottieValueAnimator = lottieDrawable2.f21759c;
                Semaphore semaphore = lottieDrawable2.L;
                CompositionLayer compositionLayer3 = lottieDrawable2.o;
                LottieComposition lottieComposition2 = lottieDrawable2.f21758b;
                if (compositionLayer3 != null && lottieComposition2 != null) {
                    AsyncUpdates asyncUpdates4 = lottieDrawable2.K;
                    if (asyncUpdates4 == null) {
                        asyncUpdates4 = L.f21740a;
                    }
                    boolean z32 = asyncUpdates4 == AsyncUpdates.ENABLED;
                    if (z32) {
                        try {
                            semaphore.acquire();
                            if (lottieDrawable2.q()) {
                                lottieDrawable2.p(lottieValueAnimator.c());
                            }
                        } catch (InterruptedException unused) {
                            if (z32) {
                                semaphore.release();
                                if (compositionLayer3.J != lottieValueAnimator.c()) {
                                }
                            }
                            return Unit.f71739a;
                        } catch (Throwable th) {
                            if (z32) {
                                semaphore.release();
                                if (compositionLayer3.J != lottieValueAnimator.c()) {
                                    threadPoolExecutor.execute(etVar);
                                }
                            }
                            throw th;
                        }
                    }
                    boolean z33 = lottieDrawable2.f21761f;
                    int i8 = lottieDrawable2.p;
                    boolean z34 = lottieDrawable2.v;
                    if (z33) {
                        try {
                            if (z34) {
                                canvasA2.save();
                                canvasA2.concat(matrix2);
                                lottieDrawable2.l(canvasA2, compositionLayer3);
                                canvasA2.restore();
                            } else {
                                compositionLayer3.d(canvasA2, matrix2, i8, null);
                            }
                        } catch (Throwable unused2) {
                            Logger.f22287a.getClass();
                            AsyncUpdates asyncUpdates5 = L.f21740a;
                        }
                    } else if (z34) {
                        canvasA2.save();
                        canvasA2.concat(matrix2);
                        lottieDrawable2.l(canvasA2, compositionLayer3);
                        canvasA2.restore();
                    } else {
                        compositionLayer3.d(canvasA2, matrix2, i8, null);
                    }
                    lottieDrawable2.J = false;
                    if (z32) {
                        semaphore.release();
                        if (compositionLayer3.J != lottieValueAnimator.c()) {
                            threadPoolExecutor.execute(etVar);
                        }
                    }
                }
                return Unit.f71739a;
            }
        };
        final LottieDynamicProperties lottieDynamicProperties4 = lottieDynamicProperties2;
        final boolean z26 = z9;
        final boolean z27 = z10;
        final boolean z28 = z14;
        final boolean z29 = z15;
        final boolean z30 = z11;
        CanvasKt.a(modifierO, function1, gapComposerH, 0);
        RecomposeScopeImpl recomposeScopeImplB1 = gapComposerH.b0();
        if (recomposeScopeImplB1 != null) {
            recomposeScopeImplB1.d = new Function2<Composer, Integer, Unit>() { // from class: com.airbnb.lottie.compose.LottieAnimationKt$LottieAnimation$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    int i5 = i4;
                    LottieAnimationKt.b(lottieComposition, function0, modifier3, z26, z27, z30, z24, renderMode2, z23, lottieDynamicProperties4, alignment3, contentScale4, z28, z29, map4, asyncUpdates3, z25, (Composer) obj, iA, iA2, i5);
                    return Unit.f71739a;
                }
            };
        }
    }
}
