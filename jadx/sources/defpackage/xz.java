package defpackage;

import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListScope;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.semantics.CustomAccessibilityAction;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import com.vuitton.android.presentation.screen.dynamicform.model.field.FormFieldUiModel;
import com.vuitton.android.presentation.screen.orders.components.list.ComposableSingletons$OrderListScreenKt;
import com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$1;
import com.vuitton.android.presentation.screen.orders.models.PurchasedOrderUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionItemUiModel;
import com.vuitton.android.presentation.screen.orders.models.TransactionUiModel;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlin.reflect.KProperty;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class xz implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81228b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f81229c;
    public final /* synthetic */ boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f81230e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f81231f;
    public final /* synthetic */ Object g;

    public /* synthetic */ xz(List list, boolean z, boolean z2, Set set, Function3 function3) {
        this.f81230e = list;
        this.f81229c = z;
        this.d = z2;
        this.f81231f = set;
        this.g = function3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object objO;
        String str;
        int i2 = this.f81228b;
        final boolean z = this.d;
        boolean z2 = this.f81229c;
        Object obj2 = this.g;
        Object obj3 = this.f81231f;
        Object obj4 = this.f81230e;
        switch (i2) {
            case 0:
                AnnotatedString annotatedString = (AnnotatedString) obj4;
                AnnotatedString annotatedString2 = (AnnotatedString) obj3;
                FormFieldUiModel formFieldUiModel = (FormFieldUiModel) obj2;
                SemanticsPropertyReceiver semanticsPropertyReceiver = (SemanticsPropertyReceiver) obj;
                semanticsPropertyReceiver.getClass();
                Role.f10289b.getClass();
                SemanticsPropertiesKt.o(semanticsPropertyReceiver, Role.f10290c);
                if (!z2) {
                    SemanticsPropertiesKt.a(semanticsPropertyReceiver);
                }
                if (z) {
                    AnnotatedString.Range range = (AnnotatedString.Range) CollectionsKt.firstOrNull(annotatedString.b(annotatedString.f10420c.length()));
                    if (range == null || (str = annotatedString.subSequence(range.f10429b, range.f10430c).f10420c) == null) {
                        str = annotatedString2.f10420c;
                    }
                    objO = CollectionsKt.O(new CustomAccessibilityAction(str, new ss(formFieldUiModel, 15)));
                } else {
                    objO = EmptyList.f71768b;
                }
                SemanticsPropertyKey semanticsPropertyKey = SemanticsActions.x;
                KProperty kProperty = SemanticsPropertiesKt.f10359a[31];
                semanticsPropertyKey.getClass();
                semanticsPropertyReceiver.a(semanticsPropertyKey, objO);
                return Unit.f71739a;
            case 1:
                final List list = (List) obj4;
                final Set set = (Set) obj3;
                final Function3 function3 = (Function3) obj2;
                LazyListScope lazyListScope = (LazyListScope) obj;
                lazyListScope.getClass();
                ComposableSingletons$OrderListScreenKt.f60194a.getClass();
                LazyListScope.f(lazyListScope, null, ComposableSingletons$OrderListScreenKt.f60195b, 3);
                final ch0 ch0Var = new ch0(15);
                final OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$1 orderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$1 = new Function1() { // from class: com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$1
                    @Override // kotlin.jvm.functions.Function1
                    public final /* bridge */ /* synthetic */ Object invoke(Object obj5) {
                        return null;
                    }
                };
                lazyListScope.h(list.size(), new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$2
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        return ch0Var.invoke(list.get(((Number) obj5).intValue()));
                    }
                }, new Function1<Integer, Object>() { // from class: com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj5) {
                        return orderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$1.invoke(list.get(((Number) obj5).intValue()));
                    }
                }, new ComposableLambdaImpl(802480018, true, new Function4<LazyItemScope, Integer, Composer, Integer, Unit>() { // from class: com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt$OrderList$lambda$7$0$$inlined$items$default$4
                    @Override // kotlin.jvm.functions.Function4
                    public final Object g(Object obj5, Object obj6, Object obj7, Object obj8) {
                        int i3;
                        LazyItemScope lazyItemScope = (LazyItemScope) obj5;
                        int iIntValue = ((Number) obj6).intValue();
                        Composer composer = (Composer) obj7;
                        int iIntValue2 = ((Number) obj8).intValue();
                        if ((iIntValue2 & 6) == 0) {
                            i3 = (composer.K(lazyItemScope) ? 4 : 2) | iIntValue2;
                        } else {
                            i3 = iIntValue2;
                        }
                        if ((iIntValue2 & 48) == 0) {
                            i3 |= composer.d(iIntValue) ? 32 : 16;
                        }
                        if (composer.p(i3 & 1, (i3 & 147) != 146)) {
                            OpaqueKey opaqueKey = ComposerKt.f7940a;
                            final PurchasedOrderUiModel purchasedOrderUiModel = (PurchasedOrderUiModel) list.get(iIntValue);
                            composer.L(2145235686);
                            boolean z3 = !set.contains(purchasedOrderUiModel.f60396e);
                            final Function3 function4 = function3;
                            boolean zK = composer.K(function4) | composer.y(purchasedOrderUiModel);
                            Object objX = composer.x();
                            if (zK || objX == Composer.Companion.f7939a) {
                                objX = new Function2<TransactionUiModel, TransactionItemUiModel, Unit>() { // from class: com.vuitton.android.presentation.screen.orders.components.list.OrderListScreenKt$OrderList$3$1$2$1$1
                                    @Override // kotlin.jvm.functions.Function2
                                    public final Object invoke(Object obj9, Object obj10) {
                                        TransactionUiModel transactionUiModel = (TransactionUiModel) obj9;
                                        TransactionItemUiModel transactionItemUiModel = (TransactionItemUiModel) obj10;
                                        transactionUiModel.getClass();
                                        transactionItemUiModel.getClass();
                                        function4.A(purchasedOrderUiModel, transactionUiModel, transactionItemUiModel);
                                        return Unit.f71739a;
                                    }
                                };
                                composer.q(objX);
                            }
                            OrderListScreenKt.b(purchasedOrderUiModel, z, z3, (Function2) objX, composer, 0);
                            composer.F();
                        } else {
                            composer.D();
                        }
                        return Unit.f71739a;
                    }
                }));
                if (z2) {
                    LazyListScope.f(lazyListScope, null, ComposableSingletons$OrderListScreenKt.f60196c, 3);
                }
                LazyListScope.f(lazyListScope, null, ComposableSingletons$OrderListScreenKt.d, 3);
                return Unit.f71739a;
            default:
                return new SheetState(this.f81229c, (Function0) obj4, (Function0) obj3, (SheetValue) obj, (Function1) obj2, this.d);
        }
    }

    public /* synthetic */ xz(boolean z, Function0 function0, Function0 function1, Function1 function2, boolean z2) {
        this.f81229c = z;
        this.f81230e = function0;
        this.f81231f = function1;
        this.g = function2;
        this.d = z2;
    }

    public /* synthetic */ xz(boolean z, boolean z2, AnnotatedString annotatedString, AnnotatedString annotatedString2, FormFieldUiModel formFieldUiModel) {
        this.f81229c = z;
        this.d = z2;
        this.f81230e = annotatedString;
        this.f81231f = annotatedString2;
        this.g = formFieldUiModel;
    }
}
