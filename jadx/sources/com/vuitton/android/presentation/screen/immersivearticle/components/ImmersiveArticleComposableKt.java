package com.vuitton.android.presentation.screen.immersivearticle.components;

import android.content.Context;
import android.content.Intent;
import androidx.activity.compose.BackHandlerKt;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import com.google.ar.core.ImageMetadata;
import com.vuitton.android.presentation.common.editorial.models.LiveFormatUiModel;
import com.vuitton.android.presentation.extensions.ContextExtKt;
import com.vuitton.android.presentation.model.common.VideoIdUiModel;
import com.vuitton.android.presentation.notification.NotificationBuilder;
import com.vuitton.android.presentation.notification.NotificationBuilderKt;
import com.vuitton.android.presentation.screen.audioplayer.AudioPlayerViewModel;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerControllerUiState;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerItemUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinations;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleDestinationsKt;
import com.vuitton.android.presentation.screen.immersivearticle.ImmersiveArticleViewModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleTrackingUiModel;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleType;
import com.vuitton.android.presentation.screen.immersivearticle.models.ImmersiveArticleViewState;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.models.HandleNotificationsPermissionStateKt;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import defpackage.je;
import defpackage.k3;
import defpackage.kx;
import defpackage.n00;
import defpackage.na;
import defpackage.r0;
import defpackage.u00;
import defpackage.up;
import defpackage.yh;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002¨\u0006\b²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002²\u0006\f\u0010\u0005\u001a\u00020\u00048\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0007\u001a\u00020\u00068\n@\nX\u008a\u008e\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleViewState;", "viewState", "Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerControllerUiState;", "audioPlayerControllerUiState", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;", "permissionViewState", "", "isExpanded", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ImmersiveArticleComposableKt {
    public static final void a(final ImmersiveArticleViewModel immersiveArticleViewModel, PermissionsViewModel permissionsViewModel, AudioPlayerViewModel audioPlayerViewModel, final String str, boolean z, final ImmersiveArticleType immersiveArticleType, SnapshotStateList snapshotStateList, Function0 function0, Function0 function1, Function1 function2, Function1 function3, Function1 function4, Function1 function5, Composer composer, int i2) {
        GapComposer gapComposer;
        int i3;
        boolean z2;
        ImmersiveArticleViewModel immersiveArticleViewModel2;
        Context context;
        int i4;
        SnackbarHostState snackbarHostState;
        Object immersiveArticleComposableKt$ImmersiveArticleComposable$4$1;
        Context context2;
        MutableState mutableState;
        int i5;
        int i6;
        PermissionsViewModel permissionsViewModel2;
        NotificationBuilder notificationBuilder;
        Object immersiveArticleComposableKt$ImmersiveArticleComposable$9$1;
        char c2;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        MutableState mutableState2;
        final Context context3;
        immersiveArticleViewModel.getClass();
        audioPlayerViewModel.getClass();
        immersiveArticleType.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        GapComposer gapComposerH = composer.h(1510972464);
        int i7 = i2 | (gapComposerH.K(immersiveArticleViewModel) ? 4 : 2) | (gapComposerH.K(permissionsViewModel) ? 32 : 16) | (gapComposerH.K(audioPlayerViewModel) ? 256 : 128) | (gapComposerH.K(str) ? 2048 : 1024) | (gapComposerH.b(z) ? 16384 : 8192) | (gapComposerH.d(immersiveArticleType.ordinal()) ? 131072 : 65536) | (gapComposerH.y(snapshotStateList) ? 1048576 : 524288) | (gapComposerH.y(function0) ? 8388608 : 4194304) | (gapComposerH.y(function1) ? 67108864 : 33554432) | (gapComposerH.y(function2) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i8 = (gapComposerH.y(function3) ? 4 : 2) | (gapComposerH.y(function4) ? 32 : 16) | (gapComposerH.y(function5) ? 256 : 128);
        if (gapComposerH.p(i7 & 1, ((i7 & 306783379) == 306783378 && (i8 & 147) == 146) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(immersiveArticleViewModel.getJ(), gapComposerH);
            MutableState mutableStateB2 = SnapshotStateKt.b(audioPlayerViewModel.d7(), gapComposerH);
            MutableState mutableStateB3 = SnapshotStateKt.b(permissionsViewModel.getU(), gapComposerH);
            NotificationBuilder notificationBuilderA = NotificationBuilderKt.a(gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                objX = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX);
            }
            MutableState mutableState3 = (MutableState) objX;
            Context context4 = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Object objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$2) {
                objX2 = n00.b(gapComposerH);
            }
            SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX2;
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$2) {
                objX3 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX3);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX3;
            boolean z3 = (i7 & 29360128) == 8388608;
            Object objX4 = gapComposerH.x();
            if (z3 || objX4 == composer$Companion$Empty$2) {
                objX4 = new na(function0, mutableState3, 4);
                gapComposerH.q(objX4);
            }
            BackHandlerKt.a(false, (Function0) objX4, gapComposerH, 0, 1);
            Unit unit = Unit.f71739a;
            int i9 = i7 & 14;
            int i10 = i8 & 112;
            boolean zY = (i9 == 4) | gapComposerH.y(context4) | (i10 == 32);
            Object objX5 = gapComposerH.x();
            if (zY || objX5 == composer$Companion$Empty$2) {
                i3 = i10;
                z2 = true;
                immersiveArticleViewModel2 = immersiveArticleViewModel;
                context = context4;
                i4 = i7;
                objX5 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$2$1(immersiveArticleViewModel2, snackbarHostState2, context, function4, null);
                snackbarHostState = snackbarHostState2;
                gapComposerH.q(objX5);
            } else {
                snackbarHostState = snackbarHostState2;
                context = context4;
                i4 = i7;
                i3 = i10;
                z2 = true;
                immersiveArticleViewModel2 = immersiveArticleViewModel;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX5);
            Boolean boolValueOf = Boolean.valueOf(((AudioPlayerControllerUiState) mutableStateB2.getF10755b()).f53244a);
            AudioPlayerItemUiModel audioPlayerItemUiModel = ((ImmersiveArticleViewState) mutableStateB.getF10755b()).g;
            boolean zK = gapComposerH.K(mutableStateB2) | gapComposerH.K(mutableStateB) | (i9 != 4 ? false : z2);
            Object objX6 = gapComposerH.x();
            if (zK || objX6 == composer$Companion$Empty$2) {
                objX6 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$3$1(immersiveArticleViewModel2, mutableStateB2, mutableStateB, null);
                gapComposerH.q(objX6);
            }
            EffectsKt.g(boolValueOf, audioPlayerItemUiModel, (Function2) objX6, gapComposerH);
            int i11 = i4 & 112;
            boolean z4 = i11 != 32 ? false : z2;
            Object objX7 = gapComposerH.x();
            if (z4 || objX7 == composer$Companion$Empty$2) {
                context2 = context;
                mutableState = mutableState3;
                i5 = i9;
                i6 = i11;
                permissionsViewModel2 = permissionsViewModel;
                immersiveArticleComposableKt$ImmersiveArticleComposable$4$1 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$4$1(0, permissionsViewModel2, PermissionsViewModel.class, "onNotificationPermissionGranted", "onNotificationPermissionGranted(Z)V", 0);
                gapComposerH.q(immersiveArticleComposableKt$ImmersiveArticleComposable$4$1);
            } else {
                mutableState = mutableState3;
                i6 = i11;
                immersiveArticleComposableKt$ImmersiveArticleComposable$4$1 = objX7;
                i5 = i9;
                permissionsViewModel2 = permissionsViewModel;
                context2 = context;
            }
            HandleNotificationsPermissionStateKt.a(permissionsViewModel2, (Function0) immersiveArticleComposableKt$ImmersiveArticleComposable$4$1, gapComposerH, (i4 >> 3) & 14);
            int i12 = i4 & 7168;
            boolean z5 = (i5 != 4 ? false : z2) | (i6 != 32 ? false : z2) | (i12 == 2048 ? z2 : false);
            int i13 = i4 & ImageMetadata.JPEG_GPS_COORDINATES;
            boolean zY2 = z5 | (i13 == 131072 ? z2 : false) | gapComposerH.y(notificationBuilder) | gapComposerH.y(context2);
            Object objX8 = gapComposerH.x();
            if (zY2 || objX8 == composer$Companion$Empty$2) {
                Context context5 = context2;
                ImmersiveArticleComposableKt$ImmersiveArticleComposable$5$1 immersiveArticleComposableKt$ImmersiveArticleComposable$5$1 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$5$1(permissionsViewModel2, immersiveArticleViewModel, str, immersiveArticleType, snackbarHostState, notificationBuilderA, context5, null);
                context2 = context5;
                notificationBuilder = notificationBuilderA;
                gapComposerH.q(immersiveArticleComposableKt$ImmersiveArticleComposable$5$1);
                objX8 = immersiveArticleComposableKt$ImmersiveArticleComposable$5$1;
            }
            EffectsKt.e(gapComposerH, unit, (Function2) objX8);
            ImmersiveArticleViewState immersiveArticleViewState = (ImmersiveArticleViewState) mutableStateB.getF10755b();
            PermissionsUiModel permissionsUiModel = (PermissionsUiModel) mutableStateB3.getF10755b();
            AudioPlayerControllerUiState audioPlayerControllerUiState = (AudioPlayerControllerUiState) mutableStateB2.getF10755b();
            boolean zBooleanValue = ((Boolean) mutableState.getF10755b()).booleanValue();
            boolean z6 = i5 != 4 ? false : z2;
            Object objX9 = gapComposerH.x();
            if (z6 || objX9 == composer$Companion$Empty$2) {
                objX9 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$6$1(0, immersiveArticleViewModel, ImmersiveArticleViewModel.class, "onSceneLoaded", "onSceneLoaded()V", 0);
                gapComposerH.q(objX9);
            }
            KFunction kFunction = (KFunction) objX9;
            boolean z7 = i5 != 4 ? false : z2;
            Object objX10 = gapComposerH.x();
            if (z7 || objX10 == composer$Companion$Empty$2) {
                objX10 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$7$1(0, immersiveArticleViewModel, ImmersiveArticleViewModel.class, "onPlayerReadyForFirstVideo", "onPlayerReadyForFirstVideo()V", 0);
                gapComposerH.q(objX10);
            }
            KFunction kFunction2 = (KFunction) objX10;
            boolean z8 = i5 != 4 ? false : z2;
            Object objX11 = gapComposerH.x();
            if (z8 || objX11 == composer$Companion$Empty$2) {
                objX11 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$8$1(1, immersiveArticleViewModel, ImmersiveArticleViewModel.class, "on3dError", "on3dError(Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/viewer3D/pdp/Error3dType;)V", 0);
                gapComposerH.q(objX11);
            }
            KFunction kFunction3 = (KFunction) objX11;
            boolean z9 = (i4 & 896) != 256 ? false : z2;
            Object objX12 = gapComposerH.x();
            if (z9 || objX12 == composer$Companion$Empty$2) {
                c2 = 0;
                immersiveArticleComposableKt$ImmersiveArticleComposable$9$1 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$9$1(1, audioPlayerViewModel, AudioPlayerViewModel.class, "onEvent", "onEvent(Lcom/vuitton/android/presentation/screen/audioplayer/model/AudioPlayerEvent;)V", 0);
                gapComposerH.q(immersiveArticleComposableKt$ImmersiveArticleComposable$9$1);
            } else {
                immersiveArticleComposableKt$ImmersiveArticleComposable$9$1 = objX12;
                c2 = 0;
            }
            KFunction kFunction4 = (KFunction) immersiveArticleComposableKt$ImmersiveArticleComposable$9$1;
            boolean z10 = i5 != 4 ? false : z2;
            Object objX13 = gapComposerH.x();
            if (z10 || objX13 == composer$Companion$Empty$2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                ImmersiveArticleComposableKt$ImmersiveArticleComposable$10$1 immersiveArticleComposableKt$ImmersiveArticleComposable$10$1 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$10$1(0, immersiveArticleViewModel, ImmersiveArticleViewModel.class, "hideScreenshotNotification", "hideScreenshotNotification()V", 0);
                gapComposerH.q(immersiveArticleComposableKt$ImmersiveArticleComposable$10$1);
                objX13 = immersiveArticleComposableKt$ImmersiveArticleComposable$10$1;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            }
            KFunction kFunction5 = (KFunction) objX13;
            boolean z11 = i6 != 32 ? false : z2;
            Object objX14 = gapComposerH.x();
            if (z11 || objX14 == composer$Companion$Empty$1) {
                objX14 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$11$1(0, permissionsViewModel, PermissionsViewModel.class, "closeBottomSheet", "closeBottomSheet()V", 0);
                gapComposerH.q(objX14);
            }
            KFunction kFunction6 = (KFunction) objX14;
            boolean z12 = i5 != 4 ? false : z2;
            Object objX15 = gapComposerH.x();
            if (z12 || objX15 == composer$Companion$Empty$1) {
                objX15 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$12$1(1, immersiveArticleViewModel, ImmersiveArticleViewModel.class, "sendTrackingHit", "sendTrackingHit(Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleTrackingUiModel;)V", 0);
                gapComposerH.q(objX15);
            }
            KFunction kFunction7 = (KFunction) objX15;
            boolean z13 = i5 != 4 ? false : z2;
            Object objX16 = gapComposerH.x();
            if (z13 || objX16 == composer$Companion$Empty$1) {
                objX16 = new ImmersiveArticleComposableKt$ImmersiveArticleComposable$13$1(1, immersiveArticleViewModel, ImmersiveArticleViewModel.class, "onCountdownFinished", "onCountdownFinished(Ljava/lang/String;)V", 0);
                gapComposerH.q(objX16);
            }
            KFunction kFunction8 = (KFunction) objX16;
            Function0 function6 = (Function0) kFunction;
            boolean zY3 = gapComposerH.y(context2);
            Object objX17 = gapComposerH.x();
            if (zY3 || objX17 == composer$Companion$Empty$1) {
                objX17 = new je(context2, 12);
                gapComposerH.q(objX17);
            }
            Function0 function7 = (Function0) objX17;
            int i14 = i4 & 1879048192;
            boolean z14 = (i14 == 536870912 ? z2 : false) | (i5 != 4 ? false : z2) | (i12 == 2048 ? z2 : false) | (i13 == 131072 ? z2 : false);
            Object objX18 = gapComposerH.x();
            if (z14 || objX18 == composer$Companion$Empty$1) {
                r0 r0Var = new r0(function2, immersiveArticleViewModel, str, immersiveArticleType, 12);
                gapComposerH.q(r0Var);
                objX18 = r0Var;
            }
            Function0 function8 = (Function0) objX18;
            boolean zY4 = gapComposerH.y(context2);
            Object objX19 = gapComposerH.x();
            if (zY4 || objX19 == composer$Companion$Empty$1) {
                objX19 = new je(context2, 13);
                gapComposerH.q(objX19);
            }
            Function0 function9 = (Function0) objX19;
            Function0 function10 = (Function0) kFunction2;
            boolean z15 = (i5 != 4 ? false : z2) | (r1 == r2 ? z2 : false) | (r3 == 131072 ? z2 : false);
            Object objX20 = gapComposerH.x();
            if (z15 || objX20 == composer$Companion$Empty$1) {
                mutableState2 = mutableState;
                r0 r0Var2 = new r0(immersiveArticleViewModel, str, immersiveArticleType, mutableState2, 13);
                gapComposerH.q(r0Var2);
                objX20 = r0Var2;
            } else {
                mutableState2 = mutableState;
            }
            Function0 function11 = (Function0) objX20;
            boolean zK2 = gapComposerH.K(mutableStateB) | (i14 == 536870912 ? z2 : false) | (i5 != 4 ? false : z2) | (r1 == 2048 ? z2 : false) | (r3 == 131072 ? z2 : false);
            Object objX21 = gapComposerH.x();
            if (zK2 || objX21 == composer$Companion$Empty$1) {
                yh yhVar = new yh(function2, immersiveArticleViewModel, str, immersiveArticleType, mutableStateB, 7);
                gapComposerH.q(yhVar);
                objX21 = yhVar;
            }
            Function0 function12 = (Function0) objX21;
            Object objX22 = gapComposerH.x();
            if (objX22 == composer$Companion$Empty$1) {
                objX22 = new u00(2, mutableState2);
                gapComposerH.q(objX22);
            }
            Function0 function13 = (Function0) objX22;
            Function1 function14 = (Function1) kFunction3;
            Function1 function15 = (Function1) kFunction4;
            boolean z16 = (r1 == 2048 ? z2 : false) | (i5 != 4 ? false : z2) | (r3 == 131072 ? z2 : false) | (i6 != 32 ? false : z2);
            Object objX23 = gapComposerH.x();
            if (z16 || objX23 == composer$Companion$Empty$1) {
                k3 k3Var = new k3(immersiveArticleViewModel, str, immersiveArticleType, permissionsViewModel, 13);
                gapComposerH.q(k3Var);
                objX23 = k3Var;
            }
            Function1 function16 = (Function1) objX23;
            Function0 function17 = (Function0) kFunction5;
            Function0 function18 = (Function0) kFunction6;
            boolean zY5 = (r1 == 2048 ? z2 : false) | (i5 != 4 ? false : z2) | (r3 == 131072 ? z2 : false) | gapComposerH.y(coroutineScope) | gapComposerH.y(notificationBuilder) | gapComposerH.y(context2);
            Object objX24 = gapComposerH.x();
            if (zY5 || objX24 == composer$Companion$Empty$1) {
                final NotificationBuilder notificationBuilder2 = notificationBuilder;
                context3 = context2;
                final SnackbarHostState snackbarHostState3 = snackbarHostState;
                Function1 function19 = new Function1() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.a
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        String str2 = (String) obj;
                        str2.getClass();
                        immersiveArticleViewModel.U8(new ImmersiveArticleTrackingUiModel.NotifyMeAlreadyNotifiedEvent(str, immersiveArticleType, str2));
                        BuildersKt.c(coroutineScope, null, null, new ImmersiveArticleComposableKt$ImmersiveArticleComposable$21$1$1(snackbarHostState3, notificationBuilder2, context3, null), 3);
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(function19);
                objX24 = function19;
            } else {
                context3 = context2;
            }
            Function1 function20 = (Function1) objX24;
            boolean z17 = i6 != 32 ? false : z2;
            Object objX25 = gapComposerH.x();
            if (z17 || objX25 == composer$Companion$Empty$1) {
                objX25 = new up(permissionsViewModel, 3);
                gapComposerH.q(objX25);
            }
            Function0 function21 = (Function0) objX25;
            boolean z18 = (i5 != 4 ? false : z2) | (r1 == 2048 ? z2 : false) | (i13 == 131072 ? z2 : false) | (i3 == 32 ? z2 : false);
            Object objX26 = gapComposerH.x();
            if (z18 || objX26 == composer$Companion$Empty$1) {
                k3 k3Var2 = new k3((Object) immersiveArticleViewModel, (Object) str, (Object) immersiveArticleType, function4, 12);
                gapComposerH.q(k3Var2);
                objX26 = k3Var2;
            }
            Function1 function22 = (Function1) objX26;
            boolean zY6 = gapComposerH.y(context3);
            Object objX27 = gapComposerH.x();
            if (zY6 || objX27 == composer$Companion$Empty$1) {
                objX27 = new Function2<VideoIdUiModel, LiveFormatUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.immersivearticle.components.ImmersiveArticleComposableKt$ImmersiveArticleComposable$24$1
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj, Object obj2) {
                        Intent intentA;
                        String str2 = ((VideoIdUiModel) obj).f51799b;
                        LiveFormatUiModel liveFormatUiModel = (LiveFormatUiModel) obj2;
                        str2.getClass();
                        liveFormatUiModel.getClass();
                        Context context6 = context3;
                        AppCompatActivity appCompatActivityB = ContextExtKt.b(context6);
                        if (appCompatActivityB != null && (intentA = ImmersiveArticleDestinationsKt.a(new ImmersiveArticleDestinations.ToLiveVideoPage(str2, liveFormatUiModel, null), context6)) != null) {
                            appCompatActivityB.startActivity(intentA);
                        }
                        return Unit.f71739a;
                    }
                };
                gapComposerH.q(objX27);
            }
            int i15 = i4 << 3;
            int i16 = 12582912 | i12 | (i15 & ImageMetadata.JPEG_GPS_COORDINATES) | (i15 & 3670016);
            int i17 = i4 << 6;
            gapComposer = gapComposerH;
            ImmersiveArticleScreenKt.a(immersiveArticleViewState, permissionsUiModel, audioPlayerControllerUiState, str, zBooleanValue, z, immersiveArticleType, snackbarHostState, snapshotStateList, function0, function6, function7, function8, function9, function10, function11, function1, function12, function13, function14, function15, function16, function17, function18, function20, function21, function22, function3, function4, function5, (Function2) objX27, (Function1) kFunction8, (Function1) kFunction7, gapComposer, i16 | (234881024 & i17) | (i17 & 1879048192), ((i4 >> 6) & 3670016) | 100663296, (i8 << 21) & 2143289344);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new kx(immersiveArticleViewModel, permissionsViewModel, audioPlayerViewModel, str, z, immersiveArticleType, snapshotStateList, function0, function1, function2, function3, function4, function5, i2);
        }
    }
}
