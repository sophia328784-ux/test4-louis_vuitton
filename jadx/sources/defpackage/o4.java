package defpackage;

import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.FlowRowScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import com.dynatrace.agent.compose.userinteraction.sensor.DTFunctionNameModifier;
import com.vuitton.android.designkit.ui.theme.LVAppDesignKitTheme;
import com.vuitton.android.presentation.screen.account.addressbook.components.AddressBookContentKt;
import com.vuitton.android.presentation.screen.distantrepairs.form.components.DistantRepairPhotoItemKt;
import com.vuitton.android.presentation.screen.distantrepairs.models.DistantRepairPhoto;
import com.vuitton.android.presentation.screen.repairs.detail.components.RepairDetailFollowUpBffKt;
import com.vuitton.android.presentation.screen.repairs.models.bff.RepairDetailUiModel;
import com.vuitton.foundation.model.domain.model.careservices.bff.CareServiceDetail;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import net.rtccloud.sdk.Call;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class o4 implements Function3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76687b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ List f76688c;

    public /* synthetic */ o4(List list, int i2) {
        this.f76687b = i2;
        this.f76688c = list;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        float f2;
        int i2 = this.f76687b;
        int i3 = 0;
        List list = this.f76688c;
        switch (i2) {
            case 0:
                Composer composer = (Composer) obj2;
                int iIntValue = ((Integer) obj3).intValue();
                ((LazyItemScope) obj).getClass();
                if (composer.p(iIntValue & 1, (iIntValue & 17) != 16)) {
                    OpaqueKey opaqueKey = ComposerKt.f7940a;
                    AddressBookContentKt.e(list.isEmpty(), composer, 0);
                } else {
                    composer.D();
                }
                return Unit.f71739a;
            case 1:
                Composer composer2 = (Composer) obj2;
                int iIntValue2 = ((Integer) obj3).intValue();
                ((FlowRowScope) obj).getClass();
                if (composer2.p(iIntValue2 & 1, (iIntValue2 & 17) != 16)) {
                    OpaqueKey opaqueKey2 = ComposerKt.f7940a;
                    Iterator it = list.iterator();
                    while (true) {
                        int i4 = i3;
                        if (it.hasNext()) {
                            Object next = it.next();
                            i3 = i4 + 1;
                            if (i4 < 0) {
                                CollectionsKt.t0();
                                throw null;
                            }
                            DistantRepairPhotoItemKt.a(tr.d("ProductReadCard$lambda$0$2", 0.33f), i4, (DistantRepairPhoto) next, true, null, null, "careservicesFormRecap_productDetailsPictures_image", composer2, 1575942, 48);
                        } else {
                            OpaqueKey opaqueKey3 = ComposerKt.f7940a;
                        }
                    }
                } else {
                    composer2.D();
                }
                return Unit.f71739a;
            default:
                Composer composer3 = (Composer) obj2;
                int iIntValue3 = ((Integer) obj3).intValue();
                ((ColumnScope) obj).getClass();
                if (composer3.p(iIntValue3 & 1, (iIntValue3 & 17) != 16)) {
                    OpaqueKey opaqueKey4 = ComposerKt.f7940a;
                    Modifier modifierK = PaddingKt.k(new DTFunctionNameModifier("RepairDetailFollowUpBff$lambda$0"), Call.Parameters.DEFAULT_CAMERA_ZOOM, LVAppDesignKitTheme.l(composer3).f48417f, 1);
                    Alignment.f8582a.getClass();
                    MeasurePolicy measurePolicyD = BoxKt.d(Alignment.Companion.f8584b, false);
                    int iHashCode = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN = composer3.n();
                    Modifier modifierC = ComposedModifierKt.c(composer3, modifierK);
                    ComposeUiNode.b0.getClass();
                    Function0 function0 = ComposeUiNode.Companion.f9641b;
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function0);
                    } else {
                        composer3.o();
                    }
                    Function2 function2 = ComposeUiNode.Companion.f9644f;
                    Updater.c(composer3, measurePolicyD, function2);
                    Function2 function3 = ComposeUiNode.Companion.f9643e;
                    Updater.c(composer3, persistentCompositionLocalMapN, function3);
                    Integer numValueOf = Integer.valueOf(iHashCode);
                    Function2 function4 = ComposeUiNode.Companion.g;
                    Updater.c(composer3, numValueOf, function4);
                    Function1 function1 = ComposeUiNode.Companion.f9645h;
                    Updater.b(composer3, function1);
                    Function2 function5 = ComposeUiNode.Companion.d;
                    Updater.c(composer3, modifierC, function5);
                    long j2 = LVAppDesignKitTheme.c(composer3).f48361b.l;
                    Modifier modifierJ = BoxScopeInstance.f4938a.j(PaddingKt.m(new DTFunctionNameModifier("RepairDetailFollowUpBff$lambda$0"), LVAppDesignKitTheme.l(composer3).f48414b, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, Call.Parameters.DEFAULT_CAMERA_ZOOM, 14));
                    boolean zE = composer3.e(j2);
                    Object objX = composer3.x();
                    if (zE || objX == Composer.Companion.f7939a) {
                        objX = new r5(j2, 9);
                        composer3.q(objX);
                    }
                    CanvasKt.a(modifierJ, (Function1) objX, composer3, 0);
                    DTFunctionNameModifier dTFunctionNameModifier = new DTFunctionNameModifier("RepairDetailFollowUpBff$lambda$0");
                    ColumnMeasurePolicy columnMeasurePolicyA = ColumnKt.a(Arrangement.f4920c, Alignment.Companion.n, composer3, 0);
                    int iHashCode2 = Long.hashCode(composer3.getT());
                    PersistentCompositionLocalMap persistentCompositionLocalMapN2 = composer3.n();
                    Modifier modifierC2 = ComposedModifierKt.c(composer3, dTFunctionNameModifier);
                    if (composer3.getF7976a() == null) {
                        ComposablesKt.b();
                        throw null;
                    }
                    composer3.B();
                    if (composer3.getS()) {
                        composer3.C(function0);
                    } else {
                        composer3.o();
                    }
                    Updater.c(composer3, columnMeasurePolicyA, function2);
                    Updater.c(composer3, persistentCompositionLocalMapN2, function3);
                    cj.s(iHashCode2, composer3, function4, composer3, function1);
                    Updater.c(composer3, modifierC2, function5);
                    composer3.L(118380670);
                    int i5 = 0;
                    for (Object obj4 : list) {
                        int i6 = i5 + 1;
                        if (i5 < 0) {
                            CollectionsKt.t0();
                            throw null;
                        }
                        RepairDetailUiModel.Step step = (RepairDetailUiModel.Step) obj4;
                        if (i5 == 0) {
                            composer3.L(591471865);
                            f2 = LVAppDesignKitTheme.d(composer3).f48383a;
                            composer3.F();
                        } else {
                            composer3.L(591567221);
                            f2 = LVAppDesignKitTheme.l(composer3).f48418h;
                            composer3.F();
                        }
                        CareServiceDetail.StepStatus stepStatus = step.d;
                        String str = step.f64082c;
                        int i7 = RepairDetailFollowUpBffKt.WhenMappings.f63846a[stepStatus.ordinal()];
                        if (i7 == 1) {
                            composer3.L(591766086);
                            RepairDetailFollowUpBffKt.b(f2, 0, composer3, str);
                            composer3.F();
                        } else if (i7 == 2) {
                            composer3.L(591939717);
                            RepairDetailFollowUpBffKt.a(f2, 0, composer3, str);
                            composer3.F();
                        } else {
                            if (i7 != 3) {
                                throw o60.v(composer3, -535102336);
                            }
                            composer3.L(592111240);
                            RepairDetailFollowUpBffKt.c(f2, 0, composer3, str);
                            composer3.F();
                        }
                        i5 = i6;
                    }
                    composer3.F();
                    composer3.r();
                    composer3.r();
                    OpaqueKey opaqueKey5 = ComposerKt.f7940a;
                } else {
                    composer3.D();
                }
                return Unit.f71739a;
        }
    }
}
