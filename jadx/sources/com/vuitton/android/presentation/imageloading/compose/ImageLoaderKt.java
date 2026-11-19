package com.vuitton.android.presentation.imageloading.compose;

import android.content.Context;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.ContentScale$Companion$FillHeight$1;
import androidx.compose.ui.layout.ContentScale$Companion$Fit$1;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.InspectionModeKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import coil3.ImageLoader;
import coil3.SingletonImageLoader;
import coil3.compose.AsyncImageModelEqualityDelegate;
import coil3.compose.AsyncImagePainter;
import coil3.compose.AsyncImagePainterKt;
import coil3.compose.ComposableSingletons$SubcomposeAsyncImageKt;
import coil3.compose.LocalAsyncImageModelEqualityDelegateKt;
import coil3.compose.SubcomposeAsyncImageKt;
import coil3.compose.internal.AsyncImageState;
import coil3.compose.internal.UtilsKt;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.presentation.imageloading.PredefinedImageRequestOptions;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import defpackage.a;
import defpackage.cf;
import defpackage.d21;
import defpackage.dy;
import defpackage.j20;
import defpackage.n00;
import defpackage.pj0;
import defpackage.u5;
import defpackage.yj0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImageLoaderKt {
    public static final void a(final int i2, final String str, Composer composer, final int i3, final int i4) {
        int i5;
        GapComposer gapComposerH = composer.h(1576667010);
        if ((i3 & 6) == 0) {
            i5 = (gapComposerH.d(i2) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        int i6 = i4 & 2;
        if (i6 != 0) {
            i5 |= 48;
        } else if ((i3 & 48) == 0) {
            i5 |= gapComposerH.K(str) ? 32 : 16;
        }
        if (gapComposerH.p(i5 & 1, (i5 & 19) != 18)) {
            if (i6 != 0) {
                str = null;
            }
            String str2 = str;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Modifier modifierO = new DTFunctionNameModifier("DefaultImage").o(SizeKt.f5052c);
            Painter painterA = PainterResources_androidKt.a(i2, gapComposerH, i5 & 14);
            ContentScale.f9447a.getClass();
            ImageKt.a(painterA, str2, modifierO, null, ContentScale.Companion.f9449b, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 24968 | (i5 & 112), 104);
            str = str2;
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new Function2() { // from class: i20
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int iA = RecomposeScopeImplKt.a(i3 | 1);
                    ImageLoaderKt.a(i2, str, (Composer) obj, iA, i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x012d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0137  */
    /* JADX WARN: Code duplicated, block: B:104:0x013a  */
    /* JADX WARN: Code duplicated, block: B:107:0x0140  */
    /* JADX WARN: Code duplicated, block: B:108:0x0145  */
    /* JADX WARN: Code duplicated, block: B:111:0x0149  */
    /* JADX WARN: Code duplicated, block: B:113:0x014c  */
    /* JADX WARN: Code duplicated, block: B:116:0x0155  */
    /* JADX WARN: Code duplicated, block: B:119:0x0163  */
    /* JADX WARN: Code duplicated, block: B:121:0x0169  */
    /* JADX WARN: Code duplicated, block: B:123:0x0176  */
    /* JADX WARN: Code duplicated, block: B:126:0x017e  */
    /* JADX WARN: Code duplicated, block: B:129:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:130:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:133:0x01b7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:134:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:136:0x01c0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:137:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:138:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:143:0x0208  */
    /* JADX WARN: Code duplicated, block: B:145:0x020f  */
    /* JADX WARN: Code duplicated, block: B:146:0x0213  */
    /* JADX WARN: Code duplicated, block: B:149:0x0265 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:153:0x0275  */
    /* JADX WARN: Code duplicated, block: B:156:0x0294  */
    /* JADX WARN: Code duplicated, block: B:158:0x0298  */
    /* JADX WARN: Code duplicated, block: B:170:0x030e  */
    /* JADX WARN: Code duplicated, block: B:171:0x0318  */
    /* JADX WARN: Code duplicated, block: B:174:0x033c  */
    /* JADX WARN: Code duplicated, block: B:176:0x0340  */
    /* JADX WARN: Code duplicated, block: B:179:0x0355  */
    /* JADX WARN: Code duplicated, block: B:181:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006d  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:45:0x0079  */
    /* JADX WARN: Code duplicated, block: B:46:0x007c  */
    /* JADX WARN: Code duplicated, block: B:50:0x0083  */
    /* JADX WARN: Code duplicated, block: B:52:0x0088  */
    /* JADX WARN: Code duplicated, block: B:54:0x008c  */
    /* JADX WARN: Code duplicated, block: B:56:0x0094  */
    /* JADX WARN: Code duplicated, block: B:57:0x0097  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:82:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:88:0x0103  */
    /* JADX WARN: Code duplicated, block: B:89:0x0106  */
    /* JADX WARN: Code duplicated, block: B:93:0x0116  */
    /* JADX WARN: Code duplicated, block: B:94:0x0118  */
    /* JADX WARN: Code duplicated, block: B:97:0x0121 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:98:0x0123  */
    /* JADX WARN: Code duplicated, block: B:99:0x0129  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r29v1 */
    /* JADX WARN: Type inference failed for: r29v2, types: [kotlin.jvm.functions.Function1] */
    /* JADX WARN: Type inference failed for: r29v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.String] */
    public static final void b(Modifier modifier, final Object obj, ContentScale contentScale, String str, Integer num, int i2, boolean z, Function1 function1, Function1 function2, Function1 function3, Composer composer, final int i3, final int i4) {
        int i5;
        ContentScale contentScale2;
        int i6;
        Object obj2;
        int i7;
        int i8;
        Integer num2;
        int i9;
        int i10;
        int i11;
        Throwable th;
        int i12;
        int i13;
        int i14;
        boolean z2;
        int i15;
        int i16;
        Modifier modifier2;
        int i17;
        int i18;
        boolean z3;
        Function1 function4;
        final Function1 function5;
        final boolean z4;
        final int i19;
        final ?? r4;
        final Integer num3;
        final Modifier modifier3;
        final Function1 function6;
        RecomposeScopeImpl recomposeScopeImplB0;
        Modifier dTFunctionNameModifier;
        ?? r2;
        Integer numValueOf;
        Object objX;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Function1 function7;
        Function1 function8;
        Object objX2;
        Function1 function9;
        StaticProvidableCompositionLocal staticProvidableCompositionLocal;
        Context context;
        boolean z5;
        boolean zBooleanValue;
        boolean z6;
        Object objX3;
        ImageRequest.Builder builder;
        Object obj3;
        ImageLoader$Zoomable$Model imageLoader$Zoomable$Model;
        MeasurePolicy measurePolicyD;
        ContentScale contentScale3;
        int iHashCode;
        PersistentCompositionLocalMap persistentCompositionLocalMapU;
        Modifier modifierC;
        Modifier modifier4;
        Function0 function0;
        ?? pj0Var;
        AsyncImagePainter.State state;
        Object objX4;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImageLoader-jOlONis");
        }
        GapComposer gapComposerH = composer.h(228136019);
        int i20 = i4 & 1;
        if (i20 != 0) {
            i5 = i3 | 6;
        } else if ((i3 & 6) == 0) {
            i5 = (gapComposerH.K(modifierE) ? 4 : 2) | i3;
        } else {
            i5 = i3;
        }
        if ((i3 & 48) == 0) {
            i5 |= gapComposerH.K(obj != null ? new ImageData(obj) : null) ? 32 : 16;
        }
        int i21 = i4 & 4;
        if (i21 == 0) {
            if ((i3 & KyberEngine.KyberPolyBytes) == 0) {
                contentScale2 = contentScale;
                i5 |= gapComposerH.K(contentScale2) ? 256 : 128;
            }
            i6 = i4 & 8;
            if (i6 != 0) {
                if ((i3 & 3072) == 0) {
                    obj2 = str;
                    if (gapComposerH.K(obj2)) {
                        i7 = 2048;
                    } else {
                        i7 = 1024;
                    }
                    i5 |= i7;
                }
                i8 = i4 & 16;
                if (i8 != 0) {
                    if ((i3 & 24576) == 0) {
                        num2 = num;
                        if (gapComposerH.K(num2)) {
                            i9 = 16384;
                        } else {
                            i9 = 8192;
                        }
                        i5 |= i9;
                    }
                    i10 = i4 & 32;
                    if (i10 != 0) {
                        i5 |= ImageMetadata.EDGE_MODE;
                        i11 = i2;
                        th = null;
                    } else {
                        i11 = i2;
                        th = null;
                        if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                            if (gapComposerH.d(i11)) {
                                i12 = 131072;
                            } else {
                                i12 = 65536;
                            }
                            i5 |= i12;
                        }
                    }
                    i13 = i5 | 1572864;
                    i14 = i4 & 128;
                    if (i14 != 0) {
                        if ((12582912 & i3) == 0) {
                            z2 = z;
                            if (gapComposerH.b(z2)) {
                                i15 = 8388608;
                            } else {
                                i15 = 4194304;
                            }
                            i13 |= i15;
                        }
                        i16 = i13 | 100663296;
                        modifier2 = modifierE;
                        i17 = i4 & 512;
                        if (i17 != 0) {
                            if ((i3 & 805306368) == 0) {
                                if (gapComposerH.y(function2)) {
                                    i18 = PKIFailureInfo.duplicateCertReq;
                                } else {
                                    i18 = 268435456;
                                }
                                i16 |= i18;
                            }
                            if ((i16 & 306783379) == 306783378) {
                                z3 = false;
                            } else {
                                z3 = true;
                            }
                            if (gapComposerH.p(i16 & 1, z3)) {
                                if (i20 != 0) {
                                    dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                                } else {
                                    dTFunctionNameModifier = modifier2;
                                }
                                if (i21 != 0) {
                                    ContentScale.f9447a.getClass();
                                    contentScale2 = ContentScale.Companion.d;
                                }
                                if (i6 != 0) {
                                    r2 = th;
                                } else {
                                    r2 = obj2;
                                }
                                i19 = R.drawable.placeholder;
                                if (i8 != 0) {
                                    numValueOf = Integer.valueOf(R.drawable.placeholder);
                                } else {
                                    numValueOf = num2;
                                }
                                if (i10 == 0) {
                                    i19 = i11;
                                }
                                if (i14 != 0) {
                                    z2 = true;
                                }
                                objX = gapComposerH.x();
                                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (objX == composer$Companion$Empty$1) {
                                    objX = new dy(27);
                                    gapComposerH.q(objX);
                                }
                                function7 = (Function1) objX;
                                if (i17 != 0) {
                                    objX4 = gapComposerH.x();
                                    if (objX4 == composer$Companion$Empty$1) {
                                        objX4 = new dy(28);
                                        gapComposerH.q(objX4);
                                    }
                                    function8 = (Function1) objX4;
                                } else {
                                    function8 = function2;
                                }
                                objX2 = gapComposerH.x();
                                if (objX2 == composer$Companion$Empty$1) {
                                    objX2 = new dy(29);
                                    gapComposerH.q(objX2);
                                }
                                function9 = (Function1) objX2;
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                                context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                                z5 = z2;
                                zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                                if ((i16 & 112) == 32) {
                                    z6 = true;
                                } else {
                                    z6 = false;
                                }
                                objX3 = gapComposerH.x();
                                if (z6 || objX3 == composer$Companion$Empty$1) {
                                    builder = new ImageRequest.Builder(context);
                                    if (!zBooleanValue) {
                                        if (obj == null) {
                                            obj3 = th;
                                        } else {
                                            obj3 = obj;
                                        }
                                        PredefinedImageRequestOptions.b(builder, context, obj3);
                                    }
                                    ImageRequests_androidKt.a(builder, 200);
                                    objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                                    gapComposerH.q(objX3);
                                }
                                imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                                Alignment.f8582a.getClass();
                                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                                contentScale3 = contentScale2;
                                iHashCode = Long.hashCode(gapComposerH.T);
                                persistentCompositionLocalMapU = gapComposerH.U();
                                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                                ComposeUiNode.b0.getClass();
                                modifier4 = dTFunctionNameModifier;
                                function0 = ComposeUiNode.Companion.f9641b;
                                if (gapComposerH.f7976a != null) {
                                    ComposablesKt.b();
                                    throw th;
                                }
                                gapComposerH.B();
                                if (gapComposerH.S) {
                                    gapComposerH.C(function0);
                                } else {
                                    gapComposerH.o();
                                }
                                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                                Object obj4 = imageLoader$Zoomable$Model.f51525a;
                                ContentScale.f9447a.getClass();
                                ContentScale$Companion$Fit$1 contentScale$Companion$Fit$1 = ContentScale.Companion.f9450c;
                                DrawScope.a0.getClass();
                                int i22 = DrawScope.Companion.f9008c;
                                AsyncImageState asyncImageState = new AsyncImageState(obj4, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                                MeasurePolicy measurePolicy = UtilsKt.f21339a;
                                AsyncImagePainter.y.getClass();
                                u5 u5Var = AsyncImagePainter.z;
                                if (function8 == null || function9 != null) {
                                    pj0Var = new pj0(function8, function9, 7);
                                } else {
                                    pj0Var = th;
                                }
                                AsyncImagePainter asyncImagePainterA = AsyncImagePainterKt.a(asyncImageState, u5Var, pj0Var, contentScale$Companion$Fit$1, i22, gapComposerH);
                                gapComposerH = gapComposerH;
                                state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA.x, gapComposerH).getF10755b();
                                if (!(state instanceof AsyncImagePainter.State.Empty) || (state instanceof AsyncImagePainter.State.Loading)) {
                                    function4 = function8;
                                    gapComposerH.L(-246381895);
                                    if (numValueOf == null) {
                                        gapComposerH.L(-246381896);
                                        gapComposerH.Z(false);
                                    } else {
                                        gapComposerH.L(-246381895);
                                        a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                        gapComposerH.Z(false);
                                    }
                                    gapComposerH.Z(false);
                                } else if (state instanceof AsyncImagePainter.State.Error) {
                                    gapComposerH.L(-246239171);
                                    a(i19, r2, gapComposerH, ((i16 >> 15) & 14) | ((i16 >> 6) & 112), 0);
                                    gapComposerH.Z(false);
                                    function4 = function8;
                                } else {
                                    if (!(state instanceof AsyncImagePainter.State.Success)) {
                                        throw d21.u(gapComposerH, 130594595, false);
                                    }
                                    Modifier modifierO = n00.i(gapComposerH, -246079118, "ImageLoader-jOlONis").o(SizeKt.f5052c);
                                    gapComposerH.L(-245814719);
                                    gapComposerH.Z(false);
                                    function4 = function8;
                                    ImageKt.a(((AsyncImagePainter.State.Success) state).f21282a, imageLoader$Zoomable$Model.f51526b, a.e(modifierO, "ImageLoader-jOlONis"), null, imageLoader$Zoomable$Model.f51527c, Call.Parameters.DEFAULT_CAMERA_ZOOM, null, gapComposerH, 8, 104);
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(true);
                                z4 = z5;
                                contentScale2 = contentScale3;
                                r4 = r2;
                                num3 = numValueOf;
                                function6 = function7;
                                function5 = function9;
                                modifier3 = modifier4;
                            } else {
                                gapComposerH.D();
                                function4 = function2;
                                function5 = function3;
                                z4 = z2;
                                i19 = i11;
                                r4 = obj2;
                                num3 = num2;
                                modifier3 = modifier2;
                                function6 = function1;
                            }
                            recomposeScopeImplB0 = gapComposerH.b0();
                            if (recomposeScopeImplB0 != null) {
                                final ContentScale contentScale4 = contentScale2;
                                final Function1 function10 = function4;
                                recomposeScopeImplB0.d = new Function2() { // from class: h20
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj5, Object obj6) {
                                        ((Integer) obj6).getClass();
                                        ImageLoaderKt.b(modifier3, obj, contentScale4, r4, num3, i19, z4, function6, function10, function5, (Composer) obj5, RecomposeScopeImplKt.a(i3 | 1), i4);
                                        return Unit.f71739a;
                                    }
                                };
                            }
                        }
                        i16 = i13 | 905969664;
                        if ((i16 & 306783379) == 306783378) {
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i16 & 1, z3)) {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i21 != 0) {
                                ContentScale.f9447a.getClass();
                                contentScale2 = ContentScale.Companion.d;
                            }
                            if (i6 != 0) {
                                r2 = th;
                            } else {
                                r2 = obj2;
                            }
                            i19 = R.drawable.placeholder;
                            if (i8 != 0) {
                                numValueOf = Integer.valueOf(R.drawable.placeholder);
                            } else {
                                numValueOf = num2;
                            }
                            if (i10 == 0) {
                                i19 = i11;
                            }
                            if (i14 != 0) {
                                z2 = true;
                            }
                            objX = gapComposerH.x();
                            composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (objX == composer$Companion$Empty$1) {
                                objX = new dy(27);
                                gapComposerH.q(objX);
                            }
                            function7 = (Function1) objX;
                            if (i17 != 0) {
                                objX4 = gapComposerH.x();
                                if (objX4 == composer$Companion$Empty$1) {
                                    objX4 = new dy(28);
                                    gapComposerH.q(objX4);
                                }
                                function8 = (Function1) objX4;
                            } else {
                                function8 = function2;
                            }
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new dy(29);
                                gapComposerH.q(objX2);
                            }
                            function9 = (Function1) objX2;
                            OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                            staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                            context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                            z5 = z2;
                            zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                            if ((i16 & 112) == 32) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            objX3 = gapComposerH.x();
                            if (z6) {
                                builder = new ImageRequest.Builder(context);
                                if (!zBooleanValue) {
                                    if (obj == null) {
                                        obj3 = th;
                                    } else {
                                        obj3 = obj;
                                    }
                                    PredefinedImageRequestOptions.b(builder, context, obj3);
                                }
                                ImageRequests_androidKt.a(builder, 200);
                                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                                gapComposerH.q(objX3);
                            } else {
                                builder = new ImageRequest.Builder(context);
                                if (!zBooleanValue) {
                                    if (obj == null) {
                                        obj3 = th;
                                    } else {
                                        obj3 = obj;
                                    }
                                    PredefinedImageRequestOptions.b(builder, context, obj3);
                                }
                                ImageRequests_androidKt.a(builder, 200);
                                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                                gapComposerH.q(objX3);
                            }
                            imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            contentScale3 = contentScale2;
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                            ComposeUiNode.b0.getClass();
                            modifier4 = dTFunctionNameModifier;
                            function0 = ComposeUiNode.Companion.f9641b;
                            if (gapComposerH.f7976a != null) {
                                ComposablesKt.b();
                                throw th;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function0);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                            Object obj5 = imageLoader$Zoomable$Model.f51525a;
                            ContentScale.f9447a.getClass();
                            ContentScale$Companion$Fit$1 contentScale$Companion$Fit$2 = ContentScale.Companion.f9450c;
                            DrawScope.a0.getClass();
                            int i23 = DrawScope.Companion.f9008c;
                            AsyncImageState asyncImageState2 = new AsyncImageState(obj5, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                            MeasurePolicy measurePolicy2 = UtilsKt.f21339a;
                            AsyncImagePainter.y.getClass();
                            u5 u5Var2 = AsyncImagePainter.z;
                            if (function8 == null) {
                                pj0Var = new pj0(function8, function9, 7);
                            } else {
                                pj0Var = new pj0(function8, function9, 7);
                            }
                            AsyncImagePainter asyncImagePainterA2 = AsyncImagePainterKt.a(asyncImageState2, u5Var2, pj0Var, contentScale$Companion$Fit$2, i23, gapComposerH);
                            gapComposerH = gapComposerH;
                            state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA2.x, gapComposerH).getF10755b();
                            if (state instanceof AsyncImagePainter.State.Empty) {
                                function4 = function8;
                                gapComposerH.L(-246381895);
                                if (numValueOf == null) {
                                    gapComposerH.L(-246381896);
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-246381895);
                                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(false);
                            } else {
                                function4 = function8;
                                gapComposerH.L(-246381895);
                                if (numValueOf == null) {
                                    gapComposerH.L(-246381896);
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-246381895);
                                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(true);
                            z4 = z5;
                            contentScale2 = contentScale3;
                            r4 = r2;
                            num3 = numValueOf;
                            function6 = function7;
                            function5 = function9;
                            modifier3 = modifier4;
                        } else {
                            gapComposerH.D();
                            function4 = function2;
                            function5 = function3;
                            z4 = z2;
                            i19 = i11;
                            r4 = obj2;
                            num3 = num2;
                            modifier3 = modifier2;
                            function6 = function1;
                        }
                        recomposeScopeImplB0 = gapComposerH.b0();
                        if (recomposeScopeImplB0 != null) {
                            final ContentScale contentScale5 = contentScale2;
                            final Function1 function11 = function4;
                            recomposeScopeImplB0.d = new Function2() { // from class: h20
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj6, Object obj7) {
                                    ((Integer) obj7).getClass();
                                    ImageLoaderKt.b(modifier3, obj, contentScale5, r4, num3, i19, z4, function6, function11, function5, (Composer) obj6, RecomposeScopeImplKt.a(i3 | 1), i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i13 = i5 | 14155776;
                    z2 = z;
                    i16 = i13 | 100663296;
                    modifier2 = modifierE;
                    i17 = i4 & 512;
                    if (i17 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.y(function2)) {
                                i18 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i18 = 268435456;
                            }
                            i16 |= i18;
                        }
                        if ((i16 & 306783379) == 306783378) {
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i16 & 1, z3)) {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i21 != 0) {
                                ContentScale.f9447a.getClass();
                                contentScale2 = ContentScale.Companion.d;
                            }
                            if (i6 != 0) {
                                r2 = th;
                            } else {
                                r2 = obj2;
                            }
                            i19 = R.drawable.placeholder;
                            if (i8 != 0) {
                                numValueOf = Integer.valueOf(R.drawable.placeholder);
                            } else {
                                numValueOf = num2;
                            }
                            if (i10 == 0) {
                                i19 = i11;
                            }
                            if (i14 != 0) {
                                z2 = true;
                            }
                            objX = gapComposerH.x();
                            composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (objX == composer$Companion$Empty$1) {
                                objX = new dy(27);
                                gapComposerH.q(objX);
                            }
                            function7 = (Function1) objX;
                            if (i17 != 0) {
                                objX4 = gapComposerH.x();
                                if (objX4 == composer$Companion$Empty$1) {
                                    objX4 = new dy(28);
                                    gapComposerH.q(objX4);
                                }
                                function8 = (Function1) objX4;
                            } else {
                                function8 = function2;
                            }
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new dy(29);
                                gapComposerH.q(objX2);
                            }
                            function9 = (Function1) objX2;
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                            staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                            context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                            z5 = z2;
                            zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                            if ((i16 & 112) == 32) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            objX3 = gapComposerH.x();
                            if (z6) {
                                builder = new ImageRequest.Builder(context);
                                if (!zBooleanValue) {
                                    if (obj == null) {
                                        obj3 = th;
                                    } else {
                                        obj3 = obj;
                                    }
                                    PredefinedImageRequestOptions.b(builder, context, obj3);
                                }
                                ImageRequests_androidKt.a(builder, 200);
                                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                                gapComposerH.q(objX3);
                            } else {
                                builder = new ImageRequest.Builder(context);
                                if (!zBooleanValue) {
                                    if (obj == null) {
                                        obj3 = th;
                                    } else {
                                        obj3 = obj;
                                    }
                                    PredefinedImageRequestOptions.b(builder, context, obj3);
                                }
                                ImageRequests_androidKt.a(builder, 200);
                                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                                gapComposerH.q(objX3);
                            }
                            imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            contentScale3 = contentScale2;
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                            ComposeUiNode.b0.getClass();
                            modifier4 = dTFunctionNameModifier;
                            function0 = ComposeUiNode.Companion.f9641b;
                            if (gapComposerH.f7976a != null) {
                                ComposablesKt.b();
                                throw th;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function0);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                            Object obj6 = imageLoader$Zoomable$Model.f51525a;
                            ContentScale.f9447a.getClass();
                            ContentScale$Companion$Fit$1 contentScale$Companion$Fit$3 = ContentScale.Companion.f9450c;
                            DrawScope.a0.getClass();
                            int i24 = DrawScope.Companion.f9008c;
                            AsyncImageState asyncImageState3 = new AsyncImageState(obj6, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                            MeasurePolicy measurePolicy3 = UtilsKt.f21339a;
                            AsyncImagePainter.y.getClass();
                            u5 u5Var3 = AsyncImagePainter.z;
                            if (function8 == null) {
                                pj0Var = new pj0(function8, function9, 7);
                            } else {
                                pj0Var = new pj0(function8, function9, 7);
                            }
                            AsyncImagePainter asyncImagePainterA3 = AsyncImagePainterKt.a(asyncImageState3, u5Var3, pj0Var, contentScale$Companion$Fit$3, i24, gapComposerH);
                            gapComposerH = gapComposerH;
                            state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA3.x, gapComposerH).getF10755b();
                            if (state instanceof AsyncImagePainter.State.Empty) {
                                function4 = function8;
                                gapComposerH.L(-246381895);
                                if (numValueOf == null) {
                                    gapComposerH.L(-246381896);
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-246381895);
                                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(false);
                            } else {
                                function4 = function8;
                                gapComposerH.L(-246381895);
                                if (numValueOf == null) {
                                    gapComposerH.L(-246381896);
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-246381895);
                                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(true);
                            z4 = z5;
                            contentScale2 = contentScale3;
                            r4 = r2;
                            num3 = numValueOf;
                            function6 = function7;
                            function5 = function9;
                            modifier3 = modifier4;
                        } else {
                            gapComposerH.D();
                            function4 = function2;
                            function5 = function3;
                            z4 = z2;
                            i19 = i11;
                            r4 = obj2;
                            num3 = num2;
                            modifier3 = modifier2;
                            function6 = function1;
                        }
                        recomposeScopeImplB0 = gapComposerH.b0();
                        if (recomposeScopeImplB0 != null) {
                            final ContentScale contentScale6 = contentScale2;
                            final Function1 function12 = function4;
                            recomposeScopeImplB0.d = new Function2() { // from class: h20
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj7, Object obj8) {
                                    ((Integer) obj8).getClass();
                                    ImageLoaderKt.b(modifier3, obj, contentScale6, r4, num3, i19, z4, function6, function12, function5, (Composer) obj7, RecomposeScopeImplKt.a(i3 | 1), i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i16 = i13 | 905969664;
                    if ((i16 & 306783379) == 306783378) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z3)) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i21 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale2 = ContentScale.Companion.d;
                        }
                        if (i6 != 0) {
                            r2 = th;
                        } else {
                            r2 = obj2;
                        }
                        i19 = R.drawable.placeholder;
                        if (i8 != 0) {
                            numValueOf = Integer.valueOf(R.drawable.placeholder);
                        } else {
                            numValueOf = num2;
                        }
                        if (i10 == 0) {
                            i19 = i11;
                        }
                        if (i14 != 0) {
                            z2 = true;
                        }
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new dy(27);
                            gapComposerH.q(objX);
                        }
                        function7 = (Function1) objX;
                        if (i17 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new dy(28);
                                gapComposerH.q(objX4);
                            }
                            function8 = (Function1) objX4;
                        } else {
                            function8 = function2;
                        }
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new dy(29);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                        OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                        staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                        context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                        z5 = z2;
                        zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                        if ((i16 & 112) == 32) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objX3 = gapComposerH.x();
                        if (z6) {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        } else {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        }
                        imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        contentScale3 = contentScale2;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        modifier4 = dTFunctionNameModifier;
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        Object obj7 = imageLoader$Zoomable$Model.f51525a;
                        ContentScale.f9447a.getClass();
                        ContentScale$Companion$Fit$1 contentScale$Companion$Fit$4 = ContentScale.Companion.f9450c;
                        DrawScope.a0.getClass();
                        int i25 = DrawScope.Companion.f9008c;
                        AsyncImageState asyncImageState4 = new AsyncImageState(obj7, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                        MeasurePolicy measurePolicy4 = UtilsKt.f21339a;
                        AsyncImagePainter.y.getClass();
                        u5 u5Var4 = AsyncImagePainter.z;
                        if (function8 == null) {
                            pj0Var = new pj0(function8, function9, 7);
                        } else {
                            pj0Var = new pj0(function8, function9, 7);
                        }
                        AsyncImagePainter asyncImagePainterA4 = AsyncImagePainterKt.a(asyncImageState4, u5Var4, pj0Var, contentScale$Companion$Fit$4, i25, gapComposerH);
                        gapComposerH = gapComposerH;
                        state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA4.x, gapComposerH).getF10755b();
                        if (state instanceof AsyncImagePainter.State.Empty) {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        } else {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(true);
                        z4 = z5;
                        contentScale2 = contentScale3;
                        r4 = r2;
                        num3 = numValueOf;
                        function6 = function7;
                        function5 = function9;
                        modifier3 = modifier4;
                    } else {
                        gapComposerH.D();
                        function4 = function2;
                        function5 = function3;
                        z4 = z2;
                        i19 = i11;
                        r4 = obj2;
                        num3 = num2;
                        modifier3 = modifier2;
                        function6 = function1;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final ContentScale contentScale7 = contentScale2;
                        final Function1 function13 = function4;
                        recomposeScopeImplB0.d = new Function2() { // from class: h20
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj8, Object obj9) {
                                ((Integer) obj9).getClass();
                                ImageLoaderKt.b(modifier3, obj, contentScale7, r4, num3, i19, z4, function6, function13, function5, (Composer) obj8, RecomposeScopeImplKt.a(i3 | 1), i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i5 |= 24576;
                num2 = num;
                i10 = i4 & 32;
                if (i10 != 0) {
                    i5 |= ImageMetadata.EDGE_MODE;
                    i11 = i2;
                    th = null;
                } else {
                    i11 = i2;
                    th = null;
                    if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i11)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i5 |= i12;
                    }
                }
                i13 = i5 | 1572864;
                i14 = i4 & 128;
                if (i14 != 0) {
                    if ((12582912 & i3) == 0) {
                        z2 = z;
                        if (gapComposerH.b(z2)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                        i13 |= i15;
                    }
                    i16 = i13 | 100663296;
                    modifier2 = modifierE;
                    i17 = i4 & 512;
                    if (i17 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.y(function2)) {
                                i18 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i18 = 268435456;
                            }
                            i16 |= i18;
                        }
                        if ((i16 & 306783379) == 306783378) {
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i16 & 1, z3)) {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i21 != 0) {
                                ContentScale.f9447a.getClass();
                                contentScale2 = ContentScale.Companion.d;
                            }
                            if (i6 != 0) {
                                r2 = th;
                            } else {
                                r2 = obj2;
                            }
                            i19 = R.drawable.placeholder;
                            if (i8 != 0) {
                                numValueOf = Integer.valueOf(R.drawable.placeholder);
                            } else {
                                numValueOf = num2;
                            }
                            if (i10 == 0) {
                                i19 = i11;
                            }
                            if (i14 != 0) {
                                z2 = true;
                            }
                            objX = gapComposerH.x();
                            composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (objX == composer$Companion$Empty$1) {
                                objX = new dy(27);
                                gapComposerH.q(objX);
                            }
                            function7 = (Function1) objX;
                            if (i17 != 0) {
                                objX4 = gapComposerH.x();
                                if (objX4 == composer$Companion$Empty$1) {
                                    objX4 = new dy(28);
                                    gapComposerH.q(objX4);
                                }
                                function8 = (Function1) objX4;
                            } else {
                                function8 = function2;
                            }
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new dy(29);
                                gapComposerH.q(objX2);
                            }
                            function9 = (Function1) objX2;
                            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                            staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                            context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                            z5 = z2;
                            zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                            if ((i16 & 112) == 32) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            objX3 = gapComposerH.x();
                            if (z6) {
                                builder = new ImageRequest.Builder(context);
                                if (!zBooleanValue) {
                                    if (obj == null) {
                                        obj3 = th;
                                    } else {
                                        obj3 = obj;
                                    }
                                    PredefinedImageRequestOptions.b(builder, context, obj3);
                                }
                                ImageRequests_androidKt.a(builder, 200);
                                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                                gapComposerH.q(objX3);
                            } else {
                                builder = new ImageRequest.Builder(context);
                                if (!zBooleanValue) {
                                    if (obj == null) {
                                        obj3 = th;
                                    } else {
                                        obj3 = obj;
                                    }
                                    PredefinedImageRequestOptions.b(builder, context, obj3);
                                }
                                ImageRequests_androidKt.a(builder, 200);
                                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                                gapComposerH.q(objX3);
                            }
                            imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            contentScale3 = contentScale2;
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                            ComposeUiNode.b0.getClass();
                            modifier4 = dTFunctionNameModifier;
                            function0 = ComposeUiNode.Companion.f9641b;
                            if (gapComposerH.f7976a != null) {
                                ComposablesKt.b();
                                throw th;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function0);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                            Object obj8 = imageLoader$Zoomable$Model.f51525a;
                            ContentScale.f9447a.getClass();
                            ContentScale$Companion$Fit$1 contentScale$Companion$Fit$5 = ContentScale.Companion.f9450c;
                            DrawScope.a0.getClass();
                            int i26 = DrawScope.Companion.f9008c;
                            AsyncImageState asyncImageState5 = new AsyncImageState(obj8, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                            MeasurePolicy measurePolicy5 = UtilsKt.f21339a;
                            AsyncImagePainter.y.getClass();
                            u5 u5Var5 = AsyncImagePainter.z;
                            if (function8 == null) {
                                pj0Var = new pj0(function8, function9, 7);
                            } else {
                                pj0Var = new pj0(function8, function9, 7);
                            }
                            AsyncImagePainter asyncImagePainterA5 = AsyncImagePainterKt.a(asyncImageState5, u5Var5, pj0Var, contentScale$Companion$Fit$5, i26, gapComposerH);
                            gapComposerH = gapComposerH;
                            state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA5.x, gapComposerH).getF10755b();
                            if (state instanceof AsyncImagePainter.State.Empty) {
                                function4 = function8;
                                gapComposerH.L(-246381895);
                                if (numValueOf == null) {
                                    gapComposerH.L(-246381896);
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-246381895);
                                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(false);
                            } else {
                                function4 = function8;
                                gapComposerH.L(-246381895);
                                if (numValueOf == null) {
                                    gapComposerH.L(-246381896);
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-246381895);
                                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(true);
                            z4 = z5;
                            contentScale2 = contentScale3;
                            r4 = r2;
                            num3 = numValueOf;
                            function6 = function7;
                            function5 = function9;
                            modifier3 = modifier4;
                        } else {
                            gapComposerH.D();
                            function4 = function2;
                            function5 = function3;
                            z4 = z2;
                            i19 = i11;
                            r4 = obj2;
                            num3 = num2;
                            modifier3 = modifier2;
                            function6 = function1;
                        }
                        recomposeScopeImplB0 = gapComposerH.b0();
                        if (recomposeScopeImplB0 != null) {
                            final ContentScale contentScale8 = contentScale2;
                            final Function1 function14 = function4;
                            recomposeScopeImplB0.d = new Function2() { // from class: h20
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj9, Object obj10) {
                                    ((Integer) obj10).getClass();
                                    ImageLoaderKt.b(modifier3, obj, contentScale8, r4, num3, i19, z4, function6, function14, function5, (Composer) obj9, RecomposeScopeImplKt.a(i3 | 1), i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i16 = i13 | 905969664;
                    if ((i16 & 306783379) == 306783378) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z3)) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i21 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale2 = ContentScale.Companion.d;
                        }
                        if (i6 != 0) {
                            r2 = th;
                        } else {
                            r2 = obj2;
                        }
                        i19 = R.drawable.placeholder;
                        if (i8 != 0) {
                            numValueOf = Integer.valueOf(R.drawable.placeholder);
                        } else {
                            numValueOf = num2;
                        }
                        if (i10 == 0) {
                            i19 = i11;
                        }
                        if (i14 != 0) {
                            z2 = true;
                        }
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new dy(27);
                            gapComposerH.q(objX);
                        }
                        function7 = (Function1) objX;
                        if (i17 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new dy(28);
                                gapComposerH.q(objX4);
                            }
                            function8 = (Function1) objX4;
                        } else {
                            function8 = function2;
                        }
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new dy(29);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                        OpaqueKey opaqueKey6 = ComposerKt.f7940a;
                        staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                        context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                        z5 = z2;
                        zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                        if ((i16 & 112) == 32) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objX3 = gapComposerH.x();
                        if (z6) {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        } else {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        }
                        imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        contentScale3 = contentScale2;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        modifier4 = dTFunctionNameModifier;
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        Object obj9 = imageLoader$Zoomable$Model.f51525a;
                        ContentScale.f9447a.getClass();
                        ContentScale$Companion$Fit$1 contentScale$Companion$Fit$6 = ContentScale.Companion.f9450c;
                        DrawScope.a0.getClass();
                        int i27 = DrawScope.Companion.f9008c;
                        AsyncImageState asyncImageState6 = new AsyncImageState(obj9, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                        MeasurePolicy measurePolicy6 = UtilsKt.f21339a;
                        AsyncImagePainter.y.getClass();
                        u5 u5Var6 = AsyncImagePainter.z;
                        if (function8 == null) {
                            pj0Var = new pj0(function8, function9, 7);
                        } else {
                            pj0Var = new pj0(function8, function9, 7);
                        }
                        AsyncImagePainter asyncImagePainterA6 = AsyncImagePainterKt.a(asyncImageState6, u5Var6, pj0Var, contentScale$Companion$Fit$6, i27, gapComposerH);
                        gapComposerH = gapComposerH;
                        state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA6.x, gapComposerH).getF10755b();
                        if (state instanceof AsyncImagePainter.State.Empty) {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        } else {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(true);
                        z4 = z5;
                        contentScale2 = contentScale3;
                        r4 = r2;
                        num3 = numValueOf;
                        function6 = function7;
                        function5 = function9;
                        modifier3 = modifier4;
                    } else {
                        gapComposerH.D();
                        function4 = function2;
                        function5 = function3;
                        z4 = z2;
                        i19 = i11;
                        r4 = obj2;
                        num3 = num2;
                        modifier3 = modifier2;
                        function6 = function1;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final ContentScale contentScale9 = contentScale2;
                        final Function1 function15 = function4;
                        recomposeScopeImplB0.d = new Function2() { // from class: h20
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj10, Object obj11) {
                                ((Integer) obj11).getClass();
                                ImageLoaderKt.b(modifier3, obj, contentScale9, r4, num3, i19, z4, function6, function15, function5, (Composer) obj10, RecomposeScopeImplKt.a(i3 | 1), i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i13 = i5 | 14155776;
                z2 = z;
                i16 = i13 | 100663296;
                modifier2 = modifierE;
                i17 = i4 & 512;
                if (i17 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function2)) {
                            i18 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i18 = 268435456;
                        }
                        i16 |= i18;
                    }
                    if ((i16 & 306783379) == 306783378) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z3)) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i21 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale2 = ContentScale.Companion.d;
                        }
                        if (i6 != 0) {
                            r2 = th;
                        } else {
                            r2 = obj2;
                        }
                        i19 = R.drawable.placeholder;
                        if (i8 != 0) {
                            numValueOf = Integer.valueOf(R.drawable.placeholder);
                        } else {
                            numValueOf = num2;
                        }
                        if (i10 == 0) {
                            i19 = i11;
                        }
                        if (i14 != 0) {
                            z2 = true;
                        }
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new dy(27);
                            gapComposerH.q(objX);
                        }
                        function7 = (Function1) objX;
                        if (i17 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new dy(28);
                                gapComposerH.q(objX4);
                            }
                            function8 = (Function1) objX4;
                        } else {
                            function8 = function2;
                        }
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new dy(29);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                        OpaqueKey opaqueKey7 = ComposerKt.f7940a;
                        staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                        context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                        z5 = z2;
                        zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                        if ((i16 & 112) == 32) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objX3 = gapComposerH.x();
                        if (z6) {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        } else {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        }
                        imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        contentScale3 = contentScale2;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        modifier4 = dTFunctionNameModifier;
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        Object obj10 = imageLoader$Zoomable$Model.f51525a;
                        ContentScale.f9447a.getClass();
                        ContentScale$Companion$Fit$1 contentScale$Companion$Fit$7 = ContentScale.Companion.f9450c;
                        DrawScope.a0.getClass();
                        int i28 = DrawScope.Companion.f9008c;
                        AsyncImageState asyncImageState7 = new AsyncImageState(obj10, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                        MeasurePolicy measurePolicy7 = UtilsKt.f21339a;
                        AsyncImagePainter.y.getClass();
                        u5 u5Var7 = AsyncImagePainter.z;
                        if (function8 == null) {
                            pj0Var = new pj0(function8, function9, 7);
                        } else {
                            pj0Var = new pj0(function8, function9, 7);
                        }
                        AsyncImagePainter asyncImagePainterA7 = AsyncImagePainterKt.a(asyncImageState7, u5Var7, pj0Var, contentScale$Companion$Fit$7, i28, gapComposerH);
                        gapComposerH = gapComposerH;
                        state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA7.x, gapComposerH).getF10755b();
                        if (state instanceof AsyncImagePainter.State.Empty) {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        } else {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(true);
                        z4 = z5;
                        contentScale2 = contentScale3;
                        r4 = r2;
                        num3 = numValueOf;
                        function6 = function7;
                        function5 = function9;
                        modifier3 = modifier4;
                    } else {
                        gapComposerH.D();
                        function4 = function2;
                        function5 = function3;
                        z4 = z2;
                        i19 = i11;
                        r4 = obj2;
                        num3 = num2;
                        modifier3 = modifier2;
                        function6 = function1;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final ContentScale contentScale10 = contentScale2;
                        final Function1 function16 = function4;
                        recomposeScopeImplB0.d = new Function2() { // from class: h20
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj11, Object obj12) {
                                ((Integer) obj12).getClass();
                                ImageLoaderKt.b(modifier3, obj, contentScale10, r4, num3, i19, z4, function6, function16, function5, (Composer) obj11, RecomposeScopeImplKt.a(i3 | 1), i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i16 = i13 | 905969664;
                if ((i16 & 306783379) == 306783378) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i16 & 1, z3)) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i21 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.d;
                    }
                    if (i6 != 0) {
                        r2 = th;
                    } else {
                        r2 = obj2;
                    }
                    i19 = R.drawable.placeholder;
                    if (i8 != 0) {
                        numValueOf = Integer.valueOf(R.drawable.placeholder);
                    } else {
                        numValueOf = num2;
                    }
                    if (i10 == 0) {
                        i19 = i11;
                    }
                    if (i14 != 0) {
                        z2 = true;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new dy(27);
                        gapComposerH.q(objX);
                    }
                    function7 = (Function1) objX;
                    if (i17 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new dy(28);
                            gapComposerH.q(objX4);
                        }
                        function8 = (Function1) objX4;
                    } else {
                        function8 = function2;
                    }
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new dy(29);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                    OpaqueKey opaqueKey8 = ComposerKt.f7940a;
                    staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                    context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                    z5 = z2;
                    zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                    if ((i16 & 112) == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX3 = gapComposerH.x();
                    if (z6) {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    } else {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    }
                    imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    contentScale3 = contentScale2;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    modifier4 = dTFunctionNameModifier;
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Object obj11 = imageLoader$Zoomable$Model.f51525a;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Fit$1 contentScale$Companion$Fit$8 = ContentScale.Companion.f9450c;
                    DrawScope.a0.getClass();
                    int i29 = DrawScope.Companion.f9008c;
                    AsyncImageState asyncImageState8 = new AsyncImageState(obj11, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                    MeasurePolicy measurePolicy8 = UtilsKt.f21339a;
                    AsyncImagePainter.y.getClass();
                    u5 u5Var8 = AsyncImagePainter.z;
                    if (function8 == null) {
                        pj0Var = new pj0(function8, function9, 7);
                    } else {
                        pj0Var = new pj0(function8, function9, 7);
                    }
                    AsyncImagePainter asyncImagePainterA8 = AsyncImagePainterKt.a(asyncImageState8, u5Var8, pj0Var, contentScale$Companion$Fit$8, i29, gapComposerH);
                    gapComposerH = gapComposerH;
                    state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA8.x, gapComposerH).getF10755b();
                    if (state instanceof AsyncImagePainter.State.Empty) {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    } else {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                    contentScale2 = contentScale3;
                    r4 = r2;
                    num3 = numValueOf;
                    function6 = function7;
                    function5 = function9;
                    modifier3 = modifier4;
                } else {
                    gapComposerH.D();
                    function4 = function2;
                    function5 = function3;
                    z4 = z2;
                    i19 = i11;
                    r4 = obj2;
                    num3 = num2;
                    modifier3 = modifier2;
                    function6 = function1;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final ContentScale contentScale11 = contentScale2;
                    final Function1 function17 = function4;
                    recomposeScopeImplB0.d = new Function2() { // from class: h20
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj12, Object obj13) {
                            ((Integer) obj13).getClass();
                            ImageLoaderKt.b(modifier3, obj, contentScale11, r4, num3, i19, z4, function6, function17, function5, (Composer) obj12, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 3072;
            obj2 = str;
            i8 = i4 & 16;
            if (i8 != 0) {
                if ((i3 & 24576) == 0) {
                    num2 = num;
                    if (gapComposerH.K(num2)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 32;
                if (i10 != 0) {
                    i5 |= ImageMetadata.EDGE_MODE;
                    i11 = i2;
                    th = null;
                } else {
                    i11 = i2;
                    th = null;
                    if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i11)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i5 |= i12;
                    }
                }
                i13 = i5 | 1572864;
                i14 = i4 & 128;
                if (i14 != 0) {
                    if ((12582912 & i3) == 0) {
                        z2 = z;
                        if (gapComposerH.b(z2)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                        i13 |= i15;
                    }
                    i16 = i13 | 100663296;
                    modifier2 = modifierE;
                    i17 = i4 & 512;
                    if (i17 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.y(function2)) {
                                i18 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i18 = 268435456;
                            }
                            i16 |= i18;
                        }
                        if ((i16 & 306783379) == 306783378) {
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i16 & 1, z3)) {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i21 != 0) {
                                ContentScale.f9447a.getClass();
                                contentScale2 = ContentScale.Companion.d;
                            }
                            if (i6 != 0) {
                                r2 = th;
                            } else {
                                r2 = obj2;
                            }
                            i19 = R.drawable.placeholder;
                            if (i8 != 0) {
                                numValueOf = Integer.valueOf(R.drawable.placeholder);
                            } else {
                                numValueOf = num2;
                            }
                            if (i10 == 0) {
                                i19 = i11;
                            }
                            if (i14 != 0) {
                                z2 = true;
                            }
                            objX = gapComposerH.x();
                            composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (objX == composer$Companion$Empty$1) {
                                objX = new dy(27);
                                gapComposerH.q(objX);
                            }
                            function7 = (Function1) objX;
                            if (i17 != 0) {
                                objX4 = gapComposerH.x();
                                if (objX4 == composer$Companion$Empty$1) {
                                    objX4 = new dy(28);
                                    gapComposerH.q(objX4);
                                }
                                function8 = (Function1) objX4;
                            } else {
                                function8 = function2;
                            }
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new dy(29);
                                gapComposerH.q(objX2);
                            }
                            function9 = (Function1) objX2;
                            OpaqueKey opaqueKey9 = ComposerKt.f7940a;
                            staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                            context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                            z5 = z2;
                            zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                            if ((i16 & 112) == 32) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            objX3 = gapComposerH.x();
                            if (z6) {
                                builder = new ImageRequest.Builder(context);
                                if (!zBooleanValue) {
                                    if (obj == null) {
                                        obj3 = th;
                                    } else {
                                        obj3 = obj;
                                    }
                                    PredefinedImageRequestOptions.b(builder, context, obj3);
                                }
                                ImageRequests_androidKt.a(builder, 200);
                                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                                gapComposerH.q(objX3);
                            } else {
                                builder = new ImageRequest.Builder(context);
                                if (!zBooleanValue) {
                                    if (obj == null) {
                                        obj3 = th;
                                    } else {
                                        obj3 = obj;
                                    }
                                    PredefinedImageRequestOptions.b(builder, context, obj3);
                                }
                                ImageRequests_androidKt.a(builder, 200);
                                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                                gapComposerH.q(objX3);
                            }
                            imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            contentScale3 = contentScale2;
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                            ComposeUiNode.b0.getClass();
                            modifier4 = dTFunctionNameModifier;
                            function0 = ComposeUiNode.Companion.f9641b;
                            if (gapComposerH.f7976a != null) {
                                ComposablesKt.b();
                                throw th;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function0);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                            Object obj12 = imageLoader$Zoomable$Model.f51525a;
                            ContentScale.f9447a.getClass();
                            ContentScale$Companion$Fit$1 contentScale$Companion$Fit$9 = ContentScale.Companion.f9450c;
                            DrawScope.a0.getClass();
                            int i210 = DrawScope.Companion.f9008c;
                            AsyncImageState asyncImageState9 = new AsyncImageState(obj12, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                            MeasurePolicy measurePolicy9 = UtilsKt.f21339a;
                            AsyncImagePainter.y.getClass();
                            u5 u5Var9 = AsyncImagePainter.z;
                            if (function8 == null) {
                                pj0Var = new pj0(function8, function9, 7);
                            } else {
                                pj0Var = new pj0(function8, function9, 7);
                            }
                            AsyncImagePainter asyncImagePainterA9 = AsyncImagePainterKt.a(asyncImageState9, u5Var9, pj0Var, contentScale$Companion$Fit$9, i210, gapComposerH);
                            gapComposerH = gapComposerH;
                            state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA9.x, gapComposerH).getF10755b();
                            if (state instanceof AsyncImagePainter.State.Empty) {
                                function4 = function8;
                                gapComposerH.L(-246381895);
                                if (numValueOf == null) {
                                    gapComposerH.L(-246381896);
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-246381895);
                                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(false);
                            } else {
                                function4 = function8;
                                gapComposerH.L(-246381895);
                                if (numValueOf == null) {
                                    gapComposerH.L(-246381896);
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-246381895);
                                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(true);
                            z4 = z5;
                            contentScale2 = contentScale3;
                            r4 = r2;
                            num3 = numValueOf;
                            function6 = function7;
                            function5 = function9;
                            modifier3 = modifier4;
                        } else {
                            gapComposerH.D();
                            function4 = function2;
                            function5 = function3;
                            z4 = z2;
                            i19 = i11;
                            r4 = obj2;
                            num3 = num2;
                            modifier3 = modifier2;
                            function6 = function1;
                        }
                        recomposeScopeImplB0 = gapComposerH.b0();
                        if (recomposeScopeImplB0 != null) {
                            final ContentScale contentScale12 = contentScale2;
                            final Function1 function18 = function4;
                            recomposeScopeImplB0.d = new Function2() { // from class: h20
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj13, Object obj14) {
                                    ((Integer) obj14).getClass();
                                    ImageLoaderKt.b(modifier3, obj, contentScale12, r4, num3, i19, z4, function6, function18, function5, (Composer) obj13, RecomposeScopeImplKt.a(i3 | 1), i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i16 = i13 | 905969664;
                    if ((i16 & 306783379) == 306783378) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z3)) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i21 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale2 = ContentScale.Companion.d;
                        }
                        if (i6 != 0) {
                            r2 = th;
                        } else {
                            r2 = obj2;
                        }
                        i19 = R.drawable.placeholder;
                        if (i8 != 0) {
                            numValueOf = Integer.valueOf(R.drawable.placeholder);
                        } else {
                            numValueOf = num2;
                        }
                        if (i10 == 0) {
                            i19 = i11;
                        }
                        if (i14 != 0) {
                            z2 = true;
                        }
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new dy(27);
                            gapComposerH.q(objX);
                        }
                        function7 = (Function1) objX;
                        if (i17 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new dy(28);
                                gapComposerH.q(objX4);
                            }
                            function8 = (Function1) objX4;
                        } else {
                            function8 = function2;
                        }
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new dy(29);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                        OpaqueKey opaqueKey10 = ComposerKt.f7940a;
                        staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                        context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                        z5 = z2;
                        zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                        if ((i16 & 112) == 32) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objX3 = gapComposerH.x();
                        if (z6) {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        } else {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        }
                        imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        contentScale3 = contentScale2;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        modifier4 = dTFunctionNameModifier;
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        Object obj13 = imageLoader$Zoomable$Model.f51525a;
                        ContentScale.f9447a.getClass();
                        ContentScale$Companion$Fit$1 contentScale$Companion$Fit$10 = ContentScale.Companion.f9450c;
                        DrawScope.a0.getClass();
                        int i211 = DrawScope.Companion.f9008c;
                        AsyncImageState asyncImageState10 = new AsyncImageState(obj13, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                        MeasurePolicy measurePolicy10 = UtilsKt.f21339a;
                        AsyncImagePainter.y.getClass();
                        u5 u5Var10 = AsyncImagePainter.z;
                        if (function8 == null) {
                            pj0Var = new pj0(function8, function9, 7);
                        } else {
                            pj0Var = new pj0(function8, function9, 7);
                        }
                        AsyncImagePainter asyncImagePainterA10 = AsyncImagePainterKt.a(asyncImageState10, u5Var10, pj0Var, contentScale$Companion$Fit$10, i211, gapComposerH);
                        gapComposerH = gapComposerH;
                        state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA10.x, gapComposerH).getF10755b();
                        if (state instanceof AsyncImagePainter.State.Empty) {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        } else {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(true);
                        z4 = z5;
                        contentScale2 = contentScale3;
                        r4 = r2;
                        num3 = numValueOf;
                        function6 = function7;
                        function5 = function9;
                        modifier3 = modifier4;
                    } else {
                        gapComposerH.D();
                        function4 = function2;
                        function5 = function3;
                        z4 = z2;
                        i19 = i11;
                        r4 = obj2;
                        num3 = num2;
                        modifier3 = modifier2;
                        function6 = function1;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final ContentScale contentScale13 = contentScale2;
                        final Function1 function19 = function4;
                        recomposeScopeImplB0.d = new Function2() { // from class: h20
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj14, Object obj15) {
                                ((Integer) obj15).getClass();
                                ImageLoaderKt.b(modifier3, obj, contentScale13, r4, num3, i19, z4, function6, function19, function5, (Composer) obj14, RecomposeScopeImplKt.a(i3 | 1), i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i13 = i5 | 14155776;
                z2 = z;
                i16 = i13 | 100663296;
                modifier2 = modifierE;
                i17 = i4 & 512;
                if (i17 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function2)) {
                            i18 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i18 = 268435456;
                        }
                        i16 |= i18;
                    }
                    if ((i16 & 306783379) == 306783378) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z3)) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i21 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale2 = ContentScale.Companion.d;
                        }
                        if (i6 != 0) {
                            r2 = th;
                        } else {
                            r2 = obj2;
                        }
                        i19 = R.drawable.placeholder;
                        if (i8 != 0) {
                            numValueOf = Integer.valueOf(R.drawable.placeholder);
                        } else {
                            numValueOf = num2;
                        }
                        if (i10 == 0) {
                            i19 = i11;
                        }
                        if (i14 != 0) {
                            z2 = true;
                        }
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new dy(27);
                            gapComposerH.q(objX);
                        }
                        function7 = (Function1) objX;
                        if (i17 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new dy(28);
                                gapComposerH.q(objX4);
                            }
                            function8 = (Function1) objX4;
                        } else {
                            function8 = function2;
                        }
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new dy(29);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                        OpaqueKey opaqueKey11 = ComposerKt.f7940a;
                        staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                        context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                        z5 = z2;
                        zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                        if ((i16 & 112) == 32) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objX3 = gapComposerH.x();
                        if (z6) {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        } else {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        }
                        imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        contentScale3 = contentScale2;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        modifier4 = dTFunctionNameModifier;
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        Object obj14 = imageLoader$Zoomable$Model.f51525a;
                        ContentScale.f9447a.getClass();
                        ContentScale$Companion$Fit$1 contentScale$Companion$Fit$11 = ContentScale.Companion.f9450c;
                        DrawScope.a0.getClass();
                        int i212 = DrawScope.Companion.f9008c;
                        AsyncImageState asyncImageState11 = new AsyncImageState(obj14, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                        MeasurePolicy measurePolicy11 = UtilsKt.f21339a;
                        AsyncImagePainter.y.getClass();
                        u5 u5Var11 = AsyncImagePainter.z;
                        if (function8 == null) {
                            pj0Var = new pj0(function8, function9, 7);
                        } else {
                            pj0Var = new pj0(function8, function9, 7);
                        }
                        AsyncImagePainter asyncImagePainterA11 = AsyncImagePainterKt.a(asyncImageState11, u5Var11, pj0Var, contentScale$Companion$Fit$11, i212, gapComposerH);
                        gapComposerH = gapComposerH;
                        state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA11.x, gapComposerH).getF10755b();
                        if (state instanceof AsyncImagePainter.State.Empty) {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        } else {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(true);
                        z4 = z5;
                        contentScale2 = contentScale3;
                        r4 = r2;
                        num3 = numValueOf;
                        function6 = function7;
                        function5 = function9;
                        modifier3 = modifier4;
                    } else {
                        gapComposerH.D();
                        function4 = function2;
                        function5 = function3;
                        z4 = z2;
                        i19 = i11;
                        r4 = obj2;
                        num3 = num2;
                        modifier3 = modifier2;
                        function6 = function1;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final ContentScale contentScale14 = contentScale2;
                        final Function1 function110 = function4;
                        recomposeScopeImplB0.d = new Function2() { // from class: h20
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj15, Object obj16) {
                                ((Integer) obj16).getClass();
                                ImageLoaderKt.b(modifier3, obj, contentScale14, r4, num3, i19, z4, function6, function110, function5, (Composer) obj15, RecomposeScopeImplKt.a(i3 | 1), i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i16 = i13 | 905969664;
                if ((i16 & 306783379) == 306783378) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i16 & 1, z3)) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i21 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.d;
                    }
                    if (i6 != 0) {
                        r2 = th;
                    } else {
                        r2 = obj2;
                    }
                    i19 = R.drawable.placeholder;
                    if (i8 != 0) {
                        numValueOf = Integer.valueOf(R.drawable.placeholder);
                    } else {
                        numValueOf = num2;
                    }
                    if (i10 == 0) {
                        i19 = i11;
                    }
                    if (i14 != 0) {
                        z2 = true;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new dy(27);
                        gapComposerH.q(objX);
                    }
                    function7 = (Function1) objX;
                    if (i17 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new dy(28);
                            gapComposerH.q(objX4);
                        }
                        function8 = (Function1) objX4;
                    } else {
                        function8 = function2;
                    }
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new dy(29);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                    OpaqueKey opaqueKey12 = ComposerKt.f7940a;
                    staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                    context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                    z5 = z2;
                    zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                    if ((i16 & 112) == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX3 = gapComposerH.x();
                    if (z6) {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    } else {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    }
                    imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    contentScale3 = contentScale2;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    modifier4 = dTFunctionNameModifier;
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Object obj15 = imageLoader$Zoomable$Model.f51525a;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Fit$1 contentScale$Companion$Fit$12 = ContentScale.Companion.f9450c;
                    DrawScope.a0.getClass();
                    int i213 = DrawScope.Companion.f9008c;
                    AsyncImageState asyncImageState12 = new AsyncImageState(obj15, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                    MeasurePolicy measurePolicy12 = UtilsKt.f21339a;
                    AsyncImagePainter.y.getClass();
                    u5 u5Var12 = AsyncImagePainter.z;
                    if (function8 == null) {
                        pj0Var = new pj0(function8, function9, 7);
                    } else {
                        pj0Var = new pj0(function8, function9, 7);
                    }
                    AsyncImagePainter asyncImagePainterA12 = AsyncImagePainterKt.a(asyncImageState12, u5Var12, pj0Var, contentScale$Companion$Fit$12, i213, gapComposerH);
                    gapComposerH = gapComposerH;
                    state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA12.x, gapComposerH).getF10755b();
                    if (state instanceof AsyncImagePainter.State.Empty) {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    } else {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                    contentScale2 = contentScale3;
                    r4 = r2;
                    num3 = numValueOf;
                    function6 = function7;
                    function5 = function9;
                    modifier3 = modifier4;
                } else {
                    gapComposerH.D();
                    function4 = function2;
                    function5 = function3;
                    z4 = z2;
                    i19 = i11;
                    r4 = obj2;
                    num3 = num2;
                    modifier3 = modifier2;
                    function6 = function1;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final ContentScale contentScale15 = contentScale2;
                    final Function1 function111 = function4;
                    recomposeScopeImplB0.d = new Function2() { // from class: h20
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj16, Object obj17) {
                            ((Integer) obj17).getClass();
                            ImageLoaderKt.b(modifier3, obj, contentScale15, r4, num3, i19, z4, function6, function111, function5, (Composer) obj16, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 24576;
            num2 = num;
            i10 = i4 & 32;
            if (i10 != 0) {
                i5 |= ImageMetadata.EDGE_MODE;
                i11 = i2;
                th = null;
            } else {
                i11 = i2;
                th = null;
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i11)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i5 |= i12;
                }
            }
            i13 = i5 | 1572864;
            i14 = i4 & 128;
            if (i14 != 0) {
                if ((12582912 & i3) == 0) {
                    z2 = z;
                    if (gapComposerH.b(z2)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i13 |= i15;
                }
                i16 = i13 | 100663296;
                modifier2 = modifierE;
                i17 = i4 & 512;
                if (i17 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function2)) {
                            i18 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i18 = 268435456;
                        }
                        i16 |= i18;
                    }
                    if ((i16 & 306783379) == 306783378) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z3)) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i21 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale2 = ContentScale.Companion.d;
                        }
                        if (i6 != 0) {
                            r2 = th;
                        } else {
                            r2 = obj2;
                        }
                        i19 = R.drawable.placeholder;
                        if (i8 != 0) {
                            numValueOf = Integer.valueOf(R.drawable.placeholder);
                        } else {
                            numValueOf = num2;
                        }
                        if (i10 == 0) {
                            i19 = i11;
                        }
                        if (i14 != 0) {
                            z2 = true;
                        }
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new dy(27);
                            gapComposerH.q(objX);
                        }
                        function7 = (Function1) objX;
                        if (i17 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new dy(28);
                                gapComposerH.q(objX4);
                            }
                            function8 = (Function1) objX4;
                        } else {
                            function8 = function2;
                        }
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new dy(29);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                        OpaqueKey opaqueKey13 = ComposerKt.f7940a;
                        staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                        context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                        z5 = z2;
                        zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                        if ((i16 & 112) == 32) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objX3 = gapComposerH.x();
                        if (z6) {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        } else {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        }
                        imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        contentScale3 = contentScale2;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        modifier4 = dTFunctionNameModifier;
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        Object obj16 = imageLoader$Zoomable$Model.f51525a;
                        ContentScale.f9447a.getClass();
                        ContentScale$Companion$Fit$1 contentScale$Companion$Fit$13 = ContentScale.Companion.f9450c;
                        DrawScope.a0.getClass();
                        int i214 = DrawScope.Companion.f9008c;
                        AsyncImageState asyncImageState13 = new AsyncImageState(obj16, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                        MeasurePolicy measurePolicy13 = UtilsKt.f21339a;
                        AsyncImagePainter.y.getClass();
                        u5 u5Var13 = AsyncImagePainter.z;
                        if (function8 == null) {
                            pj0Var = new pj0(function8, function9, 7);
                        } else {
                            pj0Var = new pj0(function8, function9, 7);
                        }
                        AsyncImagePainter asyncImagePainterA13 = AsyncImagePainterKt.a(asyncImageState13, u5Var13, pj0Var, contentScale$Companion$Fit$13, i214, gapComposerH);
                        gapComposerH = gapComposerH;
                        state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA13.x, gapComposerH).getF10755b();
                        if (state instanceof AsyncImagePainter.State.Empty) {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        } else {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(true);
                        z4 = z5;
                        contentScale2 = contentScale3;
                        r4 = r2;
                        num3 = numValueOf;
                        function6 = function7;
                        function5 = function9;
                        modifier3 = modifier4;
                    } else {
                        gapComposerH.D();
                        function4 = function2;
                        function5 = function3;
                        z4 = z2;
                        i19 = i11;
                        r4 = obj2;
                        num3 = num2;
                        modifier3 = modifier2;
                        function6 = function1;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final ContentScale contentScale16 = contentScale2;
                        final Function1 function112 = function4;
                        recomposeScopeImplB0.d = new Function2() { // from class: h20
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj17, Object obj18) {
                                ((Integer) obj18).getClass();
                                ImageLoaderKt.b(modifier3, obj, contentScale16, r4, num3, i19, z4, function6, function112, function5, (Composer) obj17, RecomposeScopeImplKt.a(i3 | 1), i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i16 = i13 | 905969664;
                if ((i16 & 306783379) == 306783378) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i16 & 1, z3)) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i21 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.d;
                    }
                    if (i6 != 0) {
                        r2 = th;
                    } else {
                        r2 = obj2;
                    }
                    i19 = R.drawable.placeholder;
                    if (i8 != 0) {
                        numValueOf = Integer.valueOf(R.drawable.placeholder);
                    } else {
                        numValueOf = num2;
                    }
                    if (i10 == 0) {
                        i19 = i11;
                    }
                    if (i14 != 0) {
                        z2 = true;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new dy(27);
                        gapComposerH.q(objX);
                    }
                    function7 = (Function1) objX;
                    if (i17 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new dy(28);
                            gapComposerH.q(objX4);
                        }
                        function8 = (Function1) objX4;
                    } else {
                        function8 = function2;
                    }
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new dy(29);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                    OpaqueKey opaqueKey14 = ComposerKt.f7940a;
                    staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                    context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                    z5 = z2;
                    zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                    if ((i16 & 112) == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX3 = gapComposerH.x();
                    if (z6) {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    } else {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    }
                    imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    contentScale3 = contentScale2;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    modifier4 = dTFunctionNameModifier;
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Object obj17 = imageLoader$Zoomable$Model.f51525a;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Fit$1 contentScale$Companion$Fit$14 = ContentScale.Companion.f9450c;
                    DrawScope.a0.getClass();
                    int i215 = DrawScope.Companion.f9008c;
                    AsyncImageState asyncImageState14 = new AsyncImageState(obj17, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                    MeasurePolicy measurePolicy14 = UtilsKt.f21339a;
                    AsyncImagePainter.y.getClass();
                    u5 u5Var14 = AsyncImagePainter.z;
                    if (function8 == null) {
                        pj0Var = new pj0(function8, function9, 7);
                    } else {
                        pj0Var = new pj0(function8, function9, 7);
                    }
                    AsyncImagePainter asyncImagePainterA14 = AsyncImagePainterKt.a(asyncImageState14, u5Var14, pj0Var, contentScale$Companion$Fit$14, i215, gapComposerH);
                    gapComposerH = gapComposerH;
                    state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA14.x, gapComposerH).getF10755b();
                    if (state instanceof AsyncImagePainter.State.Empty) {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    } else {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                    contentScale2 = contentScale3;
                    r4 = r2;
                    num3 = numValueOf;
                    function6 = function7;
                    function5 = function9;
                    modifier3 = modifier4;
                } else {
                    gapComposerH.D();
                    function4 = function2;
                    function5 = function3;
                    z4 = z2;
                    i19 = i11;
                    r4 = obj2;
                    num3 = num2;
                    modifier3 = modifier2;
                    function6 = function1;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final ContentScale contentScale17 = contentScale2;
                    final Function1 function113 = function4;
                    recomposeScopeImplB0.d = new Function2() { // from class: h20
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj18, Object obj19) {
                            ((Integer) obj19).getClass();
                            ImageLoaderKt.b(modifier3, obj, contentScale17, r4, num3, i19, z4, function6, function113, function5, (Composer) obj18, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i13 = i5 | 14155776;
            z2 = z;
            i16 = i13 | 100663296;
            modifier2 = modifierE;
            i17 = i4 & 512;
            if (i17 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function2)) {
                        i18 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i18 = 268435456;
                    }
                    i16 |= i18;
                }
                if ((i16 & 306783379) == 306783378) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i16 & 1, z3)) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i21 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.d;
                    }
                    if (i6 != 0) {
                        r2 = th;
                    } else {
                        r2 = obj2;
                    }
                    i19 = R.drawable.placeholder;
                    if (i8 != 0) {
                        numValueOf = Integer.valueOf(R.drawable.placeholder);
                    } else {
                        numValueOf = num2;
                    }
                    if (i10 == 0) {
                        i19 = i11;
                    }
                    if (i14 != 0) {
                        z2 = true;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new dy(27);
                        gapComposerH.q(objX);
                    }
                    function7 = (Function1) objX;
                    if (i17 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new dy(28);
                            gapComposerH.q(objX4);
                        }
                        function8 = (Function1) objX4;
                    } else {
                        function8 = function2;
                    }
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new dy(29);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                    OpaqueKey opaqueKey15 = ComposerKt.f7940a;
                    staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                    context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                    z5 = z2;
                    zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                    if ((i16 & 112) == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX3 = gapComposerH.x();
                    if (z6) {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    } else {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    }
                    imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    contentScale3 = contentScale2;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    modifier4 = dTFunctionNameModifier;
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Object obj18 = imageLoader$Zoomable$Model.f51525a;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Fit$1 contentScale$Companion$Fit$15 = ContentScale.Companion.f9450c;
                    DrawScope.a0.getClass();
                    int i216 = DrawScope.Companion.f9008c;
                    AsyncImageState asyncImageState15 = new AsyncImageState(obj18, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                    MeasurePolicy measurePolicy15 = UtilsKt.f21339a;
                    AsyncImagePainter.y.getClass();
                    u5 u5Var15 = AsyncImagePainter.z;
                    if (function8 == null) {
                        pj0Var = new pj0(function8, function9, 7);
                    } else {
                        pj0Var = new pj0(function8, function9, 7);
                    }
                    AsyncImagePainter asyncImagePainterA15 = AsyncImagePainterKt.a(asyncImageState15, u5Var15, pj0Var, contentScale$Companion$Fit$15, i216, gapComposerH);
                    gapComposerH = gapComposerH;
                    state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA15.x, gapComposerH).getF10755b();
                    if (state instanceof AsyncImagePainter.State.Empty) {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    } else {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                    contentScale2 = contentScale3;
                    r4 = r2;
                    num3 = numValueOf;
                    function6 = function7;
                    function5 = function9;
                    modifier3 = modifier4;
                } else {
                    gapComposerH.D();
                    function4 = function2;
                    function5 = function3;
                    z4 = z2;
                    i19 = i11;
                    r4 = obj2;
                    num3 = num2;
                    modifier3 = modifier2;
                    function6 = function1;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final ContentScale contentScale18 = contentScale2;
                    final Function1 function114 = function4;
                    recomposeScopeImplB0.d = new Function2() { // from class: h20
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj19, Object obj110) {
                            ((Integer) obj110).getClass();
                            ImageLoaderKt.b(modifier3, obj, contentScale18, r4, num3, i19, z4, function6, function114, function5, (Composer) obj19, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i16 = i13 | 905969664;
            if ((i16 & 306783379) == 306783378) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i16 & 1, z3)) {
                if (i20 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i21 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale2 = ContentScale.Companion.d;
                }
                if (i6 != 0) {
                    r2 = th;
                } else {
                    r2 = obj2;
                }
                i19 = R.drawable.placeholder;
                if (i8 != 0) {
                    numValueOf = Integer.valueOf(R.drawable.placeholder);
                } else {
                    numValueOf = num2;
                }
                if (i10 == 0) {
                    i19 = i11;
                }
                if (i14 != 0) {
                    z2 = true;
                }
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new dy(27);
                    gapComposerH.q(objX);
                }
                function7 = (Function1) objX;
                if (i17 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new dy(28);
                        gapComposerH.q(objX4);
                    }
                    function8 = (Function1) objX4;
                } else {
                    function8 = function2;
                }
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new dy(29);
                    gapComposerH.q(objX2);
                }
                function9 = (Function1) objX2;
                OpaqueKey opaqueKey16 = ComposerKt.f7940a;
                staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                z5 = z2;
                zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                if ((i16 & 112) == 32) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objX3 = gapComposerH.x();
                if (z6) {
                    builder = new ImageRequest.Builder(context);
                    if (!zBooleanValue) {
                        if (obj == null) {
                            obj3 = th;
                        } else {
                            obj3 = obj;
                        }
                        PredefinedImageRequestOptions.b(builder, context, obj3);
                    }
                    ImageRequests_androidKt.a(builder, 200);
                    objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                    gapComposerH.q(objX3);
                } else {
                    builder = new ImageRequest.Builder(context);
                    if (!zBooleanValue) {
                        if (obj == null) {
                            obj3 = th;
                        } else {
                            obj3 = obj;
                        }
                        PredefinedImageRequestOptions.b(builder, context, obj3);
                    }
                    ImageRequests_androidKt.a(builder, 200);
                    objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                    gapComposerH.q(objX3);
                }
                imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                contentScale3 = contentScale2;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                modifier4 = dTFunctionNameModifier;
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Object obj19 = imageLoader$Zoomable$Model.f51525a;
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Fit$1 contentScale$Companion$Fit$16 = ContentScale.Companion.f9450c;
                DrawScope.a0.getClass();
                int i217 = DrawScope.Companion.f9008c;
                AsyncImageState asyncImageState16 = new AsyncImageState(obj19, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                MeasurePolicy measurePolicy16 = UtilsKt.f21339a;
                AsyncImagePainter.y.getClass();
                u5 u5Var16 = AsyncImagePainter.z;
                if (function8 == null) {
                    pj0Var = new pj0(function8, function9, 7);
                } else {
                    pj0Var = new pj0(function8, function9, 7);
                }
                AsyncImagePainter asyncImagePainterA16 = AsyncImagePainterKt.a(asyncImageState16, u5Var16, pj0Var, contentScale$Companion$Fit$16, i217, gapComposerH);
                gapComposerH = gapComposerH;
                state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA16.x, gapComposerH).getF10755b();
                if (state instanceof AsyncImagePainter.State.Empty) {
                    function4 = function8;
                    gapComposerH.L(-246381895);
                    if (numValueOf == null) {
                        gapComposerH.L(-246381896);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-246381895);
                        a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                } else {
                    function4 = function8;
                    gapComposerH.L(-246381895);
                    if (numValueOf == null) {
                        gapComposerH.L(-246381896);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-246381895);
                        a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                z4 = z5;
                contentScale2 = contentScale3;
                r4 = r2;
                num3 = numValueOf;
                function6 = function7;
                function5 = function9;
                modifier3 = modifier4;
            } else {
                gapComposerH.D();
                function4 = function2;
                function5 = function3;
                z4 = z2;
                i19 = i11;
                r4 = obj2;
                num3 = num2;
                modifier3 = modifier2;
                function6 = function1;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final ContentScale contentScale19 = contentScale2;
                final Function1 function115 = function4;
                recomposeScopeImplB0.d = new Function2() { // from class: h20
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj110, Object obj111) {
                        ((Integer) obj111).getClass();
                        ImageLoaderKt.b(modifier3, obj, contentScale19, r4, num3, i19, z4, function6, function115, function5, (Composer) obj110, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= KyberEngine.KyberPolyBytes;
        contentScale2 = contentScale;
        i6 = i4 & 8;
        if (i6 != 0) {
            if ((i3 & 3072) == 0) {
                obj2 = str;
                if (gapComposerH.K(obj2)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i5 |= i7;
            }
            i8 = i4 & 16;
            if (i8 != 0) {
                if ((i3 & 24576) == 0) {
                    num2 = num;
                    if (gapComposerH.K(num2)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i5 |= i9;
                }
                i10 = i4 & 32;
                if (i10 != 0) {
                    i5 |= ImageMetadata.EDGE_MODE;
                    i11 = i2;
                    th = null;
                } else {
                    i11 = i2;
                    th = null;
                    if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                        if (gapComposerH.d(i11)) {
                            i12 = 131072;
                        } else {
                            i12 = 65536;
                        }
                        i5 |= i12;
                    }
                }
                i13 = i5 | 1572864;
                i14 = i4 & 128;
                if (i14 != 0) {
                    if ((12582912 & i3) == 0) {
                        z2 = z;
                        if (gapComposerH.b(z2)) {
                            i15 = 8388608;
                        } else {
                            i15 = 4194304;
                        }
                        i13 |= i15;
                    }
                    i16 = i13 | 100663296;
                    modifier2 = modifierE;
                    i17 = i4 & 512;
                    if (i17 != 0) {
                        if ((i3 & 805306368) == 0) {
                            if (gapComposerH.y(function2)) {
                                i18 = PKIFailureInfo.duplicateCertReq;
                            } else {
                                i18 = 268435456;
                            }
                            i16 |= i18;
                        }
                        if ((i16 & 306783379) == 306783378) {
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        if (gapComposerH.p(i16 & 1, z3)) {
                            if (i20 != 0) {
                                dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                            } else {
                                dTFunctionNameModifier = modifier2;
                            }
                            if (i21 != 0) {
                                ContentScale.f9447a.getClass();
                                contentScale2 = ContentScale.Companion.d;
                            }
                            if (i6 != 0) {
                                r2 = th;
                            } else {
                                r2 = obj2;
                            }
                            i19 = R.drawable.placeholder;
                            if (i8 != 0) {
                                numValueOf = Integer.valueOf(R.drawable.placeholder);
                            } else {
                                numValueOf = num2;
                            }
                            if (i10 == 0) {
                                i19 = i11;
                            }
                            if (i14 != 0) {
                                z2 = true;
                            }
                            objX = gapComposerH.x();
                            composer$Companion$Empty$1 = Composer.Companion.f7939a;
                            if (objX == composer$Companion$Empty$1) {
                                objX = new dy(27);
                                gapComposerH.q(objX);
                            }
                            function7 = (Function1) objX;
                            if (i17 != 0) {
                                objX4 = gapComposerH.x();
                                if (objX4 == composer$Companion$Empty$1) {
                                    objX4 = new dy(28);
                                    gapComposerH.q(objX4);
                                }
                                function8 = (Function1) objX4;
                            } else {
                                function8 = function2;
                            }
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new dy(29);
                                gapComposerH.q(objX2);
                            }
                            function9 = (Function1) objX2;
                            OpaqueKey opaqueKey17 = ComposerKt.f7940a;
                            staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                            context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                            z5 = z2;
                            zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                            if ((i16 & 112) == 32) {
                                z6 = true;
                            } else {
                                z6 = false;
                            }
                            objX3 = gapComposerH.x();
                            if (z6) {
                                builder = new ImageRequest.Builder(context);
                                if (!zBooleanValue) {
                                    if (obj == null) {
                                        obj3 = th;
                                    } else {
                                        obj3 = obj;
                                    }
                                    PredefinedImageRequestOptions.b(builder, context, obj3);
                                }
                                ImageRequests_androidKt.a(builder, 200);
                                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                                gapComposerH.q(objX3);
                            } else {
                                builder = new ImageRequest.Builder(context);
                                if (!zBooleanValue) {
                                    if (obj == null) {
                                        obj3 = th;
                                    } else {
                                        obj3 = obj;
                                    }
                                    PredefinedImageRequestOptions.b(builder, context, obj3);
                                }
                                ImageRequests_androidKt.a(builder, 200);
                                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                                gapComposerH.q(objX3);
                            }
                            imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                            Alignment.f8582a.getClass();
                            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                            contentScale3 = contentScale2;
                            iHashCode = Long.hashCode(gapComposerH.T);
                            persistentCompositionLocalMapU = gapComposerH.U();
                            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                            ComposeUiNode.b0.getClass();
                            modifier4 = dTFunctionNameModifier;
                            function0 = ComposeUiNode.Companion.f9641b;
                            if (gapComposerH.f7976a != null) {
                                ComposablesKt.b();
                                throw th;
                            }
                            gapComposerH.B();
                            if (gapComposerH.S) {
                                gapComposerH.C(function0);
                            } else {
                                gapComposerH.o();
                            }
                            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                            Object obj110 = imageLoader$Zoomable$Model.f51525a;
                            ContentScale.f9447a.getClass();
                            ContentScale$Companion$Fit$1 contentScale$Companion$Fit$17 = ContentScale.Companion.f9450c;
                            DrawScope.a0.getClass();
                            int i218 = DrawScope.Companion.f9008c;
                            AsyncImageState asyncImageState17 = new AsyncImageState(obj110, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                            MeasurePolicy measurePolicy17 = UtilsKt.f21339a;
                            AsyncImagePainter.y.getClass();
                            u5 u5Var17 = AsyncImagePainter.z;
                            if (function8 == null) {
                                pj0Var = new pj0(function8, function9, 7);
                            } else {
                                pj0Var = new pj0(function8, function9, 7);
                            }
                            AsyncImagePainter asyncImagePainterA17 = AsyncImagePainterKt.a(asyncImageState17, u5Var17, pj0Var, contentScale$Companion$Fit$17, i218, gapComposerH);
                            gapComposerH = gapComposerH;
                            state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA17.x, gapComposerH).getF10755b();
                            if (state instanceof AsyncImagePainter.State.Empty) {
                                function4 = function8;
                                gapComposerH.L(-246381895);
                                if (numValueOf == null) {
                                    gapComposerH.L(-246381896);
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-246381895);
                                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(false);
                            } else {
                                function4 = function8;
                                gapComposerH.L(-246381895);
                                if (numValueOf == null) {
                                    gapComposerH.L(-246381896);
                                    gapComposerH.Z(false);
                                } else {
                                    gapComposerH.L(-246381895);
                                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                    gapComposerH.Z(false);
                                }
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(true);
                            z4 = z5;
                            contentScale2 = contentScale3;
                            r4 = r2;
                            num3 = numValueOf;
                            function6 = function7;
                            function5 = function9;
                            modifier3 = modifier4;
                        } else {
                            gapComposerH.D();
                            function4 = function2;
                            function5 = function3;
                            z4 = z2;
                            i19 = i11;
                            r4 = obj2;
                            num3 = num2;
                            modifier3 = modifier2;
                            function6 = function1;
                        }
                        recomposeScopeImplB0 = gapComposerH.b0();
                        if (recomposeScopeImplB0 != null) {
                            final ContentScale contentScale110 = contentScale2;
                            final Function1 function116 = function4;
                            recomposeScopeImplB0.d = new Function2() { // from class: h20
                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(Object obj111, Object obj112) {
                                    ((Integer) obj112).getClass();
                                    ImageLoaderKt.b(modifier3, obj, contentScale110, r4, num3, i19, z4, function6, function116, function5, (Composer) obj111, RecomposeScopeImplKt.a(i3 | 1), i4);
                                    return Unit.f71739a;
                                }
                            };
                        }
                    }
                    i16 = i13 | 905969664;
                    if ((i16 & 306783379) == 306783378) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z3)) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i21 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale2 = ContentScale.Companion.d;
                        }
                        if (i6 != 0) {
                            r2 = th;
                        } else {
                            r2 = obj2;
                        }
                        i19 = R.drawable.placeholder;
                        if (i8 != 0) {
                            numValueOf = Integer.valueOf(R.drawable.placeholder);
                        } else {
                            numValueOf = num2;
                        }
                        if (i10 == 0) {
                            i19 = i11;
                        }
                        if (i14 != 0) {
                            z2 = true;
                        }
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new dy(27);
                            gapComposerH.q(objX);
                        }
                        function7 = (Function1) objX;
                        if (i17 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new dy(28);
                                gapComposerH.q(objX4);
                            }
                            function8 = (Function1) objX4;
                        } else {
                            function8 = function2;
                        }
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new dy(29);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                        OpaqueKey opaqueKey18 = ComposerKt.f7940a;
                        staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                        context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                        z5 = z2;
                        zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                        if ((i16 & 112) == 32) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objX3 = gapComposerH.x();
                        if (z6) {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        } else {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        }
                        imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        contentScale3 = contentScale2;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        modifier4 = dTFunctionNameModifier;
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        Object obj111 = imageLoader$Zoomable$Model.f51525a;
                        ContentScale.f9447a.getClass();
                        ContentScale$Companion$Fit$1 contentScale$Companion$Fit$18 = ContentScale.Companion.f9450c;
                        DrawScope.a0.getClass();
                        int i219 = DrawScope.Companion.f9008c;
                        AsyncImageState asyncImageState18 = new AsyncImageState(obj111, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                        MeasurePolicy measurePolicy18 = UtilsKt.f21339a;
                        AsyncImagePainter.y.getClass();
                        u5 u5Var18 = AsyncImagePainter.z;
                        if (function8 == null) {
                            pj0Var = new pj0(function8, function9, 7);
                        } else {
                            pj0Var = new pj0(function8, function9, 7);
                        }
                        AsyncImagePainter asyncImagePainterA18 = AsyncImagePainterKt.a(asyncImageState18, u5Var18, pj0Var, contentScale$Companion$Fit$18, i219, gapComposerH);
                        gapComposerH = gapComposerH;
                        state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA18.x, gapComposerH).getF10755b();
                        if (state instanceof AsyncImagePainter.State.Empty) {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        } else {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(true);
                        z4 = z5;
                        contentScale2 = contentScale3;
                        r4 = r2;
                        num3 = numValueOf;
                        function6 = function7;
                        function5 = function9;
                        modifier3 = modifier4;
                    } else {
                        gapComposerH.D();
                        function4 = function2;
                        function5 = function3;
                        z4 = z2;
                        i19 = i11;
                        r4 = obj2;
                        num3 = num2;
                        modifier3 = modifier2;
                        function6 = function1;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final ContentScale contentScale111 = contentScale2;
                        final Function1 function117 = function4;
                        recomposeScopeImplB0.d = new Function2() { // from class: h20
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj112, Object obj113) {
                                ((Integer) obj113).getClass();
                                ImageLoaderKt.b(modifier3, obj, contentScale111, r4, num3, i19, z4, function6, function117, function5, (Composer) obj112, RecomposeScopeImplKt.a(i3 | 1), i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i13 = i5 | 14155776;
                z2 = z;
                i16 = i13 | 100663296;
                modifier2 = modifierE;
                i17 = i4 & 512;
                if (i17 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function2)) {
                            i18 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i18 = 268435456;
                        }
                        i16 |= i18;
                    }
                    if ((i16 & 306783379) == 306783378) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z3)) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i21 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale2 = ContentScale.Companion.d;
                        }
                        if (i6 != 0) {
                            r2 = th;
                        } else {
                            r2 = obj2;
                        }
                        i19 = R.drawable.placeholder;
                        if (i8 != 0) {
                            numValueOf = Integer.valueOf(R.drawable.placeholder);
                        } else {
                            numValueOf = num2;
                        }
                        if (i10 == 0) {
                            i19 = i11;
                        }
                        if (i14 != 0) {
                            z2 = true;
                        }
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new dy(27);
                            gapComposerH.q(objX);
                        }
                        function7 = (Function1) objX;
                        if (i17 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new dy(28);
                                gapComposerH.q(objX4);
                            }
                            function8 = (Function1) objX4;
                        } else {
                            function8 = function2;
                        }
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new dy(29);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                        OpaqueKey opaqueKey19 = ComposerKt.f7940a;
                        staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                        context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                        z5 = z2;
                        zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                        if ((i16 & 112) == 32) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objX3 = gapComposerH.x();
                        if (z6) {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        } else {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        }
                        imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        contentScale3 = contentScale2;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        modifier4 = dTFunctionNameModifier;
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        Object obj112 = imageLoader$Zoomable$Model.f51525a;
                        ContentScale.f9447a.getClass();
                        ContentScale$Companion$Fit$1 contentScale$Companion$Fit$19 = ContentScale.Companion.f9450c;
                        DrawScope.a0.getClass();
                        int i2110 = DrawScope.Companion.f9008c;
                        AsyncImageState asyncImageState19 = new AsyncImageState(obj112, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                        MeasurePolicy measurePolicy19 = UtilsKt.f21339a;
                        AsyncImagePainter.y.getClass();
                        u5 u5Var19 = AsyncImagePainter.z;
                        if (function8 == null) {
                            pj0Var = new pj0(function8, function9, 7);
                        } else {
                            pj0Var = new pj0(function8, function9, 7);
                        }
                        AsyncImagePainter asyncImagePainterA19 = AsyncImagePainterKt.a(asyncImageState19, u5Var19, pj0Var, contentScale$Companion$Fit$19, i2110, gapComposerH);
                        gapComposerH = gapComposerH;
                        state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA19.x, gapComposerH).getF10755b();
                        if (state instanceof AsyncImagePainter.State.Empty) {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        } else {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(true);
                        z4 = z5;
                        contentScale2 = contentScale3;
                        r4 = r2;
                        num3 = numValueOf;
                        function6 = function7;
                        function5 = function9;
                        modifier3 = modifier4;
                    } else {
                        gapComposerH.D();
                        function4 = function2;
                        function5 = function3;
                        z4 = z2;
                        i19 = i11;
                        r4 = obj2;
                        num3 = num2;
                        modifier3 = modifier2;
                        function6 = function1;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final ContentScale contentScale112 = contentScale2;
                        final Function1 function118 = function4;
                        recomposeScopeImplB0.d = new Function2() { // from class: h20
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj113, Object obj114) {
                                ((Integer) obj114).getClass();
                                ImageLoaderKt.b(modifier3, obj, contentScale112, r4, num3, i19, z4, function6, function118, function5, (Composer) obj113, RecomposeScopeImplKt.a(i3 | 1), i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i16 = i13 | 905969664;
                if ((i16 & 306783379) == 306783378) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i16 & 1, z3)) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i21 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.d;
                    }
                    if (i6 != 0) {
                        r2 = th;
                    } else {
                        r2 = obj2;
                    }
                    i19 = R.drawable.placeholder;
                    if (i8 != 0) {
                        numValueOf = Integer.valueOf(R.drawable.placeholder);
                    } else {
                        numValueOf = num2;
                    }
                    if (i10 == 0) {
                        i19 = i11;
                    }
                    if (i14 != 0) {
                        z2 = true;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new dy(27);
                        gapComposerH.q(objX);
                    }
                    function7 = (Function1) objX;
                    if (i17 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new dy(28);
                            gapComposerH.q(objX4);
                        }
                        function8 = (Function1) objX4;
                    } else {
                        function8 = function2;
                    }
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new dy(29);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                    OpaqueKey opaqueKey110 = ComposerKt.f7940a;
                    staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                    context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                    z5 = z2;
                    zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                    if ((i16 & 112) == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX3 = gapComposerH.x();
                    if (z6) {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    } else {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    }
                    imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    contentScale3 = contentScale2;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    modifier4 = dTFunctionNameModifier;
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Object obj113 = imageLoader$Zoomable$Model.f51525a;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Fit$1 contentScale$Companion$Fit$110 = ContentScale.Companion.f9450c;
                    DrawScope.a0.getClass();
                    int i2111 = DrawScope.Companion.f9008c;
                    AsyncImageState asyncImageState110 = new AsyncImageState(obj113, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                    MeasurePolicy measurePolicy110 = UtilsKt.f21339a;
                    AsyncImagePainter.y.getClass();
                    u5 u5Var110 = AsyncImagePainter.z;
                    if (function8 == null) {
                        pj0Var = new pj0(function8, function9, 7);
                    } else {
                        pj0Var = new pj0(function8, function9, 7);
                    }
                    AsyncImagePainter asyncImagePainterA110 = AsyncImagePainterKt.a(asyncImageState110, u5Var110, pj0Var, contentScale$Companion$Fit$110, i2111, gapComposerH);
                    gapComposerH = gapComposerH;
                    state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA110.x, gapComposerH).getF10755b();
                    if (state instanceof AsyncImagePainter.State.Empty) {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    } else {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                    contentScale2 = contentScale3;
                    r4 = r2;
                    num3 = numValueOf;
                    function6 = function7;
                    function5 = function9;
                    modifier3 = modifier4;
                } else {
                    gapComposerH.D();
                    function4 = function2;
                    function5 = function3;
                    z4 = z2;
                    i19 = i11;
                    r4 = obj2;
                    num3 = num2;
                    modifier3 = modifier2;
                    function6 = function1;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final ContentScale contentScale113 = contentScale2;
                    final Function1 function119 = function4;
                    recomposeScopeImplB0.d = new Function2() { // from class: h20
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj114, Object obj115) {
                            ((Integer) obj115).getClass();
                            ImageLoaderKt.b(modifier3, obj, contentScale113, r4, num3, i19, z4, function6, function119, function5, (Composer) obj114, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i5 |= 24576;
            num2 = num;
            i10 = i4 & 32;
            if (i10 != 0) {
                i5 |= ImageMetadata.EDGE_MODE;
                i11 = i2;
                th = null;
            } else {
                i11 = i2;
                th = null;
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i11)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i5 |= i12;
                }
            }
            i13 = i5 | 1572864;
            i14 = i4 & 128;
            if (i14 != 0) {
                if ((12582912 & i3) == 0) {
                    z2 = z;
                    if (gapComposerH.b(z2)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i13 |= i15;
                }
                i16 = i13 | 100663296;
                modifier2 = modifierE;
                i17 = i4 & 512;
                if (i17 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function2)) {
                            i18 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i18 = 268435456;
                        }
                        i16 |= i18;
                    }
                    if ((i16 & 306783379) == 306783378) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z3)) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i21 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale2 = ContentScale.Companion.d;
                        }
                        if (i6 != 0) {
                            r2 = th;
                        } else {
                            r2 = obj2;
                        }
                        i19 = R.drawable.placeholder;
                        if (i8 != 0) {
                            numValueOf = Integer.valueOf(R.drawable.placeholder);
                        } else {
                            numValueOf = num2;
                        }
                        if (i10 == 0) {
                            i19 = i11;
                        }
                        if (i14 != 0) {
                            z2 = true;
                        }
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new dy(27);
                            gapComposerH.q(objX);
                        }
                        function7 = (Function1) objX;
                        if (i17 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new dy(28);
                                gapComposerH.q(objX4);
                            }
                            function8 = (Function1) objX4;
                        } else {
                            function8 = function2;
                        }
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new dy(29);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                        OpaqueKey opaqueKey111 = ComposerKt.f7940a;
                        staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                        context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                        z5 = z2;
                        zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                        if ((i16 & 112) == 32) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objX3 = gapComposerH.x();
                        if (z6) {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        } else {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        }
                        imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        contentScale3 = contentScale2;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        modifier4 = dTFunctionNameModifier;
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        Object obj114 = imageLoader$Zoomable$Model.f51525a;
                        ContentScale.f9447a.getClass();
                        ContentScale$Companion$Fit$1 contentScale$Companion$Fit$111 = ContentScale.Companion.f9450c;
                        DrawScope.a0.getClass();
                        int i2112 = DrawScope.Companion.f9008c;
                        AsyncImageState asyncImageState111 = new AsyncImageState(obj114, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                        MeasurePolicy measurePolicy111 = UtilsKt.f21339a;
                        AsyncImagePainter.y.getClass();
                        u5 u5Var111 = AsyncImagePainter.z;
                        if (function8 == null) {
                            pj0Var = new pj0(function8, function9, 7);
                        } else {
                            pj0Var = new pj0(function8, function9, 7);
                        }
                        AsyncImagePainter asyncImagePainterA111 = AsyncImagePainterKt.a(asyncImageState111, u5Var111, pj0Var, contentScale$Companion$Fit$111, i2112, gapComposerH);
                        gapComposerH = gapComposerH;
                        state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA111.x, gapComposerH).getF10755b();
                        if (state instanceof AsyncImagePainter.State.Empty) {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        } else {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(true);
                        z4 = z5;
                        contentScale2 = contentScale3;
                        r4 = r2;
                        num3 = numValueOf;
                        function6 = function7;
                        function5 = function9;
                        modifier3 = modifier4;
                    } else {
                        gapComposerH.D();
                        function4 = function2;
                        function5 = function3;
                        z4 = z2;
                        i19 = i11;
                        r4 = obj2;
                        num3 = num2;
                        modifier3 = modifier2;
                        function6 = function1;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final ContentScale contentScale114 = contentScale2;
                        final Function1 function1110 = function4;
                        recomposeScopeImplB0.d = new Function2() { // from class: h20
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj115, Object obj116) {
                                ((Integer) obj116).getClass();
                                ImageLoaderKt.b(modifier3, obj, contentScale114, r4, num3, i19, z4, function6, function1110, function5, (Composer) obj115, RecomposeScopeImplKt.a(i3 | 1), i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i16 = i13 | 905969664;
                if ((i16 & 306783379) == 306783378) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i16 & 1, z3)) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i21 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.d;
                    }
                    if (i6 != 0) {
                        r2 = th;
                    } else {
                        r2 = obj2;
                    }
                    i19 = R.drawable.placeholder;
                    if (i8 != 0) {
                        numValueOf = Integer.valueOf(R.drawable.placeholder);
                    } else {
                        numValueOf = num2;
                    }
                    if (i10 == 0) {
                        i19 = i11;
                    }
                    if (i14 != 0) {
                        z2 = true;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new dy(27);
                        gapComposerH.q(objX);
                    }
                    function7 = (Function1) objX;
                    if (i17 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new dy(28);
                            gapComposerH.q(objX4);
                        }
                        function8 = (Function1) objX4;
                    } else {
                        function8 = function2;
                    }
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new dy(29);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                    OpaqueKey opaqueKey112 = ComposerKt.f7940a;
                    staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                    context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                    z5 = z2;
                    zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                    if ((i16 & 112) == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX3 = gapComposerH.x();
                    if (z6) {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    } else {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    }
                    imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    contentScale3 = contentScale2;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    modifier4 = dTFunctionNameModifier;
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Object obj115 = imageLoader$Zoomable$Model.f51525a;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Fit$1 contentScale$Companion$Fit$112 = ContentScale.Companion.f9450c;
                    DrawScope.a0.getClass();
                    int i2113 = DrawScope.Companion.f9008c;
                    AsyncImageState asyncImageState112 = new AsyncImageState(obj115, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                    MeasurePolicy measurePolicy112 = UtilsKt.f21339a;
                    AsyncImagePainter.y.getClass();
                    u5 u5Var112 = AsyncImagePainter.z;
                    if (function8 == null) {
                        pj0Var = new pj0(function8, function9, 7);
                    } else {
                        pj0Var = new pj0(function8, function9, 7);
                    }
                    AsyncImagePainter asyncImagePainterA112 = AsyncImagePainterKt.a(asyncImageState112, u5Var112, pj0Var, contentScale$Companion$Fit$112, i2113, gapComposerH);
                    gapComposerH = gapComposerH;
                    state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA112.x, gapComposerH).getF10755b();
                    if (state instanceof AsyncImagePainter.State.Empty) {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    } else {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                    contentScale2 = contentScale3;
                    r4 = r2;
                    num3 = numValueOf;
                    function6 = function7;
                    function5 = function9;
                    modifier3 = modifier4;
                } else {
                    gapComposerH.D();
                    function4 = function2;
                    function5 = function3;
                    z4 = z2;
                    i19 = i11;
                    r4 = obj2;
                    num3 = num2;
                    modifier3 = modifier2;
                    function6 = function1;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final ContentScale contentScale115 = contentScale2;
                    final Function1 function1111 = function4;
                    recomposeScopeImplB0.d = new Function2() { // from class: h20
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj116, Object obj117) {
                            ((Integer) obj117).getClass();
                            ImageLoaderKt.b(modifier3, obj, contentScale115, r4, num3, i19, z4, function6, function1111, function5, (Composer) obj116, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i13 = i5 | 14155776;
            z2 = z;
            i16 = i13 | 100663296;
            modifier2 = modifierE;
            i17 = i4 & 512;
            if (i17 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function2)) {
                        i18 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i18 = 268435456;
                    }
                    i16 |= i18;
                }
                if ((i16 & 306783379) == 306783378) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i16 & 1, z3)) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i21 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.d;
                    }
                    if (i6 != 0) {
                        r2 = th;
                    } else {
                        r2 = obj2;
                    }
                    i19 = R.drawable.placeholder;
                    if (i8 != 0) {
                        numValueOf = Integer.valueOf(R.drawable.placeholder);
                    } else {
                        numValueOf = num2;
                    }
                    if (i10 == 0) {
                        i19 = i11;
                    }
                    if (i14 != 0) {
                        z2 = true;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new dy(27);
                        gapComposerH.q(objX);
                    }
                    function7 = (Function1) objX;
                    if (i17 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new dy(28);
                            gapComposerH.q(objX4);
                        }
                        function8 = (Function1) objX4;
                    } else {
                        function8 = function2;
                    }
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new dy(29);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                    OpaqueKey opaqueKey113 = ComposerKt.f7940a;
                    staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                    context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                    z5 = z2;
                    zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                    if ((i16 & 112) == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX3 = gapComposerH.x();
                    if (z6) {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    } else {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    }
                    imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    contentScale3 = contentScale2;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    modifier4 = dTFunctionNameModifier;
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Object obj116 = imageLoader$Zoomable$Model.f51525a;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Fit$1 contentScale$Companion$Fit$113 = ContentScale.Companion.f9450c;
                    DrawScope.a0.getClass();
                    int i2114 = DrawScope.Companion.f9008c;
                    AsyncImageState asyncImageState113 = new AsyncImageState(obj116, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                    MeasurePolicy measurePolicy113 = UtilsKt.f21339a;
                    AsyncImagePainter.y.getClass();
                    u5 u5Var113 = AsyncImagePainter.z;
                    if (function8 == null) {
                        pj0Var = new pj0(function8, function9, 7);
                    } else {
                        pj0Var = new pj0(function8, function9, 7);
                    }
                    AsyncImagePainter asyncImagePainterA113 = AsyncImagePainterKt.a(asyncImageState113, u5Var113, pj0Var, contentScale$Companion$Fit$113, i2114, gapComposerH);
                    gapComposerH = gapComposerH;
                    state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA113.x, gapComposerH).getF10755b();
                    if (state instanceof AsyncImagePainter.State.Empty) {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    } else {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                    contentScale2 = contentScale3;
                    r4 = r2;
                    num3 = numValueOf;
                    function6 = function7;
                    function5 = function9;
                    modifier3 = modifier4;
                } else {
                    gapComposerH.D();
                    function4 = function2;
                    function5 = function3;
                    z4 = z2;
                    i19 = i11;
                    r4 = obj2;
                    num3 = num2;
                    modifier3 = modifier2;
                    function6 = function1;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final ContentScale contentScale116 = contentScale2;
                    final Function1 function1112 = function4;
                    recomposeScopeImplB0.d = new Function2() { // from class: h20
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj117, Object obj118) {
                            ((Integer) obj118).getClass();
                            ImageLoaderKt.b(modifier3, obj, contentScale116, r4, num3, i19, z4, function6, function1112, function5, (Composer) obj117, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i16 = i13 | 905969664;
            if ((i16 & 306783379) == 306783378) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i16 & 1, z3)) {
                if (i20 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i21 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale2 = ContentScale.Companion.d;
                }
                if (i6 != 0) {
                    r2 = th;
                } else {
                    r2 = obj2;
                }
                i19 = R.drawable.placeholder;
                if (i8 != 0) {
                    numValueOf = Integer.valueOf(R.drawable.placeholder);
                } else {
                    numValueOf = num2;
                }
                if (i10 == 0) {
                    i19 = i11;
                }
                if (i14 != 0) {
                    z2 = true;
                }
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new dy(27);
                    gapComposerH.q(objX);
                }
                function7 = (Function1) objX;
                if (i17 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new dy(28);
                        gapComposerH.q(objX4);
                    }
                    function8 = (Function1) objX4;
                } else {
                    function8 = function2;
                }
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new dy(29);
                    gapComposerH.q(objX2);
                }
                function9 = (Function1) objX2;
                OpaqueKey opaqueKey114 = ComposerKt.f7940a;
                staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                z5 = z2;
                zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                if ((i16 & 112) == 32) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objX3 = gapComposerH.x();
                if (z6) {
                    builder = new ImageRequest.Builder(context);
                    if (!zBooleanValue) {
                        if (obj == null) {
                            obj3 = th;
                        } else {
                            obj3 = obj;
                        }
                        PredefinedImageRequestOptions.b(builder, context, obj3);
                    }
                    ImageRequests_androidKt.a(builder, 200);
                    objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                    gapComposerH.q(objX3);
                } else {
                    builder = new ImageRequest.Builder(context);
                    if (!zBooleanValue) {
                        if (obj == null) {
                            obj3 = th;
                        } else {
                            obj3 = obj;
                        }
                        PredefinedImageRequestOptions.b(builder, context, obj3);
                    }
                    ImageRequests_androidKt.a(builder, 200);
                    objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                    gapComposerH.q(objX3);
                }
                imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                contentScale3 = contentScale2;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                modifier4 = dTFunctionNameModifier;
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Object obj117 = imageLoader$Zoomable$Model.f51525a;
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Fit$1 contentScale$Companion$Fit$114 = ContentScale.Companion.f9450c;
                DrawScope.a0.getClass();
                int i2115 = DrawScope.Companion.f9008c;
                AsyncImageState asyncImageState114 = new AsyncImageState(obj117, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                MeasurePolicy measurePolicy114 = UtilsKt.f21339a;
                AsyncImagePainter.y.getClass();
                u5 u5Var114 = AsyncImagePainter.z;
                if (function8 == null) {
                    pj0Var = new pj0(function8, function9, 7);
                } else {
                    pj0Var = new pj0(function8, function9, 7);
                }
                AsyncImagePainter asyncImagePainterA114 = AsyncImagePainterKt.a(asyncImageState114, u5Var114, pj0Var, contentScale$Companion$Fit$114, i2115, gapComposerH);
                gapComposerH = gapComposerH;
                state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA114.x, gapComposerH).getF10755b();
                if (state instanceof AsyncImagePainter.State.Empty) {
                    function4 = function8;
                    gapComposerH.L(-246381895);
                    if (numValueOf == null) {
                        gapComposerH.L(-246381896);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-246381895);
                        a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                } else {
                    function4 = function8;
                    gapComposerH.L(-246381895);
                    if (numValueOf == null) {
                        gapComposerH.L(-246381896);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-246381895);
                        a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                z4 = z5;
                contentScale2 = contentScale3;
                r4 = r2;
                num3 = numValueOf;
                function6 = function7;
                function5 = function9;
                modifier3 = modifier4;
            } else {
                gapComposerH.D();
                function4 = function2;
                function5 = function3;
                z4 = z2;
                i19 = i11;
                r4 = obj2;
                num3 = num2;
                modifier3 = modifier2;
                function6 = function1;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final ContentScale contentScale117 = contentScale2;
                final Function1 function1113 = function4;
                recomposeScopeImplB0.d = new Function2() { // from class: h20
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj118, Object obj119) {
                        ((Integer) obj119).getClass();
                        ImageLoaderKt.b(modifier3, obj, contentScale117, r4, num3, i19, z4, function6, function1113, function5, (Composer) obj118, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 3072;
        obj2 = str;
        i8 = i4 & 16;
        if (i8 != 0) {
            if ((i3 & 24576) == 0) {
                num2 = num;
                if (gapComposerH.K(num2)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i5 |= i9;
            }
            i10 = i4 & 32;
            if (i10 != 0) {
                i5 |= ImageMetadata.EDGE_MODE;
                i11 = i2;
                th = null;
            } else {
                i11 = i2;
                th = null;
                if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                    if (gapComposerH.d(i11)) {
                        i12 = 131072;
                    } else {
                        i12 = 65536;
                    }
                    i5 |= i12;
                }
            }
            i13 = i5 | 1572864;
            i14 = i4 & 128;
            if (i14 != 0) {
                if ((12582912 & i3) == 0) {
                    z2 = z;
                    if (gapComposerH.b(z2)) {
                        i15 = 8388608;
                    } else {
                        i15 = 4194304;
                    }
                    i13 |= i15;
                }
                i16 = i13 | 100663296;
                modifier2 = modifierE;
                i17 = i4 & 512;
                if (i17 != 0) {
                    if ((i3 & 805306368) == 0) {
                        if (gapComposerH.y(function2)) {
                            i18 = PKIFailureInfo.duplicateCertReq;
                        } else {
                            i18 = 268435456;
                        }
                        i16 |= i18;
                    }
                    if ((i16 & 306783379) == 306783378) {
                        z3 = false;
                    } else {
                        z3 = true;
                    }
                    if (gapComposerH.p(i16 & 1, z3)) {
                        if (i20 != 0) {
                            dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                        } else {
                            dTFunctionNameModifier = modifier2;
                        }
                        if (i21 != 0) {
                            ContentScale.f9447a.getClass();
                            contentScale2 = ContentScale.Companion.d;
                        }
                        if (i6 != 0) {
                            r2 = th;
                        } else {
                            r2 = obj2;
                        }
                        i19 = R.drawable.placeholder;
                        if (i8 != 0) {
                            numValueOf = Integer.valueOf(R.drawable.placeholder);
                        } else {
                            numValueOf = num2;
                        }
                        if (i10 == 0) {
                            i19 = i11;
                        }
                        if (i14 != 0) {
                            z2 = true;
                        }
                        objX = gapComposerH.x();
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (objX == composer$Companion$Empty$1) {
                            objX = new dy(27);
                            gapComposerH.q(objX);
                        }
                        function7 = (Function1) objX;
                        if (i17 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new dy(28);
                                gapComposerH.q(objX4);
                            }
                            function8 = (Function1) objX4;
                        } else {
                            function8 = function2;
                        }
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new dy(29);
                            gapComposerH.q(objX2);
                        }
                        function9 = (Function1) objX2;
                        OpaqueKey opaqueKey115 = ComposerKt.f7940a;
                        staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                        context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                        z5 = z2;
                        zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                        if ((i16 & 112) == 32) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        objX3 = gapComposerH.x();
                        if (z6) {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        } else {
                            builder = new ImageRequest.Builder(context);
                            if (!zBooleanValue) {
                                if (obj == null) {
                                    obj3 = th;
                                } else {
                                    obj3 = obj;
                                }
                                PredefinedImageRequestOptions.b(builder, context, obj3);
                            }
                            ImageRequests_androidKt.a(builder, 200);
                            objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                            gapComposerH.q(objX3);
                        }
                        imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                        Alignment.f8582a.getClass();
                        measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                        contentScale3 = contentScale2;
                        iHashCode = Long.hashCode(gapComposerH.T);
                        persistentCompositionLocalMapU = gapComposerH.U();
                        modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                        ComposeUiNode.b0.getClass();
                        modifier4 = dTFunctionNameModifier;
                        function0 = ComposeUiNode.Companion.f9641b;
                        if (gapComposerH.f7976a != null) {
                            ComposablesKt.b();
                            throw th;
                        }
                        gapComposerH.B();
                        if (gapComposerH.S) {
                            gapComposerH.C(function0);
                        } else {
                            gapComposerH.o();
                        }
                        Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                        Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                        Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                        Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                        Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                        Object obj118 = imageLoader$Zoomable$Model.f51525a;
                        ContentScale.f9447a.getClass();
                        ContentScale$Companion$Fit$1 contentScale$Companion$Fit$115 = ContentScale.Companion.f9450c;
                        DrawScope.a0.getClass();
                        int i2116 = DrawScope.Companion.f9008c;
                        AsyncImageState asyncImageState115 = new AsyncImageState(obj118, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                        MeasurePolicy measurePolicy115 = UtilsKt.f21339a;
                        AsyncImagePainter.y.getClass();
                        u5 u5Var115 = AsyncImagePainter.z;
                        if (function8 == null) {
                            pj0Var = new pj0(function8, function9, 7);
                        } else {
                            pj0Var = new pj0(function8, function9, 7);
                        }
                        AsyncImagePainter asyncImagePainterA115 = AsyncImagePainterKt.a(asyncImageState115, u5Var115, pj0Var, contentScale$Companion$Fit$115, i2116, gapComposerH);
                        gapComposerH = gapComposerH;
                        state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA115.x, gapComposerH).getF10755b();
                        if (state instanceof AsyncImagePainter.State.Empty) {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        } else {
                            function4 = function8;
                            gapComposerH.L(-246381895);
                            if (numValueOf == null) {
                                gapComposerH.L(-246381896);
                                gapComposerH.Z(false);
                            } else {
                                gapComposerH.L(-246381895);
                                a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                                gapComposerH.Z(false);
                            }
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(true);
                        z4 = z5;
                        contentScale2 = contentScale3;
                        r4 = r2;
                        num3 = numValueOf;
                        function6 = function7;
                        function5 = function9;
                        modifier3 = modifier4;
                    } else {
                        gapComposerH.D();
                        function4 = function2;
                        function5 = function3;
                        z4 = z2;
                        i19 = i11;
                        r4 = obj2;
                        num3 = num2;
                        modifier3 = modifier2;
                        function6 = function1;
                    }
                    recomposeScopeImplB0 = gapComposerH.b0();
                    if (recomposeScopeImplB0 != null) {
                        final ContentScale contentScale118 = contentScale2;
                        final Function1 function1114 = function4;
                        recomposeScopeImplB0.d = new Function2() { // from class: h20
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj119, Object obj1110) {
                                ((Integer) obj1110).getClass();
                                ImageLoaderKt.b(modifier3, obj, contentScale118, r4, num3, i19, z4, function6, function1114, function5, (Composer) obj119, RecomposeScopeImplKt.a(i3 | 1), i4);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                i16 = i13 | 905969664;
                if ((i16 & 306783379) == 306783378) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i16 & 1, z3)) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i21 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.d;
                    }
                    if (i6 != 0) {
                        r2 = th;
                    } else {
                        r2 = obj2;
                    }
                    i19 = R.drawable.placeholder;
                    if (i8 != 0) {
                        numValueOf = Integer.valueOf(R.drawable.placeholder);
                    } else {
                        numValueOf = num2;
                    }
                    if (i10 == 0) {
                        i19 = i11;
                    }
                    if (i14 != 0) {
                        z2 = true;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new dy(27);
                        gapComposerH.q(objX);
                    }
                    function7 = (Function1) objX;
                    if (i17 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new dy(28);
                            gapComposerH.q(objX4);
                        }
                        function8 = (Function1) objX4;
                    } else {
                        function8 = function2;
                    }
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new dy(29);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                    OpaqueKey opaqueKey116 = ComposerKt.f7940a;
                    staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                    context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                    z5 = z2;
                    zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                    if ((i16 & 112) == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX3 = gapComposerH.x();
                    if (z6) {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    } else {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    }
                    imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    contentScale3 = contentScale2;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    modifier4 = dTFunctionNameModifier;
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Object obj119 = imageLoader$Zoomable$Model.f51525a;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Fit$1 contentScale$Companion$Fit$116 = ContentScale.Companion.f9450c;
                    DrawScope.a0.getClass();
                    int i2117 = DrawScope.Companion.f9008c;
                    AsyncImageState asyncImageState116 = new AsyncImageState(obj119, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                    MeasurePolicy measurePolicy116 = UtilsKt.f21339a;
                    AsyncImagePainter.y.getClass();
                    u5 u5Var116 = AsyncImagePainter.z;
                    if (function8 == null) {
                        pj0Var = new pj0(function8, function9, 7);
                    } else {
                        pj0Var = new pj0(function8, function9, 7);
                    }
                    AsyncImagePainter asyncImagePainterA116 = AsyncImagePainterKt.a(asyncImageState116, u5Var116, pj0Var, contentScale$Companion$Fit$116, i2117, gapComposerH);
                    gapComposerH = gapComposerH;
                    state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA116.x, gapComposerH).getF10755b();
                    if (state instanceof AsyncImagePainter.State.Empty) {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    } else {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                    contentScale2 = contentScale3;
                    r4 = r2;
                    num3 = numValueOf;
                    function6 = function7;
                    function5 = function9;
                    modifier3 = modifier4;
                } else {
                    gapComposerH.D();
                    function4 = function2;
                    function5 = function3;
                    z4 = z2;
                    i19 = i11;
                    r4 = obj2;
                    num3 = num2;
                    modifier3 = modifier2;
                    function6 = function1;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final ContentScale contentScale119 = contentScale2;
                    final Function1 function1115 = function4;
                    recomposeScopeImplB0.d = new Function2() { // from class: h20
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj1110, Object obj1111) {
                            ((Integer) obj1111).getClass();
                            ImageLoaderKt.b(modifier3, obj, contentScale119, r4, num3, i19, z4, function6, function1115, function5, (Composer) obj1110, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i13 = i5 | 14155776;
            z2 = z;
            i16 = i13 | 100663296;
            modifier2 = modifierE;
            i17 = i4 & 512;
            if (i17 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function2)) {
                        i18 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i18 = 268435456;
                    }
                    i16 |= i18;
                }
                if ((i16 & 306783379) == 306783378) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i16 & 1, z3)) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i21 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.d;
                    }
                    if (i6 != 0) {
                        r2 = th;
                    } else {
                        r2 = obj2;
                    }
                    i19 = R.drawable.placeholder;
                    if (i8 != 0) {
                        numValueOf = Integer.valueOf(R.drawable.placeholder);
                    } else {
                        numValueOf = num2;
                    }
                    if (i10 == 0) {
                        i19 = i11;
                    }
                    if (i14 != 0) {
                        z2 = true;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new dy(27);
                        gapComposerH.q(objX);
                    }
                    function7 = (Function1) objX;
                    if (i17 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new dy(28);
                            gapComposerH.q(objX4);
                        }
                        function8 = (Function1) objX4;
                    } else {
                        function8 = function2;
                    }
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new dy(29);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                    OpaqueKey opaqueKey117 = ComposerKt.f7940a;
                    staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                    context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                    z5 = z2;
                    zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                    if ((i16 & 112) == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX3 = gapComposerH.x();
                    if (z6) {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    } else {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    }
                    imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    contentScale3 = contentScale2;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    modifier4 = dTFunctionNameModifier;
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Object obj1110 = imageLoader$Zoomable$Model.f51525a;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Fit$1 contentScale$Companion$Fit$117 = ContentScale.Companion.f9450c;
                    DrawScope.a0.getClass();
                    int i2118 = DrawScope.Companion.f9008c;
                    AsyncImageState asyncImageState117 = new AsyncImageState(obj1110, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                    MeasurePolicy measurePolicy117 = UtilsKt.f21339a;
                    AsyncImagePainter.y.getClass();
                    u5 u5Var117 = AsyncImagePainter.z;
                    if (function8 == null) {
                        pj0Var = new pj0(function8, function9, 7);
                    } else {
                        pj0Var = new pj0(function8, function9, 7);
                    }
                    AsyncImagePainter asyncImagePainterA117 = AsyncImagePainterKt.a(asyncImageState117, u5Var117, pj0Var, contentScale$Companion$Fit$117, i2118, gapComposerH);
                    gapComposerH = gapComposerH;
                    state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA117.x, gapComposerH).getF10755b();
                    if (state instanceof AsyncImagePainter.State.Empty) {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    } else {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                    contentScale2 = contentScale3;
                    r4 = r2;
                    num3 = numValueOf;
                    function6 = function7;
                    function5 = function9;
                    modifier3 = modifier4;
                } else {
                    gapComposerH.D();
                    function4 = function2;
                    function5 = function3;
                    z4 = z2;
                    i19 = i11;
                    r4 = obj2;
                    num3 = num2;
                    modifier3 = modifier2;
                    function6 = function1;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final ContentScale contentScale1110 = contentScale2;
                    final Function1 function1116 = function4;
                    recomposeScopeImplB0.d = new Function2() { // from class: h20
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj1111, Object obj1112) {
                            ((Integer) obj1112).getClass();
                            ImageLoaderKt.b(modifier3, obj, contentScale1110, r4, num3, i19, z4, function6, function1116, function5, (Composer) obj1111, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i16 = i13 | 905969664;
            if ((i16 & 306783379) == 306783378) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i16 & 1, z3)) {
                if (i20 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i21 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale2 = ContentScale.Companion.d;
                }
                if (i6 != 0) {
                    r2 = th;
                } else {
                    r2 = obj2;
                }
                i19 = R.drawable.placeholder;
                if (i8 != 0) {
                    numValueOf = Integer.valueOf(R.drawable.placeholder);
                } else {
                    numValueOf = num2;
                }
                if (i10 == 0) {
                    i19 = i11;
                }
                if (i14 != 0) {
                    z2 = true;
                }
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new dy(27);
                    gapComposerH.q(objX);
                }
                function7 = (Function1) objX;
                if (i17 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new dy(28);
                        gapComposerH.q(objX4);
                    }
                    function8 = (Function1) objX4;
                } else {
                    function8 = function2;
                }
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new dy(29);
                    gapComposerH.q(objX2);
                }
                function9 = (Function1) objX2;
                OpaqueKey opaqueKey118 = ComposerKt.f7940a;
                staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                z5 = z2;
                zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                if ((i16 & 112) == 32) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objX3 = gapComposerH.x();
                if (z6) {
                    builder = new ImageRequest.Builder(context);
                    if (!zBooleanValue) {
                        if (obj == null) {
                            obj3 = th;
                        } else {
                            obj3 = obj;
                        }
                        PredefinedImageRequestOptions.b(builder, context, obj3);
                    }
                    ImageRequests_androidKt.a(builder, 200);
                    objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                    gapComposerH.q(objX3);
                } else {
                    builder = new ImageRequest.Builder(context);
                    if (!zBooleanValue) {
                        if (obj == null) {
                            obj3 = th;
                        } else {
                            obj3 = obj;
                        }
                        PredefinedImageRequestOptions.b(builder, context, obj3);
                    }
                    ImageRequests_androidKt.a(builder, 200);
                    objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                    gapComposerH.q(objX3);
                }
                imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                contentScale3 = contentScale2;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                modifier4 = dTFunctionNameModifier;
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Object obj1111 = imageLoader$Zoomable$Model.f51525a;
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Fit$1 contentScale$Companion$Fit$118 = ContentScale.Companion.f9450c;
                DrawScope.a0.getClass();
                int i2119 = DrawScope.Companion.f9008c;
                AsyncImageState asyncImageState118 = new AsyncImageState(obj1111, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                MeasurePolicy measurePolicy118 = UtilsKt.f21339a;
                AsyncImagePainter.y.getClass();
                u5 u5Var118 = AsyncImagePainter.z;
                if (function8 == null) {
                    pj0Var = new pj0(function8, function9, 7);
                } else {
                    pj0Var = new pj0(function8, function9, 7);
                }
                AsyncImagePainter asyncImagePainterA118 = AsyncImagePainterKt.a(asyncImageState118, u5Var118, pj0Var, contentScale$Companion$Fit$118, i2119, gapComposerH);
                gapComposerH = gapComposerH;
                state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA118.x, gapComposerH).getF10755b();
                if (state instanceof AsyncImagePainter.State.Empty) {
                    function4 = function8;
                    gapComposerH.L(-246381895);
                    if (numValueOf == null) {
                        gapComposerH.L(-246381896);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-246381895);
                        a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                } else {
                    function4 = function8;
                    gapComposerH.L(-246381895);
                    if (numValueOf == null) {
                        gapComposerH.L(-246381896);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-246381895);
                        a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                z4 = z5;
                contentScale2 = contentScale3;
                r4 = r2;
                num3 = numValueOf;
                function6 = function7;
                function5 = function9;
                modifier3 = modifier4;
            } else {
                gapComposerH.D();
                function4 = function2;
                function5 = function3;
                z4 = z2;
                i19 = i11;
                r4 = obj2;
                num3 = num2;
                modifier3 = modifier2;
                function6 = function1;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final ContentScale contentScale1111 = contentScale2;
                final Function1 function1117 = function4;
                recomposeScopeImplB0.d = new Function2() { // from class: h20
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj1112, Object obj1113) {
                        ((Integer) obj1113).getClass();
                        ImageLoaderKt.b(modifier3, obj, contentScale1111, r4, num3, i19, z4, function6, function1117, function5, (Composer) obj1112, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i5 |= 24576;
        num2 = num;
        i10 = i4 & 32;
        if (i10 != 0) {
            i5 |= ImageMetadata.EDGE_MODE;
            i11 = i2;
            th = null;
        } else {
            i11 = i2;
            th = null;
            if ((i3 & ImageMetadata.EDGE_MODE) == 0) {
                if (gapComposerH.d(i11)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i5 |= i12;
            }
        }
        i13 = i5 | 1572864;
        i14 = i4 & 128;
        if (i14 != 0) {
            if ((12582912 & i3) == 0) {
                z2 = z;
                if (gapComposerH.b(z2)) {
                    i15 = 8388608;
                } else {
                    i15 = 4194304;
                }
                i13 |= i15;
            }
            i16 = i13 | 100663296;
            modifier2 = modifierE;
            i17 = i4 & 512;
            if (i17 != 0) {
                if ((i3 & 805306368) == 0) {
                    if (gapComposerH.y(function2)) {
                        i18 = PKIFailureInfo.duplicateCertReq;
                    } else {
                        i18 = 268435456;
                    }
                    i16 |= i18;
                }
                if ((i16 & 306783379) == 306783378) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (gapComposerH.p(i16 & 1, z3)) {
                    if (i20 != 0) {
                        dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                    } else {
                        dTFunctionNameModifier = modifier2;
                    }
                    if (i21 != 0) {
                        ContentScale.f9447a.getClass();
                        contentScale2 = ContentScale.Companion.d;
                    }
                    if (i6 != 0) {
                        r2 = th;
                    } else {
                        r2 = obj2;
                    }
                    i19 = R.drawable.placeholder;
                    if (i8 != 0) {
                        numValueOf = Integer.valueOf(R.drawable.placeholder);
                    } else {
                        numValueOf = num2;
                    }
                    if (i10 == 0) {
                        i19 = i11;
                    }
                    if (i14 != 0) {
                        z2 = true;
                    }
                    objX = gapComposerH.x();
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (objX == composer$Companion$Empty$1) {
                        objX = new dy(27);
                        gapComposerH.q(objX);
                    }
                    function7 = (Function1) objX;
                    if (i17 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new dy(28);
                            gapComposerH.q(objX4);
                        }
                        function8 = (Function1) objX4;
                    } else {
                        function8 = function2;
                    }
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new dy(29);
                        gapComposerH.q(objX2);
                    }
                    function9 = (Function1) objX2;
                    OpaqueKey opaqueKey119 = ComposerKt.f7940a;
                    staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                    context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                    z5 = z2;
                    zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                    if ((i16 & 112) == 32) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    objX3 = gapComposerH.x();
                    if (z6) {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    } else {
                        builder = new ImageRequest.Builder(context);
                        if (!zBooleanValue) {
                            if (obj == null) {
                                obj3 = th;
                            } else {
                                obj3 = obj;
                            }
                            PredefinedImageRequestOptions.b(builder, context, obj3);
                        }
                        ImageRequests_androidKt.a(builder, 200);
                        objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                        gapComposerH.q(objX3);
                    }
                    imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                    Alignment.f8582a.getClass();
                    measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    contentScale3 = contentScale2;
                    iHashCode = Long.hashCode(gapComposerH.T);
                    persistentCompositionLocalMapU = gapComposerH.U();
                    modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                    ComposeUiNode.b0.getClass();
                    modifier4 = dTFunctionNameModifier;
                    function0 = ComposeUiNode.Companion.f9641b;
                    if (gapComposerH.f7976a != null) {
                        ComposablesKt.b();
                        throw th;
                    }
                    gapComposerH.B();
                    if (gapComposerH.S) {
                        gapComposerH.C(function0);
                    } else {
                        gapComposerH.o();
                    }
                    Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                    Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                    Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                    Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                    Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                    Object obj1112 = imageLoader$Zoomable$Model.f51525a;
                    ContentScale.f9447a.getClass();
                    ContentScale$Companion$Fit$1 contentScale$Companion$Fit$119 = ContentScale.Companion.f9450c;
                    DrawScope.a0.getClass();
                    int i21110 = DrawScope.Companion.f9008c;
                    AsyncImageState asyncImageState119 = new AsyncImageState(obj1112, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                    MeasurePolicy measurePolicy119 = UtilsKt.f21339a;
                    AsyncImagePainter.y.getClass();
                    u5 u5Var119 = AsyncImagePainter.z;
                    if (function8 == null) {
                        pj0Var = new pj0(function8, function9, 7);
                    } else {
                        pj0Var = new pj0(function8, function9, 7);
                    }
                    AsyncImagePainter asyncImagePainterA119 = AsyncImagePainterKt.a(asyncImageState119, u5Var119, pj0Var, contentScale$Companion$Fit$119, i21110, gapComposerH);
                    gapComposerH = gapComposerH;
                    state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA119.x, gapComposerH).getF10755b();
                    if (state instanceof AsyncImagePainter.State.Empty) {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    } else {
                        function4 = function8;
                        gapComposerH.L(-246381895);
                        if (numValueOf == null) {
                            gapComposerH.L(-246381896);
                            gapComposerH.Z(false);
                        } else {
                            gapComposerH.L(-246381895);
                            a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                            gapComposerH.Z(false);
                        }
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(true);
                    z4 = z5;
                    contentScale2 = contentScale3;
                    r4 = r2;
                    num3 = numValueOf;
                    function6 = function7;
                    function5 = function9;
                    modifier3 = modifier4;
                } else {
                    gapComposerH.D();
                    function4 = function2;
                    function5 = function3;
                    z4 = z2;
                    i19 = i11;
                    r4 = obj2;
                    num3 = num2;
                    modifier3 = modifier2;
                    function6 = function1;
                }
                recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final ContentScale contentScale1112 = contentScale2;
                    final Function1 function1118 = function4;
                    recomposeScopeImplB0.d = new Function2() { // from class: h20
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj1113, Object obj1114) {
                            ((Integer) obj1114).getClass();
                            ImageLoaderKt.b(modifier3, obj, contentScale1112, r4, num3, i19, z4, function6, function1118, function5, (Composer) obj1113, RecomposeScopeImplKt.a(i3 | 1), i4);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i16 = i13 | 905969664;
            if ((i16 & 306783379) == 306783378) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i16 & 1, z3)) {
                if (i20 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i21 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale2 = ContentScale.Companion.d;
                }
                if (i6 != 0) {
                    r2 = th;
                } else {
                    r2 = obj2;
                }
                i19 = R.drawable.placeholder;
                if (i8 != 0) {
                    numValueOf = Integer.valueOf(R.drawable.placeholder);
                } else {
                    numValueOf = num2;
                }
                if (i10 == 0) {
                    i19 = i11;
                }
                if (i14 != 0) {
                    z2 = true;
                }
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new dy(27);
                    gapComposerH.q(objX);
                }
                function7 = (Function1) objX;
                if (i17 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new dy(28);
                        gapComposerH.q(objX4);
                    }
                    function8 = (Function1) objX4;
                } else {
                    function8 = function2;
                }
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new dy(29);
                    gapComposerH.q(objX2);
                }
                function9 = (Function1) objX2;
                OpaqueKey opaqueKey1110 = ComposerKt.f7940a;
                staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                z5 = z2;
                zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                if ((i16 & 112) == 32) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objX3 = gapComposerH.x();
                if (z6) {
                    builder = new ImageRequest.Builder(context);
                    if (!zBooleanValue) {
                        if (obj == null) {
                            obj3 = th;
                        } else {
                            obj3 = obj;
                        }
                        PredefinedImageRequestOptions.b(builder, context, obj3);
                    }
                    ImageRequests_androidKt.a(builder, 200);
                    objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                    gapComposerH.q(objX3);
                } else {
                    builder = new ImageRequest.Builder(context);
                    if (!zBooleanValue) {
                        if (obj == null) {
                            obj3 = th;
                        } else {
                            obj3 = obj;
                        }
                        PredefinedImageRequestOptions.b(builder, context, obj3);
                    }
                    ImageRequests_androidKt.a(builder, 200);
                    objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                    gapComposerH.q(objX3);
                }
                imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                contentScale3 = contentScale2;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                modifier4 = dTFunctionNameModifier;
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Object obj1113 = imageLoader$Zoomable$Model.f51525a;
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Fit$1 contentScale$Companion$Fit$1110 = ContentScale.Companion.f9450c;
                DrawScope.a0.getClass();
                int i21111 = DrawScope.Companion.f9008c;
                AsyncImageState asyncImageState1110 = new AsyncImageState(obj1113, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                MeasurePolicy measurePolicy1110 = UtilsKt.f21339a;
                AsyncImagePainter.y.getClass();
                u5 u5Var1110 = AsyncImagePainter.z;
                if (function8 == null) {
                    pj0Var = new pj0(function8, function9, 7);
                } else {
                    pj0Var = new pj0(function8, function9, 7);
                }
                AsyncImagePainter asyncImagePainterA1110 = AsyncImagePainterKt.a(asyncImageState1110, u5Var1110, pj0Var, contentScale$Companion$Fit$1110, i21111, gapComposerH);
                gapComposerH = gapComposerH;
                state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA1110.x, gapComposerH).getF10755b();
                if (state instanceof AsyncImagePainter.State.Empty) {
                    function4 = function8;
                    gapComposerH.L(-246381895);
                    if (numValueOf == null) {
                        gapComposerH.L(-246381896);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-246381895);
                        a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                } else {
                    function4 = function8;
                    gapComposerH.L(-246381895);
                    if (numValueOf == null) {
                        gapComposerH.L(-246381896);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-246381895);
                        a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                z4 = z5;
                contentScale2 = contentScale3;
                r4 = r2;
                num3 = numValueOf;
                function6 = function7;
                function5 = function9;
                modifier3 = modifier4;
            } else {
                gapComposerH.D();
                function4 = function2;
                function5 = function3;
                z4 = z2;
                i19 = i11;
                r4 = obj2;
                num3 = num2;
                modifier3 = modifier2;
                function6 = function1;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final ContentScale contentScale1113 = contentScale2;
                final Function1 function1119 = function4;
                recomposeScopeImplB0.d = new Function2() { // from class: h20
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj1114, Object obj1115) {
                        ((Integer) obj1115).getClass();
                        ImageLoaderKt.b(modifier3, obj, contentScale1113, r4, num3, i19, z4, function6, function1119, function5, (Composer) obj1114, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i13 = i5 | 14155776;
        z2 = z;
        i16 = i13 | 100663296;
        modifier2 = modifierE;
        i17 = i4 & 512;
        if (i17 != 0) {
            if ((i3 & 805306368) == 0) {
                if (gapComposerH.y(function2)) {
                    i18 = PKIFailureInfo.duplicateCertReq;
                } else {
                    i18 = 268435456;
                }
                i16 |= i18;
            }
            if ((i16 & 306783379) == 306783378) {
                z3 = false;
            } else {
                z3 = true;
            }
            if (gapComposerH.p(i16 & 1, z3)) {
                if (i20 != 0) {
                    dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
                } else {
                    dTFunctionNameModifier = modifier2;
                }
                if (i21 != 0) {
                    ContentScale.f9447a.getClass();
                    contentScale2 = ContentScale.Companion.d;
                }
                if (i6 != 0) {
                    r2 = th;
                } else {
                    r2 = obj2;
                }
                i19 = R.drawable.placeholder;
                if (i8 != 0) {
                    numValueOf = Integer.valueOf(R.drawable.placeholder);
                } else {
                    numValueOf = num2;
                }
                if (i10 == 0) {
                    i19 = i11;
                }
                if (i14 != 0) {
                    z2 = true;
                }
                objX = gapComposerH.x();
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (objX == composer$Companion$Empty$1) {
                    objX = new dy(27);
                    gapComposerH.q(objX);
                }
                function7 = (Function1) objX;
                if (i17 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new dy(28);
                        gapComposerH.q(objX4);
                    }
                    function8 = (Function1) objX4;
                } else {
                    function8 = function2;
                }
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new dy(29);
                    gapComposerH.q(objX2);
                }
                function9 = (Function1) objX2;
                OpaqueKey opaqueKey1111 = ComposerKt.f7940a;
                staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                z5 = z2;
                zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
                if ((i16 & 112) == 32) {
                    z6 = true;
                } else {
                    z6 = false;
                }
                objX3 = gapComposerH.x();
                if (z6) {
                    builder = new ImageRequest.Builder(context);
                    if (!zBooleanValue) {
                        if (obj == null) {
                            obj3 = th;
                        } else {
                            obj3 = obj;
                        }
                        PredefinedImageRequestOptions.b(builder, context, obj3);
                    }
                    ImageRequests_androidKt.a(builder, 200);
                    objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                    gapComposerH.q(objX3);
                } else {
                    builder = new ImageRequest.Builder(context);
                    if (!zBooleanValue) {
                        if (obj == null) {
                            obj3 = th;
                        } else {
                            obj3 = obj;
                        }
                        PredefinedImageRequestOptions.b(builder, context, obj3);
                    }
                    ImageRequests_androidKt.a(builder, 200);
                    objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                    gapComposerH.q(objX3);
                }
                imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
                Alignment.f8582a.getClass();
                measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                contentScale3 = contentScale2;
                iHashCode = Long.hashCode(gapComposerH.T);
                persistentCompositionLocalMapU = gapComposerH.U();
                modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
                ComposeUiNode.b0.getClass();
                modifier4 = dTFunctionNameModifier;
                function0 = ComposeUiNode.Companion.f9641b;
                if (gapComposerH.f7976a != null) {
                    ComposablesKt.b();
                    throw th;
                }
                gapComposerH.B();
                if (gapComposerH.S) {
                    gapComposerH.C(function0);
                } else {
                    gapComposerH.o();
                }
                Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
                Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                Object obj1114 = imageLoader$Zoomable$Model.f51525a;
                ContentScale.f9447a.getClass();
                ContentScale$Companion$Fit$1 contentScale$Companion$Fit$1111 = ContentScale.Companion.f9450c;
                DrawScope.a0.getClass();
                int i21112 = DrawScope.Companion.f9008c;
                AsyncImageState asyncImageState1111 = new AsyncImageState(obj1114, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
                MeasurePolicy measurePolicy1111 = UtilsKt.f21339a;
                AsyncImagePainter.y.getClass();
                u5 u5Var1111 = AsyncImagePainter.z;
                if (function8 == null) {
                    pj0Var = new pj0(function8, function9, 7);
                } else {
                    pj0Var = new pj0(function8, function9, 7);
                }
                AsyncImagePainter asyncImagePainterA1111 = AsyncImagePainterKt.a(asyncImageState1111, u5Var1111, pj0Var, contentScale$Companion$Fit$1111, i21112, gapComposerH);
                gapComposerH = gapComposerH;
                state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA1111.x, gapComposerH).getF10755b();
                if (state instanceof AsyncImagePainter.State.Empty) {
                    function4 = function8;
                    gapComposerH.L(-246381895);
                    if (numValueOf == null) {
                        gapComposerH.L(-246381896);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-246381895);
                        a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                } else {
                    function4 = function8;
                    gapComposerH.L(-246381895);
                    if (numValueOf == null) {
                        gapComposerH.L(-246381896);
                        gapComposerH.Z(false);
                    } else {
                        gapComposerH.L(-246381895);
                        a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                        gapComposerH.Z(false);
                    }
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(true);
                z4 = z5;
                contentScale2 = contentScale3;
                r4 = r2;
                num3 = numValueOf;
                function6 = function7;
                function5 = function9;
                modifier3 = modifier4;
            } else {
                gapComposerH.D();
                function4 = function2;
                function5 = function3;
                z4 = z2;
                i19 = i11;
                r4 = obj2;
                num3 = num2;
                modifier3 = modifier2;
                function6 = function1;
            }
            recomposeScopeImplB0 = gapComposerH.b0();
            if (recomposeScopeImplB0 != null) {
                final ContentScale contentScale1114 = contentScale2;
                final Function1 function11110 = function4;
                recomposeScopeImplB0.d = new Function2() { // from class: h20
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj1115, Object obj1116) {
                        ((Integer) obj1116).getClass();
                        ImageLoaderKt.b(modifier3, obj, contentScale1114, r4, num3, i19, z4, function6, function11110, function5, (Composer) obj1115, RecomposeScopeImplKt.a(i3 | 1), i4);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i16 = i13 | 905969664;
        if ((i16 & 306783379) == 306783378) {
            z3 = false;
        } else {
            z3 = true;
        }
        if (gapComposerH.p(i16 & 1, z3)) {
            if (i20 != 0) {
                dTFunctionNameModifier = new DTFunctionNameModifier("ImageLoader-jOlONis");
            } else {
                dTFunctionNameModifier = modifier2;
            }
            if (i21 != 0) {
                ContentScale.f9447a.getClass();
                contentScale2 = ContentScale.Companion.d;
            }
            if (i6 != 0) {
                r2 = th;
            } else {
                r2 = obj2;
            }
            i19 = R.drawable.placeholder;
            if (i8 != 0) {
                numValueOf = Integer.valueOf(R.drawable.placeholder);
            } else {
                numValueOf = num2;
            }
            if (i10 == 0) {
                i19 = i11;
            }
            if (i14 != 0) {
                z2 = true;
            }
            objX = gapComposerH.x();
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new dy(27);
                gapComposerH.q(objX);
            }
            function7 = (Function1) objX;
            if (i17 != 0) {
                objX4 = gapComposerH.x();
                if (objX4 == composer$Companion$Empty$1) {
                    objX4 = new dy(28);
                    gapComposerH.q(objX4);
                }
                function8 = (Function1) objX4;
            } else {
                function8 = function2;
            }
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new dy(29);
                gapComposerH.q(objX2);
            }
            function9 = (Function1) objX2;
            OpaqueKey opaqueKey1112 = ComposerKt.f7940a;
            staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
            context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
            z5 = z2;
            zBooleanValue = ((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue();
            if ((i16 & 112) == 32) {
                z6 = true;
            } else {
                z6 = false;
            }
            objX3 = gapComposerH.x();
            if (z6) {
                builder = new ImageRequest.Builder(context);
                if (!zBooleanValue) {
                    if (obj == null) {
                        obj3 = th;
                    } else {
                        obj3 = obj;
                    }
                    PredefinedImageRequestOptions.b(builder, context, obj3);
                }
                ImageRequests_androidKt.a(builder, 200);
                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                gapComposerH.q(objX3);
            } else {
                builder = new ImageRequest.Builder(context);
                if (!zBooleanValue) {
                    if (obj == null) {
                        obj3 = th;
                    } else {
                        obj3 = obj;
                    }
                    PredefinedImageRequestOptions.b(builder, context, obj3);
                }
                ImageRequests_androidKt.a(builder, 200);
                objX3 = new ImageLoader$Zoomable$Model(builder.a(), r2, contentScale2);
                gapComposerH.q(objX3);
            }
            imageLoader$Zoomable$Model = (ImageLoader$Zoomable$Model) objX3;
            Alignment.f8582a.getClass();
            measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
            contentScale3 = contentScale2;
            iHashCode = Long.hashCode(gapComposerH.T);
            persistentCompositionLocalMapU = gapComposerH.U();
            modifierC = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            ComposeUiNode.b0.getClass();
            modifier4 = dTFunctionNameModifier;
            function0 = ComposeUiNode.Companion.f9641b;
            if (gapComposerH.f7976a != null) {
                ComposablesKt.b();
                throw th;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, measurePolicyD, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
            Object obj1115 = imageLoader$Zoomable$Model.f51525a;
            ContentScale.f9447a.getClass();
            ContentScale$Companion$Fit$1 contentScale$Companion$Fit$1112 = ContentScale.Companion.f9450c;
            DrawScope.a0.getClass();
            int i21113 = DrawScope.Companion.f9008c;
            AsyncImageState asyncImageState1112 = new AsyncImageState(obj1115, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal)));
            MeasurePolicy measurePolicy1112 = UtilsKt.f21339a;
            AsyncImagePainter.y.getClass();
            u5 u5Var1112 = AsyncImagePainter.z;
            if (function8 == null) {
                pj0Var = new pj0(function8, function9, 7);
            } else {
                pj0Var = new pj0(function8, function9, 7);
            }
            AsyncImagePainter asyncImagePainterA1112 = AsyncImagePainterKt.a(asyncImageState1112, u5Var1112, pj0Var, contentScale$Companion$Fit$1112, i21113, gapComposerH);
            gapComposerH = gapComposerH;
            state = (AsyncImagePainter.State) SnapshotStateKt.b(asyncImagePainterA1112.x, gapComposerH).getF10755b();
            if (state instanceof AsyncImagePainter.State.Empty) {
                function4 = function8;
                gapComposerH.L(-246381895);
                if (numValueOf == null) {
                    gapComposerH.L(-246381896);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-246381895);
                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            } else {
                function4 = function8;
                gapComposerH.L(-246381895);
                if (numValueOf == null) {
                    gapComposerH.L(-246381896);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-246381895);
                    a(numValueOf.intValue(), r2, gapComposerH, (i16 >> 6) & 112, 0);
                    gapComposerH.Z(false);
                }
                gapComposerH.Z(false);
            }
            gapComposerH.Z(true);
            z4 = z5;
            contentScale2 = contentScale3;
            r4 = r2;
            num3 = numValueOf;
            function6 = function7;
            function5 = function9;
            modifier3 = modifier4;
        } else {
            gapComposerH.D();
            function4 = function2;
            function5 = function3;
            z4 = z2;
            i19 = i11;
            r4 = obj2;
            num3 = num2;
            modifier3 = modifier2;
            function6 = function1;
        }
        recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            final ContentScale contentScale1115 = contentScale2;
            final Function1 function11111 = function4;
            recomposeScopeImplB0.d = new Function2() { // from class: h20
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj1116, Object obj1117) {
                    ((Integer) obj1117).getClass();
                    ImageLoaderKt.b(modifier3, obj, contentScale1115, r4, num3, i19, z4, function6, function11111, function5, (Composer) obj1116, RecomposeScopeImplKt.a(i3 | 1), i4);
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void c(Modifier modifier, final String str, ContentScale contentScale, int i2, final Function3 function3, final Function3 function4, final Function4 function5, boolean z, Function1 function1, Function1 function2, Function1 function6, Composer composer, final int i3) {
        final ContentScale contentScale2;
        final int i4;
        final Function1 function7;
        final Function1 function8;
        final Function1 function9;
        GapComposer gapComposer;
        final boolean z2;
        Object imageLoader$Zoomable$Model;
        ComposableLambdaImpl composableLambdaImplB;
        ComposableLambdaImpl composableLambdaImplB2;
        boolean z3;
        ComposableLambdaImpl composableLambdaImplB3;
        pj0 pj0Var;
        Function1 function10;
        ComposableLambdaImpl composableLambdaImpl;
        boolean z4;
        boolean z5;
        Function1 function11;
        int i5;
        GapComposer gapComposer2;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "ImageLoaderSubCompose-5r2kJcU");
        }
        GapComposer gapComposerH = composer.h(710062983);
        int i6 = i3 | (gapComposerH.K(modifierE) ? 4 : 2) | (gapComposerH.K(new ImageData(str)) ? 32 : 16) | 905997696;
        int i7 = 0;
        if (gapComposerH.p(i6 & 1, (306783379 & i6) != 306783378)) {
            ContentScale.f9447a.getClass();
            ContentScale$Companion$FillHeight$1 contentScale$Companion$FillHeight$1 = ContentScale.Companion.d;
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$1) {
                objX = new dy(24);
                gapComposerH.q(objX);
            }
            Function1 function12 = (Function1) objX;
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new dy(25);
                gapComposerH.q(objX2);
            }
            Function1 function13 = (Function1) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new dy(26);
                gapComposerH.q(objX3);
            }
            Function1 function14 = (Function1) objX3;
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            if (((Boolean) gapComposerH.k(InspectionModeKt.f10102a)).booleanValue()) {
                gapComposerH.L(773100989);
                Alignment.f8582a.getClass();
                MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                int iHashCode = Long.hashCode(gapComposerH.T);
                PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
                Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierE);
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
                Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
                Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
                Updater.c(gapComposerH, modifierC, ComposeUiNode.Companion.d);
                a(R.drawable.placeholder, null, gapComposerH, 6, 2);
                gapComposerH.Z(true);
                gapComposerH.Z(false);
                function11 = function13;
                modifierE = modifierE;
                gapComposer2 = gapComposerH;
                z5 = true;
                i5 = 200;
            } else {
                gapComposerH.L(773282556);
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = AndroidCompositionLocals_androidKt.f9936b;
                Context context = (Context) gapComposerH.k(staticProvidableCompositionLocal);
                boolean z6 = (i6 & 112) == 32;
                Object objX4 = gapComposerH.x();
                if (z6 || objX4 == composer$Companion$Empty$1) {
                    ImageRequest.Builder builder = new ImageRequest.Builder(context);
                    PredefinedImageRequestOptions.b(builder, context, str);
                    ImageRequests_androidKt.a(builder, 200);
                    imageLoader$Zoomable$Model = new ImageLoader$Zoomable$Model(builder.a(), null, contentScale$Companion$FillHeight$1);
                    gapComposerH.q(imageLoader$Zoomable$Model);
                } else {
                    imageLoader$Zoomable$Model = objX4;
                }
                ImageLoader$Zoomable$Model imageLoader$Zoomable$Model2 = (ImageLoader$Zoomable$Model) imageLoader$Zoomable$Model;
                Modifier modifierO = modifierE.o(SizeKt.f5052c);
                gapComposerH.L(773950947);
                gapComposerH.Z(false);
                Modifier modifierE2 = a.e(modifierO, "ImageLoaderSubCompose-5r2kJcU");
                Object obj = imageLoader$Zoomable$Model2.f51525a;
                String str2 = imageLoader$Zoomable$Model2.f51526b;
                ContentScale contentScale3 = imageLoader$Zoomable$Model2.f51527c;
                if (function3 == null) {
                    gapComposerH.L(774355465);
                    gapComposerH.Z(false);
                    composableLambdaImplB = null;
                } else {
                    gapComposerH.L(774355466);
                    composableLambdaImplB = ComposableLambdaKt.b(-1960538357, new j20(function3, i7), gapComposerH);
                    gapComposerH.Z(false);
                }
                if (function4 == null) {
                    gapComposerH.L(774443195);
                    gapComposerH.Z(false);
                    z3 = false;
                    composableLambdaImplB2 = null;
                } else {
                    gapComposerH.L(774443196);
                    composableLambdaImplB2 = ComposableLambdaKt.b(-221253916, new cf(str, function4, 3), gapComposerH);
                    z3 = false;
                    gapComposerH.Z(false);
                }
                if (function5 == null) {
                    gapComposerH.L(774785869);
                    gapComposerH.Z(z3);
                    composableLambdaImplB3 = null;
                } else {
                    gapComposerH.L(774785870);
                    composableLambdaImplB3 = ComposableLambdaKt.b(-891433414, new cf(function5, context, 4), gapComposerH);
                    z3 = false;
                    gapComposerH.Z(false);
                }
                if (modifierE2 != null) {
                    modifierE2 = a.e(modifierE2, "SubcomposeAsyncImage-nc27qi8");
                }
                AsyncImagePainter.y.getClass();
                u5 u5Var = AsyncImagePainter.z;
                Alignment.f8582a.getClass();
                BiasAlignment biasAlignment = Alignment.Companion.f8587f;
                DrawScope.a0.getClass();
                boolean z7 = z3;
                int i8 = DrawScope.Companion.f9008c;
                ImageLoader imageLoaderA = SingletonImageLoader.a((Context) gapComposerH.k(staticProvidableCompositionLocal));
                if (modifierE2 != null) {
                    modifierE2 = a.e(modifierE2, "SubcomposeAsyncImage-MokUVwQ");
                }
                Modifier modifier2 = modifierE2;
                AsyncImageState asyncImageState = new AsyncImageState(obj, (AsyncImageModelEqualityDelegate) gapComposerH.k(LocalAsyncImageModelEqualityDelegateKt.f21308a), imageLoaderA);
                MeasurePolicy measurePolicy = UtilsKt.f21339a;
                if (function13 == null && function14 == null) {
                    function10 = function13;
                    pj0Var = null;
                } else {
                    function10 = function13;
                    pj0Var = new pj0(function10, function14, 7);
                }
                if (composableLambdaImplB == null && composableLambdaImplB3 == null && composableLambdaImplB2 == null) {
                    ComposableSingletons$SubcomposeAsyncImageKt.f21295a.getClass();
                    composableLambdaImpl = ComposableSingletons$SubcomposeAsyncImageKt.f21296b;
                    z4 = true;
                } else {
                    yj0 yj0Var = new yj0(composableLambdaImplB, composableLambdaImplB3, composableLambdaImplB2, 12);
                    z4 = true;
                    composableLambdaImpl = new ComposableLambdaImpl(-1106738291, true, yj0Var);
                }
                z5 = z4;
                function11 = function10;
                i5 = 200;
                SubcomposeAsyncImageKt.a(asyncImageState, str2, modifier2, u5Var, pj0Var, biasAlignment, contentScale3, i8, composableLambdaImpl, gapComposerH, 0, 0);
                gapComposer2 = gapComposerH;
                gapComposer2.Z(z7);
            }
            contentScale2 = contentScale$Companion$FillHeight$1;
            function8 = function11;
            function9 = function14;
            gapComposer = gapComposer2;
            function7 = function12;
            z2 = z5;
            i4 = i5;
        } else {
            modifierE = modifierE;
            gapComposerH.D();
            contentScale2 = contentScale;
            i4 = i2;
            function7 = function1;
            function8 = function2;
            function9 = function6;
            gapComposer = gapComposerH;
            z2 = z;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Modifier modifier3 = modifierE;
            recomposeScopeImplB0.d = new Function2(str, contentScale2, i4, function3, function4, function5, z2, function7, function8, function9, i3) { // from class: k20

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ String f71529c;
                public final /* synthetic */ ContentScale d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ int f71530e;

                /* JADX INFO: renamed from: f, reason: collision with root package name */
                public final /* synthetic */ Function3 f71531f;
                public final /* synthetic */ Function3 g;

                /* JADX INFO: renamed from: h, reason: collision with root package name */
                public final /* synthetic */ Function4 f71532h;

                /* JADX INFO: renamed from: i, reason: collision with root package name */
                public final /* synthetic */ boolean f71533i;

                /* JADX INFO: renamed from: j, reason: collision with root package name */
                public final /* synthetic */ Function1 f71534j;

                /* JADX INFO: renamed from: k, reason: collision with root package name */
                public final /* synthetic */ Function1 f71535k;
                public final /* synthetic */ Function1 l;

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iA = RecomposeScopeImplKt.a(14352385);
                    ImageLoaderKt.c(this.f71528b, this.f71529c, this.d, this.f71530e, this.f71531f, this.g, this.f71532h, this.f71533i, this.f71534j, this.f71535k, this.l, (Composer) obj2, iA);
                    return Unit.f71739a;
                }
            };
        }
    }
}
