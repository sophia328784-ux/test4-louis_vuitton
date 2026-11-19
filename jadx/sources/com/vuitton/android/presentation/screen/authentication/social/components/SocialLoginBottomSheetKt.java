package com.vuitton.android.presentation.screen.authentication.social.components;

import android.content.Context;
import androidx.activity.compose.ActivityResultRegistryKt;
import androidx.activity.compose.ManagedActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts$StartActivityForResult;
import androidx.compose.material3.SnackbarHostState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.FlowExtKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.authentication.models.TrackingAuthOrigin;
import com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModel;
import com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl;
import com.vuitton.android.presentation.screen.authentication.social.components.SocialLoginBottomSheetType;
import com.vuitton.android.presentation.screen.authentication.social.models.SocialLoginViewState;
import defpackage.bo0;
import defpackage.md;
import defpackage.nw0;
import defpackage.om;
import defpackage.rp0;
import defpackage.yj0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class SocialLoginBottomSheetKt {
    public static final void a(SocialLoginBottomSheetState socialLoginBottomSheetState, Composer composer, int i2) {
        int i3;
        socialLoginBottomSheetState.getClass();
        GapComposer gapComposerH = composer.h(-1922752957);
        if ((i2 & 6) == 0) {
            i3 = (gapComposerH.K(socialLoginBottomSheetState) ? 4 : 2) | i2;
        } else {
            i3 = i2;
        }
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            SocialLoginViewState socialLoginViewState = (SocialLoginViewState) socialLoginBottomSheetState.f54154b.getF10755b();
            if (socialLoginBottomSheetState.f54155c.a()) {
                gapComposerH.L(1245804284);
                LVModalBottomSheetKt.b(null, StringResources_androidKt.c(gapComposerH, R.string.alt_close), null, socialLoginBottomSheetState.f54155c, null, 0L, false, null, ComposableLambdaKt.b(-1958593772, new yj0(socialLoginBottomSheetState, socialLoginViewState, context, 10), gapComposerH), gapComposerH, (LVModalBottomSheetState.f48797e << 9) | 100663296, 245);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(1249411103);
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new om(socialLoginBottomSheetState, i2, 13);
        }
    }

    /* JADX WARN: Code duplicated, block: B:107:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:120:0x0200  */
    /* JADX WARN: Code duplicated, block: B:134:0x022f  */
    /* JADX WARN: Code duplicated, block: B:138:0x024b  */
    /* JADX WARN: Code duplicated, block: B:73:0x0155  */
    /* JADX WARN: Code duplicated, block: B:95:0x01a7  */
    public static final SocialLoginBottomSheetState b(TrackingAuthOrigin trackingAuthOrigin, final Function0 function0, final Function0 function1, Function0 function2, SocialLoginViewModel socialLoginViewModel, Composer composer, int i2, int i3) {
        Function0 function3;
        SocialLoginViewModel socialLoginViewModel2;
        MutableState mutableState;
        boolean z;
        boolean zY;
        Object socialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1;
        int i4;
        boolean z2;
        Object objX;
        boolean zY2;
        Object objX2;
        boolean zY3;
        Object objX3;
        boolean zY4;
        Object objX4;
        SnackbarHostState snackbarHostState;
        boolean zK;
        Object objX5;
        trackingAuthOrigin.getClass();
        function0.getClass();
        function1.getClass();
        int i5 = i3 & 8;
        Object obj = Composer.Companion.f7939a;
        if (i5 != 0) {
            Object objX6 = composer.x();
            if (objX6 == obj) {
                objX6 = new nw0(8);
                composer.q(objX6);
            }
            function3 = (Function0) objX6;
        } else {
            function3 = function2;
        }
        if ((i3 & 16) != 0) {
            ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer);
            if (viewModelStoreOwnerA == null) {
                md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                return null;
            }
            socialLoginViewModel2 = (SocialLoginViewModel) ViewModelKt.a(Reflection.f71922a.b(SocialLoginViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer);
        } else {
            socialLoginViewModel2 = socialLoginViewModel;
        }
        OpaqueKey opaqueKey = ComposerKt.f7940a;
        Context context = (Context) composer.k(AndroidCompositionLocals_androidKt.f9936b);
        MutableState mutableStateC = FlowExtKt.c(socialLoginViewModel2.getD(), null, composer, 0, 7);
        final LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, composer, null);
        Object objX7 = composer.x();
        if (objX7 == obj) {
            objX7 = SnapshotStateKt.g(null);
            composer.q(objX7);
        }
        final MutableState mutableState2 = (MutableState) objX7;
        Object objX8 = composer.x();
        if (objX8 == obj) {
            objX8 = new SnackbarHostState();
            composer.q(objX8);
        }
        SnackbarHostState snackbarHostState2 = (SnackbarHostState) objX8;
        ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult = new ActivityResultContracts$StartActivityForResult();
        int i6 = (57344 & i2) ^ 24576;
        boolean zY5 = ((i6 > 16384 && composer.y(socialLoginViewModel2)) || (i2 & 24576) == 16384) | composer.y(context);
        Object objX9 = composer.x();
        if (zY5 || objX9 == obj) {
            objX9 = new rp0(socialLoginViewModel2, context, 24);
            composer.q(objX9);
        }
        ManagedActivityResultLauncher managedActivityResultLauncherA = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult, (Function1) objX9, composer, 0);
        ActivityResultContracts$StartActivityForResult activityResultContracts$StartActivityForResult2 = new ActivityResultContracts$StartActivityForResult();
        int i7 = (i2 & 7168) ^ 3072;
        boolean z3 = (i7 > 2048 && composer.K(function3)) || (i2 & 3072) == 2048;
        Object objX10 = composer.x();
        if (z3 || objX10 == obj) {
            objX10 = new bo0(function3, 10);
            composer.q(objX10);
        }
        ManagedActivityResultLauncher managedActivityResultLauncherA2 = ActivityResultRegistryKt.a(activityResultContracts$StartActivityForResult2, (Function1) objX10, composer, 0);
        Unit unit = Unit.f71739a;
        if (i6 <= 16384 || !composer.y(socialLoginViewModel2)) {
            mutableState = mutableStateC;
            if ((i2 & 24576) != 16384) {
                z = false;
            }
            zY = z | composer.y(managedActivityResultLauncherA2) | composer.y(context) | ((((i2 & 14) ^ 6) <= 4 && composer.d(trackingAuthOrigin.ordinal())) || (i2 & 6) == 4);
            Object objX11 = composer.x();
            if (!zY || objX11 == obj) {
                i4 = 16384;
                socialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1(socialLoginViewModel2, managedActivityResultLauncherA2, context, trackingAuthOrigin, null);
                composer.q(socialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1);
            } else {
                socialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1 = objX11;
                i4 = 16384;
            }
            EffectsKt.e(composer, unit, (Function2) socialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1);
            z2 = ((i7 <= 2048 && composer.K(function3)) || (i2 & 3072) == 2048) | ((i6 <= i4 && composer.y(socialLoginViewModel2)) || (i2 & 24576) == i4);
            objX = composer.x();
            if (z2 || objX == obj) {
                objX = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$3$1(socialLoginViewModel2, function3, null);
                composer.q(objX);
            }
            EffectsKt.e(composer, unit, (Function2) objX);
            zY2 = ((i6 <= i4 && composer.y(socialLoginViewModel2)) || (i2 & 24576) == i4) | composer.y(lVModalBottomSheetStateF);
            objX2 = composer.x();
            if (zY2 || objX2 == obj) {
                objX2 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$4$1(socialLoginViewModel2, mutableState2, lVModalBottomSheetStateF, null);
                composer.q(objX2);
            }
            EffectsKt.e(composer, unit, (Function2) objX2);
            zY3 = ((i6 <= i4 && composer.y(socialLoginViewModel2)) || (i2 & 24576) == i4) | composer.y(managedActivityResultLauncherA);
            objX3 = composer.x();
            if (zY3 || objX3 == obj) {
                objX3 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$5$1(socialLoginViewModel2, managedActivityResultLauncherA, null);
                composer.q(objX3);
            }
            EffectsKt.e(composer, unit, (Function2) objX3);
            zY4 = composer.y(context) | ((i6 <= i4 && composer.y(socialLoginViewModel2)) || (i2 & 24576) == i4);
            objX4 = composer.x();
            if (!zY4 || objX4 == obj) {
                snackbarHostState = snackbarHostState2;
                objX4 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$6$1(socialLoginViewModel2, snackbarHostState, context, null);
                composer.q(objX4);
            } else {
                snackbarHostState = snackbarHostState2;
            }
            EffectsKt.e(composer, unit, (Function2) objX4);
            zK = composer.K(lVModalBottomSheetStateF);
            objX5 = composer.x();
            if (zK || objX5 == obj) {
                final int i8 = 0;
                final MutableState mutableState3 = mutableState;
                Function0 function4 = new Function0() { // from class: b01
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i9 = i8;
                        Function0 function5 = function0;
                        LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF;
                        MutableState mutableState4 = mutableState2;
                        State state = mutableState3;
                        switch (i9) {
                            case 0:
                                SocialLoginViewState socialLoginViewState = (SocialLoginViewState) state.getF10755b();
                                socialLoginViewState.getClass();
                                if (socialLoginViewState.f54194b || socialLoginViewState.d || socialLoginViewState.f54196e) {
                                    mutableState4.setValue(new SocialLoginBottomSheetType.AuthSelection(false));
                                    lVModalBottomSheetState.e();
                                } else {
                                    function5.mo47invoke();
                                }
                                break;
                            default:
                                SocialLoginViewState socialLoginViewState2 = (SocialLoginViewState) state.getF10755b();
                                socialLoginViewState2.getClass();
                                if (socialLoginViewState2.f54194b || socialLoginViewState2.d || socialLoginViewState2.f54196e) {
                                    mutableState4.setValue(new SocialLoginBottomSheetType.AuthSelection(true));
                                    lVModalBottomSheetState.e();
                                } else {
                                    function5.mo47invoke();
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                };
                final int i9 = 1;
                Object socialLoginBottomSheetState = new SocialLoginBottomSheetState(socialLoginViewModel2, mutableState3, lVModalBottomSheetStateF, mutableState2, function0, function1, trackingAuthOrigin, snackbarHostState, function4, new Function0() { // from class: b01
                    @Override // kotlin.jvm.functions.Function0
                    /* JADX INFO: renamed from: invoke */
                    public final Object mo47invoke() {
                        int i10 = i9;
                        Function0 function5 = function1;
                        LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF;
                        MutableState mutableState4 = mutableState2;
                        State state = mutableState3;
                        switch (i10) {
                            case 0:
                                SocialLoginViewState socialLoginViewState = (SocialLoginViewState) state.getF10755b();
                                socialLoginViewState.getClass();
                                if (socialLoginViewState.f54194b || socialLoginViewState.d || socialLoginViewState.f54196e) {
                                    mutableState4.setValue(new SocialLoginBottomSheetType.AuthSelection(false));
                                    lVModalBottomSheetState.e();
                                } else {
                                    function5.mo47invoke();
                                }
                                break;
                            default:
                                SocialLoginViewState socialLoginViewState2 = (SocialLoginViewState) state.getF10755b();
                                socialLoginViewState2.getClass();
                                if (socialLoginViewState2.f54194b || socialLoginViewState2.d || socialLoginViewState2.f54196e) {
                                    mutableState4.setValue(new SocialLoginBottomSheetType.AuthSelection(true));
                                    lVModalBottomSheetState.e();
                                } else {
                                    function5.mo47invoke();
                                }
                                break;
                        }
                        return Unit.f71739a;
                    }
                });
                composer.q(socialLoginBottomSheetState);
                objX5 = socialLoginBottomSheetState;
            }
            return (SocialLoginBottomSheetState) objX5;
        }
        mutableState = mutableStateC;
        z = true;
        zY = z | composer.y(managedActivityResultLauncherA2) | composer.y(context) | ((((i2 & 14) ^ 6) <= 4 && composer.d(trackingAuthOrigin.ordinal())) || (i2 & 6) == 4);
        Object objX12 = composer.x();
        if (zY) {
            i4 = 16384;
            socialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1(socialLoginViewModel2, managedActivityResultLauncherA2, context, trackingAuthOrigin, null);
            composer.q(socialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1);
        } else {
            i4 = 16384;
            socialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1(socialLoginViewModel2, managedActivityResultLauncherA2, context, trackingAuthOrigin, null);
            composer.q(socialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1);
        }
        EffectsKt.e(composer, unit, (Function2) socialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$2$1);
        if (i6 <= i4) {
        }
        z2 = ((i7 <= 2048 && composer.K(function3)) || (i2 & 3072) == 2048) | ((i6 <= i4 && composer.y(socialLoginViewModel2)) || (i2 & 24576) == i4);
        objX = composer.x();
        if (z2) {
            objX = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$3$1(socialLoginViewModel2, function3, null);
            composer.q(objX);
        } else {
            objX = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$3$1(socialLoginViewModel2, function3, null);
            composer.q(objX);
        }
        EffectsKt.e(composer, unit, (Function2) objX);
        zY2 = ((i6 <= i4 && composer.y(socialLoginViewModel2)) || (i2 & 24576) == i4) | composer.y(lVModalBottomSheetStateF);
        objX2 = composer.x();
        if (zY2) {
            objX2 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$4$1(socialLoginViewModel2, mutableState2, lVModalBottomSheetStateF, null);
            composer.q(objX2);
        } else {
            objX2 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$4$1(socialLoginViewModel2, mutableState2, lVModalBottomSheetStateF, null);
            composer.q(objX2);
        }
        EffectsKt.e(composer, unit, (Function2) objX2);
        zY3 = ((i6 <= i4 && composer.y(socialLoginViewModel2)) || (i2 & 24576) == i4) | composer.y(managedActivityResultLauncherA);
        objX3 = composer.x();
        if (zY3) {
            objX3 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$5$1(socialLoginViewModel2, managedActivityResultLauncherA, null);
            composer.q(objX3);
        } else {
            objX3 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$5$1(socialLoginViewModel2, managedActivityResultLauncherA, null);
            composer.q(objX3);
        }
        EffectsKt.e(composer, unit, (Function2) objX3);
        zY4 = composer.y(context) | ((i6 <= i4 && composer.y(socialLoginViewModel2)) || (i2 & 24576) == i4);
        objX4 = composer.x();
        if (zY4) {
            snackbarHostState = snackbarHostState2;
            objX4 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$6$1(socialLoginViewModel2, snackbarHostState, context, null);
            composer.q(objX4);
        } else {
            snackbarHostState = snackbarHostState2;
            objX4 = new SocialLoginBottomSheetKt$rememberSocialLoginBottomSheetState$6$1(socialLoginViewModel2, snackbarHostState, context, null);
            composer.q(objX4);
        }
        EffectsKt.e(composer, unit, (Function2) objX4);
        zK = composer.K(lVModalBottomSheetStateF);
        objX5 = composer.x();
        if (zK) {
            final int i10 = 0;
            final MutableState mutableState4 = mutableState;
            Function0 function5 = new Function0() { // from class: b01
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i11 = i10;
                    Function0 function6 = function0;
                    LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF;
                    MutableState mutableState5 = mutableState2;
                    State state = mutableState4;
                    switch (i11) {
                        case 0:
                            SocialLoginViewState socialLoginViewState = (SocialLoginViewState) state.getF10755b();
                            socialLoginViewState.getClass();
                            if (socialLoginViewState.f54194b || socialLoginViewState.d || socialLoginViewState.f54196e) {
                                mutableState5.setValue(new SocialLoginBottomSheetType.AuthSelection(false));
                                lVModalBottomSheetState.e();
                            } else {
                                function6.mo47invoke();
                            }
                            break;
                        default:
                            SocialLoginViewState socialLoginViewState2 = (SocialLoginViewState) state.getF10755b();
                            socialLoginViewState2.getClass();
                            if (socialLoginViewState2.f54194b || socialLoginViewState2.d || socialLoginViewState2.f54196e) {
                                mutableState5.setValue(new SocialLoginBottomSheetType.AuthSelection(true));
                                lVModalBottomSheetState.e();
                            } else {
                                function6.mo47invoke();
                            }
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            final int i11 = 1;
            Object socialLoginBottomSheetState2 = new SocialLoginBottomSheetState(socialLoginViewModel2, mutableState4, lVModalBottomSheetStateF, mutableState2, function0, function1, trackingAuthOrigin, snackbarHostState, function5, new Function0() { // from class: b01
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i12 = i11;
                    Function0 function6 = function1;
                    LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF;
                    MutableState mutableState5 = mutableState2;
                    State state = mutableState4;
                    switch (i12) {
                        case 0:
                            SocialLoginViewState socialLoginViewState = (SocialLoginViewState) state.getF10755b();
                            socialLoginViewState.getClass();
                            if (socialLoginViewState.f54194b || socialLoginViewState.d || socialLoginViewState.f54196e) {
                                mutableState5.setValue(new SocialLoginBottomSheetType.AuthSelection(false));
                                lVModalBottomSheetState.e();
                            } else {
                                function6.mo47invoke();
                            }
                            break;
                        default:
                            SocialLoginViewState socialLoginViewState2 = (SocialLoginViewState) state.getF10755b();
                            socialLoginViewState2.getClass();
                            if (socialLoginViewState2.f54194b || socialLoginViewState2.d || socialLoginViewState2.f54196e) {
                                mutableState5.setValue(new SocialLoginBottomSheetType.AuthSelection(true));
                                lVModalBottomSheetState.e();
                            } else {
                                function6.mo47invoke();
                            }
                            break;
                    }
                    return Unit.f71739a;
                }
            });
            composer.q(socialLoginBottomSheetState2);
            objX5 = socialLoginBottomSheetState2;
        } else {
            final int i12 = 0;
            final MutableState mutableState5 = mutableState;
            Function0 function6 = new Function0() { // from class: b01
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i13 = i12;
                    Function0 function7 = function0;
                    LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF;
                    MutableState mutableState6 = mutableState2;
                    State state = mutableState5;
                    switch (i13) {
                        case 0:
                            SocialLoginViewState socialLoginViewState = (SocialLoginViewState) state.getF10755b();
                            socialLoginViewState.getClass();
                            if (socialLoginViewState.f54194b || socialLoginViewState.d || socialLoginViewState.f54196e) {
                                mutableState6.setValue(new SocialLoginBottomSheetType.AuthSelection(false));
                                lVModalBottomSheetState.e();
                            } else {
                                function7.mo47invoke();
                            }
                            break;
                        default:
                            SocialLoginViewState socialLoginViewState2 = (SocialLoginViewState) state.getF10755b();
                            socialLoginViewState2.getClass();
                            if (socialLoginViewState2.f54194b || socialLoginViewState2.d || socialLoginViewState2.f54196e) {
                                mutableState6.setValue(new SocialLoginBottomSheetType.AuthSelection(true));
                                lVModalBottomSheetState.e();
                            } else {
                                function7.mo47invoke();
                            }
                            break;
                    }
                    return Unit.f71739a;
                }
            };
            final int i13 = 1;
            Object socialLoginBottomSheetState3 = new SocialLoginBottomSheetState(socialLoginViewModel2, mutableState5, lVModalBottomSheetStateF, mutableState2, function0, function1, trackingAuthOrigin, snackbarHostState, function6, new Function0() { // from class: b01
                @Override // kotlin.jvm.functions.Function0
                /* JADX INFO: renamed from: invoke */
                public final Object mo47invoke() {
                    int i14 = i13;
                    Function0 function7 = function1;
                    LVModalBottomSheetState lVModalBottomSheetState = lVModalBottomSheetStateF;
                    MutableState mutableState6 = mutableState2;
                    State state = mutableState5;
                    switch (i14) {
                        case 0:
                            SocialLoginViewState socialLoginViewState = (SocialLoginViewState) state.getF10755b();
                            socialLoginViewState.getClass();
                            if (socialLoginViewState.f54194b || socialLoginViewState.d || socialLoginViewState.f54196e) {
                                mutableState6.setValue(new SocialLoginBottomSheetType.AuthSelection(false));
                                lVModalBottomSheetState.e();
                            } else {
                                function7.mo47invoke();
                            }
                            break;
                        default:
                            SocialLoginViewState socialLoginViewState2 = (SocialLoginViewState) state.getF10755b();
                            socialLoginViewState2.getClass();
                            if (socialLoginViewState2.f54194b || socialLoginViewState2.d || socialLoginViewState2.f54196e) {
                                mutableState6.setValue(new SocialLoginBottomSheetType.AuthSelection(true));
                                lVModalBottomSheetState.e();
                            } else {
                                function7.mo47invoke();
                            }
                            break;
                    }
                    return Unit.f71739a;
                }
            });
            composer.q(socialLoginBottomSheetState3);
            objX5 = socialLoginBottomSheetState3;
        }
        return (SocialLoginBottomSheetState) objX5;
    }
}
