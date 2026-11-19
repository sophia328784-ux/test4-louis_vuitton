package com.vuitton.android.presentation.screen.account.inbox.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.res.StringResources_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.LVColorScheme;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.TopBarActionScope;
import com.vuitton.android.presentation.screen.account.inbox.InboxViewModel;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxNotificationUiModel;
import com.vuitton.android.presentation.screen.account.inbox.models.InboxViewState;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.HandleNotificationsPermissionStateKt;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import com.vuitton.foundation.model.domain.model.dispatch.InAppDispatch;
import defpackage.a40;
import defpackage.kw;
import defpackage.l30;
import defpackage.pp;
import defpackage.py;
import defpackage.wd;
import defpackage.x2;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.reflect.KFunction;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/inbox/models/InboxViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;", "permissionsViewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class InboxComposableKt {
    /* JADX WARN: Code duplicated, block: B:133:0x0356  */
    /* JADX WARN: Code duplicated, block: B:134:0x0360  */
    /* JADX WARN: Code duplicated, block: B:136:0x036c  */
    /* JADX WARN: Code duplicated, block: B:137:0x036f  */
    /* JADX WARN: Code duplicated, block: B:141:0x037c  */
    /* JADX WARN: Code duplicated, block: B:145:0x0388  */
    public static final void a(InboxViewModel inboxViewModel, PermissionsViewModel permissionsViewModel, Function0 function0, Function0 function1, Function0 function2, Function1 function3, Function1 function4, Function0 function5, Function1 function6, Function1 function7, Function1 function8, Function0 function9, Function0 function10, Function0 function11, Function0 function12, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z;
        boolean z2;
        InboxNotificationUiModel inboxNotificationUiModel;
        boolean z3;
        boolean zY;
        Object objX;
        Function1 function13 = function3;
        Function0 function14 = function5;
        inboxViewModel.getClass();
        permissionsViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function13.getClass();
        function4.getClass();
        function14.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        function11.getClass();
        function12.getClass();
        GapComposer gapComposerH = composer.h(-1902086029);
        int i7 = i2 | (gapComposerH.K(inboxViewModel) ? 4 : 2) | (gapComposerH.K(permissionsViewModel) ? 32 : 16) | (gapComposerH.y(function0) ? 256 : 128) | (gapComposerH.y(function1) ? 2048 : 1024) | (gapComposerH.y(function2) ? 16384 : 8192) | (gapComposerH.y(function13) ? 131072 : 65536) | (gapComposerH.y(function4) ? 1048576 : 524288) | (gapComposerH.y(function14) ? 8388608 : 4194304) | (gapComposerH.y(function6) ? 67108864 : 33554432) | (gapComposerH.y(function7) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i8 = (gapComposerH.y(function8) ? 4 : 2) | (gapComposerH.y(function9) ? 32 : 16) | (gapComposerH.y(function10) ? 256 : 128) | (gapComposerH.y(function11) ? 2048 : 1024) | (gapComposerH.y(function12) ? 16384 : 8192);
        if (gapComposerH.p(i7 & 1, ((i7 & 306783379) == 306783378 && (i8 & 9363) == 9362) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(inboxViewModel.getS(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(permissionsViewModel.getU(), gapComposerH);
            Unit unit = Unit.f71739a;
            int i9 = i7 & 112;
            boolean z4 = (i9 == 32) | ((i7 & 14) == 4);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
            if (z4 || objX2 == composer$Companion$Empty$1) {
                objX2 = new InboxComposableKt$InboxComposable$1$1(permissionsViewModel, inboxViewModel, null);
                gapComposerH.q(objX2);
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX2);
            boolean z5 = i9 == 32;
            Object objX3 = gapComposerH.x();
            if (z5 || objX3 == composer$Companion$Empty$1) {
                i3 = i8;
                i4 = i9;
                i5 = 4;
                InboxComposableKt$InboxComposable$2$1 inboxComposableKt$InboxComposable$2$1 = new InboxComposableKt$InboxComposable$2$1(0, permissionsViewModel, PermissionsViewModel.class, "onNotificationPermissionGranted", "onNotificationPermissionGranted(Z)V", 0);
                gapComposerH.q(inboxComposableKt$InboxComposable$2$1);
                objX3 = inboxComposableKt$InboxComposable$2$1;
            } else {
                i4 = i9;
                i3 = i8;
                i5 = 4;
            }
            HandleNotificationsPermissionStateKt.a(permissionsViewModel, (Function0) objX3, gapComposerH, (i7 >> 3) & 14);
            if (((InboxViewState) mutableStateB.getF10755b()).f52427b) {
                gapComposerH.L(-1540131572);
                InboxLoadingScreenKt.a(ComposableLambdaKt.b(-603401382, new kw(function0, i5), gapComposerH), gapComposerH, 6);
                z2 = false;
                gapComposerH.Z(false);
            } else {
                if (((InboxViewState) mutableStateB.getF10755b()).f52428c) {
                    gapComposerH.L(-1540000008);
                    InboxErrorScreenKt.a(ComposableLambdaKt.b(1137581583, new kw(function0, 5), gapComposerH), function9, gapComposerH, (i3 & 112) | 6);
                    z2 = false;
                    gapComposerH.Z(false);
                } else if (((InboxViewState) mutableStateB.getF10755b()).d.isEmpty()) {
                    gapComposerH.L(-1539749869);
                    PermissionsUiModel permissionsUiModel = (PermissionsUiModel) mutableStateB2.getF10755b();
                    ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-1768770115, new kw(function0, 6), gapComposerH);
                    int i10 = i4;
                    boolean zK = gapComposerH.K(mutableStateB2) | ((i3 & 57344) == 16384) | (i10 == 32);
                    Object objX4 = gapComposerH.x();
                    if (zK || objX4 == composer$Companion$Empty$1) {
                        objX4 = new pp(function12, permissionsViewModel, mutableStateB2, 13);
                        gapComposerH.q(objX4);
                    }
                    Function0 function15 = (Function0) objX4;
                    boolean z6 = (i7 & 57344) == 16384;
                    Object objX5 = gapComposerH.x();
                    if (z6 || objX5 == composer$Companion$Empty$1) {
                        objX5 = new py(function2, 11);
                        gapComposerH.q(objX5);
                    }
                    Function0 function16 = (Function0) objX5;
                    boolean z7 = i10 == 32;
                    Object objX6 = gapComposerH.x();
                    if (z7 || objX6 == composer$Companion$Empty$1) {
                        i6 = 14;
                        objX6 = new InboxComposableKt$InboxComposable$8$1(0, permissionsViewModel, PermissionsViewModel.class, "closeBottomSheet", "closeBottomSheet()V", 0);
                        gapComposerH.q(objX6);
                    } else {
                        i6 = 14;
                    }
                    InboxEmptyNotificationListScreenKt.a(permissionsUiModel, composableLambdaImplB, function15, function16, function1, (Function0) ((KFunction) objX6), gapComposerH, ((i7 << 3) & 57344) | 48);
                    gapComposer = gapComposerH;
                    gapComposer.Z(false);
                    z = false;
                    function13 = function3;
                } else {
                    i6 = 14;
                    gapComposer = gapComposerH;
                    gapComposer.L(-1538925145);
                    InAppDispatch inAppDispatch = ((InboxViewState) mutableStateB.getF10755b()).f52426a;
                    List list = ((InboxViewState) mutableStateB.getF10755b()).d;
                    InboxNotificationUiModel inboxNotificationUiModel2 = ((InboxViewState) mutableStateB.getF10755b()).f52431h;
                    boolean z8 = ((InboxViewState) mutableStateB.getF10755b()).f52432i;
                    ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-1742768224, new x2(function10, function0, 9), gapComposer);
                    int i11 = i7 >> 9;
                    int i12 = (i11 & ImageMetadata.JPEG_GPS_COORDINATES) | 24576 | (i11 & 3670016) | ((i3 << 21) & 29360128);
                    int i13 = i7 << 9;
                    composer$Companion$Empty$1 = composer$Companion$Empty$1;
                    function14 = function14;
                    InboxNotificationListScreenKt.a(inAppDispatch, list, inboxNotificationUiModel2, z8, composableLambdaImplB2, function6, function7, function8, function3, function4, function11, gapComposer, i12 | (i13 & 234881024) | (i13 & 1879048192), (i3 >> 9) & 14);
                    function13 = function3;
                    z = false;
                    gapComposer.Z(false);
                }
                inboxNotificationUiModel = ((InboxViewState) mutableStateB.getF10755b()).f52429e;
                if (inboxNotificationUiModel == null) {
                    gapComposer.L(-1537987520);
                    gapComposer.Z(z);
                } else {
                    gapComposer.L(-1537987519);
                    if ((i7 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    zY = z3 | gapComposer.y(inboxNotificationUiModel) | ((i7 & 29360128) == 8388608);
                    objX = gapComposer.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new pp(function13, (Object) inboxNotificationUiModel, (Object) function14, i6);
                        gapComposer.q(objX);
                    }
                    NotificationDialogKt.a(null, inboxNotificationUiModel, function14, (Function0) objX, gapComposer, (i7 >> 15) & 896);
                    gapComposer.Z(false);
                }
            }
            z = z2;
            i6 = 14;
            gapComposer = gapComposerH;
            function13 = function3;
            inboxNotificationUiModel = ((InboxViewState) mutableStateB.getF10755b()).f52429e;
            if (inboxNotificationUiModel == null) {
                gapComposer.L(-1537987520);
                gapComposer.Z(z);
            } else {
                gapComposer.L(-1537987519);
                if ((i7 & ImageMetadata.JPEG_GPS_COORDINATES) == 131072) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                zY = z3 | gapComposer.y(inboxNotificationUiModel) | ((i7 & 29360128) == 8388608);
                objX = gapComposer.x();
                if (zY) {
                    objX = new pp(function13, (Object) inboxNotificationUiModel, (Object) function14, i6);
                    gapComposer.q(objX);
                } else {
                    objX = new pp(function13, (Object) inboxNotificationUiModel, (Object) function14, i6);
                    gapComposer.q(objX);
                }
                NotificationDialogKt.a(null, inboxNotificationUiModel, function14, (Function0) objX, gapComposer, (i7 >> 15) & 896);
                gapComposer.Z(false);
            }
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a40(inboxViewModel, permissionsViewModel, function0, function1, function2, function13, function4, function5, function6, function7, function8, function9, function10, function11, function12, i2);
        }
    }

    public static final void b(boolean z, Function0 function0, Function0 function1, Composer composer, int i2, int i3) {
        boolean z2;
        int i4;
        Function0 function2;
        int i5;
        boolean z3;
        Function0 function3;
        final Function0 function4;
        GapComposer gapComposerH = composer.h(-814017035);
        int i6 = i3 & 1;
        if (i6 != 0) {
            i4 = i2 | 6;
            z2 = z;
        } else if ((i2 & 6) == 0) {
            z2 = z;
            i4 = i2 | (gapComposerH.b(z2) ? 4 : 2);
        } else {
            z2 = z;
            i4 = i2;
        }
        int i7 = i3 & 2;
        if (i7 != 0) {
            i5 = i4 | 48;
            function2 = function0;
        } else {
            function2 = function0;
            i5 = i4 | (gapComposerH.y(function2) ? 32 : 16);
        }
        int i8 = i5 | (gapComposerH.y(function1) ? 256 : 128);
        if (gapComposerH.p(i8 & 1, (i8 & 147) != 146)) {
            final boolean z4 = i6 != 0 ? false : z2;
            if (i7 != 0) {
                Object objX = gapComposerH.x();
                if (objX == Composer.Companion.f7939a) {
                    objX = new l30(26);
                    gapComposerH.q(objX);
                }
                function4 = (Function0) objX;
            } else {
                function4 = function2;
            }
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(gapComposerH, R.string.mylv_my_notifications_title), null, null, function1, ComposableLambdaKt.b(1657813492, new Function4() { // from class: b40
                @Override // kotlin.jvm.functions.Function4
                public final Object g(Object obj, Object obj2, Object obj3, Object obj4) {
                    TopBarActionScope topBarActionScope = (TopBarActionScope) obj;
                    LVColorScheme lVColorScheme = (LVColorScheme) obj2;
                    Composer composer2 = (Composer) obj3;
                    int iIntValue = ((Integer) obj4).intValue();
                    topBarActionScope.getClass();
                    lVColorScheme.getClass();
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    if (z4) {
                        composer2.L(92864726);
                        TopBarActionScope.ComposeDefaultImpls.a(null, LVAppDesignKitTheme.g(composer2).M0, StringResources_androidKt.c(composer2, R.string.alt_tutorial), function4, lVColorScheme, null, null, false, topBarActionScope, composer2, ((iIntValue << 9) & 57344) | ((iIntValue << 24) & 234881024), 225);
                        composer2.F();
                    } else {
                        composer2.L(93164558);
                        composer2.F();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH), null, null, null, gapComposerH, ((i8 << 12) & 3670016) | 12582912, 0, 3895);
            z3 = z4;
            function3 = function4;
        } else {
            gapComposerH.D();
            z3 = z2;
            function3 = function2;
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new wd(z3, function3, function1, i2, i3);
        }
    }
}
