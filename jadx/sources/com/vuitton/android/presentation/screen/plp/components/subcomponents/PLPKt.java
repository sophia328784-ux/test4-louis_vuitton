package com.vuitton.android.presentation.screen.plp.components.subcomponents;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.foundation.lazy.LazyListStateKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.AlphaKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.unit.Dp;
import androidx.paging.LoadState;
import androidx.paging.compose.LazyPagingItems;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.compose.NestedScroll;
import com.vuitton.android.presentation.compose.components.ScrollProgressTrackerKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.screen.catalog.thematicplp.models.GridModes;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ComposableSingletons$PLPItemsKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.ComposableSingletons$PLPKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPItemsKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPKt;
import com.vuitton.android.presentation.screen.plp.components.subcomponents.PLPSkeletonKt;
import com.vuitton.android.presentation.screen.plp.models.FocusedProductUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import defpackage.aj0;
import defpackage.ee0;
import defpackage.fj0;
import defpackage.ii0;
import defpackage.of0;
import defpackage.v40;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.rtccloud.sdk.Call;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003¨\u0006\u0003²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\u000e\u0010\u0002\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002"}, d2 = {"Landroidx/compose/ui/unit/Dp;", "headerHeight", "availableHeight", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class PLPKt {
    /* JADX WARN: Code duplicated, block: B:102:0x017b  */
    /* JADX WARN: Code duplicated, block: B:104:0x0181  */
    /* JADX WARN: Code duplicated, block: B:108:0x018b  */
    /* JADX WARN: Code duplicated, block: B:111:0x0199  */
    /* JADX WARN: Code duplicated, block: B:112:0x019c  */
    /* JADX WARN: Code duplicated, block: B:115:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:116:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:118:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:122:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:125:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:127:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:129:0x01d4  */
    /* JADX WARN: Code duplicated, block: B:133:0x01df  */
    /* JADX WARN: Code duplicated, block: B:134:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:136:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:138:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:139:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:141:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:144:0x0200  */
    /* JADX WARN: Code duplicated, block: B:145:0x0205  */
    /* JADX WARN: Code duplicated, block: B:147:0x020d  */
    /* JADX WARN: Code duplicated, block: B:148:0x0210  */
    /* JADX WARN: Code duplicated, block: B:152:0x021e  */
    /* JADX WARN: Code duplicated, block: B:158:0x022b  */
    /* JADX WARN: Code duplicated, block: B:162:0x0236  */
    /* JADX WARN: Code duplicated, block: B:164:0x0242  */
    /* JADX WARN: Code duplicated, block: B:174:0x0275  */
    /* JADX WARN: Code duplicated, block: B:176:0x0279  */
    /* JADX WARN: Code duplicated, block: B:178:0x0281  */
    /* JADX WARN: Code duplicated, block: B:179:0x0284  */
    /* JADX WARN: Code duplicated, block: B:181:0x028c  */
    /* JADX WARN: Code duplicated, block: B:183:0x0291  */
    /* JADX WARN: Code duplicated, block: B:186:0x0297  */
    /* JADX WARN: Code duplicated, block: B:188:0x029a  */
    /* JADX WARN: Code duplicated, block: B:18:0x005d  */
    /* JADX WARN: Code duplicated, block: B:190:0x029d  */
    /* JADX WARN: Code duplicated, block: B:191:0x029f  */
    /* JADX WARN: Code duplicated, block: B:193:0x02a3  */
    /* JADX WARN: Code duplicated, block: B:194:0x02a5  */
    /* JADX WARN: Code duplicated, block: B:197:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:198:0x02b7  */
    /* JADX WARN: Code duplicated, block: B:19:0x0060  */
    /* JADX WARN: Code duplicated, block: B:200:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:202:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:203:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:205:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:207:0x02db  */
    /* JADX WARN: Code duplicated, block: B:208:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:210:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:211:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:213:0x02e8  */
    /* JADX WARN: Code duplicated, block: B:214:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:217:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:219:0x02f6  */
    /* JADX WARN: Code duplicated, block: B:220:0x0303  */
    /* JADX WARN: Code duplicated, block: B:222:0x0308  */
    /* JADX WARN: Code duplicated, block: B:224:0x030e  */
    /* JADX WARN: Code duplicated, block: B:226:0x0314  */
    /* JADX WARN: Code duplicated, block: B:227:0x0321  */
    /* JADX WARN: Code duplicated, block: B:229:0x0328  */
    /* JADX WARN: Code duplicated, block: B:22:0x006a  */
    /* JADX WARN: Code duplicated, block: B:231:0x0330  */
    /* JADX WARN: Code duplicated, block: B:233:0x0336  */
    /* JADX WARN: Code duplicated, block: B:234:0x0343  */
    /* JADX WARN: Code duplicated, block: B:236:0x0348  */
    /* JADX WARN: Code duplicated, block: B:238:0x034e  */
    /* JADX WARN: Code duplicated, block: B:23:0x006f  */
    /* JADX WARN: Code duplicated, block: B:240:0x0354  */
    /* JADX WARN: Code duplicated, block: B:241:0x0361  */
    /* JADX WARN: Code duplicated, block: B:244:0x037d  */
    /* JADX WARN: Code duplicated, block: B:247:0x039e  */
    /* JADX WARN: Code duplicated, block: B:248:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:251:0x03a7 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:252:0x03a9  */
    /* JADX WARN: Code duplicated, block: B:255:0x03ca  */
    /* JADX WARN: Code duplicated, block: B:256:0x03fe  */
    /* JADX WARN: Code duplicated, block: B:259:0x0412  */
    /* JADX WARN: Code duplicated, block: B:25:0x0077  */
    /* JADX WARN: Code duplicated, block: B:260:0x0420  */
    /* JADX WARN: Code duplicated, block: B:263:0x0429  */
    /* JADX WARN: Code duplicated, block: B:264:0x0439  */
    /* JADX WARN: Code duplicated, block: B:267:0x0461  */
    /* JADX WARN: Code duplicated, block: B:268:0x0463  */
    /* JADX WARN: Code duplicated, block: B:26:0x007a  */
    /* JADX WARN: Code duplicated, block: B:271:0x046c  */
    /* JADX WARN: Code duplicated, block: B:275:0x0475  */
    /* JADX WARN: Code duplicated, block: B:278:0x0481  */
    /* JADX WARN: Code duplicated, block: B:279:0x0483  */
    /* JADX WARN: Code duplicated, block: B:282:0x048e  */
    /* JADX WARN: Code duplicated, block: B:283:0x0490  */
    /* JADX WARN: Code duplicated, block: B:286:0x0498  */
    /* JADX WARN: Code duplicated, block: B:287:0x049a  */
    /* JADX WARN: Code duplicated, block: B:290:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:291:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:294:0x04b1  */
    /* JADX WARN: Code duplicated, block: B:295:0x04b3  */
    /* JADX WARN: Code duplicated, block: B:298:0x04c0  */
    /* JADX WARN: Code duplicated, block: B:299:0x04c2  */
    /* JADX WARN: Code duplicated, block: B:302:0x04ce  */
    /* JADX WARN: Code duplicated, block: B:303:0x04d1  */
    /* JADX WARN: Code duplicated, block: B:306:0x04df  */
    /* JADX WARN: Code duplicated, block: B:307:0x04e1  */
    /* JADX WARN: Code duplicated, block: B:30:0x0084  */
    /* JADX WARN: Code duplicated, block: B:310:0x04ec  */
    /* JADX WARN: Code duplicated, block: B:311:0x04ee  */
    /* JADX WARN: Code duplicated, block: B:314:0x04fe  */
    /* JADX WARN: Code duplicated, block: B:315:0x0500  */
    /* JADX WARN: Code duplicated, block: B:318:0x0509 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:31:0x008b  */
    /* JADX WARN: Code duplicated, block: B:321:0x052f  */
    /* JADX WARN: Code duplicated, block: B:324:0x0590  */
    /* JADX WARN: Code duplicated, block: B:325:0x059e  */
    /* JADX WARN: Code duplicated, block: B:327:0x05bb  */
    /* JADX WARN: Code duplicated, block: B:330:0x05c3  */
    /* JADX WARN: Code duplicated, block: B:333:0x05ca  */
    /* JADX WARN: Code duplicated, block: B:334:0x05cc  */
    /* JADX WARN: Code duplicated, block: B:337:0x05d3  */
    /* JADX WARN: Code duplicated, block: B:33:0x0093  */
    /* JADX WARN: Code duplicated, block: B:340:0x05d8  */
    /* JADX WARN: Code duplicated, block: B:341:0x05db  */
    /* JADX WARN: Code duplicated, block: B:345:0x05ed  */
    /* JADX WARN: Code duplicated, block: B:346:0x05ef  */
    /* JADX WARN: Code duplicated, block: B:349:0x05f6  */
    /* JADX WARN: Code duplicated, block: B:34:0x0096  */
    /* JADX WARN: Code duplicated, block: B:350:0x05f8  */
    /* JADX WARN: Code duplicated, block: B:353:0x0605 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:356:0x060c  */
    /* JADX WARN: Code duplicated, block: B:359:0x061c  */
    /* JADX WARN: Code duplicated, block: B:361:0x0624  */
    /* JADX WARN: Code duplicated, block: B:363:0x0628  */
    /* JADX WARN: Code duplicated, block: B:364:0x062a  */
    /* JADX WARN: Code duplicated, block: B:367:0x0637 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:368:0x0639  */
    /* JADX WARN: Code duplicated, block: B:371:0x0647  */
    /* JADX WARN: Code duplicated, block: B:373:0x064d  */
    /* JADX WARN: Code duplicated, block: B:375:0x0651  */
    /* JADX WARN: Code duplicated, block: B:376:0x0654  */
    /* JADX WARN: Code duplicated, block: B:379:0x0663 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:380:0x0665  */
    /* JADX WARN: Code duplicated, block: B:383:0x069b  */
    /* JADX WARN: Code duplicated, block: B:386:0x06c4  */
    /* JADX WARN: Code duplicated, block: B:388:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:38:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:49:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:50:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:53:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:57:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:61:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:67:0x0106  */
    /* JADX WARN: Code duplicated, block: B:68:0x010d  */
    /* JADX WARN: Code duplicated, block: B:70:0x0117  */
    /* JADX WARN: Code duplicated, block: B:71:0x011a  */
    /* JADX WARN: Code duplicated, block: B:75:0x0124  */
    /* JADX WARN: Code duplicated, block: B:77:0x0129  */
    /* JADX WARN: Code duplicated, block: B:79:0x0131  */
    /* JADX WARN: Code duplicated, block: B:80:0x0134  */
    /* JADX WARN: Code duplicated, block: B:84:0x013d  */
    /* JADX WARN: Code duplicated, block: B:85:0x0140  */
    /* JADX WARN: Code duplicated, block: B:87:0x014a  */
    /* JADX WARN: Code duplicated, block: B:88:0x014d  */
    /* JADX WARN: Code duplicated, block: B:92:0x0159  */
    /* JADX WARN: Code duplicated, block: B:93:0x0160  */
    /* JADX WARN: Code duplicated, block: B:95:0x0166  */
    /* JADX WARN: Code duplicated, block: B:97:0x016e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0173  */
    public static final void a(Modifier modifier, final GridModes gridModes, float f2, final Integer num, boolean z, boolean z2, boolean z3, final LazyPagingItems lazyPagingItems, FocusedProductUiModel focusedProductUiModel, LazyListState lazyListState, Function0 function0, Function1 function1, Function1 function2, Function1 function3, final Function1 function4, final Function1 function5, final Function1 function6, Function2 function7, final Function2 function8, Function1 function9, Function1 function10, Function1 function11, Composer composer, final int i2, final int i3, final int i4, final int i5) {
        float f3;
        int i6;
        int i7;
        int i8;
        boolean z4;
        int i9;
        int i10;
        int i11;
        boolean z5;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        int i40;
        int i41;
        int i42;
        int i43;
        int i44;
        int i45;
        int i46;
        int i47;
        int i48;
        int i49;
        int i50;
        boolean z6;
        final Function1 function12;
        Function2 function13;
        final boolean z7;
        final FocusedProductUiModel focusedProductUiModel2;
        final LazyListState lazyListState2;
        final Function0 function14;
        final Function2 function15;
        final Function1 function16;
        final Function1 function17;
        final Function1 function18;
        final float f4;
        final boolean z8;
        GapComposer gapComposer;
        final boolean z9;
        final Function1 function19;
        final Function1 function20;
        final Function1 function21;
        RecomposeScopeImpl recomposeScopeImplB0;
        int i51;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean z10;
        FocusedProductUiModel focusedProductUiModel3;
        LazyListState lazyListStateA;
        Function0 function22;
        Function1 function23;
        Function1 function24;
        Function1 function25;
        Function2 function26;
        Function1 function27;
        Function1 function28;
        Function1 function29;
        Function1 function30;
        int i52;
        float f5;
        boolean z11;
        boolean z12;
        final boolean z13;
        LazyListState lazyListState3;
        Function1 function31;
        Function1 function32;
        Function0 function33;
        Object objX;
        Object objX2;
        Object objX3;
        Object objX4;
        Object objX5;
        float f6;
        boolean z14;
        final float f7;
        boolean z15;
        LazyListState lazyListState4;
        boolean z16;
        Object objX6;
        Function1 function34;
        LazyListState lazyListState5;
        Object objX7;
        final MutableState mutableState;
        Object objX8;
        final MutableState mutableState2;
        boolean z17;
        boolean z18;
        boolean z19;
        boolean z20;
        boolean z21;
        int i53;
        boolean z22;
        boolean z23;
        boolean z24;
        int i54;
        boolean z25;
        boolean z26;
        boolean z27;
        boolean z28;
        boolean z29;
        Object obj;
        String str;
        final boolean z30;
        final boolean z31;
        Function1 function35;
        Function2 function36;
        Function1 function37;
        Function1 function38;
        Function1 function39;
        GapComposer gapComposer2;
        final FocusedProductUiModel focusedProductUiModel4;
        AssetUiModel assetUiModel;
        String str2;
        int i55;
        boolean z32;
        Object objX9;
        Composer$Companion$Empty$1 composer$Companion$Empty$2;
        final Function0 function40;
        boolean z33;
        boolean z34;
        boolean zY;
        Object objX10;
        boolean z35;
        boolean z36;
        boolean zY2;
        Object objX11;
        boolean z37;
        boolean z38;
        boolean zY3;
        Object objX12;
        AssetImageUiModel assetImageUiModel;
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = defpackage.a.e(modifierE, "PLP");
        }
        gridModes.getClass();
        lazyPagingItems.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function8.getClass();
        GapComposer gapComposerH = composer.h(-2021318030);
        int i56 = i2 | (gapComposerH.K(modifierE) ? 4 : 2);
        if ((i5 & 4) == 0) {
            f3 = f2;
            int i57 = gapComposerH.c(f3) ? 256 : 128;
            int i58 = i56 | i57;
            if (gapComposerH.K(num)) {
                i6 = 2048;
            } else {
                i6 = 1024;
            }
            i7 = i58 | i6;
            i8 = i5 & 16;
            if (i8 != 0) {
                i10 = i7 | 24576;
                z4 = z;
            } else {
                z4 = z;
                if (gapComposerH.b(z4)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i10 = i7 | i9;
            }
            i11 = i5 & 32;
            if (i11 != 0) {
                i13 = i10 | ImageMetadata.EDGE_MODE;
                z5 = z2;
            } else {
                z5 = z2;
                if (gapComposerH.b(z5)) {
                    i12 = 131072;
                } else {
                    i12 = 65536;
                }
                i13 = i10 | i12;
            }
            i14 = i5 & 64;
            if (i14 != 0) {
                if ((i2 & 1572864) == 0) {
                    i15 = 1048576;
                    if (gapComposerH.b(z3)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i13 |= i16;
                }
                if (gapComposerH.y(lazyPagingItems)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
                i18 = i13 | i17;
                i19 = i5 & 256;
                if (i19 != 0) {
                    i21 = i18 | 100663296;
                } else {
                    if (gapComposerH.y(focusedProductUiModel)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i21 = i18 | i20;
                }
                if ((i5 & 512) == 0 || !gapComposerH.K(lazyListState)) {
                    i22 = 268435456;
                } else {
                    i22 = PKIFailureInfo.duplicateCertReq;
                }
                i23 = i21 | i22;
                i24 = i5 & 1024;
                if (i24 != 0) {
                    i26 = i3 | 6;
                } else {
                    if (gapComposerH.y(function0)) {
                        i25 = 4;
                    } else {
                        i25 = 2;
                    }
                    i26 = i3 | i25;
                }
                i27 = i5 & 2048;
                if (i27 != 0) {
                    i29 = i26 | 48;
                } else {
                    if (gapComposerH.y(function1)) {
                        i28 = 32;
                    } else {
                        i28 = 16;
                    }
                    i29 = i26 | i28;
                }
                i30 = i29;
                i31 = i5 & 4096;
                if (i31 != 0) {
                    i33 = i30 | KyberEngine.KyberPolyBytes;
                } else {
                    if (gapComposerH.y(function2)) {
                        i32 = 256;
                    } else {
                        i32 = 128;
                    }
                    i33 = i30 | i32;
                }
                i34 = i5 & 8192;
                if (i34 != 0) {
                    i36 = i33 | 3072;
                } else {
                    i35 = i33;
                    if ((i3 & 3072) == 0) {
                        i36 = i35 | (gapComposerH.y(function3) ? 2048 : 1024);
                    } else {
                        i36 = i35;
                    }
                }
                if ((i3 & 24576) == 0) {
                    i36 |= gapComposerH.y(function4) ? 16384 : 8192;
                }
                int i59 = i36 | (gapComposerH.y(function5) ? 131072 : 65536);
                if (gapComposerH.y(function6)) {
                    i37 = i15;
                } else {
                    i37 = 524288;
                }
                i38 = i59 | i37;
                i39 = i5 & 131072;
                if (i39 != 0) {
                    i40 = i38 | 12582912;
                } else {
                    i40 = i38 | (gapComposerH.y(function7) ? 8388608 : 4194304);
                }
                i41 = i40 | (gapComposerH.y(function8) ? 67108864 : 33554432);
                i42 = i5 & 524288;
                if (i42 != 0) {
                    i43 = i41 | 805306368;
                } else {
                    i43 = i41 | (gapComposerH.y(function9) ? PKIFailureInfo.duplicateCertReq : 268435456);
                }
                i44 = i43;
                i45 = i5 & i15;
                if (i45 != 0) {
                    i46 = 6;
                } else if ((i4 & 6) == 0) {
                    if (gapComposerH.y(function10)) {
                        i47 = 4;
                    } else {
                        i47 = 2;
                    }
                    i46 = i4 | i47;
                } else {
                    i46 = i4;
                }
                i48 = i5 & PKIFailureInfo.badSenderNonce;
                if (i48 != 0) {
                    i50 = i46 | 48;
                } else {
                    if (gapComposerH.y(function11)) {
                        i49 = 32;
                    } else {
                        i49 = 16;
                    }
                    i50 = i46 | i49;
                }
                if ((i23 & 306783379) != 306783378 && (i44 & 306783379) == 306783378) {
                    if ((i50 & 19) == 18) {
                        z6 = false;
                    }
                    if (gapComposerH.p(i23 & 1, z6)) {
                        gapComposerH.y0();
                        i51 = i2 & 1;
                        composer$Companion$Empty$1 = Composer.Companion.f7939a;
                        if (i51 != 0 || gapComposerH.h0()) {
                            if ((i5 & 4) != 0) {
                                if (gridModes.equals(GridModes.Full.f55430b)) {
                                    f6 = 1.0f;
                                } else {
                                    if (!gridModes.equals(GridModes.Reduced.f55431b)) {
                                        v40.g();
                                        return;
                                    }
                                    f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                                }
                                i23 &= -897;
                                f3 = f6;
                            }
                            if (i8 != 0) {
                                z4 = true;
                            }
                            if (i11 != 0) {
                                z5 = false;
                            }
                            if (i14 != 0) {
                                z10 = true;
                            } else {
                                z10 = z3;
                            }
                            if (i19 != 0) {
                                focusedProductUiModel3 = null;
                            } else {
                                focusedProductUiModel3 = focusedProductUiModel;
                            }
                            if ((i5 & 512) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                                i23 &= -1879048193;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i24 != 0) {
                                objX5 = gapComposerH.x();
                                if (objX5 == composer$Companion$Empty$1) {
                                    objX5 = new ii0(16);
                                    gapComposerH.q(objX5);
                                }
                                function22 = (Function0) objX5;
                            } else {
                                lazyListStateA = lazyListStateA;
                                function22 = function0;
                            }
                            if (i27 != 0) {
                                function23 = null;
                            } else {
                                function23 = function1;
                            }
                            if (i31 != 0) {
                                function24 = null;
                            } else {
                                function24 = function2;
                            }
                            if (i34 != 0) {
                                function25 = null;
                            } else {
                                function25 = function3;
                            }
                            Function0 function41 = function22;
                            if (i39 != 0) {
                                objX4 = gapComposerH.x();
                                if (objX4 == composer$Companion$Empty$1) {
                                    objX4 = new aj0(10);
                                    gapComposerH.q(objX4);
                                }
                                function26 = (Function2) objX4;
                            } else {
                                function23 = function23;
                                function26 = function7;
                            }
                            if (i42 != 0) {
                                objX3 = gapComposerH.x();
                                if (objX3 == composer$Companion$Empty$1) {
                                    objX3 = new fj0(24);
                                    gapComposerH.q(objX3);
                                }
                                function27 = (Function1) objX3;
                            } else {
                                function26 = function26;
                                function27 = function9;
                            }
                            if (i45 != 0) {
                                objX2 = gapComposerH.x();
                                if (objX2 == composer$Companion$Empty$1) {
                                    objX2 = new fj0(25);
                                    gapComposerH.q(objX2);
                                }
                                function28 = (Function1) objX2;
                            } else {
                                function27 = function27;
                                function28 = function10;
                            }
                            if (i48 != 0) {
                                objX = gapComposerH.x();
                                if (objX == composer$Companion$Empty$1) {
                                    objX = new fj0(26);
                                    gapComposerH.q(objX);
                                }
                                function29 = function28;
                                function30 = (Function1) objX;
                            } else {
                                function29 = function28;
                                function30 = function11;
                            }
                            i52 = i23;
                            f5 = f3;
                            z11 = z4;
                            z12 = z5;
                            z13 = z10;
                            lazyListState3 = lazyListStateA;
                            function31 = function23;
                            function32 = function25;
                            function33 = function41;
                        } else {
                            gapComposerH.D();
                            if ((i5 & 4) != 0) {
                                i23 &= -897;
                            }
                            if ((i5 & 512) != 0) {
                                i23 &= -1879048193;
                            }
                            focusedProductUiModel3 = focusedProductUiModel;
                            function33 = function0;
                            function24 = function2;
                            function26 = function7;
                            function27 = function9;
                            function29 = function10;
                            function30 = function11;
                            i52 = i23;
                            f5 = f3;
                            z11 = z4;
                            z12 = z5;
                            z13 = z3;
                            lazyListState3 = lazyListState;
                            function31 = function1;
                            function32 = function3;
                        }
                        gapComposerH.a0();
                        OpaqueKey opaqueKey = ComposerKt.f7940a;
                        z14 = z12;
                        f7 = LVAppDesignKitTheme.l(gapComposerH).m;
                        z15 = z11;
                        lazyListState4 = lazyListState3;
                        if ((i50 & 14) == 4) {
                            z16 = true;
                        } else {
                            z16 = false;
                        }
                        objX6 = gapComposerH.x();
                        if (z16 || objX6 == composer$Companion$Empty$1) {
                            objX6 = new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, function29, null, 5, null);
                            gapComposerH.q(objX6);
                        }
                        NestedScroll nestedScroll = (NestedScroll) objX6;
                        if (num != null) {
                            gapComposerH.L(-1642483568);
                            Function1 function42 = function30;
                            ScrollProgressTrackerKt.a(lazyListState4, num.intValue(), gridModes.f55429a, function42, gapComposerH, ((i52 >> 27) & 14) | ((i52 >> 6) & 112) | ((i50 << 6) & 7168));
                            lazyListState5 = lazyListState4;
                            function34 = function42;
                            gapComposerH.Z(false);
                        } else {
                            function34 = function30;
                            lazyListState5 = lazyListState4;
                            gapComposerH.L(-1642237552);
                            gapComposerH.Z(false);
                        }
                        objX7 = gapComposerH.x();
                        if (objX7 == composer$Companion$Empty$1) {
                            objX7 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                            gapComposerH.q(objX7);
                        }
                        mutableState = (MutableState) objX7;
                        objX8 = gapComposerH.x();
                        if (objX8 == composer$Companion$Empty$1) {
                            objX8 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                            gapComposerH.q(objX8);
                        }
                        mutableState2 = (MutableState) objX8;
                        Modifier modifierA = AlphaKt.a(NestedScrollModifierKt.a(modifierE.o(SizeKt.f5052c), nestedScroll, null), f5);
                        PaddingValuesImpl paddingValuesImplE = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                        if ((i44 & 112) == 32) {
                            z17 = true;
                        } else {
                            z17 = false;
                        }
                        if ((i52 & 29360128) != 8388608 || gapComposerH.y(lazyPagingItems)) {
                            z18 = true;
                        } else {
                            z18 = false;
                        }
                        boolean z39 = z17 | z18;
                        if ((i52 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                            z19 = true;
                        } else {
                            z19 = false;
                        }
                        boolean z40 = z39 | z19;
                        if ((i52 & 57344) == 16384) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        boolean z41 = z40 | z20;
                        if ((i44 & 7168) == 2048) {
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        boolean z42 = z41 | z21;
                        i53 = i44 & ImageMetadata.JPEG_GPS_COORDINATES;
                        if (i53 == 131072) {
                            z22 = true;
                        } else {
                            z22 = false;
                        }
                        boolean z43 = z42 | z22;
                        if ((i44 & 29360128) == 8388608) {
                            z23 = true;
                        } else {
                            z23 = false;
                        }
                        boolean z44 = z43 | z23;
                        if ((i44 & 3670016) == i15) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                        boolean z45 = z44 | z24;
                        i54 = 234881024 & i44;
                        if (i54 == 67108864) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        boolean z46 = z45 | z25;
                        float f8 = f5;
                        if ((i44 & 1879048192) == 536870912) {
                            z26 = true;
                        } else {
                            z26 = false;
                        }
                        boolean z47 = z46 | z26;
                        if ((i52 & 3670016) == 1048576) {
                            z27 = true;
                        } else {
                            z27 = false;
                        }
                        boolean zC = z47 | z27 | gapComposerH.c(f7);
                        if ((i44 & 896) == 256) {
                            z28 = true;
                        } else {
                            z28 = false;
                        }
                        z29 = zC | z28;
                        Object objX13 = gapComposerH.x();
                        if (!z29 || objX13 == composer$Companion$Empty$1) {
                            final Function1 function43 = function31;
                            final Function1 function44 = function32;
                            final Function2 function45 = function26;
                            final Function1 function46 = function27;
                            final Function1 function47 = function24;
                            str = null;
                            z30 = z14;
                            z31 = z15;
                            obj = new Function1() { // from class: nk0
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj2) {
                                    LazyListScope lazyListScope = (LazyListScope) obj2;
                                    lazyListScope.getClass();
                                    Function1 function48 = function43;
                                    if (function48 != null) {
                                        function48.invoke(lazyListScope);
                                    }
                                    LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                                    boolean z48 = lazyPagingItems2.d().f18562a instanceof LoadState.Error;
                                    boolean z49 = z30;
                                    if ((z48 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Error) && lazyPagingItems2.b() == 0)) && (lazyPagingItems2.b() == 0 || z49)) {
                                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1689706375, true, new td(((Dp) mutableState2.getF10755b()).f11006b - ((Dp) mutableState.getF10755b()).f11006b, 5)), 3);
                                    } else {
                                        boolean z50 = lazyPagingItems2.d().f18562a instanceof LoadState.Loading;
                                        GridModes gridModes2 = gridModes;
                                        if ((z50 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Loading) && lazyPagingItems2.b() == 0)) && z31 && (lazyPagingItems2.b() == 0 || z49)) {
                                            PLPSkeletonKt.d(lazyListScope, gridModes2);
                                        } else {
                                            Function1 function49 = function44;
                                            if (function49 == null || lazyPagingItems2.b() != 0) {
                                                PLPItemsKt.d(lazyListScope, gridModes2, lazyPagingItems2, function5, function45, function6, function8, function46);
                                                if (lazyPagingItems2.d().f18564c instanceof LoadState.Loading) {
                                                    ComposableSingletons$PLPItemsKt.f62810a.getClass();
                                                    LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPItemsKt.f62811b, 3);
                                                }
                                                if (z13 && (lazyPagingItems2.d().f18564c instanceof LoadState.NotLoading)) {
                                                    LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1598249487, true, new td(f7, 6)), 3);
                                                }
                                                Function1 function50 = function47;
                                                if (function50 != null) {
                                                    function50.invoke(lazyListScope);
                                                } else {
                                                    ComposableSingletons$PLPKt.f62813a.getClass();
                                                    LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPKt.f62814b, 3);
                                                }
                                            } else {
                                                function49.invoke(lazyListScope);
                                            }
                                        }
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            function35 = function44;
                            function36 = function45;
                            function37 = function46;
                            function38 = function47;
                            gapComposerH = gapComposerH;
                            function39 = function43;
                            function12 = function5;
                            gapComposerH.q(obj);
                        } else {
                            z30 = z14;
                            z31 = z15;
                            obj = objX13;
                            function39 = function31;
                            function35 = function32;
                            function36 = function26;
                            function37 = function27;
                            function38 = function24;
                            str = null;
                            function12 = function5;
                        }
                        gapComposer2 = gapComposerH;
                        LazyDslKt.a(modifierA, lazyListState5, paddingValuesImplE, null, null, null, false, null, (Function1) obj, gapComposer2, (i52 >> 24) & 112, 504);
                        focusedProductUiModel4 = focusedProductUiModel3;
                        if (focusedProductUiModel4 == null) {
                            gapComposer2.L(-1640203922);
                            gapComposer2.Z(false);
                        } else {
                            gapComposer2.L(-1640203921);
                            assetUiModel = (AssetUiModel) CollectionsKt.G(focusedProductUiModel4.f62874b, ((PlpProductUiModel.SkuDataUiModel) focusedProductUiModel4.f62873a.f62934a.getF10755b()).f62947f);
                            if (assetUiModel != null || (assetImageUiModel = assetUiModel.f51780b) == null) {
                                str2 = str;
                            } else {
                                str2 = assetImageUiModel.f51778b;
                            }
                            i55 = i44 & 14;
                            if (i55 == 4) {
                                z32 = true;
                            } else {
                                z32 = false;
                            }
                            objX9 = gapComposer2.x();
                            if (z32) {
                                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                            } else {
                                composer$Companion$Empty$2 = composer$Companion$Empty$1;
                                if (objX9 != composer$Companion$Empty$2) {
                                    function40 = function33;
                                }
                                Function0 function48 = (Function0) objX9;
                                if (i55 == 4) {
                                    z33 = true;
                                } else {
                                    z33 = false;
                                }
                                if ((i44 & 57344) == 16384) {
                                    z34 = true;
                                } else {
                                    z34 = false;
                                }
                                zY = z34 | z33 | gapComposer2.y(focusedProductUiModel4);
                                objX10 = gapComposer2.x();
                                if (zY || objX10 == composer$Companion$Empty$2) {
                                    final int i60 = 1;
                                    objX10 = new Function0() { // from class: lk0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i61 = i60;
                                            FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                            Function1 function49 = function4;
                                            Function0 function50 = function40;
                                            switch (i61) {
                                                case 0:
                                                    function50.mo47invoke();
                                                    function49.invoke(focusedProductUiModel5.f62873a);
                                                    break;
                                                default:
                                                    function50.mo47invoke();
                                                    function49.invoke(focusedProductUiModel5.f62873a);
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    gapComposer2.q(objX10);
                                }
                                Function0 function49 = (Function0) objX10;
                                if (i55 == 4) {
                                    z35 = true;
                                } else {
                                    z35 = false;
                                }
                                if (i53 == 131072) {
                                    z36 = true;
                                } else {
                                    z36 = false;
                                }
                                zY2 = z36 | z35 | gapComposer2.y(focusedProductUiModel4);
                                objX11 = gapComposer2.x();
                                if (zY2 || objX11 == composer$Companion$Empty$2) {
                                    final int i61 = 0;
                                    objX11 = new Function0() { // from class: lk0
                                        @Override // kotlin.jvm.functions.Function0
                                        /* JADX INFO: renamed from: invoke */
                                        public final Object mo47invoke() {
                                            int i62 = i61;
                                            FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                            Function1 function410 = function12;
                                            Function0 function50 = function40;
                                            switch (i62) {
                                                case 0:
                                                    function50.mo47invoke();
                                                    function410.invoke(focusedProductUiModel5.f62873a);
                                                    break;
                                                default:
                                                    function50.mo47invoke();
                                                    function410.invoke(focusedProductUiModel5.f62873a);
                                                    break;
                                            }
                                            return Unit.f71739a;
                                        }
                                    };
                                    gapComposer2.q(objX11);
                                }
                                Function0 function50 = (Function0) objX11;
                                if (i55 == 4) {
                                    z37 = true;
                                } else {
                                    z37 = false;
                                }
                                if (i54 == 67108864) {
                                    z38 = true;
                                } else {
                                    z38 = false;
                                }
                                zY3 = z37 | z38 | gapComposer2.y(focusedProductUiModel4);
                                objX12 = gapComposer2.x();
                                if (zY3 || objX12 == composer$Companion$Empty$2) {
                                    objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                                    gapComposer2.q(objX12);
                                }
                                function33 = function40;
                                ProductFocusDialogKt.d(null, focusedProductUiModel4, str2, function48, function49, function50, (Function0) objX12, gapComposer2, 0);
                                gapComposer2.Z(false);
                            }
                            function40 = function33;
                            objX9 = new ee0(function40, 13);
                            gapComposer2.q(objX9);
                            Function0 function410 = (Function0) objX9;
                            if (i55 == 4) {
                                z33 = true;
                            } else {
                                z33 = false;
                            }
                            if ((i44 & 57344) == 16384) {
                                z34 = true;
                            } else {
                                z34 = false;
                            }
                            zY = z34 | z33 | gapComposer2.y(focusedProductUiModel4);
                            objX10 = gapComposer2.x();
                            if (zY) {
                                final int i62 = 1;
                                objX10 = new Function0() { // from class: lk0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i63 = i62;
                                        FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                        Function1 function411 = function4;
                                        Function0 function51 = function40;
                                        switch (i63) {
                                            case 0:
                                                function51.mo47invoke();
                                                function411.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                            default:
                                                function51.mo47invoke();
                                                function411.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                gapComposer2.q(objX10);
                            } else {
                                final int i63 = 1;
                                objX10 = new Function0() { // from class: lk0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i64 = i63;
                                        FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                        Function1 function411 = function4;
                                        Function0 function51 = function40;
                                        switch (i64) {
                                            case 0:
                                                function51.mo47invoke();
                                                function411.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                            default:
                                                function51.mo47invoke();
                                                function411.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                gapComposer2.q(objX10);
                            }
                            Function0 function411 = (Function0) objX10;
                            if (i55 == 4) {
                                z35 = true;
                            } else {
                                z35 = false;
                            }
                            if (i53 == 131072) {
                                z36 = true;
                            } else {
                                z36 = false;
                            }
                            zY2 = z36 | z35 | gapComposer2.y(focusedProductUiModel4);
                            objX11 = gapComposer2.x();
                            if (zY2) {
                                final int i64 = 0;
                                objX11 = new Function0() { // from class: lk0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i65 = i64;
                                        FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                        Function1 function412 = function12;
                                        Function0 function51 = function40;
                                        switch (i65) {
                                            case 0:
                                                function51.mo47invoke();
                                                function412.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                            default:
                                                function51.mo47invoke();
                                                function412.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                gapComposer2.q(objX11);
                            } else {
                                final int i65 = 0;
                                objX11 = new Function0() { // from class: lk0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i66 = i65;
                                        FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                        Function1 function412 = function12;
                                        Function0 function51 = function40;
                                        switch (i66) {
                                            case 0:
                                                function51.mo47invoke();
                                                function412.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                            default:
                                                function51.mo47invoke();
                                                function412.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                gapComposer2.q(objX11);
                            }
                            Function0 function51 = (Function0) objX11;
                            if (i55 == 4) {
                                z37 = true;
                            } else {
                                z37 = false;
                            }
                            if (i54 == 67108864) {
                                z38 = true;
                            } else {
                                z38 = false;
                            }
                            zY3 = z37 | z38 | gapComposer2.y(focusedProductUiModel4);
                            objX12 = gapComposer2.x();
                            if (zY3) {
                                objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                                gapComposer2.q(objX12);
                            } else {
                                objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                                gapComposer2.q(objX12);
                            }
                            function33 = function40;
                            ProductFocusDialogKt.d(null, focusedProductUiModel4, str2, function410, function411, function51, (Function0) objX12, gapComposer2, 0);
                            gapComposer2.Z(false);
                        }
                        z7 = z13;
                        function19 = function39;
                        focusedProductUiModel2 = focusedProductUiModel4;
                        gapComposer = gapComposer2;
                        lazyListState2 = lazyListState5;
                        function20 = function38;
                        function21 = function35;
                        function18 = function34;
                        function15 = function36;
                        f4 = f8;
                        function14 = function33;
                        z9 = z30;
                        z8 = z31;
                        function17 = function29;
                        function16 = function37;
                    } else {
                        function12 = function5;
                        function13 = function8;
                        gapComposerH.D();
                        z7 = z3;
                        focusedProductUiModel2 = focusedProductUiModel;
                        lazyListState2 = lazyListState;
                        function14 = function0;
                        function15 = function7;
                        function16 = function9;
                        function17 = function10;
                        function18 = function11;
                        f4 = f3;
                        z8 = z4;
                        gapComposer = gapComposerH;
                        z9 = z5;
                        function19 = function1;
                        function20 = function2;
                        function21 = function3;
                    }
                    recomposeScopeImplB0 = gapComposer.b0();
                    if (recomposeScopeImplB0 != null) {
                        final Function1 function52 = function12;
                        final Function2 function53 = function13;
                        final Modifier modifier2 = modifierE;
                        recomposeScopeImplB0.d = new Function2() { // from class: mk0
                            @Override // kotlin.jvm.functions.Function2
                            public final Object invoke(Object obj2, Object obj3) {
                                ((Integer) obj3).getClass();
                                int iA = RecomposeScopeImplKt.a(i2 | 1);
                                int iA2 = RecomposeScopeImplKt.a(i3);
                                int iA3 = RecomposeScopeImplKt.a(i4);
                                PLPKt.a(modifier2, gridModes, f4, num, z8, z9, z7, lazyPagingItems, focusedProductUiModel2, lazyListState2, function14, function19, function20, function21, function4, function52, function6, function15, function53, function16, function17, function18, (Composer) obj2, iA, iA2, iA3, i5);
                                return Unit.f71739a;
                            }
                        };
                    }
                }
                if (gapComposerH.p(i23 & 1, z6)) {
                    gapComposerH.y0();
                    i51 = i2 & 1;
                    composer$Companion$Empty$1 = Composer.Companion.f7939a;
                    if (i51 != 0) {
                        if ((i5 & 4) != 0) {
                            if (gridModes.equals(GridModes.Full.f55430b)) {
                                f6 = 1.0f;
                            } else {
                                if (!gridModes.equals(GridModes.Reduced.f55431b)) {
                                    v40.g();
                                    return;
                                }
                                f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            }
                            i23 &= -897;
                            f3 = f6;
                        }
                        if (i8 != 0) {
                            z4 = true;
                        }
                        if (i11 != 0) {
                            z5 = false;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        } else {
                            z10 = z3;
                        }
                        if (i19 != 0) {
                            focusedProductUiModel3 = null;
                        } else {
                            focusedProductUiModel3 = focusedProductUiModel;
                        }
                        if ((i5 & 512) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                            i23 &= -1879048193;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i24 != 0) {
                            objX5 = gapComposerH.x();
                            if (objX5 == composer$Companion$Empty$1) {
                                objX5 = new ii0(16);
                                gapComposerH.q(objX5);
                            }
                            function22 = (Function0) objX5;
                        } else {
                            lazyListStateA = lazyListStateA;
                            function22 = function0;
                        }
                        if (i27 != 0) {
                            function23 = null;
                        } else {
                            function23 = function1;
                        }
                        if (i31 != 0) {
                            function24 = null;
                        } else {
                            function24 = function2;
                        }
                        if (i34 != 0) {
                            function25 = null;
                        } else {
                            function25 = function3;
                        }
                        Function0 function412 = function22;
                        if (i39 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new aj0(10);
                                gapComposerH.q(objX4);
                            }
                            function26 = (Function2) objX4;
                        } else {
                            function23 = function23;
                            function26 = function7;
                        }
                        if (i42 != 0) {
                            objX3 = gapComposerH.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = new fj0(24);
                                gapComposerH.q(objX3);
                            }
                            function27 = (Function1) objX3;
                        } else {
                            function26 = function26;
                            function27 = function9;
                        }
                        if (i45 != 0) {
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new fj0(25);
                                gapComposerH.q(objX2);
                            }
                            function28 = (Function1) objX2;
                        } else {
                            function27 = function27;
                            function28 = function10;
                        }
                        if (i48 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new fj0(26);
                                gapComposerH.q(objX);
                            }
                            function29 = function28;
                            function30 = (Function1) objX;
                        } else {
                            function29 = function28;
                            function30 = function11;
                        }
                        i52 = i23;
                        f5 = f3;
                        z11 = z4;
                        z12 = z5;
                        z13 = z10;
                        lazyListState3 = lazyListStateA;
                        function31 = function23;
                        function32 = function25;
                        function33 = function412;
                    } else {
                        if ((i5 & 4) != 0) {
                            if (gridModes.equals(GridModes.Full.f55430b)) {
                                f6 = 1.0f;
                            } else {
                                if (!gridModes.equals(GridModes.Reduced.f55431b)) {
                                    v40.g();
                                    return;
                                }
                                f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                            }
                            i23 &= -897;
                            f3 = f6;
                        }
                        if (i8 != 0) {
                            z4 = true;
                        }
                        if (i11 != 0) {
                            z5 = false;
                        }
                        if (i14 != 0) {
                            z10 = true;
                        } else {
                            z10 = z3;
                        }
                        if (i19 != 0) {
                            focusedProductUiModel3 = null;
                        } else {
                            focusedProductUiModel3 = focusedProductUiModel;
                        }
                        if ((i5 & 512) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                            i23 &= -1879048193;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i24 != 0) {
                            objX5 = gapComposerH.x();
                            if (objX5 == composer$Companion$Empty$1) {
                                objX5 = new ii0(16);
                                gapComposerH.q(objX5);
                            }
                            function22 = (Function0) objX5;
                        } else {
                            lazyListStateA = lazyListStateA;
                            function22 = function0;
                        }
                        if (i27 != 0) {
                            function23 = null;
                        } else {
                            function23 = function1;
                        }
                        if (i31 != 0) {
                            function24 = null;
                        } else {
                            function24 = function2;
                        }
                        if (i34 != 0) {
                            function25 = null;
                        } else {
                            function25 = function3;
                        }
                        Function0 function413 = function22;
                        if (i39 != 0) {
                            objX4 = gapComposerH.x();
                            if (objX4 == composer$Companion$Empty$1) {
                                objX4 = new aj0(10);
                                gapComposerH.q(objX4);
                            }
                            function26 = (Function2) objX4;
                        } else {
                            function23 = function23;
                            function26 = function7;
                        }
                        if (i42 != 0) {
                            objX3 = gapComposerH.x();
                            if (objX3 == composer$Companion$Empty$1) {
                                objX3 = new fj0(24);
                                gapComposerH.q(objX3);
                            }
                            function27 = (Function1) objX3;
                        } else {
                            function26 = function26;
                            function27 = function9;
                        }
                        if (i45 != 0) {
                            objX2 = gapComposerH.x();
                            if (objX2 == composer$Companion$Empty$1) {
                                objX2 = new fj0(25);
                                gapComposerH.q(objX2);
                            }
                            function28 = (Function1) objX2;
                        } else {
                            function27 = function27;
                            function28 = function10;
                        }
                        if (i48 != 0) {
                            objX = gapComposerH.x();
                            if (objX == composer$Companion$Empty$1) {
                                objX = new fj0(26);
                                gapComposerH.q(objX);
                            }
                            function29 = function28;
                            function30 = (Function1) objX;
                        } else {
                            function29 = function28;
                            function30 = function11;
                        }
                        i52 = i23;
                        f5 = f3;
                        z11 = z4;
                        z12 = z5;
                        z13 = z10;
                        lazyListState3 = lazyListStateA;
                        function31 = function23;
                        function32 = function25;
                        function33 = function413;
                    }
                    gapComposerH.a0();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    z14 = z12;
                    f7 = LVAppDesignKitTheme.l(gapComposerH).m;
                    z15 = z11;
                    lazyListState4 = lazyListState3;
                    if ((i50 & 14) == 4) {
                        z16 = true;
                    } else {
                        z16 = false;
                    }
                    objX6 = gapComposerH.x();
                    if (z16) {
                        objX6 = new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, function29, null, 5, null);
                        gapComposerH.q(objX6);
                    } else {
                        objX6 = new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, function29, null, 5, null);
                        gapComposerH.q(objX6);
                    }
                    NestedScroll nestedScroll2 = (NestedScroll) objX6;
                    if (num != null) {
                        gapComposerH.L(-1642483568);
                        Function1 function414 = function30;
                        ScrollProgressTrackerKt.a(lazyListState4, num.intValue(), gridModes.f55429a, function414, gapComposerH, ((i52 >> 27) & 14) | ((i52 >> 6) & 112) | ((i50 << 6) & 7168));
                        lazyListState5 = lazyListState4;
                        function34 = function414;
                        gapComposerH.Z(false);
                    } else {
                        function34 = function30;
                        lazyListState5 = lazyListState4;
                        gapComposerH.L(-1642237552);
                        gapComposerH.Z(false);
                    }
                    objX7 = gapComposerH.x();
                    if (objX7 == composer$Companion$Empty$1) {
                        objX7 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                        gapComposerH.q(objX7);
                    }
                    mutableState = (MutableState) objX7;
                    objX8 = gapComposerH.x();
                    if (objX8 == composer$Companion$Empty$1) {
                        objX8 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                        gapComposerH.q(objX8);
                    }
                    mutableState2 = (MutableState) objX8;
                    Modifier modifierA2 = AlphaKt.a(NestedScrollModifierKt.a(modifierE.o(SizeKt.f5052c), nestedScroll2, null), f5);
                    PaddingValuesImpl paddingValuesImplE2 = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                    if ((i44 & 112) == 32) {
                        z17 = true;
                    } else {
                        z17 = false;
                    }
                    if ((i52 & 29360128) != 8388608) {
                        z18 = true;
                    } else {
                        z18 = true;
                    }
                    boolean z310 = z17 | z18;
                    if ((i52 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z19 = true;
                    } else {
                        z19 = false;
                    }
                    boolean z48 = z310 | z19;
                    if ((i52 & 57344) == 16384) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    boolean z49 = z48 | z20;
                    if ((i44 & 7168) == 2048) {
                        z21 = true;
                    } else {
                        z21 = false;
                    }
                    boolean z410 = z49 | z21;
                    i53 = i44 & ImageMetadata.JPEG_GPS_COORDINATES;
                    if (i53 == 131072) {
                        z22 = true;
                    } else {
                        z22 = false;
                    }
                    boolean z411 = z410 | z22;
                    if ((i44 & 29360128) == 8388608) {
                        z23 = true;
                    } else {
                        z23 = false;
                    }
                    boolean z412 = z411 | z23;
                    if ((i44 & 3670016) == i15) {
                        z24 = true;
                    } else {
                        z24 = false;
                    }
                    boolean z413 = z412 | z24;
                    i54 = 234881024 & i44;
                    if (i54 == 67108864) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    boolean z414 = z413 | z25;
                    float f9 = f5;
                    if ((i44 & 1879048192) == 536870912) {
                        z26 = true;
                    } else {
                        z26 = false;
                    }
                    boolean z415 = z414 | z26;
                    if ((i52 & 3670016) == 1048576) {
                        z27 = true;
                    } else {
                        z27 = false;
                    }
                    boolean zC2 = z415 | z27 | gapComposerH.c(f7);
                    if ((i44 & 896) == 256) {
                        z28 = true;
                    } else {
                        z28 = false;
                    }
                    z29 = zC2 | z28;
                    Object objX14 = gapComposerH.x();
                    if (z29) {
                        final Function1 function415 = function31;
                        final Function1 function416 = function32;
                        final Function2 function417 = function26;
                        final Function1 function418 = function27;
                        final Function1 function419 = function24;
                        str = null;
                        z30 = z14;
                        z31 = z15;
                        obj = new Function1() { // from class: nk0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                LazyListScope lazyListScope = (LazyListScope) obj2;
                                lazyListScope.getClass();
                                Function1 function420 = function415;
                                if (function420 != null) {
                                    function420.invoke(lazyListScope);
                                }
                                LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                                boolean z416 = lazyPagingItems2.d().f18562a instanceof LoadState.Error;
                                boolean z417 = z30;
                                if ((z416 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Error) && lazyPagingItems2.b() == 0)) && (lazyPagingItems2.b() == 0 || z417)) {
                                    LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1689706375, true, new td(((Dp) mutableState2.getF10755b()).f11006b - ((Dp) mutableState.getF10755b()).f11006b, 5)), 3);
                                } else {
                                    boolean z50 = lazyPagingItems2.d().f18562a instanceof LoadState.Loading;
                                    GridModes gridModes2 = gridModes;
                                    if ((z50 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Loading) && lazyPagingItems2.b() == 0)) && z31 && (lazyPagingItems2.b() == 0 || z417)) {
                                        PLPSkeletonKt.d(lazyListScope, gridModes2);
                                    } else {
                                        Function1 function421 = function416;
                                        if (function421 == null || lazyPagingItems2.b() != 0) {
                                            PLPItemsKt.d(lazyListScope, gridModes2, lazyPagingItems2, function5, function417, function6, function8, function418);
                                            if (lazyPagingItems2.d().f18564c instanceof LoadState.Loading) {
                                                ComposableSingletons$PLPItemsKt.f62810a.getClass();
                                                LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPItemsKt.f62811b, 3);
                                            }
                                            if (z13 && (lazyPagingItems2.d().f18564c instanceof LoadState.NotLoading)) {
                                                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1598249487, true, new td(f7, 6)), 3);
                                            }
                                            Function1 function54 = function419;
                                            if (function54 != null) {
                                                function54.invoke(lazyListScope);
                                            } else {
                                                ComposableSingletons$PLPKt.f62813a.getClass();
                                                LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPKt.f62814b, 3);
                                            }
                                        } else {
                                            function421.invoke(lazyListScope);
                                        }
                                    }
                                }
                                return Unit.f71739a;
                            }
                        };
                        function35 = function416;
                        function36 = function417;
                        function37 = function418;
                        function38 = function419;
                        gapComposerH = gapComposerH;
                        function39 = function415;
                        function12 = function5;
                        gapComposerH.q(obj);
                    } else {
                        final Function1 function4110 = function31;
                        final Function1 function4111 = function32;
                        final Function2 function4112 = function26;
                        final Function1 function4113 = function27;
                        final Function1 function4114 = function24;
                        str = null;
                        z30 = z14;
                        z31 = z15;
                        obj = new Function1() { // from class: nk0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object invoke(Object obj2) {
                                LazyListScope lazyListScope = (LazyListScope) obj2;
                                lazyListScope.getClass();
                                Function1 function420 = function4110;
                                if (function420 != null) {
                                    function420.invoke(lazyListScope);
                                }
                                LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                                boolean z416 = lazyPagingItems2.d().f18562a instanceof LoadState.Error;
                                boolean z417 = z30;
                                if ((z416 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Error) && lazyPagingItems2.b() == 0)) && (lazyPagingItems2.b() == 0 || z417)) {
                                    LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1689706375, true, new td(((Dp) mutableState2.getF10755b()).f11006b - ((Dp) mutableState.getF10755b()).f11006b, 5)), 3);
                                } else {
                                    boolean z50 = lazyPagingItems2.d().f18562a instanceof LoadState.Loading;
                                    GridModes gridModes2 = gridModes;
                                    if ((z50 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Loading) && lazyPagingItems2.b() == 0)) && z31 && (lazyPagingItems2.b() == 0 || z417)) {
                                        PLPSkeletonKt.d(lazyListScope, gridModes2);
                                    } else {
                                        Function1 function421 = function4111;
                                        if (function421 == null || lazyPagingItems2.b() != 0) {
                                            PLPItemsKt.d(lazyListScope, gridModes2, lazyPagingItems2, function5, function4112, function6, function8, function4113);
                                            if (lazyPagingItems2.d().f18564c instanceof LoadState.Loading) {
                                                ComposableSingletons$PLPItemsKt.f62810a.getClass();
                                                LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPItemsKt.f62811b, 3);
                                            }
                                            if (z13 && (lazyPagingItems2.d().f18564c instanceof LoadState.NotLoading)) {
                                                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1598249487, true, new td(f7, 6)), 3);
                                            }
                                            Function1 function54 = function4114;
                                            if (function54 != null) {
                                                function54.invoke(lazyListScope);
                                            } else {
                                                ComposableSingletons$PLPKt.f62813a.getClass();
                                                LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPKt.f62814b, 3);
                                            }
                                        } else {
                                            function421.invoke(lazyListScope);
                                        }
                                    }
                                }
                                return Unit.f71739a;
                            }
                        };
                        function35 = function4111;
                        function36 = function4112;
                        function37 = function4113;
                        function38 = function4114;
                        gapComposerH = gapComposerH;
                        function39 = function4110;
                        function12 = function5;
                        gapComposerH.q(obj);
                    }
                    gapComposer2 = gapComposerH;
                    LazyDslKt.a(modifierA2, lazyListState5, paddingValuesImplE2, null, null, null, false, null, (Function1) obj, gapComposer2, (i52 >> 24) & 112, 504);
                    focusedProductUiModel4 = focusedProductUiModel3;
                    if (focusedProductUiModel4 == null) {
                        gapComposer2.L(-1640203922);
                        gapComposer2.Z(false);
                    } else {
                        gapComposer2.L(-1640203921);
                        assetUiModel = (AssetUiModel) CollectionsKt.G(focusedProductUiModel4.f62874b, ((PlpProductUiModel.SkuDataUiModel) focusedProductUiModel4.f62873a.f62934a.getF10755b()).f62947f);
                        if (assetUiModel != null) {
                            str2 = str;
                        } else {
                            str2 = str;
                        }
                        i55 = i44 & 14;
                        if (i55 == 4) {
                            z32 = true;
                        } else {
                            z32 = false;
                        }
                        objX9 = gapComposer2.x();
                        if (z32) {
                            composer$Companion$Empty$2 = composer$Companion$Empty$1;
                            if (objX9 != composer$Companion$Empty$2) {
                                function40 = function33;
                            }
                            Function0 function4115 = (Function0) objX9;
                            if (i55 == 4) {
                                z33 = true;
                            } else {
                                z33 = false;
                            }
                            if ((i44 & 57344) == 16384) {
                                z34 = true;
                            } else {
                                z34 = false;
                            }
                            zY = z34 | z33 | gapComposer2.y(focusedProductUiModel4);
                            objX10 = gapComposer2.x();
                            if (zY) {
                                final int i66 = 1;
                                objX10 = new Function0() { // from class: lk0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i67 = i66;
                                        FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                        Function1 function4116 = function4;
                                        Function0 function54 = function40;
                                        switch (i67) {
                                            case 0:
                                                function54.mo47invoke();
                                                function4116.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                            default:
                                                function54.mo47invoke();
                                                function4116.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                gapComposer2.q(objX10);
                            } else {
                                final int i67 = 1;
                                objX10 = new Function0() { // from class: lk0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i68 = i67;
                                        FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                        Function1 function4116 = function4;
                                        Function0 function54 = function40;
                                        switch (i68) {
                                            case 0:
                                                function54.mo47invoke();
                                                function4116.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                            default:
                                                function54.mo47invoke();
                                                function4116.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                gapComposer2.q(objX10);
                            }
                            Function0 function4116 = (Function0) objX10;
                            if (i55 == 4) {
                                z35 = true;
                            } else {
                                z35 = false;
                            }
                            if (i53 == 131072) {
                                z36 = true;
                            } else {
                                z36 = false;
                            }
                            zY2 = z36 | z35 | gapComposer2.y(focusedProductUiModel4);
                            objX11 = gapComposer2.x();
                            if (zY2) {
                                final int i68 = 0;
                                objX11 = new Function0() { // from class: lk0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i69 = i68;
                                        FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                        Function1 function4117 = function12;
                                        Function0 function54 = function40;
                                        switch (i69) {
                                            case 0:
                                                function54.mo47invoke();
                                                function4117.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                            default:
                                                function54.mo47invoke();
                                                function4117.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                gapComposer2.q(objX11);
                            } else {
                                final int i69 = 0;
                                objX11 = new Function0() { // from class: lk0
                                    @Override // kotlin.jvm.functions.Function0
                                    /* JADX INFO: renamed from: invoke */
                                    public final Object mo47invoke() {
                                        int i610 = i69;
                                        FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                        Function1 function4117 = function12;
                                        Function0 function54 = function40;
                                        switch (i610) {
                                            case 0:
                                                function54.mo47invoke();
                                                function4117.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                            default:
                                                function54.mo47invoke();
                                                function4117.invoke(focusedProductUiModel5.f62873a);
                                                break;
                                        }
                                        return Unit.f71739a;
                                    }
                                };
                                gapComposer2.q(objX11);
                            }
                            Function0 function54 = (Function0) objX11;
                            if (i55 == 4) {
                                z37 = true;
                            } else {
                                z37 = false;
                            }
                            if (i54 == 67108864) {
                                z38 = true;
                            } else {
                                z38 = false;
                            }
                            zY3 = z37 | z38 | gapComposer2.y(focusedProductUiModel4);
                            objX12 = gapComposer2.x();
                            if (zY3) {
                                objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                                gapComposer2.q(objX12);
                            } else {
                                objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                                gapComposer2.q(objX12);
                            }
                            function33 = function40;
                            ProductFocusDialogKt.d(null, focusedProductUiModel4, str2, function4115, function4116, function54, (Function0) objX12, gapComposer2, 0);
                            gapComposer2.Z(false);
                        } else {
                            composer$Companion$Empty$2 = composer$Companion$Empty$1;
                        }
                        function40 = function33;
                        objX9 = new ee0(function40, 13);
                        gapComposer2.q(objX9);
                        Function0 function4117 = (Function0) objX9;
                        if (i55 == 4) {
                            z33 = true;
                        } else {
                            z33 = false;
                        }
                        if ((i44 & 57344) == 16384) {
                            z34 = true;
                        } else {
                            z34 = false;
                        }
                        zY = z34 | z33 | gapComposer2.y(focusedProductUiModel4);
                        objX10 = gapComposer2.x();
                        if (zY) {
                            final int i610 = 1;
                            objX10 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i611 = i610;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function4118 = function4;
                                    Function0 function55 = function40;
                                    switch (i611) {
                                        case 0:
                                            function55.mo47invoke();
                                            function4118.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function55.mo47invoke();
                                            function4118.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        } else {
                            final int i611 = 1;
                            objX10 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i612 = i611;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function4118 = function4;
                                    Function0 function55 = function40;
                                    switch (i612) {
                                        case 0:
                                            function55.mo47invoke();
                                            function4118.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function55.mo47invoke();
                                            function4118.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        }
                        Function0 function4118 = (Function0) objX10;
                        if (i55 == 4) {
                            z35 = true;
                        } else {
                            z35 = false;
                        }
                        if (i53 == 131072) {
                            z36 = true;
                        } else {
                            z36 = false;
                        }
                        zY2 = z36 | z35 | gapComposer2.y(focusedProductUiModel4);
                        objX11 = gapComposer2.x();
                        if (zY2) {
                            final int i612 = 0;
                            objX11 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i613 = i612;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function4119 = function12;
                                    Function0 function55 = function40;
                                    switch (i613) {
                                        case 0:
                                            function55.mo47invoke();
                                            function4119.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function55.mo47invoke();
                                            function4119.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX11);
                        } else {
                            final int i613 = 0;
                            objX11 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i614 = i613;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function4119 = function12;
                                    Function0 function55 = function40;
                                    switch (i614) {
                                        case 0:
                                            function55.mo47invoke();
                                            function4119.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function55.mo47invoke();
                                            function4119.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX11);
                        }
                        Function0 function55 = (Function0) objX11;
                        if (i55 == 4) {
                            z37 = true;
                        } else {
                            z37 = false;
                        }
                        if (i54 == 67108864) {
                            z38 = true;
                        } else {
                            z38 = false;
                        }
                        zY3 = z37 | z38 | gapComposer2.y(focusedProductUiModel4);
                        objX12 = gapComposer2.x();
                        if (zY3) {
                            objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                            gapComposer2.q(objX12);
                        } else {
                            objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                            gapComposer2.q(objX12);
                        }
                        function33 = function40;
                        ProductFocusDialogKt.d(null, focusedProductUiModel4, str2, function4117, function4118, function55, (Function0) objX12, gapComposer2, 0);
                        gapComposer2.Z(false);
                    }
                    z7 = z13;
                    function19 = function39;
                    focusedProductUiModel2 = focusedProductUiModel4;
                    gapComposer = gapComposer2;
                    lazyListState2 = lazyListState5;
                    function20 = function38;
                    function21 = function35;
                    function18 = function34;
                    function15 = function36;
                    f4 = f9;
                    function14 = function33;
                    z9 = z30;
                    z8 = z31;
                    function17 = function29;
                    function16 = function37;
                } else {
                    function12 = function5;
                    function13 = function8;
                    gapComposerH.D();
                    z7 = z3;
                    focusedProductUiModel2 = focusedProductUiModel;
                    lazyListState2 = lazyListState;
                    function14 = function0;
                    function15 = function7;
                    function16 = function9;
                    function17 = function10;
                    function18 = function11;
                    f4 = f3;
                    z8 = z4;
                    gapComposer = gapComposerH;
                    z9 = z5;
                    function19 = function1;
                    function20 = function2;
                    function21 = function3;
                }
                recomposeScopeImplB0 = gapComposer.b0();
                if (recomposeScopeImplB0 != null) {
                    final Function1 function56 = function12;
                    final Function2 function57 = function13;
                    final Modifier modifier3 = modifierE;
                    recomposeScopeImplB0.d = new Function2() { // from class: mk0
                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj2, Object obj3) {
                            ((Integer) obj3).getClass();
                            int iA = RecomposeScopeImplKt.a(i2 | 1);
                            int iA2 = RecomposeScopeImplKt.a(i3);
                            int iA3 = RecomposeScopeImplKt.a(i4);
                            PLPKt.a(modifier3, gridModes, f4, num, z8, z9, z7, lazyPagingItems, focusedProductUiModel2, lazyListState2, function14, function19, function20, function21, function4, function56, function6, function15, function57, function16, function17, function18, (Composer) obj2, iA, iA2, iA3, i5);
                            return Unit.f71739a;
                        }
                    };
                }
            }
            i13 |= 1572864;
            i15 = 1048576;
            if (gapComposerH.y(lazyPagingItems)) {
                i17 = 8388608;
            } else {
                i17 = 4194304;
            }
            i18 = i13 | i17;
            i19 = i5 & 256;
            if (i19 != 0) {
                i21 = i18 | 100663296;
            } else {
                if (gapComposerH.y(focusedProductUiModel)) {
                    i20 = 67108864;
                } else {
                    i20 = 33554432;
                }
                i21 = i18 | i20;
            }
            if ((i5 & 512) == 0) {
                i22 = 268435456;
            } else {
                i22 = 268435456;
            }
            i23 = i21 | i22;
            i24 = i5 & 1024;
            if (i24 != 0) {
                i26 = i3 | 6;
            } else {
                if (gapComposerH.y(function0)) {
                    i25 = 4;
                } else {
                    i25 = 2;
                }
                i26 = i3 | i25;
            }
            i27 = i5 & 2048;
            if (i27 != 0) {
                i29 = i26 | 48;
            } else {
                if (gapComposerH.y(function1)) {
                    i28 = 32;
                } else {
                    i28 = 16;
                }
                i29 = i26 | i28;
            }
            i30 = i29;
            i31 = i5 & 4096;
            if (i31 != 0) {
                i33 = i30 | KyberEngine.KyberPolyBytes;
            } else {
                if (gapComposerH.y(function2)) {
                    i32 = 256;
                } else {
                    i32 = 128;
                }
                i33 = i30 | i32;
            }
            i34 = i5 & 8192;
            if (i34 != 0) {
                i36 = i33 | 3072;
            } else {
                i35 = i33;
                if ((i3 & 3072) == 0) {
                    i36 = i35 | (gapComposerH.y(function3) ? 2048 : 1024);
                } else {
                    i36 = i35;
                }
            }
            if ((i3 & 24576) == 0) {
                i36 |= gapComposerH.y(function4) ? 16384 : 8192;
            }
            int i510 = i36 | (gapComposerH.y(function5) ? 131072 : 65536);
            if (gapComposerH.y(function6)) {
                i37 = i15;
            } else {
                i37 = 524288;
            }
            i38 = i510 | i37;
            i39 = i5 & 131072;
            if (i39 != 0) {
                i40 = i38 | 12582912;
            } else {
                i40 = i38 | (gapComposerH.y(function7) ? 8388608 : 4194304);
            }
            i41 = i40 | (gapComposerH.y(function8) ? 67108864 : 33554432);
            i42 = i5 & 524288;
            if (i42 != 0) {
                i43 = i41 | 805306368;
            } else {
                i43 = i41 | (gapComposerH.y(function9) ? PKIFailureInfo.duplicateCertReq : 268435456);
            }
            i44 = i43;
            i45 = i5 & i15;
            if (i45 != 0) {
                i46 = 6;
            } else if ((i4 & 6) == 0) {
                if (gapComposerH.y(function10)) {
                    i47 = 4;
                } else {
                    i47 = 2;
                }
                i46 = i4 | i47;
            } else {
                i46 = i4;
            }
            i48 = i5 & PKIFailureInfo.badSenderNonce;
            if (i48 != 0) {
                i50 = i46 | 48;
            } else {
                if (gapComposerH.y(function11)) {
                    i49 = 32;
                } else {
                    i49 = 16;
                }
                i50 = i46 | i49;
            }
            z6 = (i23 & 306783379) != 306783378 ? true : true;
            if (gapComposerH.p(i23 & 1, z6)) {
                gapComposerH.y0();
                i51 = i2 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i51 != 0) {
                    if ((i5 & 4) != 0) {
                        if (gridModes.equals(GridModes.Full.f55430b)) {
                            f6 = 1.0f;
                        } else {
                            if (!gridModes.equals(GridModes.Reduced.f55431b)) {
                                v40.g();
                                return;
                            }
                            f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        }
                        i23 &= -897;
                        f3 = f6;
                    }
                    if (i8 != 0) {
                        z4 = true;
                    }
                    if (i11 != 0) {
                        z5 = false;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    } else {
                        z10 = z3;
                    }
                    if (i19 != 0) {
                        focusedProductUiModel3 = null;
                    } else {
                        focusedProductUiModel3 = focusedProductUiModel;
                    }
                    if ((i5 & 512) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                        i23 &= -1879048193;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i24 != 0) {
                        objX5 = gapComposerH.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            objX5 = new ii0(16);
                            gapComposerH.q(objX5);
                        }
                        function22 = (Function0) objX5;
                    } else {
                        lazyListStateA = lazyListStateA;
                        function22 = function0;
                    }
                    if (i27 != 0) {
                        function23 = null;
                    } else {
                        function23 = function1;
                    }
                    if (i31 != 0) {
                        function24 = null;
                    } else {
                        function24 = function2;
                    }
                    if (i34 != 0) {
                        function25 = null;
                    } else {
                        function25 = function3;
                    }
                    Function0 function4119 = function22;
                    if (i39 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new aj0(10);
                            gapComposerH.q(objX4);
                        }
                        function26 = (Function2) objX4;
                    } else {
                        function23 = function23;
                        function26 = function7;
                    }
                    if (i42 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = new fj0(24);
                            gapComposerH.q(objX3);
                        }
                        function27 = (Function1) objX3;
                    } else {
                        function26 = function26;
                        function27 = function9;
                    }
                    if (i45 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new fj0(25);
                            gapComposerH.q(objX2);
                        }
                        function28 = (Function1) objX2;
                    } else {
                        function27 = function27;
                        function28 = function10;
                    }
                    if (i48 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new fj0(26);
                            gapComposerH.q(objX);
                        }
                        function29 = function28;
                        function30 = (Function1) objX;
                    } else {
                        function29 = function28;
                        function30 = function11;
                    }
                    i52 = i23;
                    f5 = f3;
                    z11 = z4;
                    z12 = z5;
                    z13 = z10;
                    lazyListState3 = lazyListStateA;
                    function31 = function23;
                    function32 = function25;
                    function33 = function4119;
                } else {
                    if ((i5 & 4) != 0) {
                        if (gridModes.equals(GridModes.Full.f55430b)) {
                            f6 = 1.0f;
                        } else {
                            if (!gridModes.equals(GridModes.Reduced.f55431b)) {
                                v40.g();
                                return;
                            }
                            f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        }
                        i23 &= -897;
                        f3 = f6;
                    }
                    if (i8 != 0) {
                        z4 = true;
                    }
                    if (i11 != 0) {
                        z5 = false;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    } else {
                        z10 = z3;
                    }
                    if (i19 != 0) {
                        focusedProductUiModel3 = null;
                    } else {
                        focusedProductUiModel3 = focusedProductUiModel;
                    }
                    if ((i5 & 512) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                        i23 &= -1879048193;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i24 != 0) {
                        objX5 = gapComposerH.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            objX5 = new ii0(16);
                            gapComposerH.q(objX5);
                        }
                        function22 = (Function0) objX5;
                    } else {
                        lazyListStateA = lazyListStateA;
                        function22 = function0;
                    }
                    if (i27 != 0) {
                        function23 = null;
                    } else {
                        function23 = function1;
                    }
                    if (i31 != 0) {
                        function24 = null;
                    } else {
                        function24 = function2;
                    }
                    if (i34 != 0) {
                        function25 = null;
                    } else {
                        function25 = function3;
                    }
                    Function0 function41110 = function22;
                    if (i39 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new aj0(10);
                            gapComposerH.q(objX4);
                        }
                        function26 = (Function2) objX4;
                    } else {
                        function23 = function23;
                        function26 = function7;
                    }
                    if (i42 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = new fj0(24);
                            gapComposerH.q(objX3);
                        }
                        function27 = (Function1) objX3;
                    } else {
                        function26 = function26;
                        function27 = function9;
                    }
                    if (i45 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new fj0(25);
                            gapComposerH.q(objX2);
                        }
                        function28 = (Function1) objX2;
                    } else {
                        function27 = function27;
                        function28 = function10;
                    }
                    if (i48 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new fj0(26);
                            gapComposerH.q(objX);
                        }
                        function29 = function28;
                        function30 = (Function1) objX;
                    } else {
                        function29 = function28;
                        function30 = function11;
                    }
                    i52 = i23;
                    f5 = f3;
                    z11 = z4;
                    z12 = z5;
                    z13 = z10;
                    lazyListState3 = lazyListStateA;
                    function31 = function23;
                    function32 = function25;
                    function33 = function41110;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                z14 = z12;
                f7 = LVAppDesignKitTheme.l(gapComposerH).m;
                z15 = z11;
                lazyListState4 = lazyListState3;
                if ((i50 & 14) == 4) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                objX6 = gapComposerH.x();
                if (z16) {
                    objX6 = new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, function29, null, 5, null);
                    gapComposerH.q(objX6);
                } else {
                    objX6 = new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, function29, null, 5, null);
                    gapComposerH.q(objX6);
                }
                NestedScroll nestedScroll3 = (NestedScroll) objX6;
                if (num != null) {
                    gapComposerH.L(-1642483568);
                    Function1 function4120 = function30;
                    ScrollProgressTrackerKt.a(lazyListState4, num.intValue(), gridModes.f55429a, function4120, gapComposerH, ((i52 >> 27) & 14) | ((i52 >> 6) & 112) | ((i50 << 6) & 7168));
                    lazyListState5 = lazyListState4;
                    function34 = function4120;
                    gapComposerH.Z(false);
                } else {
                    function34 = function30;
                    lazyListState5 = lazyListState4;
                    gapComposerH.L(-1642237552);
                    gapComposerH.Z(false);
                }
                objX7 = gapComposerH.x();
                if (objX7 == composer$Companion$Empty$1) {
                    objX7 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                    gapComposerH.q(objX7);
                }
                mutableState = (MutableState) objX7;
                objX8 = gapComposerH.x();
                if (objX8 == composer$Companion$Empty$1) {
                    objX8 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                    gapComposerH.q(objX8);
                }
                mutableState2 = (MutableState) objX8;
                Modifier modifierA3 = AlphaKt.a(NestedScrollModifierKt.a(modifierE.o(SizeKt.f5052c), nestedScroll3, null), f5);
                PaddingValuesImpl paddingValuesImplE3 = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                if ((i44 & 112) == 32) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                if ((i52 & 29360128) != 8388608) {
                    z18 = true;
                } else {
                    z18 = true;
                }
                boolean z311 = z17 | z18;
                if ((i52 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                boolean z416 = z311 | z19;
                if ((i52 & 57344) == 16384) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                boolean z417 = z416 | z20;
                if ((i44 & 7168) == 2048) {
                    z21 = true;
                } else {
                    z21 = false;
                }
                boolean z418 = z417 | z21;
                i53 = i44 & ImageMetadata.JPEG_GPS_COORDINATES;
                if (i53 == 131072) {
                    z22 = true;
                } else {
                    z22 = false;
                }
                boolean z419 = z418 | z22;
                if ((i44 & 29360128) == 8388608) {
                    z23 = true;
                } else {
                    z23 = false;
                }
                boolean z4110 = z419 | z23;
                if ((i44 & 3670016) == i15) {
                    z24 = true;
                } else {
                    z24 = false;
                }
                boolean z4111 = z4110 | z24;
                i54 = 234881024 & i44;
                if (i54 == 67108864) {
                    z25 = true;
                } else {
                    z25 = false;
                }
                boolean z4112 = z4111 | z25;
                float f10 = f5;
                if ((i44 & 1879048192) == 536870912) {
                    z26 = true;
                } else {
                    z26 = false;
                }
                boolean z4113 = z4112 | z26;
                if ((i52 & 3670016) == 1048576) {
                    z27 = true;
                } else {
                    z27 = false;
                }
                boolean zC3 = z4113 | z27 | gapComposerH.c(f7);
                if ((i44 & 896) == 256) {
                    z28 = true;
                } else {
                    z28 = false;
                }
                z29 = zC3 | z28;
                Object objX15 = gapComposerH.x();
                if (z29) {
                    final Function1 function41111 = function31;
                    final Function1 function41112 = function32;
                    final Function2 function41113 = function26;
                    final Function1 function41114 = function27;
                    final Function1 function41115 = function24;
                    str = null;
                    z30 = z14;
                    z31 = z15;
                    obj = new Function1() { // from class: nk0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            LazyListScope lazyListScope = (LazyListScope) obj2;
                            lazyListScope.getClass();
                            Function1 function420 = function41111;
                            if (function420 != null) {
                                function420.invoke(lazyListScope);
                            }
                            LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                            boolean z4114 = lazyPagingItems2.d().f18562a instanceof LoadState.Error;
                            boolean z4115 = z30;
                            if ((z4114 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Error) && lazyPagingItems2.b() == 0)) && (lazyPagingItems2.b() == 0 || z4115)) {
                                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1689706375, true, new td(((Dp) mutableState2.getF10755b()).f11006b - ((Dp) mutableState.getF10755b()).f11006b, 5)), 3);
                            } else {
                                boolean z50 = lazyPagingItems2.d().f18562a instanceof LoadState.Loading;
                                GridModes gridModes2 = gridModes;
                                if ((z50 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Loading) && lazyPagingItems2.b() == 0)) && z31 && (lazyPagingItems2.b() == 0 || z4115)) {
                                    PLPSkeletonKt.d(lazyListScope, gridModes2);
                                } else {
                                    Function1 function421 = function41112;
                                    if (function421 == null || lazyPagingItems2.b() != 0) {
                                        PLPItemsKt.d(lazyListScope, gridModes2, lazyPagingItems2, function5, function41113, function6, function8, function41114);
                                        if (lazyPagingItems2.d().f18564c instanceof LoadState.Loading) {
                                            ComposableSingletons$PLPItemsKt.f62810a.getClass();
                                            LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPItemsKt.f62811b, 3);
                                        }
                                        if (z13 && (lazyPagingItems2.d().f18564c instanceof LoadState.NotLoading)) {
                                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1598249487, true, new td(f7, 6)), 3);
                                        }
                                        Function1 function58 = function41115;
                                        if (function58 != null) {
                                            function58.invoke(lazyListScope);
                                        } else {
                                            ComposableSingletons$PLPKt.f62813a.getClass();
                                            LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPKt.f62814b, 3);
                                        }
                                    } else {
                                        function421.invoke(lazyListScope);
                                    }
                                }
                            }
                            return Unit.f71739a;
                        }
                    };
                    function35 = function41112;
                    function36 = function41113;
                    function37 = function41114;
                    function38 = function41115;
                    gapComposerH = gapComposerH;
                    function39 = function41111;
                    function12 = function5;
                    gapComposerH.q(obj);
                } else {
                    final Function1 function41116 = function31;
                    final Function1 function41117 = function32;
                    final Function2 function41118 = function26;
                    final Function1 function41119 = function27;
                    final Function1 function411110 = function24;
                    str = null;
                    z30 = z14;
                    z31 = z15;
                    obj = new Function1() { // from class: nk0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            LazyListScope lazyListScope = (LazyListScope) obj2;
                            lazyListScope.getClass();
                            Function1 function420 = function41116;
                            if (function420 != null) {
                                function420.invoke(lazyListScope);
                            }
                            LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                            boolean z4114 = lazyPagingItems2.d().f18562a instanceof LoadState.Error;
                            boolean z4115 = z30;
                            if ((z4114 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Error) && lazyPagingItems2.b() == 0)) && (lazyPagingItems2.b() == 0 || z4115)) {
                                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1689706375, true, new td(((Dp) mutableState2.getF10755b()).f11006b - ((Dp) mutableState.getF10755b()).f11006b, 5)), 3);
                            } else {
                                boolean z50 = lazyPagingItems2.d().f18562a instanceof LoadState.Loading;
                                GridModes gridModes2 = gridModes;
                                if ((z50 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Loading) && lazyPagingItems2.b() == 0)) && z31 && (lazyPagingItems2.b() == 0 || z4115)) {
                                    PLPSkeletonKt.d(lazyListScope, gridModes2);
                                } else {
                                    Function1 function421 = function41117;
                                    if (function421 == null || lazyPagingItems2.b() != 0) {
                                        PLPItemsKt.d(lazyListScope, gridModes2, lazyPagingItems2, function5, function41118, function6, function8, function41119);
                                        if (lazyPagingItems2.d().f18564c instanceof LoadState.Loading) {
                                            ComposableSingletons$PLPItemsKt.f62810a.getClass();
                                            LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPItemsKt.f62811b, 3);
                                        }
                                        if (z13 && (lazyPagingItems2.d().f18564c instanceof LoadState.NotLoading)) {
                                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1598249487, true, new td(f7, 6)), 3);
                                        }
                                        Function1 function58 = function411110;
                                        if (function58 != null) {
                                            function58.invoke(lazyListScope);
                                        } else {
                                            ComposableSingletons$PLPKt.f62813a.getClass();
                                            LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPKt.f62814b, 3);
                                        }
                                    } else {
                                        function421.invoke(lazyListScope);
                                    }
                                }
                            }
                            return Unit.f71739a;
                        }
                    };
                    function35 = function41117;
                    function36 = function41118;
                    function37 = function41119;
                    function38 = function411110;
                    gapComposerH = gapComposerH;
                    function39 = function41116;
                    function12 = function5;
                    gapComposerH.q(obj);
                }
                gapComposer2 = gapComposerH;
                LazyDslKt.a(modifierA3, lazyListState5, paddingValuesImplE3, null, null, null, false, null, (Function1) obj, gapComposer2, (i52 >> 24) & 112, 504);
                focusedProductUiModel4 = focusedProductUiModel3;
                if (focusedProductUiModel4 == null) {
                    gapComposer2.L(-1640203922);
                    gapComposer2.Z(false);
                } else {
                    gapComposer2.L(-1640203921);
                    assetUiModel = (AssetUiModel) CollectionsKt.G(focusedProductUiModel4.f62874b, ((PlpProductUiModel.SkuDataUiModel) focusedProductUiModel4.f62873a.f62934a.getF10755b()).f62947f);
                    if (assetUiModel != null) {
                        str2 = str;
                    } else {
                        str2 = str;
                    }
                    i55 = i44 & 14;
                    if (i55 == 4) {
                        z32 = true;
                    } else {
                        z32 = false;
                    }
                    objX9 = gapComposer2.x();
                    if (z32) {
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                        if (objX9 != composer$Companion$Empty$2) {
                            function40 = function33;
                        }
                        Function0 function41120 = (Function0) objX9;
                        if (i55 == 4) {
                            z33 = true;
                        } else {
                            z33 = false;
                        }
                        if ((i44 & 57344) == 16384) {
                            z34 = true;
                        } else {
                            z34 = false;
                        }
                        zY = z34 | z33 | gapComposer2.y(focusedProductUiModel4);
                        objX10 = gapComposer2.x();
                        if (zY) {
                            final int i614 = 1;
                            objX10 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i615 = i614;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function41121 = function4;
                                    Function0 function58 = function40;
                                    switch (i615) {
                                        case 0:
                                            function58.mo47invoke();
                                            function41121.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function58.mo47invoke();
                                            function41121.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        } else {
                            final int i615 = 1;
                            objX10 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i616 = i615;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function41121 = function4;
                                    Function0 function58 = function40;
                                    switch (i616) {
                                        case 0:
                                            function58.mo47invoke();
                                            function41121.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function58.mo47invoke();
                                            function41121.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        }
                        Function0 function41121 = (Function0) objX10;
                        if (i55 == 4) {
                            z35 = true;
                        } else {
                            z35 = false;
                        }
                        if (i53 == 131072) {
                            z36 = true;
                        } else {
                            z36 = false;
                        }
                        zY2 = z36 | z35 | gapComposer2.y(focusedProductUiModel4);
                        objX11 = gapComposer2.x();
                        if (zY2) {
                            final int i616 = 0;
                            objX11 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i617 = i616;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function41122 = function12;
                                    Function0 function58 = function40;
                                    switch (i617) {
                                        case 0:
                                            function58.mo47invoke();
                                            function41122.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function58.mo47invoke();
                                            function41122.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX11);
                        } else {
                            final int i617 = 0;
                            objX11 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i618 = i617;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function41122 = function12;
                                    Function0 function58 = function40;
                                    switch (i618) {
                                        case 0:
                                            function58.mo47invoke();
                                            function41122.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function58.mo47invoke();
                                            function41122.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX11);
                        }
                        Function0 function58 = (Function0) objX11;
                        if (i55 == 4) {
                            z37 = true;
                        } else {
                            z37 = false;
                        }
                        if (i54 == 67108864) {
                            z38 = true;
                        } else {
                            z38 = false;
                        }
                        zY3 = z37 | z38 | gapComposer2.y(focusedProductUiModel4);
                        objX12 = gapComposer2.x();
                        if (zY3) {
                            objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                            gapComposer2.q(objX12);
                        } else {
                            objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                            gapComposer2.q(objX12);
                        }
                        function33 = function40;
                        ProductFocusDialogKt.d(null, focusedProductUiModel4, str2, function41120, function41121, function58, (Function0) objX12, gapComposer2, 0);
                        gapComposer2.Z(false);
                    } else {
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    }
                    function40 = function33;
                    objX9 = new ee0(function40, 13);
                    gapComposer2.q(objX9);
                    Function0 function41122 = (Function0) objX9;
                    if (i55 == 4) {
                        z33 = true;
                    } else {
                        z33 = false;
                    }
                    if ((i44 & 57344) == 16384) {
                        z34 = true;
                    } else {
                        z34 = false;
                    }
                    zY = z34 | z33 | gapComposer2.y(focusedProductUiModel4);
                    objX10 = gapComposer2.x();
                    if (zY) {
                        final int i618 = 1;
                        objX10 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i619 = i618;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function41123 = function4;
                                Function0 function59 = function40;
                                switch (i619) {
                                    case 0:
                                        function59.mo47invoke();
                                        function41123.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function59.mo47invoke();
                                        function41123.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    } else {
                        final int i619 = 1;
                        objX10 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6110 = i619;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function41123 = function4;
                                Function0 function59 = function40;
                                switch (i6110) {
                                    case 0:
                                        function59.mo47invoke();
                                        function41123.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function59.mo47invoke();
                                        function41123.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    }
                    Function0 function41123 = (Function0) objX10;
                    if (i55 == 4) {
                        z35 = true;
                    } else {
                        z35 = false;
                    }
                    if (i53 == 131072) {
                        z36 = true;
                    } else {
                        z36 = false;
                    }
                    zY2 = z36 | z35 | gapComposer2.y(focusedProductUiModel4);
                    objX11 = gapComposer2.x();
                    if (zY2) {
                        final int i6110 = 0;
                        objX11 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6111 = i6110;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function41124 = function12;
                                Function0 function59 = function40;
                                switch (i6111) {
                                    case 0:
                                        function59.mo47invoke();
                                        function41124.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function59.mo47invoke();
                                        function41124.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX11);
                    } else {
                        final int i6111 = 0;
                        objX11 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6112 = i6111;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function41124 = function12;
                                Function0 function59 = function40;
                                switch (i6112) {
                                    case 0:
                                        function59.mo47invoke();
                                        function41124.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function59.mo47invoke();
                                        function41124.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX11);
                    }
                    Function0 function59 = (Function0) objX11;
                    if (i55 == 4) {
                        z37 = true;
                    } else {
                        z37 = false;
                    }
                    if (i54 == 67108864) {
                        z38 = true;
                    } else {
                        z38 = false;
                    }
                    zY3 = z37 | z38 | gapComposer2.y(focusedProductUiModel4);
                    objX12 = gapComposer2.x();
                    if (zY3) {
                        objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                        gapComposer2.q(objX12);
                    } else {
                        objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                        gapComposer2.q(objX12);
                    }
                    function33 = function40;
                    ProductFocusDialogKt.d(null, focusedProductUiModel4, str2, function41122, function41123, function59, (Function0) objX12, gapComposer2, 0);
                    gapComposer2.Z(false);
                }
                z7 = z13;
                function19 = function39;
                focusedProductUiModel2 = focusedProductUiModel4;
                gapComposer = gapComposer2;
                lazyListState2 = lazyListState5;
                function20 = function38;
                function21 = function35;
                function18 = function34;
                function15 = function36;
                f4 = f10;
                function14 = function33;
                z9 = z30;
                z8 = z31;
                function17 = function29;
                function16 = function37;
            } else {
                function12 = function5;
                function13 = function8;
                gapComposerH.D();
                z7 = z3;
                focusedProductUiModel2 = focusedProductUiModel;
                lazyListState2 = lazyListState;
                function14 = function0;
                function15 = function7;
                function16 = function9;
                function17 = function10;
                function18 = function11;
                f4 = f3;
                z8 = z4;
                gapComposer = gapComposerH;
                z9 = z5;
                function19 = function1;
                function20 = function2;
                function21 = function3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Function1 function510 = function12;
                final Function2 function511 = function13;
                final Modifier modifier4 = modifierE;
                recomposeScopeImplB0.d = new Function2() { // from class: mk0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        ((Integer) obj3).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        int iA3 = RecomposeScopeImplKt.a(i4);
                        PLPKt.a(modifier4, gridModes, f4, num, z8, z9, z7, lazyPagingItems, focusedProductUiModel2, lazyListState2, function14, function19, function20, function21, function4, function510, function6, function15, function511, function16, function17, function18, (Composer) obj2, iA, iA2, iA3, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        f3 = f2;
        int i511 = i56 | i57;
        if (gapComposerH.K(num)) {
            i6 = 2048;
        } else {
            i6 = 1024;
        }
        i7 = i511 | i6;
        i8 = i5 & 16;
        if (i8 != 0) {
            i10 = i7 | 24576;
            z4 = z;
        } else {
            z4 = z;
            if (gapComposerH.b(z4)) {
                i9 = 16384;
            } else {
                i9 = 8192;
            }
            i10 = i7 | i9;
        }
        i11 = i5 & 32;
        if (i11 != 0) {
            i13 = i10 | ImageMetadata.EDGE_MODE;
            z5 = z2;
        } else {
            z5 = z2;
            if (gapComposerH.b(z5)) {
                i12 = 131072;
            } else {
                i12 = 65536;
            }
            i13 = i10 | i12;
        }
        i14 = i5 & 64;
        if (i14 != 0) {
            if ((i2 & 1572864) == 0) {
                i15 = 1048576;
                if (gapComposerH.b(z3)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i13 |= i16;
            }
            if (gapComposerH.y(lazyPagingItems)) {
                i17 = 8388608;
            } else {
                i17 = 4194304;
            }
            i18 = i13 | i17;
            i19 = i5 & 256;
            if (i19 != 0) {
                i21 = i18 | 100663296;
            } else {
                if (gapComposerH.y(focusedProductUiModel)) {
                    i20 = 67108864;
                } else {
                    i20 = 33554432;
                }
                i21 = i18 | i20;
            }
            if ((i5 & 512) == 0) {
                i22 = 268435456;
            } else {
                i22 = 268435456;
            }
            i23 = i21 | i22;
            i24 = i5 & 1024;
            if (i24 != 0) {
                i26 = i3 | 6;
            } else {
                if (gapComposerH.y(function0)) {
                    i25 = 4;
                } else {
                    i25 = 2;
                }
                i26 = i3 | i25;
            }
            i27 = i5 & 2048;
            if (i27 != 0) {
                i29 = i26 | 48;
            } else {
                if (gapComposerH.y(function1)) {
                    i28 = 32;
                } else {
                    i28 = 16;
                }
                i29 = i26 | i28;
            }
            i30 = i29;
            i31 = i5 & 4096;
            if (i31 != 0) {
                i33 = i30 | KyberEngine.KyberPolyBytes;
            } else {
                if (gapComposerH.y(function2)) {
                    i32 = 256;
                } else {
                    i32 = 128;
                }
                i33 = i30 | i32;
            }
            i34 = i5 & 8192;
            if (i34 != 0) {
                i36 = i33 | 3072;
            } else {
                i35 = i33;
                if ((i3 & 3072) == 0) {
                    i36 = i35 | (gapComposerH.y(function3) ? 2048 : 1024);
                } else {
                    i36 = i35;
                }
            }
            if ((i3 & 24576) == 0) {
                i36 |= gapComposerH.y(function4) ? 16384 : 8192;
            }
            int i512 = i36 | (gapComposerH.y(function5) ? 131072 : 65536);
            if (gapComposerH.y(function6)) {
                i37 = i15;
            } else {
                i37 = 524288;
            }
            i38 = i512 | i37;
            i39 = i5 & 131072;
            if (i39 != 0) {
                i40 = i38 | 12582912;
            } else {
                i40 = i38 | (gapComposerH.y(function7) ? 8388608 : 4194304);
            }
            i41 = i40 | (gapComposerH.y(function8) ? 67108864 : 33554432);
            i42 = i5 & 524288;
            if (i42 != 0) {
                i43 = i41 | 805306368;
            } else {
                i43 = i41 | (gapComposerH.y(function9) ? PKIFailureInfo.duplicateCertReq : 268435456);
            }
            i44 = i43;
            i45 = i5 & i15;
            if (i45 != 0) {
                i46 = 6;
            } else if ((i4 & 6) == 0) {
                if (gapComposerH.y(function10)) {
                    i47 = 4;
                } else {
                    i47 = 2;
                }
                i46 = i4 | i47;
            } else {
                i46 = i4;
            }
            i48 = i5 & PKIFailureInfo.badSenderNonce;
            if (i48 != 0) {
                i50 = i46 | 48;
            } else {
                if (gapComposerH.y(function11)) {
                    i49 = 32;
                } else {
                    i49 = 16;
                }
                i50 = i46 | i49;
            }
            if ((i23 & 306783379) != 306783378) {
            }
            if (gapComposerH.p(i23 & 1, z6)) {
                gapComposerH.y0();
                i51 = i2 & 1;
                composer$Companion$Empty$1 = Composer.Companion.f7939a;
                if (i51 != 0) {
                    if ((i5 & 4) != 0) {
                        if (gridModes.equals(GridModes.Full.f55430b)) {
                            f6 = 1.0f;
                        } else {
                            if (!gridModes.equals(GridModes.Reduced.f55431b)) {
                                v40.g();
                                return;
                            }
                            f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        }
                        i23 &= -897;
                        f3 = f6;
                    }
                    if (i8 != 0) {
                        z4 = true;
                    }
                    if (i11 != 0) {
                        z5 = false;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    } else {
                        z10 = z3;
                    }
                    if (i19 != 0) {
                        focusedProductUiModel3 = null;
                    } else {
                        focusedProductUiModel3 = focusedProductUiModel;
                    }
                    if ((i5 & 512) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                        i23 &= -1879048193;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i24 != 0) {
                        objX5 = gapComposerH.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            objX5 = new ii0(16);
                            gapComposerH.q(objX5);
                        }
                        function22 = (Function0) objX5;
                    } else {
                        lazyListStateA = lazyListStateA;
                        function22 = function0;
                    }
                    if (i27 != 0) {
                        function23 = null;
                    } else {
                        function23 = function1;
                    }
                    if (i31 != 0) {
                        function24 = null;
                    } else {
                        function24 = function2;
                    }
                    if (i34 != 0) {
                        function25 = null;
                    } else {
                        function25 = function3;
                    }
                    Function0 function411111 = function22;
                    if (i39 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new aj0(10);
                            gapComposerH.q(objX4);
                        }
                        function26 = (Function2) objX4;
                    } else {
                        function23 = function23;
                        function26 = function7;
                    }
                    if (i42 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = new fj0(24);
                            gapComposerH.q(objX3);
                        }
                        function27 = (Function1) objX3;
                    } else {
                        function26 = function26;
                        function27 = function9;
                    }
                    if (i45 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new fj0(25);
                            gapComposerH.q(objX2);
                        }
                        function28 = (Function1) objX2;
                    } else {
                        function27 = function27;
                        function28 = function10;
                    }
                    if (i48 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new fj0(26);
                            gapComposerH.q(objX);
                        }
                        function29 = function28;
                        function30 = (Function1) objX;
                    } else {
                        function29 = function28;
                        function30 = function11;
                    }
                    i52 = i23;
                    f5 = f3;
                    z11 = z4;
                    z12 = z5;
                    z13 = z10;
                    lazyListState3 = lazyListStateA;
                    function31 = function23;
                    function32 = function25;
                    function33 = function411111;
                } else {
                    if ((i5 & 4) != 0) {
                        if (gridModes.equals(GridModes.Full.f55430b)) {
                            f6 = 1.0f;
                        } else {
                            if (!gridModes.equals(GridModes.Reduced.f55431b)) {
                                v40.g();
                                return;
                            }
                            f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                        }
                        i23 &= -897;
                        f3 = f6;
                    }
                    if (i8 != 0) {
                        z4 = true;
                    }
                    if (i11 != 0) {
                        z5 = false;
                    }
                    if (i14 != 0) {
                        z10 = true;
                    } else {
                        z10 = z3;
                    }
                    if (i19 != 0) {
                        focusedProductUiModel3 = null;
                    } else {
                        focusedProductUiModel3 = focusedProductUiModel;
                    }
                    if ((i5 & 512) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                        i23 &= -1879048193;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i24 != 0) {
                        objX5 = gapComposerH.x();
                        if (objX5 == composer$Companion$Empty$1) {
                            objX5 = new ii0(16);
                            gapComposerH.q(objX5);
                        }
                        function22 = (Function0) objX5;
                    } else {
                        lazyListStateA = lazyListStateA;
                        function22 = function0;
                    }
                    if (i27 != 0) {
                        function23 = null;
                    } else {
                        function23 = function1;
                    }
                    if (i31 != 0) {
                        function24 = null;
                    } else {
                        function24 = function2;
                    }
                    if (i34 != 0) {
                        function25 = null;
                    } else {
                        function25 = function3;
                    }
                    Function0 function411112 = function22;
                    if (i39 != 0) {
                        objX4 = gapComposerH.x();
                        if (objX4 == composer$Companion$Empty$1) {
                            objX4 = new aj0(10);
                            gapComposerH.q(objX4);
                        }
                        function26 = (Function2) objX4;
                    } else {
                        function23 = function23;
                        function26 = function7;
                    }
                    if (i42 != 0) {
                        objX3 = gapComposerH.x();
                        if (objX3 == composer$Companion$Empty$1) {
                            objX3 = new fj0(24);
                            gapComposerH.q(objX3);
                        }
                        function27 = (Function1) objX3;
                    } else {
                        function26 = function26;
                        function27 = function9;
                    }
                    if (i45 != 0) {
                        objX2 = gapComposerH.x();
                        if (objX2 == composer$Companion$Empty$1) {
                            objX2 = new fj0(25);
                            gapComposerH.q(objX2);
                        }
                        function28 = (Function1) objX2;
                    } else {
                        function27 = function27;
                        function28 = function10;
                    }
                    if (i48 != 0) {
                        objX = gapComposerH.x();
                        if (objX == composer$Companion$Empty$1) {
                            objX = new fj0(26);
                            gapComposerH.q(objX);
                        }
                        function29 = function28;
                        function30 = (Function1) objX;
                    } else {
                        function29 = function28;
                        function30 = function11;
                    }
                    i52 = i23;
                    f5 = f3;
                    z11 = z4;
                    z12 = z5;
                    z13 = z10;
                    lazyListState3 = lazyListStateA;
                    function31 = function23;
                    function32 = function25;
                    function33 = function411112;
                }
                gapComposerH.a0();
                OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                z14 = z12;
                f7 = LVAppDesignKitTheme.l(gapComposerH).m;
                z15 = z11;
                lazyListState4 = lazyListState3;
                if ((i50 & 14) == 4) {
                    z16 = true;
                } else {
                    z16 = false;
                }
                objX6 = gapComposerH.x();
                if (z16) {
                    objX6 = new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, function29, null, 5, null);
                    gapComposerH.q(objX6);
                } else {
                    objX6 = new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, function29, null, 5, null);
                    gapComposerH.q(objX6);
                }
                NestedScroll nestedScroll4 = (NestedScroll) objX6;
                if (num != null) {
                    gapComposerH.L(-1642483568);
                    Function1 function4121 = function30;
                    ScrollProgressTrackerKt.a(lazyListState4, num.intValue(), gridModes.f55429a, function4121, gapComposerH, ((i52 >> 27) & 14) | ((i52 >> 6) & 112) | ((i50 << 6) & 7168));
                    lazyListState5 = lazyListState4;
                    function34 = function4121;
                    gapComposerH.Z(false);
                } else {
                    function34 = function30;
                    lazyListState5 = lazyListState4;
                    gapComposerH.L(-1642237552);
                    gapComposerH.Z(false);
                }
                objX7 = gapComposerH.x();
                if (objX7 == composer$Companion$Empty$1) {
                    objX7 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                    gapComposerH.q(objX7);
                }
                mutableState = (MutableState) objX7;
                objX8 = gapComposerH.x();
                if (objX8 == composer$Companion$Empty$1) {
                    objX8 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                    gapComposerH.q(objX8);
                }
                mutableState2 = (MutableState) objX8;
                Modifier modifierA4 = AlphaKt.a(NestedScrollModifierKt.a(modifierE.o(SizeKt.f5052c), nestedScroll4, null), f5);
                PaddingValuesImpl paddingValuesImplE4 = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
                if ((i44 & 112) == 32) {
                    z17 = true;
                } else {
                    z17 = false;
                }
                if ((i52 & 29360128) != 8388608) {
                    z18 = true;
                } else {
                    z18 = true;
                }
                boolean z312 = z17 | z18;
                if ((i52 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                boolean z4114 = z312 | z19;
                if ((i52 & 57344) == 16384) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                boolean z4115 = z4114 | z20;
                if ((i44 & 7168) == 2048) {
                    z21 = true;
                } else {
                    z21 = false;
                }
                boolean z4116 = z4115 | z21;
                i53 = i44 & ImageMetadata.JPEG_GPS_COORDINATES;
                if (i53 == 131072) {
                    z22 = true;
                } else {
                    z22 = false;
                }
                boolean z4117 = z4116 | z22;
                if ((i44 & 29360128) == 8388608) {
                    z23 = true;
                } else {
                    z23 = false;
                }
                boolean z4118 = z4117 | z23;
                if ((i44 & 3670016) == i15) {
                    z24 = true;
                } else {
                    z24 = false;
                }
                boolean z4119 = z4118 | z24;
                i54 = 234881024 & i44;
                if (i54 == 67108864) {
                    z25 = true;
                } else {
                    z25 = false;
                }
                boolean z41110 = z4119 | z25;
                float f11 = f5;
                if ((i44 & 1879048192) == 536870912) {
                    z26 = true;
                } else {
                    z26 = false;
                }
                boolean z41111 = z41110 | z26;
                if ((i52 & 3670016) == 1048576) {
                    z27 = true;
                } else {
                    z27 = false;
                }
                boolean zC4 = z41111 | z27 | gapComposerH.c(f7);
                if ((i44 & 896) == 256) {
                    z28 = true;
                } else {
                    z28 = false;
                }
                z29 = zC4 | z28;
                Object objX16 = gapComposerH.x();
                if (z29) {
                    final Function1 function411113 = function31;
                    final Function1 function411114 = function32;
                    final Function2 function411115 = function26;
                    final Function1 function411116 = function27;
                    final Function1 function411117 = function24;
                    str = null;
                    z30 = z14;
                    z31 = z15;
                    obj = new Function1() { // from class: nk0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            LazyListScope lazyListScope = (LazyListScope) obj2;
                            lazyListScope.getClass();
                            Function1 function420 = function411113;
                            if (function420 != null) {
                                function420.invoke(lazyListScope);
                            }
                            LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                            boolean z41112 = lazyPagingItems2.d().f18562a instanceof LoadState.Error;
                            boolean z41113 = z30;
                            if ((z41112 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Error) && lazyPagingItems2.b() == 0)) && (lazyPagingItems2.b() == 0 || z41113)) {
                                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1689706375, true, new td(((Dp) mutableState2.getF10755b()).f11006b - ((Dp) mutableState.getF10755b()).f11006b, 5)), 3);
                            } else {
                                boolean z50 = lazyPagingItems2.d().f18562a instanceof LoadState.Loading;
                                GridModes gridModes2 = gridModes;
                                if ((z50 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Loading) && lazyPagingItems2.b() == 0)) && z31 && (lazyPagingItems2.b() == 0 || z41113)) {
                                    PLPSkeletonKt.d(lazyListScope, gridModes2);
                                } else {
                                    Function1 function421 = function411114;
                                    if (function421 == null || lazyPagingItems2.b() != 0) {
                                        PLPItemsKt.d(lazyListScope, gridModes2, lazyPagingItems2, function5, function411115, function6, function8, function411116);
                                        if (lazyPagingItems2.d().f18564c instanceof LoadState.Loading) {
                                            ComposableSingletons$PLPItemsKt.f62810a.getClass();
                                            LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPItemsKt.f62811b, 3);
                                        }
                                        if (z13 && (lazyPagingItems2.d().f18564c instanceof LoadState.NotLoading)) {
                                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1598249487, true, new td(f7, 6)), 3);
                                        }
                                        Function1 function512 = function411117;
                                        if (function512 != null) {
                                            function512.invoke(lazyListScope);
                                        } else {
                                            ComposableSingletons$PLPKt.f62813a.getClass();
                                            LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPKt.f62814b, 3);
                                        }
                                    } else {
                                        function421.invoke(lazyListScope);
                                    }
                                }
                            }
                            return Unit.f71739a;
                        }
                    };
                    function35 = function411114;
                    function36 = function411115;
                    function37 = function411116;
                    function38 = function411117;
                    gapComposerH = gapComposerH;
                    function39 = function411113;
                    function12 = function5;
                    gapComposerH.q(obj);
                } else {
                    final Function1 function411118 = function31;
                    final Function1 function411119 = function32;
                    final Function2 function4111110 = function26;
                    final Function1 function4111111 = function27;
                    final Function1 function4111112 = function24;
                    str = null;
                    z30 = z14;
                    z31 = z15;
                    obj = new Function1() { // from class: nk0
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj2) {
                            LazyListScope lazyListScope = (LazyListScope) obj2;
                            lazyListScope.getClass();
                            Function1 function420 = function411118;
                            if (function420 != null) {
                                function420.invoke(lazyListScope);
                            }
                            LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                            boolean z41112 = lazyPagingItems2.d().f18562a instanceof LoadState.Error;
                            boolean z41113 = z30;
                            if ((z41112 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Error) && lazyPagingItems2.b() == 0)) && (lazyPagingItems2.b() == 0 || z41113)) {
                                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1689706375, true, new td(((Dp) mutableState2.getF10755b()).f11006b - ((Dp) mutableState.getF10755b()).f11006b, 5)), 3);
                            } else {
                                boolean z50 = lazyPagingItems2.d().f18562a instanceof LoadState.Loading;
                                GridModes gridModes2 = gridModes;
                                if ((z50 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Loading) && lazyPagingItems2.b() == 0)) && z31 && (lazyPagingItems2.b() == 0 || z41113)) {
                                    PLPSkeletonKt.d(lazyListScope, gridModes2);
                                } else {
                                    Function1 function421 = function411119;
                                    if (function421 == null || lazyPagingItems2.b() != 0) {
                                        PLPItemsKt.d(lazyListScope, gridModes2, lazyPagingItems2, function5, function4111110, function6, function8, function4111111);
                                        if (lazyPagingItems2.d().f18564c instanceof LoadState.Loading) {
                                            ComposableSingletons$PLPItemsKt.f62810a.getClass();
                                            LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPItemsKt.f62811b, 3);
                                        }
                                        if (z13 && (lazyPagingItems2.d().f18564c instanceof LoadState.NotLoading)) {
                                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1598249487, true, new td(f7, 6)), 3);
                                        }
                                        Function1 function512 = function4111112;
                                        if (function512 != null) {
                                            function512.invoke(lazyListScope);
                                        } else {
                                            ComposableSingletons$PLPKt.f62813a.getClass();
                                            LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPKt.f62814b, 3);
                                        }
                                    } else {
                                        function421.invoke(lazyListScope);
                                    }
                                }
                            }
                            return Unit.f71739a;
                        }
                    };
                    function35 = function411119;
                    function36 = function4111110;
                    function37 = function4111111;
                    function38 = function4111112;
                    gapComposerH = gapComposerH;
                    function39 = function411118;
                    function12 = function5;
                    gapComposerH.q(obj);
                }
                gapComposer2 = gapComposerH;
                LazyDslKt.a(modifierA4, lazyListState5, paddingValuesImplE4, null, null, null, false, null, (Function1) obj, gapComposer2, (i52 >> 24) & 112, 504);
                focusedProductUiModel4 = focusedProductUiModel3;
                if (focusedProductUiModel4 == null) {
                    gapComposer2.L(-1640203922);
                    gapComposer2.Z(false);
                } else {
                    gapComposer2.L(-1640203921);
                    assetUiModel = (AssetUiModel) CollectionsKt.G(focusedProductUiModel4.f62874b, ((PlpProductUiModel.SkuDataUiModel) focusedProductUiModel4.f62873a.f62934a.getF10755b()).f62947f);
                    if (assetUiModel != null) {
                        str2 = str;
                    } else {
                        str2 = str;
                    }
                    i55 = i44 & 14;
                    if (i55 == 4) {
                        z32 = true;
                    } else {
                        z32 = false;
                    }
                    objX9 = gapComposer2.x();
                    if (z32) {
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                        if (objX9 != composer$Companion$Empty$2) {
                            function40 = function33;
                        }
                        Function0 function41124 = (Function0) objX9;
                        if (i55 == 4) {
                            z33 = true;
                        } else {
                            z33 = false;
                        }
                        if ((i44 & 57344) == 16384) {
                            z34 = true;
                        } else {
                            z34 = false;
                        }
                        zY = z34 | z33 | gapComposer2.y(focusedProductUiModel4);
                        objX10 = gapComposer2.x();
                        if (zY) {
                            final int i6112 = 1;
                            objX10 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i6113 = i6112;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function41125 = function4;
                                    Function0 function512 = function40;
                                    switch (i6113) {
                                        case 0:
                                            function512.mo47invoke();
                                            function41125.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function512.mo47invoke();
                                            function41125.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        } else {
                            final int i6113 = 1;
                            objX10 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i6114 = i6113;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function41125 = function4;
                                    Function0 function512 = function40;
                                    switch (i6114) {
                                        case 0:
                                            function512.mo47invoke();
                                            function41125.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function512.mo47invoke();
                                            function41125.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX10);
                        }
                        Function0 function41125 = (Function0) objX10;
                        if (i55 == 4) {
                            z35 = true;
                        } else {
                            z35 = false;
                        }
                        if (i53 == 131072) {
                            z36 = true;
                        } else {
                            z36 = false;
                        }
                        zY2 = z36 | z35 | gapComposer2.y(focusedProductUiModel4);
                        objX11 = gapComposer2.x();
                        if (zY2) {
                            final int i6114 = 0;
                            objX11 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i6115 = i6114;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function41126 = function12;
                                    Function0 function512 = function40;
                                    switch (i6115) {
                                        case 0:
                                            function512.mo47invoke();
                                            function41126.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function512.mo47invoke();
                                            function41126.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX11);
                        } else {
                            final int i6115 = 0;
                            objX11 = new Function0() { // from class: lk0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i6116 = i6115;
                                    FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                    Function1 function41126 = function12;
                                    Function0 function512 = function40;
                                    switch (i6116) {
                                        case 0:
                                            function512.mo47invoke();
                                            function41126.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                        default:
                                            function512.mo47invoke();
                                            function41126.invoke(focusedProductUiModel5.f62873a);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            gapComposer2.q(objX11);
                        }
                        Function0 function512 = (Function0) objX11;
                        if (i55 == 4) {
                            z37 = true;
                        } else {
                            z37 = false;
                        }
                        if (i54 == 67108864) {
                            z38 = true;
                        } else {
                            z38 = false;
                        }
                        zY3 = z37 | z38 | gapComposer2.y(focusedProductUiModel4);
                        objX12 = gapComposer2.x();
                        if (zY3) {
                            objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                            gapComposer2.q(objX12);
                        } else {
                            objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                            gapComposer2.q(objX12);
                        }
                        function33 = function40;
                        ProductFocusDialogKt.d(null, focusedProductUiModel4, str2, function41124, function41125, function512, (Function0) objX12, gapComposer2, 0);
                        gapComposer2.Z(false);
                    } else {
                        composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    }
                    function40 = function33;
                    objX9 = new ee0(function40, 13);
                    gapComposer2.q(objX9);
                    Function0 function41126 = (Function0) objX9;
                    if (i55 == 4) {
                        z33 = true;
                    } else {
                        z33 = false;
                    }
                    if ((i44 & 57344) == 16384) {
                        z34 = true;
                    } else {
                        z34 = false;
                    }
                    zY = z34 | z33 | gapComposer2.y(focusedProductUiModel4);
                    objX10 = gapComposer2.x();
                    if (zY) {
                        final int i6116 = 1;
                        objX10 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6117 = i6116;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function41127 = function4;
                                Function0 function513 = function40;
                                switch (i6117) {
                                    case 0:
                                        function513.mo47invoke();
                                        function41127.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function513.mo47invoke();
                                        function41127.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    } else {
                        final int i6117 = 1;
                        objX10 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6118 = i6117;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function41127 = function4;
                                Function0 function513 = function40;
                                switch (i6118) {
                                    case 0:
                                        function513.mo47invoke();
                                        function41127.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function513.mo47invoke();
                                        function41127.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    }
                    Function0 function41127 = (Function0) objX10;
                    if (i55 == 4) {
                        z35 = true;
                    } else {
                        z35 = false;
                    }
                    if (i53 == 131072) {
                        z36 = true;
                    } else {
                        z36 = false;
                    }
                    zY2 = z36 | z35 | gapComposer2.y(focusedProductUiModel4);
                    objX11 = gapComposer2.x();
                    if (zY2) {
                        final int i6118 = 0;
                        objX11 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i6119 = i6118;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function41128 = function12;
                                Function0 function513 = function40;
                                switch (i6119) {
                                    case 0:
                                        function513.mo47invoke();
                                        function41128.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function513.mo47invoke();
                                        function41128.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX11);
                    } else {
                        final int i6119 = 0;
                        objX11 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i61110 = i6119;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function41128 = function12;
                                Function0 function513 = function40;
                                switch (i61110) {
                                    case 0:
                                        function513.mo47invoke();
                                        function41128.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function513.mo47invoke();
                                        function41128.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX11);
                    }
                    Function0 function513 = (Function0) objX11;
                    if (i55 == 4) {
                        z37 = true;
                    } else {
                        z37 = false;
                    }
                    if (i54 == 67108864) {
                        z38 = true;
                    } else {
                        z38 = false;
                    }
                    zY3 = z37 | z38 | gapComposer2.y(focusedProductUiModel4);
                    objX12 = gapComposer2.x();
                    if (zY3) {
                        objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                        gapComposer2.q(objX12);
                    } else {
                        objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                        gapComposer2.q(objX12);
                    }
                    function33 = function40;
                    ProductFocusDialogKt.d(null, focusedProductUiModel4, str2, function41126, function41127, function513, (Function0) objX12, gapComposer2, 0);
                    gapComposer2.Z(false);
                }
                z7 = z13;
                function19 = function39;
                focusedProductUiModel2 = focusedProductUiModel4;
                gapComposer = gapComposer2;
                lazyListState2 = lazyListState5;
                function20 = function38;
                function21 = function35;
                function18 = function34;
                function15 = function36;
                f4 = f11;
                function14 = function33;
                z9 = z30;
                z8 = z31;
                function17 = function29;
                function16 = function37;
            } else {
                function12 = function5;
                function13 = function8;
                gapComposerH.D();
                z7 = z3;
                focusedProductUiModel2 = focusedProductUiModel;
                lazyListState2 = lazyListState;
                function14 = function0;
                function15 = function7;
                function16 = function9;
                function17 = function10;
                function18 = function11;
                f4 = f3;
                z8 = z4;
                gapComposer = gapComposerH;
                z9 = z5;
                function19 = function1;
                function20 = function2;
                function21 = function3;
            }
            recomposeScopeImplB0 = gapComposer.b0();
            if (recomposeScopeImplB0 != null) {
                final Function1 function514 = function12;
                final Function2 function515 = function13;
                final Modifier modifier5 = modifierE;
                recomposeScopeImplB0.d = new Function2() { // from class: mk0
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        ((Integer) obj3).getClass();
                        int iA = RecomposeScopeImplKt.a(i2 | 1);
                        int iA2 = RecomposeScopeImplKt.a(i3);
                        int iA3 = RecomposeScopeImplKt.a(i4);
                        PLPKt.a(modifier5, gridModes, f4, num, z8, z9, z7, lazyPagingItems, focusedProductUiModel2, lazyListState2, function14, function19, function20, function21, function4, function514, function6, function15, function515, function16, function17, function18, (Composer) obj2, iA, iA2, iA3, i5);
                        return Unit.f71739a;
                    }
                };
            }
        }
        i13 |= 1572864;
        i15 = 1048576;
        if (gapComposerH.y(lazyPagingItems)) {
            i17 = 8388608;
        } else {
            i17 = 4194304;
        }
        i18 = i13 | i17;
        i19 = i5 & 256;
        if (i19 != 0) {
            i21 = i18 | 100663296;
        } else {
            if (gapComposerH.y(focusedProductUiModel)) {
                i20 = 67108864;
            } else {
                i20 = 33554432;
            }
            i21 = i18 | i20;
        }
        if ((i5 & 512) == 0) {
            i22 = 268435456;
        } else {
            i22 = 268435456;
        }
        i23 = i21 | i22;
        i24 = i5 & 1024;
        if (i24 != 0) {
            i26 = i3 | 6;
        } else {
            if (gapComposerH.y(function0)) {
                i25 = 4;
            } else {
                i25 = 2;
            }
            i26 = i3 | i25;
        }
        i27 = i5 & 2048;
        if (i27 != 0) {
            i29 = i26 | 48;
        } else {
            if (gapComposerH.y(function1)) {
                i28 = 32;
            } else {
                i28 = 16;
            }
            i29 = i26 | i28;
        }
        i30 = i29;
        i31 = i5 & 4096;
        if (i31 != 0) {
            i33 = i30 | KyberEngine.KyberPolyBytes;
        } else {
            if (gapComposerH.y(function2)) {
                i32 = 256;
            } else {
                i32 = 128;
            }
            i33 = i30 | i32;
        }
        i34 = i5 & 8192;
        if (i34 != 0) {
            i36 = i33 | 3072;
        } else {
            i35 = i33;
            if ((i3 & 3072) == 0) {
                i36 = i35 | (gapComposerH.y(function3) ? 2048 : 1024);
            } else {
                i36 = i35;
            }
        }
        if ((i3 & 24576) == 0) {
            i36 |= gapComposerH.y(function4) ? 16384 : 8192;
        }
        int i513 = i36 | (gapComposerH.y(function5) ? 131072 : 65536);
        if (gapComposerH.y(function6)) {
            i37 = i15;
        } else {
            i37 = 524288;
        }
        i38 = i513 | i37;
        i39 = i5 & 131072;
        if (i39 != 0) {
            i40 = i38 | 12582912;
        } else {
            i40 = i38 | (gapComposerH.y(function7) ? 8388608 : 4194304);
        }
        i41 = i40 | (gapComposerH.y(function8) ? 67108864 : 33554432);
        i42 = i5 & 524288;
        if (i42 != 0) {
            i43 = i41 | 805306368;
        } else {
            i43 = i41 | (gapComposerH.y(function9) ? PKIFailureInfo.duplicateCertReq : 268435456);
        }
        i44 = i43;
        i45 = i5 & i15;
        if (i45 != 0) {
            i46 = 6;
        } else if ((i4 & 6) == 0) {
            if (gapComposerH.y(function10)) {
                i47 = 4;
            } else {
                i47 = 2;
            }
            i46 = i4 | i47;
        } else {
            i46 = i4;
        }
        i48 = i5 & PKIFailureInfo.badSenderNonce;
        if (i48 != 0) {
            i50 = i46 | 48;
        } else {
            if (gapComposerH.y(function11)) {
                i49 = 32;
            } else {
                i49 = 16;
            }
            i50 = i46 | i49;
        }
        if ((i23 & 306783379) != 306783378) {
        }
        if (gapComposerH.p(i23 & 1, z6)) {
            gapComposerH.y0();
            i51 = i2 & 1;
            composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (i51 != 0) {
                if ((i5 & 4) != 0) {
                    if (gridModes.equals(GridModes.Full.f55430b)) {
                        f6 = 1.0f;
                    } else {
                        if (!gridModes.equals(GridModes.Reduced.f55431b)) {
                            v40.g();
                            return;
                        }
                        f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                    i23 &= -897;
                    f3 = f6;
                }
                if (i8 != 0) {
                    z4 = true;
                }
                if (i11 != 0) {
                    z5 = false;
                }
                if (i14 != 0) {
                    z10 = true;
                } else {
                    z10 = z3;
                }
                if (i19 != 0) {
                    focusedProductUiModel3 = null;
                } else {
                    focusedProductUiModel3 = focusedProductUiModel;
                }
                if ((i5 & 512) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    i23 &= -1879048193;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i24 != 0) {
                    objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new ii0(16);
                        gapComposerH.q(objX5);
                    }
                    function22 = (Function0) objX5;
                } else {
                    lazyListStateA = lazyListStateA;
                    function22 = function0;
                }
                if (i27 != 0) {
                    function23 = null;
                } else {
                    function23 = function1;
                }
                if (i31 != 0) {
                    function24 = null;
                } else {
                    function24 = function2;
                }
                if (i34 != 0) {
                    function25 = null;
                } else {
                    function25 = function3;
                }
                Function0 function4111113 = function22;
                if (i39 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new aj0(10);
                        gapComposerH.q(objX4);
                    }
                    function26 = (Function2) objX4;
                } else {
                    function23 = function23;
                    function26 = function7;
                }
                if (i42 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new fj0(24);
                        gapComposerH.q(objX3);
                    }
                    function27 = (Function1) objX3;
                } else {
                    function26 = function26;
                    function27 = function9;
                }
                if (i45 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new fj0(25);
                        gapComposerH.q(objX2);
                    }
                    function28 = (Function1) objX2;
                } else {
                    function27 = function27;
                    function28 = function10;
                }
                if (i48 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new fj0(26);
                        gapComposerH.q(objX);
                    }
                    function29 = function28;
                    function30 = (Function1) objX;
                } else {
                    function29 = function28;
                    function30 = function11;
                }
                i52 = i23;
                f5 = f3;
                z11 = z4;
                z12 = z5;
                z13 = z10;
                lazyListState3 = lazyListStateA;
                function31 = function23;
                function32 = function25;
                function33 = function4111113;
            } else {
                if ((i5 & 4) != 0) {
                    if (gridModes.equals(GridModes.Full.f55430b)) {
                        f6 = 1.0f;
                    } else {
                        if (!gridModes.equals(GridModes.Reduced.f55431b)) {
                            v40.g();
                            return;
                        }
                        f6 = Call.Parameters.DEFAULT_CAMERA_ZOOM;
                    }
                    i23 &= -897;
                    f3 = f6;
                }
                if (i8 != 0) {
                    z4 = true;
                }
                if (i11 != 0) {
                    z5 = false;
                }
                if (i14 != 0) {
                    z10 = true;
                } else {
                    z10 = z3;
                }
                if (i19 != 0) {
                    focusedProductUiModel3 = null;
                } else {
                    focusedProductUiModel3 = focusedProductUiModel;
                }
                if ((i5 & 512) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, gapComposerH, 3);
                    i23 &= -1879048193;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i24 != 0) {
                    objX5 = gapComposerH.x();
                    if (objX5 == composer$Companion$Empty$1) {
                        objX5 = new ii0(16);
                        gapComposerH.q(objX5);
                    }
                    function22 = (Function0) objX5;
                } else {
                    lazyListStateA = lazyListStateA;
                    function22 = function0;
                }
                if (i27 != 0) {
                    function23 = null;
                } else {
                    function23 = function1;
                }
                if (i31 != 0) {
                    function24 = null;
                } else {
                    function24 = function2;
                }
                if (i34 != 0) {
                    function25 = null;
                } else {
                    function25 = function3;
                }
                Function0 function4111114 = function22;
                if (i39 != 0) {
                    objX4 = gapComposerH.x();
                    if (objX4 == composer$Companion$Empty$1) {
                        objX4 = new aj0(10);
                        gapComposerH.q(objX4);
                    }
                    function26 = (Function2) objX4;
                } else {
                    function23 = function23;
                    function26 = function7;
                }
                if (i42 != 0) {
                    objX3 = gapComposerH.x();
                    if (objX3 == composer$Companion$Empty$1) {
                        objX3 = new fj0(24);
                        gapComposerH.q(objX3);
                    }
                    function27 = (Function1) objX3;
                } else {
                    function26 = function26;
                    function27 = function9;
                }
                if (i45 != 0) {
                    objX2 = gapComposerH.x();
                    if (objX2 == composer$Companion$Empty$1) {
                        objX2 = new fj0(25);
                        gapComposerH.q(objX2);
                    }
                    function28 = (Function1) objX2;
                } else {
                    function27 = function27;
                    function28 = function10;
                }
                if (i48 != 0) {
                    objX = gapComposerH.x();
                    if (objX == composer$Companion$Empty$1) {
                        objX = new fj0(26);
                        gapComposerH.q(objX);
                    }
                    function29 = function28;
                    function30 = (Function1) objX;
                } else {
                    function29 = function28;
                    function30 = function11;
                }
                i52 = i23;
                f5 = f3;
                z11 = z4;
                z12 = z5;
                z13 = z10;
                lazyListState3 = lazyListStateA;
                function31 = function23;
                function32 = function25;
                function33 = function4111114;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey5 = ComposerKt.f7940a;
            z14 = z12;
            f7 = LVAppDesignKitTheme.l(gapComposerH).m;
            z15 = z11;
            lazyListState4 = lazyListState3;
            if ((i50 & 14) == 4) {
                z16 = true;
            } else {
                z16 = false;
            }
            objX6 = gapComposerH.x();
            if (z16) {
                objX6 = new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, function29, null, 5, null);
                gapComposerH.q(objX6);
            } else {
                objX6 = new NestedScroll(Call.Parameters.DEFAULT_CAMERA_ZOOM, function29, null, 5, null);
                gapComposerH.q(objX6);
            }
            NestedScroll nestedScroll5 = (NestedScroll) objX6;
            if (num != null) {
                gapComposerH.L(-1642483568);
                Function1 function4122 = function30;
                ScrollProgressTrackerKt.a(lazyListState4, num.intValue(), gridModes.f55429a, function4122, gapComposerH, ((i52 >> 27) & 14) | ((i52 >> 6) & 112) | ((i50 << 6) & 7168));
                lazyListState5 = lazyListState4;
                function34 = function4122;
                gapComposerH.Z(false);
            } else {
                function34 = function30;
                lazyListState5 = lazyListState4;
                gapComposerH.L(-1642237552);
                gapComposerH.Z(false);
            }
            objX7 = gapComposerH.x();
            if (objX7 == composer$Companion$Empty$1) {
                objX7 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX7);
            }
            mutableState = (MutableState) objX7;
            objX8 = gapComposerH.x();
            if (objX8 == composer$Companion$Empty$1) {
                objX8 = SnapshotStateKt.g(new Dp(Call.Parameters.DEFAULT_CAMERA_ZOOM));
                gapComposerH.q(objX8);
            }
            mutableState2 = (MutableState) objX8;
            Modifier modifierA5 = AlphaKt.a(NestedScrollModifierKt.a(modifierE.o(SizeKt.f5052c), nestedScroll5, null), f5);
            PaddingValuesImpl paddingValuesImplE5 = PaddingKt.e(Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(gapComposerH).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 13);
            if ((i44 & 112) == 32) {
                z17 = true;
            } else {
                z17 = false;
            }
            if ((i52 & 29360128) != 8388608) {
                z18 = true;
            } else {
                z18 = true;
            }
            boolean z313 = z17 | z18;
            if ((i52 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                z19 = true;
            } else {
                z19 = false;
            }
            boolean z41112 = z313 | z19;
            if ((i52 & 57344) == 16384) {
                z20 = true;
            } else {
                z20 = false;
            }
            boolean z41113 = z41112 | z20;
            if ((i44 & 7168) == 2048) {
                z21 = true;
            } else {
                z21 = false;
            }
            boolean z41114 = z41113 | z21;
            i53 = i44 & ImageMetadata.JPEG_GPS_COORDINATES;
            if (i53 == 131072) {
                z22 = true;
            } else {
                z22 = false;
            }
            boolean z41115 = z41114 | z22;
            if ((i44 & 29360128) == 8388608) {
                z23 = true;
            } else {
                z23 = false;
            }
            boolean z41116 = z41115 | z23;
            if ((i44 & 3670016) == i15) {
                z24 = true;
            } else {
                z24 = false;
            }
            boolean z41117 = z41116 | z24;
            i54 = 234881024 & i44;
            if (i54 == 67108864) {
                z25 = true;
            } else {
                z25 = false;
            }
            boolean z41118 = z41117 | z25;
            float f12 = f5;
            if ((i44 & 1879048192) == 536870912) {
                z26 = true;
            } else {
                z26 = false;
            }
            boolean z41119 = z41118 | z26;
            if ((i52 & 3670016) == 1048576) {
                z27 = true;
            } else {
                z27 = false;
            }
            boolean zC5 = z41119 | z27 | gapComposerH.c(f7);
            if ((i44 & 896) == 256) {
                z28 = true;
            } else {
                z28 = false;
            }
            z29 = zC5 | z28;
            Object objX17 = gapComposerH.x();
            if (z29) {
                final Function1 function4111115 = function31;
                final Function1 function4111116 = function32;
                final Function2 function4111117 = function26;
                final Function1 function4111118 = function27;
                final Function1 function4111119 = function24;
                str = null;
                z30 = z14;
                z31 = z15;
                obj = new Function1() { // from class: nk0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        LazyListScope lazyListScope = (LazyListScope) obj2;
                        lazyListScope.getClass();
                        Function1 function420 = function4111115;
                        if (function420 != null) {
                            function420.invoke(lazyListScope);
                        }
                        LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                        boolean z411110 = lazyPagingItems2.d().f18562a instanceof LoadState.Error;
                        boolean z411111 = z30;
                        if ((z411110 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Error) && lazyPagingItems2.b() == 0)) && (lazyPagingItems2.b() == 0 || z411111)) {
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1689706375, true, new td(((Dp) mutableState2.getF10755b()).f11006b - ((Dp) mutableState.getF10755b()).f11006b, 5)), 3);
                        } else {
                            boolean z50 = lazyPagingItems2.d().f18562a instanceof LoadState.Loading;
                            GridModes gridModes2 = gridModes;
                            if ((z50 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Loading) && lazyPagingItems2.b() == 0)) && z31 && (lazyPagingItems2.b() == 0 || z411111)) {
                                PLPSkeletonKt.d(lazyListScope, gridModes2);
                            } else {
                                Function1 function421 = function4111116;
                                if (function421 == null || lazyPagingItems2.b() != 0) {
                                    PLPItemsKt.d(lazyListScope, gridModes2, lazyPagingItems2, function5, function4111117, function6, function8, function4111118);
                                    if (lazyPagingItems2.d().f18564c instanceof LoadState.Loading) {
                                        ComposableSingletons$PLPItemsKt.f62810a.getClass();
                                        LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPItemsKt.f62811b, 3);
                                    }
                                    if (z13 && (lazyPagingItems2.d().f18564c instanceof LoadState.NotLoading)) {
                                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1598249487, true, new td(f7, 6)), 3);
                                    }
                                    Function1 function516 = function4111119;
                                    if (function516 != null) {
                                        function516.invoke(lazyListScope);
                                    } else {
                                        ComposableSingletons$PLPKt.f62813a.getClass();
                                        LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPKt.f62814b, 3);
                                    }
                                } else {
                                    function421.invoke(lazyListScope);
                                }
                            }
                        }
                        return Unit.f71739a;
                    }
                };
                function35 = function4111116;
                function36 = function4111117;
                function37 = function4111118;
                function38 = function4111119;
                gapComposerH = gapComposerH;
                function39 = function4111115;
                function12 = function5;
                gapComposerH.q(obj);
            } else {
                final Function1 function41111110 = function31;
                final Function1 function41111111 = function32;
                final Function2 function41111112 = function26;
                final Function1 function41111113 = function27;
                final Function1 function41111114 = function24;
                str = null;
                z30 = z14;
                z31 = z15;
                obj = new Function1() { // from class: nk0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        LazyListScope lazyListScope = (LazyListScope) obj2;
                        lazyListScope.getClass();
                        Function1 function420 = function41111110;
                        if (function420 != null) {
                            function420.invoke(lazyListScope);
                        }
                        LazyPagingItems lazyPagingItems2 = lazyPagingItems;
                        boolean z411110 = lazyPagingItems2.d().f18562a instanceof LoadState.Error;
                        boolean z411111 = z30;
                        if ((z411110 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Error) && lazyPagingItems2.b() == 0)) && (lazyPagingItems2.b() == 0 || z411111)) {
                            LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-1689706375, true, new td(((Dp) mutableState2.getF10755b()).f11006b - ((Dp) mutableState.getF10755b()).f11006b, 5)), 3);
                        } else {
                            boolean z50 = lazyPagingItems2.d().f18562a instanceof LoadState.Loading;
                            GridModes gridModes2 = gridModes;
                            if ((z50 || ((lazyPagingItems2.d().f18564c instanceof LoadState.Loading) && lazyPagingItems2.b() == 0)) && z31 && (lazyPagingItems2.b() == 0 || z411111)) {
                                PLPSkeletonKt.d(lazyListScope, gridModes2);
                            } else {
                                Function1 function421 = function41111111;
                                if (function421 == null || lazyPagingItems2.b() != 0) {
                                    PLPItemsKt.d(lazyListScope, gridModes2, lazyPagingItems2, function5, function41111112, function6, function8, function41111113);
                                    if (lazyPagingItems2.d().f18564c instanceof LoadState.Loading) {
                                        ComposableSingletons$PLPItemsKt.f62810a.getClass();
                                        LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPItemsKt.f62811b, 3);
                                    }
                                    if (z13 && (lazyPagingItems2.d().f18564c instanceof LoadState.NotLoading)) {
                                        LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(1598249487, true, new td(f7, 6)), 3);
                                    }
                                    Function1 function516 = function41111114;
                                    if (function516 != null) {
                                        function516.invoke(lazyListScope);
                                    } else {
                                        ComposableSingletons$PLPKt.f62813a.getClass();
                                        LazyListScope.f(lazyListScope, null, ComposableSingletons$PLPKt.f62814b, 3);
                                    }
                                } else {
                                    function421.invoke(lazyListScope);
                                }
                            }
                        }
                        return Unit.f71739a;
                    }
                };
                function35 = function41111111;
                function36 = function41111112;
                function37 = function41111113;
                function38 = function41111114;
                gapComposerH = gapComposerH;
                function39 = function41111110;
                function12 = function5;
                gapComposerH.q(obj);
            }
            gapComposer2 = gapComposerH;
            LazyDslKt.a(modifierA5, lazyListState5, paddingValuesImplE5, null, null, null, false, null, (Function1) obj, gapComposer2, (i52 >> 24) & 112, 504);
            focusedProductUiModel4 = focusedProductUiModel3;
            if (focusedProductUiModel4 == null) {
                gapComposer2.L(-1640203922);
                gapComposer2.Z(false);
            } else {
                gapComposer2.L(-1640203921);
                assetUiModel = (AssetUiModel) CollectionsKt.G(focusedProductUiModel4.f62874b, ((PlpProductUiModel.SkuDataUiModel) focusedProductUiModel4.f62873a.f62934a.getF10755b()).f62947f);
                if (assetUiModel != null) {
                    str2 = str;
                } else {
                    str2 = str;
                }
                i55 = i44 & 14;
                if (i55 == 4) {
                    z32 = true;
                } else {
                    z32 = false;
                }
                objX9 = gapComposer2.x();
                if (z32) {
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                    if (objX9 != composer$Companion$Empty$2) {
                        function40 = function33;
                    }
                    Function0 function41128 = (Function0) objX9;
                    if (i55 == 4) {
                        z33 = true;
                    } else {
                        z33 = false;
                    }
                    if ((i44 & 57344) == 16384) {
                        z34 = true;
                    } else {
                        z34 = false;
                    }
                    zY = z34 | z33 | gapComposer2.y(focusedProductUiModel4);
                    objX10 = gapComposer2.x();
                    if (zY) {
                        final int i61110 = 1;
                        objX10 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i61111 = i61110;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function41129 = function4;
                                Function0 function516 = function40;
                                switch (i61111) {
                                    case 0:
                                        function516.mo47invoke();
                                        function41129.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function516.mo47invoke();
                                        function41129.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    } else {
                        final int i61111 = 1;
                        objX10 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i61112 = i61111;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function41129 = function4;
                                Function0 function516 = function40;
                                switch (i61112) {
                                    case 0:
                                        function516.mo47invoke();
                                        function41129.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function516.mo47invoke();
                                        function41129.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX10);
                    }
                    Function0 function41129 = (Function0) objX10;
                    if (i55 == 4) {
                        z35 = true;
                    } else {
                        z35 = false;
                    }
                    if (i53 == 131072) {
                        z36 = true;
                    } else {
                        z36 = false;
                    }
                    zY2 = z36 | z35 | gapComposer2.y(focusedProductUiModel4);
                    objX11 = gapComposer2.x();
                    if (zY2) {
                        final int i61112 = 0;
                        objX11 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i61113 = i61112;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function411210 = function12;
                                Function0 function516 = function40;
                                switch (i61113) {
                                    case 0:
                                        function516.mo47invoke();
                                        function411210.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function516.mo47invoke();
                                        function411210.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX11);
                    } else {
                        final int i61113 = 0;
                        objX11 = new Function0() { // from class: lk0
                            @Override // kotlin.jvm.functions.Function0
                            /* JADX INFO: renamed from: invoke */
                            public final Object mo47invoke() {
                                int i61114 = i61113;
                                FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                                Function1 function411210 = function12;
                                Function0 function516 = function40;
                                switch (i61114) {
                                    case 0:
                                        function516.mo47invoke();
                                        function411210.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                    default:
                                        function516.mo47invoke();
                                        function411210.invoke(focusedProductUiModel5.f62873a);
                                        break;
                                }
                                return Unit.f71739a;
                            }
                        };
                        gapComposer2.q(objX11);
                    }
                    Function0 function516 = (Function0) objX11;
                    if (i55 == 4) {
                        z37 = true;
                    } else {
                        z37 = false;
                    }
                    if (i54 == 67108864) {
                        z38 = true;
                    } else {
                        z38 = false;
                    }
                    zY3 = z37 | z38 | gapComposer2.y(focusedProductUiModel4);
                    objX12 = gapComposer2.x();
                    if (zY3) {
                        objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                        gapComposer2.q(objX12);
                    } else {
                        objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                        gapComposer2.q(objX12);
                    }
                    function33 = function40;
                    ProductFocusDialogKt.d(null, focusedProductUiModel4, str2, function41128, function41129, function516, (Function0) objX12, gapComposer2, 0);
                    gapComposer2.Z(false);
                } else {
                    composer$Companion$Empty$2 = composer$Companion$Empty$1;
                }
                function40 = function33;
                objX9 = new ee0(function40, 13);
                gapComposer2.q(objX9);
                Function0 function411210 = (Function0) objX9;
                if (i55 == 4) {
                    z33 = true;
                } else {
                    z33 = false;
                }
                if ((i44 & 57344) == 16384) {
                    z34 = true;
                } else {
                    z34 = false;
                }
                zY = z34 | z33 | gapComposer2.y(focusedProductUiModel4);
                objX10 = gapComposer2.x();
                if (zY) {
                    final int i61114 = 1;
                    objX10 = new Function0() { // from class: lk0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i61115 = i61114;
                            FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                            Function1 function411211 = function4;
                            Function0 function517 = function40;
                            switch (i61115) {
                                case 0:
                                    function517.mo47invoke();
                                    function411211.invoke(focusedProductUiModel5.f62873a);
                                    break;
                                default:
                                    function517.mo47invoke();
                                    function411211.invoke(focusedProductUiModel5.f62873a);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer2.q(objX10);
                } else {
                    final int i61115 = 1;
                    objX10 = new Function0() { // from class: lk0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i61116 = i61115;
                            FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                            Function1 function411211 = function4;
                            Function0 function517 = function40;
                            switch (i61116) {
                                case 0:
                                    function517.mo47invoke();
                                    function411211.invoke(focusedProductUiModel5.f62873a);
                                    break;
                                default:
                                    function517.mo47invoke();
                                    function411211.invoke(focusedProductUiModel5.f62873a);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer2.q(objX10);
                }
                Function0 function411211 = (Function0) objX10;
                if (i55 == 4) {
                    z35 = true;
                } else {
                    z35 = false;
                }
                if (i53 == 131072) {
                    z36 = true;
                } else {
                    z36 = false;
                }
                zY2 = z36 | z35 | gapComposer2.y(focusedProductUiModel4);
                objX11 = gapComposer2.x();
                if (zY2) {
                    final int i61116 = 0;
                    objX11 = new Function0() { // from class: lk0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i61117 = i61116;
                            FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                            Function1 function411212 = function12;
                            Function0 function517 = function40;
                            switch (i61117) {
                                case 0:
                                    function517.mo47invoke();
                                    function411212.invoke(focusedProductUiModel5.f62873a);
                                    break;
                                default:
                                    function517.mo47invoke();
                                    function411212.invoke(focusedProductUiModel5.f62873a);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer2.q(objX11);
                } else {
                    final int i61117 = 0;
                    objX11 = new Function0() { // from class: lk0
                        @Override // kotlin.jvm.functions.Function0
                        /* JADX INFO: renamed from: invoke */
                        public final Object mo47invoke() {
                            int i61118 = i61117;
                            FocusedProductUiModel focusedProductUiModel5 = focusedProductUiModel4;
                            Function1 function411212 = function12;
                            Function0 function517 = function40;
                            switch (i61118) {
                                case 0:
                                    function517.mo47invoke();
                                    function411212.invoke(focusedProductUiModel5.f62873a);
                                    break;
                                default:
                                    function517.mo47invoke();
                                    function411212.invoke(focusedProductUiModel5.f62873a);
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    gapComposer2.q(objX11);
                }
                Function0 function517 = (Function0) objX11;
                if (i55 == 4) {
                    z37 = true;
                } else {
                    z37 = false;
                }
                if (i54 == 67108864) {
                    z38 = true;
                } else {
                    z38 = false;
                }
                zY3 = z37 | z38 | gapComposer2.y(focusedProductUiModel4);
                objX12 = gapComposer2.x();
                if (zY3) {
                    objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                    gapComposer2.q(objX12);
                } else {
                    objX12 = new of0(function40, function8, focusedProductUiModel4, 18);
                    gapComposer2.q(objX12);
                }
                function33 = function40;
                ProductFocusDialogKt.d(null, focusedProductUiModel4, str2, function411210, function411211, function517, (Function0) objX12, gapComposer2, 0);
                gapComposer2.Z(false);
            }
            z7 = z13;
            function19 = function39;
            focusedProductUiModel2 = focusedProductUiModel4;
            gapComposer = gapComposer2;
            lazyListState2 = lazyListState5;
            function20 = function38;
            function21 = function35;
            function18 = function34;
            function15 = function36;
            f4 = f12;
            function14 = function33;
            z9 = z30;
            z8 = z31;
            function17 = function29;
            function16 = function37;
        } else {
            function12 = function5;
            function13 = function8;
            gapComposerH.D();
            z7 = z3;
            focusedProductUiModel2 = focusedProductUiModel;
            lazyListState2 = lazyListState;
            function14 = function0;
            function15 = function7;
            function16 = function9;
            function17 = function10;
            function18 = function11;
            f4 = f3;
            z8 = z4;
            gapComposer = gapComposerH;
            z9 = z5;
            function19 = function1;
            function20 = function2;
            function21 = function3;
        }
        recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            final Function1 function518 = function12;
            final Function2 function519 = function13;
            final Modifier modifier6 = modifierE;
            recomposeScopeImplB0.d = new Function2() { // from class: mk0
                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj2, Object obj3) {
                    ((Integer) obj3).getClass();
                    int iA = RecomposeScopeImplKt.a(i2 | 1);
                    int iA2 = RecomposeScopeImplKt.a(i3);
                    int iA3 = RecomposeScopeImplKt.a(i4);
                    PLPKt.a(modifier6, gridModes, f4, num, z8, z9, z7, lazyPagingItems, focusedProductUiModel2, lazyListState2, function14, function19, function20, function21, function4, function518, function6, function15, function519, function16, function17, function18, (Composer) obj2, iA, iA2, iA3, i5);
                    return Unit.f71739a;
                }
            };
        }
    }
}
