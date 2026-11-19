package com.vuitton.android.presentation.screen.feed.components.subcomponents;

import android.content.Context;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.Arrangement$Start$1;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.TextKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.res.StringResources_androidKt;
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.compose.LifecycleEffectKt;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.designkit.ui.theme.atoms.LVButtonKt;
import com.vuitton.android.designkit.ui.theme.atoms.configurations.ConfigurationButton;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetKt;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.imageloading.compose.ImageLoaderKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.stringhandling.StringResourceUiModelKt;
import com.vuitton.android.presentation.screen.feed.components.subcomponents.ContactabilitySectionKt;
import com.vuitton.android.presentation.screen.feed.models.uimodels.ContactabilityActionUIModel;
import com.vuitton.android.presentation.screen.feed.models.uimodels.ContactabilityUiModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModel;
import com.vuitton.android.presentation.screen.permissions.PermissionsViewModelImpl;
import com.vuitton.android.presentation.screen.permissions.models.HandleNotificationsPermissionStateKt;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsBottomSheet;
import com.vuitton.android.presentation.screen.permissions.models.PermissionsUiModel;
import defpackage.a;
import defpackage.cj;
import defpackage.ck;
import defpackage.g1;
import defpackage.k3;
import defpackage.md;
import defpackage.n00;
import defpackage.o60;
import defpackage.tf;
import defpackage.tr;
import defpackage.u;
import defpackage.up;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"", "redirectToUserConsent", "Lcom/vuitton/android/presentation/screen/permissions/models/PermissionsUiModel;", "viewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class ContactabilitySectionKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f57896a;

        static {
            int[] iArr = new int[ContactabilityActionUIModel.values().length];
            try {
                iArr[ContactabilityActionUIModel.PREFERENCE_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ContactabilityActionUIModel.PREFERENCE_CENTER_WITH_NOTIFICATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ContactabilityActionUIModel.SYSTEM_NOTIFICATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[ContactabilityActionUIModel.PERSONALIZATION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[ContactabilityActionUIModel.EVERYTHING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f57896a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:75:0x0236  */
    /* JADX WARN: Code duplicated, block: B:78:0x0255  */
    /* JADX WARN: Code duplicated, block: B:80:0x0289  */
    public static final void a(PermissionsViewModel permissionsViewModel, final AssetImageUiModel assetImageUiModel, final String str, Composer composer, final int i2) {
        final PermissionsViewModel permissionsViewModel2;
        PermissionsViewModel permissionsViewModel3;
        int i3;
        final PermissionsViewModel permissionsViewModel4;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        boolean zY;
        Object objX;
        assetImageUiModel.getClass();
        GapComposer gapComposerH = composer.h(1613379910);
        int i4 = i2 | 2 | (gapComposerH.K(assetImageUiModel) ? 32 : 16) | (gapComposerH.K(str) ? 256 : 128);
        if (gapComposerH.p(i4 & 1, (i4 & 147) != 146)) {
            gapComposerH.y0();
            if ((i2 & 1) == 0 || gapComposerH.h0()) {
                ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(gapComposerH);
                if (viewModelStoreOwnerA == null) {
                    md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                    return;
                } else {
                    permissionsViewModel3 = (PermissionsViewModel) ViewModelKt.a(Reflection.f71922a.b(PermissionsViewModelImpl.class), viewModelStoreOwnerA, "ContactabilitySection", HiltViewModelKt.a(viewModelStoreOwnerA, gapComposerH), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, gapComposerH);
                    i3 = i4 & (-15);
                }
            } else {
                gapComposerH.D();
                i3 = i4 & (-15);
                permissionsViewModel3 = permissionsViewModel;
            }
            gapComposerH.a0();
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Unit unit = Unit.f71739a;
            boolean zY2 = gapComposerH.y(permissionsViewModel3);
            Object objX2 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (zY2 || objX2 == composer$Companion$Empty$2) {
                objX2 = new ck(permissionsViewModel3, 7);
                gapComposerH.q(objX2);
            }
            LifecycleEffectKt.b(unit, null, (Function1) objX2, gapComposerH, 6);
            Object objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$2) {
                objX3 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposerH.q(objX3);
            }
            MutableState mutableState = (MutableState) objX3;
            Boolean bool = (Boolean) mutableState.getF10755b();
            bool.booleanValue();
            boolean zY3 = gapComposerH.y(permissionsViewModel3) | gapComposerH.y(context);
            Object objX4 = gapComposerH.x();
            if (zY3 || objX4 == composer$Companion$Empty$2) {
                objX4 = new ContactabilitySectionKt$ContactabilitySection$2$1(permissionsViewModel3, mutableState, context, null);
                gapComposerH.q(objX4);
            }
            EffectsKt.e(gapComposerH, bool, (Function2) objX4);
            boolean zY4 = gapComposerH.y(permissionsViewModel3);
            Object objX5 = gapComposerH.x();
            if (zY4 || objX5 == composer$Companion$Empty$2) {
                PermissionsViewModel permissionsViewModel5 = permissionsViewModel3;
                objX5 = new ContactabilitySectionKt$ContactabilitySection$3$1(0, permissionsViewModel5, PermissionsViewModel.class, "onNotificationPermissionGranted", "onNotificationPermissionGranted(Z)V", 0);
                permissionsViewModel4 = permissionsViewModel5;
                gapComposerH.q(objX5);
            } else {
                permissionsViewModel4 = permissionsViewModel3;
            }
            HandleNotificationsPermissionStateKt.a(permissionsViewModel4, (Function0) objX5, gapComposerH, 0);
            MutableState mutableStateB = SnapshotStateKt.b(permissionsViewModel4.getU(), gapComposerH);
            ContactabilityUiModel contactabilityUiModel = ((PermissionsUiModel) mutableStateB.getF10755b()).f62376f;
            if (contactabilityUiModel == null) {
                RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
                if (recomposeScopeImplB0 != null) {
                    final int i5 = 0;
                    recomposeScopeImplB0.d = new Function2(permissionsViewModel4, assetImageUiModel, str, i2, i5) { // from class: tp

                        /* JADX INFO: renamed from: b, reason: collision with root package name */
                        public final /* synthetic */ int f80122b;

                        /* JADX INFO: renamed from: c, reason: collision with root package name */
                        public final /* synthetic */ PermissionsViewModel f80123c;
                        public final /* synthetic */ AssetImageUiModel d;

                        /* JADX INFO: renamed from: e, reason: collision with root package name */
                        public final /* synthetic */ String f80124e;

                        {
                            this.f80122b = i5;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(Object obj, Object obj2) {
                            int i6 = this.f80122b;
                            String str2 = this.f80124e;
                            AssetImageUiModel assetImageUiModel2 = this.d;
                            PermissionsViewModel permissionsViewModel6 = this.f80123c;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).getClass();
                            switch (i6) {
                                case 0:
                                    ContactabilitySectionKt.a(permissionsViewModel6, assetImageUiModel2, str2, composer2, RecomposeScopeImplKt.a(1));
                                    break;
                                default:
                                    ContactabilitySectionKt.a(permissionsViewModel6, assetImageUiModel2, str2, composer2, RecomposeScopeImplKt.a(1));
                                    break;
                            }
                            return Unit.f71739a;
                        }
                    };
                    return;
                }
                return;
            }
            PermissionsViewModel permissionsViewModel6 = permissionsViewModel4;
            Modifier modifierB = BackgroundKt.b(new DTFunctionNameModifier("ContactabilitySection"), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a);
            Object objX6 = gapComposerH.x();
            if (objX6 == composer$Companion$Empty$2) {
                objX6 = ContactabilitySectionKt$ContactabilitySection$4$1.f57895a;
                gapComposerH.q(objX6);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) objX6;
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierB);
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
            Updater.c(gapComposerH, measurePolicy, ComposeUiNode.Companion.f9644f);
            Updater.c(gapComposerH, persistentCompositionLocalMapU, ComposeUiNode.Companion.f9643e);
            Updater.c(gapComposerH, Integer.valueOf(iHashCode), ComposeUiNode.Companion.g);
            Updater.b(gapComposerH, ComposeUiNode.Companion.f9645h);
            Modifier modifierA = AspectRatioKt.a(n00.e(gapComposerH, modifierC, ComposeUiNode.Companion.d, "ContactabilitySection", 1.0f), 1.0f, false);
            String str2 = assetImageUiModel.f51778b;
            str2.getClass();
            ContentScale.f9447a.getClass();
            ImageLoaderKt.b(modifierA, str2, ContentScale.Companion.f9449b, null, null, 0, false, null, null, null, gapComposerH, 3462, 2032);
            boolean zY5 = gapComposerH.y(permissionsViewModel6) | ((i3 & 896) == 256) | gapComposerH.y(context);
            Object objX7 = gapComposerH.x();
            if (zY5) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX7 == composer$Companion$Empty$1) {
                }
                b(contactabilityUiModel, (Function1) objX7, PaddingKt.i(tr.d("ContactabilitySection", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e), gapComposerH, 0);
                gapComposerH.Z(true);
                if (Intrinsics.c(((PermissionsUiModel) mutableStateB.getF10755b()).f62372a, PermissionsBottomSheet.None.f62367f)) {
                    gapComposerH.L(-772513860);
                    gapComposerH.Z(false);
                } else {
                    gapComposerH.L(-773430840);
                    LVModalBottomSheetState lVModalBottomSheetStateF = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
                    String strC = StringResources_androidKt.c(gapComposerH, R.string.alt_close);
                    zY = gapComposerH.y(permissionsViewModel6);
                    objX = gapComposerH.x();
                    if (zY || objX == composer$Companion$Empty$1) {
                        objX = new up(permissionsViewModel6, 0);
                        gapComposerH.q(objX);
                    }
                    LVModalBottomSheetKt.b(null, strC, (Function0) objX, lVModalBottomSheetStateF, null, 0L, false, null, ComposableLambdaKt.b(965490709, new g1(permissionsViewModel6, context, mutableStateB, 14), gapComposerH), gapComposerH, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                    gapComposerH.Z(false);
                }
                permissionsViewModel2 = permissionsViewModel6;
            }
            objX7 = new k3((Object) permissionsViewModel6, str, context, mutableState, 6);
            gapComposerH.q(objX7);
            b(contactabilityUiModel, (Function1) objX7, PaddingKt.i(tr.d("ContactabilitySection", 1.0f), LVAppDesignKitTheme.l(gapComposerH).f48416e), gapComposerH, 0);
            gapComposerH.Z(true);
            if (Intrinsics.c(((PermissionsUiModel) mutableStateB.getF10755b()).f62372a, PermissionsBottomSheet.None.f62367f)) {
                gapComposerH.L(-773430840);
                LVModalBottomSheetState lVModalBottomSheetStateF2 = LVModalBottomSheetKt.f(0, 7, gapComposerH, null);
                String strC2 = StringResources_androidKt.c(gapComposerH, R.string.alt_close);
                zY = gapComposerH.y(permissionsViewModel6);
                objX = gapComposerH.x();
                if (zY) {
                    objX = new up(permissionsViewModel6, 0);
                    gapComposerH.q(objX);
                } else {
                    objX = new up(permissionsViewModel6, 0);
                    gapComposerH.q(objX);
                }
                LVModalBottomSheetKt.b(null, strC2, (Function0) objX, lVModalBottomSheetStateF2, null, 0L, false, null, ComposableLambdaKt.b(965490709, new g1(permissionsViewModel6, context, mutableStateB, 14), gapComposerH), gapComposerH, (LVModalBottomSheetState.f48797e << 9) | 100663296, 241);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-772513860);
                gapComposerH.Z(false);
            }
            permissionsViewModel2 = permissionsViewModel6;
        } else {
            gapComposerH.D();
            permissionsViewModel2 = permissionsViewModel;
        }
        RecomposeScopeImpl recomposeScopeImplB1 = gapComposerH.b0();
        if (recomposeScopeImplB1 != null) {
            final int i6 = 1;
            recomposeScopeImplB1.d = new Function2(permissionsViewModel2, assetImageUiModel, str, i2, i6) { // from class: tp

                /* JADX INFO: renamed from: b, reason: collision with root package name */
                public final /* synthetic */ int f80122b;

                /* JADX INFO: renamed from: c, reason: collision with root package name */
                public final /* synthetic */ PermissionsViewModel f80123c;
                public final /* synthetic */ AssetImageUiModel d;

                /* JADX INFO: renamed from: e, reason: collision with root package name */
                public final /* synthetic */ String f80124e;

                {
                    this.f80122b = i6;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(Object obj, Object obj2) {
                    int i7 = this.f80122b;
                    String str3 = this.f80124e;
                    AssetImageUiModel assetImageUiModel2 = this.d;
                    PermissionsViewModel permissionsViewModel7 = this.f80123c;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    switch (i7) {
                        case 0:
                            ContactabilitySectionKt.a(permissionsViewModel7, assetImageUiModel2, str3, composer2, RecomposeScopeImplKt.a(1));
                            break;
                        default:
                            ContactabilitySectionKt.a(permissionsViewModel7, assetImageUiModel2, str3, composer2, RecomposeScopeImplKt.a(1));
                            break;
                    }
                    return Unit.f71739a;
                }
            };
        }
    }

    public static final void b(ContactabilityUiModel contactabilityUiModel, Function1 function1, Modifier modifier, Composer composer, int i2) {
        Modifier modifierE = modifier;
        if (modifierE != null) {
            modifierE = a.e(modifierE, "CtaCard");
        }
        GapComposer gapComposerH = composer.h(-146461367);
        Applier applier = gapComposerH.f7976a;
        int i3 = i2 | (gapComposerH.K(contactabilityUiModel) ? 4 : 2) | (gapComposerH.y(function1) ? 32 : 16) | (gapComposerH.K(modifierE) ? 256 : 128);
        if (gapComposerH.p(i3 & 1, (i3 & 147) != 146)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Context context = (Context) gapComposerH.k(AndroidCompositionLocals_androidKt.f9936b);
            Modifier modifierI = PaddingKt.i(BackgroundKt.b(ClipKt.a(modifierE, LVAppDesignKitTheme.j(gapComposerH).f48411c), LVAppDesignKitTheme.c(gapComposerH).f48361b.f48374a, RectangleShapeKt.f8913a), LVAppDesignKitTheme.l(gapComposerH).f48416e);
            Alignment.f8582a.getClass();
            BiasAlignment.Horizontal horizontal = Alignment.Companion.o;
            Arrangement$Start$1 arrangement$Start$1 = Arrangement.f4918a;
            ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48416e), horizontal, gapComposerH, 48);
            int iHashCode = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU = gapComposerH.U();
            Modifier modifierC = ComposedModifierKt.c(gapComposerH, modifierI);
            ComposeUiNode.b0.getClass();
            Function0 function0 = ComposeUiNode.Companion.f9641b;
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Function2 function2 = ComposeUiNode.Companion.f9644f;
            Updater.c(gapComposerH, columnMeasurePolicyA, function2);
            Function2 function3 = ComposeUiNode.Companion.f9643e;
            Updater.c(gapComposerH, persistentCompositionLocalMapU, function3);
            Integer numValueOf = Integer.valueOf(iHashCode);
            Function2 function4 = ComposeUiNode.Companion.g;
            Updater.c(gapComposerH, numValueOf, function4);
            Function1 function5 = ComposeUiNode.Companion.f9645h;
            Updater.b(gapComposerH, function5);
            Function2 function6 = ComposeUiNode.Companion.d;
            Updater.c(gapComposerH, modifierC, function6);
            Arrangement.SpacedAligned spacedAlignedF = Arrangement.f(LVAppDesignKitTheme.l(gapComposerH).f48414b);
            DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("CtaCard");
            ColumnMeasurePolicy columnMeasurePolicyA2 = ColumnKt.a(spacedAlignedF, Alignment.Companion.n, gapComposerH, 0);
            int iHashCode2 = Long.hashCode(gapComposerH.T);
            PersistentCompositionLocalMap persistentCompositionLocalMapU2 = gapComposerH.U();
            Modifier modifierC2 = ComposedModifierKt.c(gapComposerH, dTFunctionNameModifier);
            if (applier == null) {
                ComposablesKt.b();
                throw null;
            }
            gapComposerH.B();
            if (gapComposerH.S) {
                gapComposerH.C(function0);
            } else {
                gapComposerH.o();
            }
            Updater.c(gapComposerH, columnMeasurePolicyA2, function2);
            Updater.c(gapComposerH, persistentCompositionLocalMapU2, function3);
            cj.t(iHashCode2, gapComposerH, function4, gapComposerH, function5);
            Updater.c(gapComposerH, modifierC2, function6);
            boolean z = false;
            TextKt.c(StringResourceUiModelKt.a(contactabilityUiModel.f57980a, context), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.f48382k, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).f48426f, gapComposerH, 0, 0, 131066);
            TextKt.c(StringResourceUiModelKt.a(contactabilityUiModel.f57981b, context), null, LVAppDesignKitTheme.c(gapComposerH).f48361b.l, 0L, null, 0L, null, null, 0L, 0, false, 0, 0, null, LVAppDesignKitTheme.n(gapComposerH).l, gapComposerH, 0, 0, 131066);
            gapComposerH = gapComposerH;
            Modifier modifierD = o60.d(gapComposerH, true, "CtaCard", 1.0f);
            ConfigurationButton configurationButton = LVAppDesignKitTheme.b(gapComposerH).f48446a;
            String strA = StringResourceUiModelKt.a(contactabilityUiModel.f57982c, context);
            boolean z2 = (i3 & 112) == 32;
            if ((i3 & 14) == 4) {
                z = true;
            }
            boolean z3 = z2 | z;
            Object objX = gapComposerH.x();
            if (z3 || objX == Composer.Companion.f7939a) {
                objX = new tf(function1, contactabilityUiModel, 28);
                gapComposerH.q(objX);
            }
            LVButtonKt.b(6, 504, gapComposerH, modifierD, configurationButton, null, null, strA, (Function0) objX, false, false, false);
            gapComposerH.Z(true);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new u(contactabilityUiModel, function1, modifierE, i2, 23);
        }
    }
}
