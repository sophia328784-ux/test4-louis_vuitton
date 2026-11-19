package com.vuitton.android.presentation.screen.osa;

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
import androidx.hilt.lifecycle.viewmodel.compose.HiltViewModelKt;
import androidx.lifecycle.HasDefaultViewModelProviderFactory;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.lifecycle.viewmodel.compose.LocalViewModelStoreOwner;
import androidx.lifecycle.viewmodel.compose.ViewModelKt;
import androidx.lifecycle.viewmodel.navigation3.ViewModelStoreNavEntryDecoratorKt;
import androidx.navigation3.runtime.EntryProviderScope;
import androidx.navigation3.runtime.NavBackStack;
import androidx.navigation3.runtime.SaveableStateHolderNavEntryDecoratorKt;
import androidx.navigation3.ui.NavDisplayKt;
import com.vuitton.android.presentation.extensions.Nav3ExtKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.components.OsaContactFormComposableKt;
import com.vuitton.android.presentation.screen.osa.form.contactinformation.models.OsaContactFormViewState;
import com.vuitton.android.presentation.screen.osa.form.storeselection.OsaLocationFormViewModel;
import com.vuitton.android.presentation.screen.osa.form.storeselection.components.OsaLocationFormComposableKt;
import com.vuitton.android.presentation.screen.osa.form.storeselection.models.OsaLocationFormViewState;
import com.vuitton.android.presentation.screen.osa.list.OsaListViewModel;
import com.vuitton.android.presentation.screen.osa.list.OsaListViewModelImpl;
import com.vuitton.android.presentation.screen.osa.list.components.OsaListComposableKt;
import com.vuitton.android.presentation.screen.osa.models.OsaPrebookResult;
import com.vuitton.android.presentation.screen.osa.reasons.OsaReasonsFormViewModel;
import com.vuitton.android.presentation.screen.osa.reasons.models.OsaReasonsFormViewState;
import com.vuitton.android.presentation.screen.osa.tracking.OsaTrackingUiModel;
import defpackage.a40;
import defpackage.aj0;
import defpackage.cj;
import defpackage.d1;
import defpackage.fj0;
import defpackage.jx;
import defpackage.md;
import defpackage.of0;
import defpackage.p0;
import defpackage.r0;
import defpackage.wd0;
import defpackage.wj0;
import defpackage.x0;
import defpackage.xj0;
import defpackage.y0;
import defpackage.yj0;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.ReflectionFactory;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002¨\u0006\u0004²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\f\u0010\u0003\u001a\u00020\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;", "welcomeViewState", "Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;", "osaReasonsFormViewState", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class OsaNavDisplayKt {

    @Metadata(k = 3, mv = {2, 3, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f60594a;

        static {
            int[] iArr = new int[OsaRoutesName.values().length];
            try {
                iArr[OsaRoutesName.LOGIN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[OsaRoutesName.LIST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[OsaRoutesName.LOCATION_FORM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f60594a = iArr;
        }
    }

    /* JADX WARN: Code duplicated, block: B:107:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:110:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:113:0x02f9  */
    public static final void a(final NavBackStack navBackStack, final OsaLocationFormViewModel osaLocationFormViewModel, final OsaContactFormViewModel osaContactFormViewModel, final OsaReasonsFormViewModel osaReasonsFormViewModel, final Function0 function0, final Function2 function2, final Function1 function1, Function0 function3, Function0 function4, final Function0 function5, final Function0 function6, final Function0 function7, final Function0 function8, final Function1 function9, final Function0 function10, Composer composer, int i2) {
        GapComposer gapComposer;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Object objX;
        Object objX2;
        Object objX3;
        navBackStack.getClass();
        osaLocationFormViewModel.getClass();
        osaContactFormViewModel.getClass();
        osaReasonsFormViewModel.getClass();
        function0.getClass();
        function2.getClass();
        function1.getClass();
        function3.getClass();
        function4.getClass();
        function5.getClass();
        function6.getClass();
        function7.getClass();
        function8.getClass();
        function9.getClass();
        function10.getClass();
        GapComposer gapComposerH = composer.h(-386713637);
        int i3 = i2 | (gapComposerH.K(navBackStack) ? 4 : 2) | (gapComposerH.K(osaLocationFormViewModel) ? 32 : 16) | (gapComposerH.K(osaContactFormViewModel) ? 256 : 128) | (gapComposerH.K(osaReasonsFormViewModel) ? 2048 : 1024) | (gapComposerH.y(function0) ? 16384 : 8192) | (gapComposerH.y(function2) ? 131072 : 65536) | (gapComposerH.y(function1) ? 1048576 : 524288) | (gapComposerH.y(function3) ? 8388608 : 4194304) | (gapComposerH.y(function4) ? 67108864 : 33554432) | (gapComposerH.y(function5) ? PKIFailureInfo.duplicateCertReq : 268435456);
        int i4 = (gapComposerH.y(function6) ? (char) 4 : (char) 2) | (gapComposerH.y(function7) ? ' ' : (char) 16) | (gapComposerH.y(function8) ? 256 : 128) | (gapComposerH.y(function9) ? 2048 : 1024) | (gapComposerH.y(function10) ? (char) 16384 : (char) 8192);
        if (gapComposerH.p(i3 & 1, ((i3 & 306783379) == 306783378 && (i4 & 9363) == 9362) ? false : true)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            Object objX4 = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX4 == composer$Companion$Empty$2) {
                objX4 = EffectsKt.j(EmptyCoroutineContext.f71840b, gapComposerH);
                gapComposerH.q(objX4);
            }
            final CoroutineScope coroutineScope = (CoroutineScope) objX4;
            Unit unit = Unit.f71739a;
            int i5 = 0;
            boolean z = ((i3 & 896) == 256) | ((i3 & 112) == 32) | ((i3 & 7168) == 2048);
            Object objX5 = gapComposerH.x();
            if (z || objX5 == composer$Companion$Empty$2) {
                objX5 = new jx(osaLocationFormViewModel, osaReasonsFormViewModel, osaContactFormViewModel, 26);
                gapComposerH.q(objX5);
            }
            EffectsKt.c(unit, (Function1) objX5, gapComposerH);
            List listP = CollectionsKt.P(SaveableStateHolderNavEntryDecoratorKt.a(gapComposerH), ViewModelStoreNavEntryDecoratorKt.a(gapComposerH));
            gapComposerH.L(2030406085);
            EntryProviderScope entryProviderScope = new EntryProviderScope(new Function1() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$$inlined$entryProvider$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    throw new IllegalStateException(cj.i(obj, "Unknown screen "));
                }
            });
            ComposableLambdaImpl composableLambdaImplB = ComposableLambdaKt.b(-24770480, new p0(osaLocationFormViewModel, function1, function3, function4, navBackStack, function10, 14), gapComposerH);
            OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$1 osaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$1 = new Function1<OsaRoutes.Login, Object>() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC = MapsKt.c();
            ReflectionFactory reflectionFactory = Reflection.f71922a;
            entryProviderScope.a(reflectionFactory.b(OsaRoutes.Login.class), osaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$1, new Function1<OsaRoutes.Login, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC;
                }
            }, composableLambdaImplB);
            ComposableLambdaImpl composableLambdaImplB2 = ComposableLambdaKt.b(-325419955, new Function3() { // from class: com.vuitton.android.presentation.screen.osa.c
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    final OsaLocationFormViewModel osaLocationFormViewModel2;
                    OsaLocationFormViewModel osaLocationFormViewModel3;
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((OsaRoutes.LocationForm) obj).getClass();
                    final int i6 = 0;
                    final int i7 = 1;
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        final OsaContactFormViewModel osaContactFormViewModel2 = osaContactFormViewModel;
                        final MutableState mutableStateB = SnapshotStateKt.b(osaContactFormViewModel2.getU(), composer2);
                        final OsaReasonsFormViewModel osaReasonsFormViewModel2 = osaReasonsFormViewModel;
                        boolean zY = composer2.y(osaReasonsFormViewModel2);
                        Object objX6 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                        if (zY || objX6 == composer$Companion$Empty$3) {
                            OsaNavDisplayKt$OsaNavDisplay$2$2$1$1 osaNavDisplayKt$OsaNavDisplay$2$2$1$1 = new OsaNavDisplayKt$OsaNavDisplay$2$2$1$1(1, osaReasonsFormViewModel2, OsaReasonsFormViewModel.class, "onReasonSelected", "onReasonSelected(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V", 0);
                            composer2.q(osaNavDisplayKt$OsaNavDisplay$2$2$1$1);
                            objX6 = osaNavDisplayKt$OsaNavDisplay$2$2$1$1;
                        }
                        KFunction kFunction = (KFunction) objX6;
                        boolean zY2 = composer2.y(osaReasonsFormViewModel2);
                        OsaLocationFormViewModel osaLocationFormViewModel4 = osaLocationFormViewModel;
                        boolean zY3 = zY2 | composer2.y(osaLocationFormViewModel4);
                        final NavBackStack navBackStack2 = navBackStack;
                        boolean zY4 = zY3 | composer2.y(navBackStack2);
                        final Function0 function11 = function10;
                        boolean zK = zY4 | composer2.K(function11);
                        Object objX7 = composer2.x();
                        if (zK || objX7 == composer$Companion$Empty$3) {
                            r0 r0Var = new r0(osaReasonsFormViewModel2, osaLocationFormViewModel4, navBackStack2, function11, 18);
                            osaLocationFormViewModel2 = osaLocationFormViewModel4;
                            composer2.q(r0Var);
                            objX7 = r0Var;
                        } else {
                            osaLocationFormViewModel2 = osaLocationFormViewModel4;
                        }
                        Function0 function12 = (Function0) objX7;
                        boolean zY5 = composer2.y(osaReasonsFormViewModel2) | composer2.y(osaLocationFormViewModel2);
                        Object objX8 = composer2.x();
                        if (zY5 || objX8 == composer$Companion$Empty$3) {
                            objX8 = new Function0() { // from class: vj0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i8 = i6;
                                    OsaLocationFormViewModel osaLocationFormViewModel5 = osaLocationFormViewModel2;
                                    OsaReasonsFormViewModel osaReasonsFormViewModel3 = osaReasonsFormViewModel2;
                                    switch (i8) {
                                        case 0:
                                            osaReasonsFormViewModel3.o(new OsaTrackingUiModel.ModifyReasonClickedEvent(((OsaLocationFormViewState) osaLocationFormViewModel5.getU().getValue()).r));
                                            osaReasonsFormViewModel3.e4();
                                            break;
                                        default:
                                            osaReasonsFormViewModel3.G4(((OsaLocationFormViewState) osaLocationFormViewModel5.getU().getValue()).r);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX8);
                        }
                        Function0 function13 = (Function0) objX8;
                        Function1 function14 = (Function1) kFunction;
                        boolean zY6 = composer2.y(osaReasonsFormViewModel2) | composer2.y(osaLocationFormViewModel2);
                        Object objX9 = composer2.x();
                        if (zY6 || objX9 == composer$Companion$Empty$3) {
                            objX9 = new Function0() { // from class: vj0
                                @Override // kotlin.jvm.functions.Function0
                                /* JADX INFO: renamed from: invoke */
                                public final Object mo47invoke() {
                                    int i8 = i7;
                                    OsaLocationFormViewModel osaLocationFormViewModel5 = osaLocationFormViewModel2;
                                    OsaReasonsFormViewModel osaReasonsFormViewModel3 = osaReasonsFormViewModel2;
                                    switch (i8) {
                                        case 0:
                                            osaReasonsFormViewModel3.o(new OsaTrackingUiModel.ModifyReasonClickedEvent(((OsaLocationFormViewState) osaLocationFormViewModel5.getU().getValue()).r));
                                            osaReasonsFormViewModel3.e4();
                                            break;
                                        default:
                                            osaReasonsFormViewModel3.G4(((OsaLocationFormViewState) osaLocationFormViewModel5.getU().getValue()).r);
                                            break;
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            composer2.q(objX9);
                        }
                        Function0 function15 = (Function0) objX9;
                        boolean zY7 = composer2.y(osaContactFormViewModel2) | composer2.K(mutableStateB) | composer2.y(osaLocationFormViewModel2) | composer2.y(navBackStack2) | composer2.K(function11);
                        final CoroutineScope coroutineScope2 = coroutineScope;
                        boolean zY8 = zY7 | composer2.y(coroutineScope2);
                        Object objX10 = composer2.x();
                        if (zY8 || objX10 == composer$Companion$Empty$3) {
                            final OsaLocationFormViewModel osaLocationFormViewModel5 = osaLocationFormViewModel2;
                            Function1 function16 = new Function1() { // from class: com.vuitton.android.presentation.screen.osa.a
                                @Override // kotlin.jvm.functions.Function1
                                public final Object invoke(Object obj4) {
                                    OsaPrebookResult osaPrebookResult = (OsaPrebookResult) obj4;
                                    osaPrebookResult.getClass();
                                    osaContactFormViewModel2.I3(osaPrebookResult);
                                    boolean zC = Intrinsics.c(((OsaContactFormViewState) mutableStateB.getF10755b()).f60743j, Boolean.TRUE);
                                    OsaLocationFormViewModel osaLocationFormViewModel6 = osaLocationFormViewModel5;
                                    NavBackStack navBackStack3 = navBackStack2;
                                    if (!zC || ((OsaLocationFormViewState) osaLocationFormViewModel6.getU().getValue()).r) {
                                        BuildersKt.c(coroutineScope2, null, null, new OsaNavDisplayKt$OsaNavDisplay$2$2$5$1$2(osaLocationFormViewModel6, navBackStack3, null), 3);
                                    } else {
                                        navBackStack3.getClass();
                                        if (!Nav3ExtKt.b(navBackStack3)) {
                                            function11.mo47invoke();
                                        }
                                    }
                                    return Unit.f71739a;
                                }
                            };
                            osaLocationFormViewModel3 = osaLocationFormViewModel5;
                            composer2.q(function16);
                            objX10 = function16;
                        } else {
                            osaLocationFormViewModel3 = osaLocationFormViewModel2;
                        }
                        OsaLocationFormComposableKt.a(osaLocationFormViewModel3, osaReasonsFormViewModel2, function12, function0, function13, function14, function15, (Function1) objX10, function9, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$3 osaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$3 = new Function1<OsaRoutes.LocationForm, Object>() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$3
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC2 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(OsaRoutes.LocationForm.class), osaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$3, new Function1<OsaRoutes.LocationForm, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$4
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC2;
                }
            }, composableLambdaImplB2);
            ComposableLambdaImpl composableLambdaImplB3 = ComposableLambdaKt.b(1131131107, new Function3() { // from class: com.vuitton.android.presentation.screen.osa.d
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((OsaRoutes.ContactForm) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        OsaReasonsFormViewModel osaReasonsFormViewModel2 = osaReasonsFormViewModel;
                        MutableState mutableStateB = SnapshotStateKt.b(osaReasonsFormViewModel2.getL(), composer2);
                        Unit unit2 = Unit.f71739a;
                        OsaContactFormViewModel osaContactFormViewModel2 = osaContactFormViewModel;
                        boolean zY = composer2.y(osaContactFormViewModel2);
                        Object objX6 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                        if (zY || objX6 == composer$Companion$Empty$3) {
                            objX6 = new OsaNavDisplayKt$OsaNavDisplay$2$3$1$1(osaContactFormViewModel2, null);
                            composer2.q(objX6);
                        }
                        EffectsKt.e(composer2, unit2, (Function2) objX6);
                        OsaReasonsFormViewState osaReasonsFormViewState = (OsaReasonsFormViewState) mutableStateB.getF10755b();
                        NavBackStack navBackStack2 = navBackStack;
                        boolean zY2 = composer2.y(navBackStack2);
                        Function0 function11 = function10;
                        boolean zK = zY2 | composer2.K(function11);
                        Object objX7 = composer2.x();
                        if (zK || objX7 == composer$Companion$Empty$3) {
                            objX7 = new y0(navBackStack2, function11, 16);
                            composer2.q(objX7);
                        }
                        Function0 function12 = (Function0) objX7;
                        OsaLocationFormViewModel osaLocationFormViewModel2 = osaLocationFormViewModel;
                        boolean zY3 = composer2.y(osaLocationFormViewModel2);
                        Function1 function13 = function1;
                        boolean zK2 = zY3 | composer2.K(function13);
                        Object objX8 = composer2.x();
                        if (zK2 || objX8 == composer$Companion$Empty$3) {
                            objX8 = new xj0(osaLocationFormViewModel2, function13, 0);
                            composer2.q(objX8);
                        }
                        Function0 function14 = (Function0) objX8;
                        boolean zY4 = composer2.y(osaLocationFormViewModel2);
                        Object objX9 = composer2.x();
                        if (zY4 || objX9 == composer$Companion$Empty$3) {
                            objX9 = new wj0(osaLocationFormViewModel2, 1);
                            composer2.q(objX9);
                        }
                        Function0 function15 = (Function0) objX9;
                        boolean zY5 = composer2.y(navBackStack2);
                        Object objX10 = composer2.x();
                        if (zY5 || objX10 == composer$Companion$Empty$3) {
                            objX10 = new x0(navBackStack2, 12);
                            composer2.q(objX10);
                        }
                        Function0 function16 = (Function0) objX10;
                        boolean zY6 = composer2.y(osaReasonsFormViewModel2) | composer2.y(osaLocationFormViewModel2) | composer2.y(navBackStack2);
                        Object objX11 = composer2.x();
                        if (zY6 || objX11 == composer$Companion$Empty$3) {
                            objX11 = new of0(osaReasonsFormViewModel2, osaLocationFormViewModel2, navBackStack2, 17);
                            composer2.q(objX11);
                        }
                        Function0 function17 = (Function0) objX11;
                        boolean zY7 = composer2.y(osaReasonsFormViewModel2);
                        Object objX12 = composer2.x();
                        if (zY7 || objX12 == composer$Companion$Empty$3) {
                            OsaNavDisplayKt$OsaNavDisplay$2$3$7$1 osaNavDisplayKt$OsaNavDisplay$2$3$7$1 = new OsaNavDisplayKt$OsaNavDisplay$2$3$7$1(1, osaReasonsFormViewModel2, OsaReasonsFormViewModel.class, "onReasonSelected", "onReasonSelected(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V", 0);
                            composer2.q(osaNavDisplayKt$OsaNavDisplay$2$3$7$1);
                            objX12 = osaNavDisplayKt$OsaNavDisplay$2$3$7$1;
                        }
                        OsaContactFormComposableKt.a(osaContactFormViewModel2, osaReasonsFormViewState, function12, function14, function15, function5, function16, function11, function2, function6, function7, function8, function17, (Function1) ((KFunction) objX12), composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$5 osaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$5 = new Function1<OsaRoutes.ContactForm, Object>() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$5
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC3 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(OsaRoutes.ContactForm.class), osaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$5, new Function1<OsaRoutes.ContactForm, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$6
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC3;
                }
            }, composableLambdaImplB3);
            ComposableLambdaImpl composableLambdaImplB4 = ComposableLambdaKt.b(105659412, new Function3() { // from class: com.vuitton.android.presentation.screen.osa.e
                @Override // kotlin.jvm.functions.Function3
                public final Object A(Object obj, Object obj2, Object obj3) {
                    Composer composer2 = (Composer) obj2;
                    int iIntValue = ((Integer) obj3).intValue();
                    ((OsaRoutes.List) obj).getClass();
                    if (composer2.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                        OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                        ViewModelStoreOwner viewModelStoreOwnerA = LocalViewModelStoreOwner.a(composer2);
                        if (viewModelStoreOwnerA == null) {
                            md.k("No ViewModelStoreOwner was provided via LocalViewModelStoreOwner");
                            return null;
                        }
                        OsaListViewModel osaListViewModel = (OsaListViewModel) ViewModelKt.a(Reflection.f71922a.b(OsaListViewModelImpl.class), viewModelStoreOwnerA, null, HiltViewModelKt.a(viewModelStoreOwnerA, composer2), viewModelStoreOwnerA instanceof HasDefaultViewModelProviderFactory ? ((HasDefaultViewModelProviderFactory) viewModelStoreOwnerA).getDefaultViewModelCreationExtras() : CreationExtras.Empty.f13578c, composer2);
                        Unit unit2 = Unit.f71739a;
                        OsaLocationFormViewModel osaLocationFormViewModel2 = osaLocationFormViewModel;
                        boolean zY = composer2.y(osaLocationFormViewModel2);
                        OsaReasonsFormViewModel osaReasonsFormViewModel2 = osaReasonsFormViewModel;
                        boolean zY2 = zY | composer2.y(osaReasonsFormViewModel2);
                        OsaContactFormViewModel osaContactFormViewModel2 = osaContactFormViewModel;
                        boolean zY3 = zY2 | composer2.y(osaContactFormViewModel2);
                        Object objX6 = composer2.x();
                        Composer$Companion$Empty$1 composer$Companion$Empty$3 = Composer.Companion.f7939a;
                        if (zY3 || objX6 == composer$Companion$Empty$3) {
                            objX6 = new OsaNavDisplayKt$OsaNavDisplay$2$4$1$1(osaLocationFormViewModel2, osaReasonsFormViewModel2, osaContactFormViewModel2, null);
                            composer2.q(objX6);
                        }
                        EffectsKt.e(composer2, unit2, (Function2) objX6);
                        NavBackStack navBackStack2 = navBackStack;
                        boolean zY4 = composer2.y(navBackStack2);
                        Object objX7 = composer2.x();
                        if (zY4 || objX7 == composer$Companion$Empty$3) {
                            objX7 = new x0(navBackStack2, 11);
                            composer2.q(objX7);
                        }
                        Function0 function11 = (Function0) objX7;
                        boolean zY5 = composer2.y(osaListViewModel);
                        Function2 function12 = function2;
                        boolean zK = zY5 | composer2.K(function12);
                        Object objX8 = composer2.x();
                        if (zK || objX8 == composer$Companion$Empty$3) {
                            objX8 = new wd0(osaListViewModel, function12, 13);
                            composer2.q(objX8);
                        }
                        Function2 function13 = (Function2) objX8;
                        boolean zY6 = composer2.y(osaListViewModel) | composer2.y(osaReasonsFormViewModel2) | composer2.y(osaLocationFormViewModel2) | composer2.y(osaContactFormViewModel2) | composer2.y(navBackStack2);
                        Object objX9 = composer2.x();
                        if (zY6 || objX9 == composer$Companion$Empty$3) {
                            d1 d1Var = new d1(osaListViewModel, osaReasonsFormViewModel2, osaLocationFormViewModel2, osaContactFormViewModel2, navBackStack2, 14);
                            composer2.q(d1Var);
                            objX9 = d1Var;
                        }
                        OsaListComposableKt.a(osaListViewModel, function10, function11, function13, (Function1) objX9, composer2, 0);
                    } else {
                        composer2.D();
                    }
                    return Unit.f71739a;
                }
            }, gapComposerH);
            OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$7 osaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$7 = new Function1<OsaRoutes.List, Object>() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$7
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC4 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(OsaRoutes.List.class), osaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$7, new Function1<OsaRoutes.List, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$8
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC4;
                }
            }, composableLambdaImplB4);
            ComposableLambdaImpl composableLambdaImplB5 = ComposableLambdaKt.b(-154549021, new yj0(osaLocationFormViewModel, navBackStack, coroutineScope, i5), gapComposerH);
            OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$9 osaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$9 = new Function1<OsaRoutes.Kisa, Object>() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$9
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return obj.toString();
                }
            };
            final Map mapC5 = MapsKt.c();
            entryProviderScope.a(reflectionFactory.b(OsaRoutes.Kisa.class), osaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$9, new Function1<OsaRoutes.Kisa, Map<String, ? extends Object>>() { // from class: com.vuitton.android.presentation.screen.osa.OsaNavDisplayKt$OsaNavDisplay$lambda$1$$inlined$entry$default$10
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return mapC5;
                }
            }, composableLambdaImplB5);
            androidx.navigation3.runtime.a aVar = new androidx.navigation3.runtime.a(entryProviderScope);
            gapComposerH.Z(false);
            int i6 = i3 & 14;
            boolean z2 = (i6 == 4) | ((i4 & 57344) == 16384);
            Object objX6 = gapComposerH.x();
            if (z2) {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$2;
                if (objX6 == composer$Companion$Empty$1) {
                }
                Function0 function11 = (Function0) objX6;
                objX = gapComposerH.x();
                if (objX == composer$Companion$Empty$1) {
                    objX = new fj0(15);
                    gapComposerH.q(objX);
                }
                Function1 function12 = (Function1) objX;
                objX2 = gapComposerH.x();
                if (objX2 == composer$Companion$Empty$1) {
                    objX2 = new fj0(16);
                    gapComposerH.q(objX2);
                }
                Function1 function13 = (Function1) objX2;
                objX3 = gapComposerH.x();
                if (objX3 == composer$Companion$Empty$1) {
                    objX3 = new aj0(2);
                    gapComposerH.q(objX3);
                }
                NavBackStack.Companion companion = NavBackStack.INSTANCE;
                gapComposer = gapComposerH;
                NavDisplayKt.c(navBackStack, null, null, function11, listP, null, null, function12, function13, (Function2) objX3, aVar, gapComposer, i6 | 805306368);
            }
            objX6 = new y0(navBackStack, function10, 17);
            gapComposerH.q(objX6);
            Function0 function14 = (Function0) objX6;
            objX = gapComposerH.x();
            if (objX == composer$Companion$Empty$1) {
                objX = new fj0(15);
                gapComposerH.q(objX);
            }
            Function1 function15 = (Function1) objX;
            objX2 = gapComposerH.x();
            if (objX2 == composer$Companion$Empty$1) {
                objX2 = new fj0(16);
                gapComposerH.q(objX2);
            }
            Function1 function16 = (Function1) objX2;
            objX3 = gapComposerH.x();
            if (objX3 == composer$Companion$Empty$1) {
                objX3 = new aj0(2);
                gapComposerH.q(objX3);
            }
            NavBackStack.Companion companion2 = NavBackStack.INSTANCE;
            gapComposer = gapComposerH;
            NavDisplayKt.c(navBackStack, null, null, function14, listP, null, null, function15, function16, (Function2) objX3, aVar, gapComposer, i6 | 805306368);
        } else {
            gapComposer = gapComposerH;
            gapComposer.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposer.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new a40(navBackStack, osaLocationFormViewModel, osaContactFormViewModel, osaReasonsFormViewModel, function0, function2, function1, function3, function4, function5, function6, function7, function8, function9, function10, i2);
        }
    }
}
