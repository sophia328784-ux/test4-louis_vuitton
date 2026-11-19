package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.ExposedDropdownMenuAnchorType;
import androidx.compose.material3.ExposedDropdownMenuKt;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.b;
import androidx.compose.material3.l;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.SoftwareKeyboardController;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.platform.extensions.StringExtKt;
import com.vuitton.android.presentation.model.common.AssetImageUiModel;
import com.vuitton.android.presentation.model.common.AssetUiModel;
import com.vuitton.android.presentation.model.common.AssetVideoUiModel;
import com.vuitton.android.presentation.screen.booking.common.models.BookingCTAState;
import com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.ComposableSingletons$BookingReservationScreenKt;
import com.vuitton.android.presentation.screen.booking.form.components.module.BookingModuleKt;
import com.vuitton.android.presentation.screen.booking.form.models.BookingExperienceViewState;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleDataUiModel;
import com.vuitton.android.presentation.screen.booking.form.models.BookingFormModuleUiModel;
import com.vuitton.android.presentation.screen.certificates.components.list.CertificateScreenKt$CertificateList$lambda$0$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.certificates.model.CertificateCapucineUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateDiamondUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateRubyUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateUiModel;
import com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel;
import com.vuitton.android.presentation.screen.personalselections.detail.models.SelectionAssetUiModel;
import com.vuitton.android.presentation.screen.plp.models.productshortlist.PlpProductUiModel;
import defpackage.o60;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class kg implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f71634b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f71635c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f71636e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ boolean f71637f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f71638h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ Object f71639i;

    public /* synthetic */ kg(BookingExperienceViewState bookingExperienceViewState, boolean z, BookingCTAState bookingCTAState, Function1 function1, Function2 function2, Function2 function3, Function1 function4) {
        this.g = bookingExperienceViewState;
        this.f71637f = z;
        this.f71638h = bookingCTAState;
        this.d = function1;
        this.f71635c = function2;
        this.f71639i = function3;
        this.f71636e = function4;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        AssetUiModel assetUiModel;
        AssetVideoUiModel assetVideoUiModel;
        String str;
        AssetUiModel assetUiModel2;
        AssetImageUiModel assetImageUiModel;
        String str2;
        int i2 = this.f71634b;
        boolean z = this.f71637f;
        int i3 = 1;
        Object obj2 = this.f71639i;
        Object obj3 = this.f71636e;
        Object obj4 = this.f71635c;
        Object obj5 = this.d;
        Object obj6 = this.f71638h;
        Object obj7 = this.g;
        switch (i2) {
            case 0:
                BookingExperienceViewState bookingExperienceViewState = (BookingExperienceViewState) obj7;
                final BookingCTAState bookingCTAState = (BookingCTAState) obj6;
                final Function1 function1 = (Function1) obj5;
                final Function2 function2 = (Function2) obj4;
                final Function2 function3 = (Function2) obj2;
                final Function1 function4 = (Function1) obj3;
                LazyListScope lazyListScope = (LazyListScope) obj;
                int i4 = BookingReservationScreenKt.f54457b;
                lazyListScope.getClass();
                LazyListScope.f(lazyListScope, null, new ComposableLambdaImpl(-910999390, true, new pf(z, bookingExperienceViewState, i3)), 3);
                if (bookingExperienceViewState instanceof BookingExperienceViewState.Success) {
                    final List list = ((BookingExperienceViewState.Success) bookingExperienceViewState).f54502a.d;
                    final t tVar = new t(22);
                    lazyListScope.h(list.size(), new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt$BookingReservationScreen$lambda$3$4$1$0$$inlined$itemsIndexed$default$1
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj8) {
                            int iIntValue = ((Number) obj8).intValue();
                            return tVar.invoke(Integer.valueOf(iIntValue), list.get(iIntValue));
                        }
                    }, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt$BookingReservationScreen$lambda$3$4$1$0$$inlined$itemsIndexed$default$2
                        @Override // kotlin.jvm.functions.Function1
                        public final Object invoke(Object obj8) {
                            list.get(((Number) obj8).intValue());
                            return null;
                        }
                    }, new ComposableLambdaImpl(2039820996, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt$BookingReservationScreen$lambda$3$4$1$0$$inlined$itemsIndexed$default$3
                        @Override // kotlin.jvm.functions.Function4
                        public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                            int i5;
                            LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                            int iIntValue = ((Number) obj9).intValue();
                            Composer composer = (Composer) obj10;
                            int iIntValue2 = ((Number) obj11).intValue();
                            if ((iIntValue2 & 6) == 0) {
                                i5 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                            } else {
                                i5 = iIntValue2;
                            }
                            if ((iIntValue2 & 48) == 0) {
                                i5 |= composer.d(iIntValue) ? 32 : 16;
                            }
                            if (composer.p(i5 & 1, (i5 & 147) != 146)) {
                                OpaqueKey opaqueKey = ComposerKt.f7940a;
                                int i6 = i5 & 126;
                                BookingFormModuleUiModel bookingFormModuleUiModel = (BookingFormModuleUiModel) list.get(iIntValue);
                                composer.L(-1563568173);
                                Modifier modifierK = PaddingKt.k(Modifier.Companion.f8607b, LVAppDesignKitTheme.l(composer).f48416e, Call.Parameters.DEFAULT_CAMERA_ZOOM, 2);
                                boolean z2 = bookingCTAState == BookingCTAState.LOADING;
                                final Function1 function5 = function1;
                                boolean zK = composer.K(function5);
                                Object objX = composer.x();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.f7939a;
                                if (zK || objX == composer$Companion$Empty$1) {
                                    objX = new Function1<String, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt$BookingReservationScreen$4$5$1$1$3$1$1
                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object invoke(Object obj12) {
                                            String str3 = (String) obj12;
                                            str3.getClass();
                                            function5.invoke(str3);
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer.q(objX);
                                }
                                Function1 function6 = (Function1) objX;
                                final Function2 function7 = function2;
                                boolean zK2 = composer.K(function7);
                                Object objX2 = composer.x();
                                if (zK2 || objX2 == composer$Companion$Empty$1) {
                                    objX2 = new Function2<String, BookingFormModuleDataUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.booking.form.components.BookingReservationScreenKt$BookingReservationScreen$4$5$1$1$3$2$1
                                        @Override // kotlin.jvm.functions.Function2
                                        public final Object invoke(Object obj12, Object obj13) {
                                            String str3 = (String) obj12;
                                            BookingFormModuleDataUiModel bookingFormModuleDataUiModel = (BookingFormModuleDataUiModel) obj13;
                                            str3.getClass();
                                            bookingFormModuleDataUiModel.getClass();
                                            function7.invoke(str3, bookingFormModuleDataUiModel);
                                            return Unit.f71739a;
                                        }
                                    };
                                    composer.q(objX2);
                                }
                                BookingModuleKt.a(modifierK, bookingFormModuleUiModel, iIntValue, z2, function6, (Function2) objX2, function3, function4, composer, (i6 << 3) & 896);
                                composer.F();
                            } else {
                                composer.D();
                            }
                            return Unit.f71739a;
                        }
                    }));
                } else {
                    ComposableSingletons$BookingReservationScreenKt.f54474a.getClass();
                    LazyListScope.f(lazyListScope, null, ComposableSingletons$BookingReservationScreenKt.f54475b, 3);
                    LazyListScope.f(lazyListScope, null, ComposableSingletons$BookingReservationScreenKt.f54476c, 3);
                }
                ComposableSingletons$BookingReservationScreenKt.f54474a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$BookingReservationScreenKt.d, 3);
                break;
            case 1:
                final List list2 = (List) obj7;
                final Function2 function5 = (Function2) obj4;
                final Function1 function6 = (Function1) obj5;
                final Function1 function7 = (Function1) obj3;
                final Function1 function8 = (Function1) obj2;
                LazyListScope lazyListScope2 = (LazyListScope) obj;
                lazyListScope2.getClass();
                LazyListScope.f(lazyListScope2, null, new ComposableLambdaImpl(474978752, true, new a3((Function0) obj6, 8)), 3);
                final CertificateScreenKt$CertificateList$lambda$0$0$$inlined$items$default$1 certificateScreenKt$CertificateList$lambda$0$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.certificates.components.list.CertificateScreenKt$CertificateList$lambda$0$0$$inlined$items$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* bridge */ /* synthetic */ Object invoke(Object obj8) {
                        return null;
                    }
                };
                int size = list2.size();
                Function1<Integer, Object> function9 = new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.certificates.components.list.CertificateScreenKt$CertificateList$lambda$0$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj8) {
                        return certificateScreenKt$CertificateList$lambda$0$0$$inlined$items$default$1.invoke(list2.get(((Number) obj8).intValue()));
                    }
                };
                final boolean z2 = this.f71637f;
                lazyListScope2.h(size, null, function9, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.certificates.components.list.CertificateScreenKt$CertificateList$lambda$0$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj8, Object obj9, Object obj10, Object obj11) {
                        int i5;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj8;
                        int iIntValue = ((Number) obj9).intValue();
                        Composer composer = (Composer) obj10;
                        int iIntValue2 = ((Number) obj11).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i5 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i5 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i5 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i5 & 1, (i5 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            CertificateUiModel certificateUiModel = (CertificateUiModel) list2.get(iIntValue);
                            composer.L(1160342086);
                            if (certificateUiModel instanceof CertificateDiamondUiModel) {
                                composer.L(1160376061);
                                CertificateListItemsKt.b(null, (CertificateDiamondUiModel) certificateUiModel, function5, function6, function7, composer, 0);
                                composer.F();
                            } else if (certificateUiModel instanceof CertificateCapucineUiModel) {
                                composer.L(1160794220);
                                CertificateListItemsKt.a(null, (CertificateCapucineUiModel) certificateUiModel, function8, function7, composer, 0);
                                composer = composer;
                                composer.F();
                            } else if (certificateUiModel instanceof CertificateRubyUiModel) {
                                composer.L(1161135096);
                                CertificateListItemsKt.f(null, (CertificateRubyUiModel) certificateUiModel, function8, function6, function7, composer, 0);
                                composer.F();
                            } else {
                                if (!(certificateUiModel instanceof CertificateVisionnaireUiModel)) {
                                    throw o60.v(composer, -793853603);
                                }
                                composer.L(1161585588);
                                CertificateListItemsKt.g(null, (CertificateVisionnaireUiModel) certificateUiModel, z2, function7, function8, composer, 0);
                                composer.F();
                            }
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                break;
            case 2:
                String str3 = (String) obj7;
                String str4 = (String) obj6;
                String str5 = (String) obj5;
                String str6 = (String) obj3;
                nd ndVar = (nd) obj4;
                SoftwareKeyboardController softwareKeyboardController = (SoftwareKeyboardController) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                int i5 = ExposedDropdownMenuKt.f6925a;
                ExposedDropdownMenuAnchorType.f6913b.getClass();
                if (Intrinsics.c(str3, ExposedDropdownMenuAnchorType.f6915e)) {
                    Role.f10289b.getClass();
                    SemanticsPropertiesKt.o(semanticsPropertyReceiver, 0);
                    if (!z) {
                        str4 = str5;
                    }
                    SemanticsPropertiesKt.r(semanticsPropertyReceiver, str4);
                    SemanticsPropertiesKt.i(semanticsPropertyReceiver, str6);
                } else {
                    Role.f10289b.getClass();
                    SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.f10293h);
                }
                SemanticsPropertiesKt.e(semanticsPropertyReceiver, null, new pp(ndVar, str3, softwareKeyboardController, 7));
                break;
            case 3:
                SheetState sheetState = (SheetState) obj7;
                String str7 = (String) obj6;
                String str8 = (String) obj5;
                String str9 = (String) obj3;
                Function0 function0 = (Function0) obj4;
                CoroutineScope coroutineScope = (CoroutineScope) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver2 = (SemanticsPropertyReceiver) obj;
                if (z) {
                    py pyVar = new py(function0, 28);
                    KProperty[] kPropertyArr = SemanticsPropertiesKt.f10359a;
                    semanticsPropertyReceiver2.a(SemanticsActions.v, new AccessibilityAction(str7, pyVar));
                    SheetValue sheetValueC = sheetState.c();
                    SheetValue sheetValue = SheetValue.PartiallyExpanded;
                    if (sheetValueC == sheetValue) {
                        semanticsPropertyReceiver2.a(SemanticsActions.t, new AccessibilityAction(str8, new l(sheetState, coroutineScope, sheetState, 2)));
                    } else if (sheetState.f7211e.e().d(sheetValue)) {
                        semanticsPropertyReceiver2.a(SemanticsActions.u, new AccessibilityAction(str9, new b(sheetState, coroutineScope, 4)));
                    }
                }
                break;
            default:
                SelectionAssetUiModel selectionAssetUiModel = (SelectionAssetUiModel) obj7;
                List list3 = (List) obj6;
                Function1 function10 = (Function1) obj5;
                Context context = (Context) obj4;
                Function1 function11 = (Function1) obj3;
                Function1 function12 = (Function1) obj2;
                LazyListScope lazyListScope3 = (LazyListScope) obj;
                lazyListScope3.getClass();
                if (selectionAssetUiModel != null && (assetUiModel2 = selectionAssetUiModel.f62576a) != null && (assetImageUiModel = assetUiModel2.f51780b) != null && (str2 = assetImageUiModel.f51778b) != null && StringExtKt.a(str2)) {
                    LazyListScope.f(lazyListScope3, null, new ComposableLambdaImpl(-1491845797, true, new ni0(function10, selectionAssetUiModel, 13)), 3);
                } else if (selectionAssetUiModel != null && (assetUiModel = selectionAssetUiModel.f62576a) != null && (assetVideoUiModel = assetUiModel.f51781c) != null && (str = assetVideoUiModel.f51783c) != null && StringExtKt.a(str)) {
                    LazyListScope.f(lazyListScope3, null, new ComposableLambdaImpl(1923388804, true, new yj0(selectionAssetUiModel, function10, context, 3)), 3);
                }
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    LazyListScope.f(lazyListScope3, null, new ComposableLambdaImpl(1638728771, true, new pl(function11, (PlpProductUiModel) it.next(), this.f71637f, function12, 5)), 3);
                }
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ kg(SelectionAssetUiModel selectionAssetUiModel, List list, Function1 function1, Context context, Function1 function2, boolean z, Function1 function3) {
        this.g = selectionAssetUiModel;
        this.f71638h = list;
        this.d = function1;
        this.f71635c = context;
        this.f71636e = function2;
        this.f71637f = z;
        this.f71639i = function3;
    }

    public /* synthetic */ kg(String str, boolean z, String str2, String str3, String str4, nd ndVar, SoftwareKeyboardController softwareKeyboardController) {
        this.g = str;
        this.f71637f = z;
        this.f71638h = str2;
        this.d = str3;
        this.f71636e = str4;
        this.f71635c = ndVar;
        this.f71639i = softwareKeyboardController;
    }

    public /* synthetic */ kg(List list, Function0 function0, Function2 function2, Function1 function1, Function1 function3, Function1 function4, boolean z) {
        this.g = list;
        this.f71638h = function0;
        this.f71635c = function2;
        this.d = function1;
        this.f71636e = function3;
        this.f71639i = function4;
        this.f71637f = z;
    }

    public /* synthetic */ kg(boolean z, SheetState sheetState, String str, String str2, String str3, Function0 function0, CoroutineScope coroutineScope) {
        this.f71637f = z;
        this.g = sheetState;
        this.f71638h = str;
        this.d = str2;
        this.f71636e = str3;
        this.f71635c = function0;
        this.f71639i = coroutineScope;
    }
}
