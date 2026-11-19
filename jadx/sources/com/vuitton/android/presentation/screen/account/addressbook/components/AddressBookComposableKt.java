package com.vuitton.android.presentation.screen.account.addressbook.components;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.OpaqueKey;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.res.StringResources_androidKt;
import com.vuitton.android.R;
import com.vuitton.android.designkit.ui.theme.molecules.topbar.LVStandardTopBarKt;
import com.vuitton.android.presentation.screen.account.addressbook.AddressBookViewModel;
import com.vuitton.android.presentation.screen.account.addressbook.models.AddressBookViewState;
import defpackage.o0;
import defpackage.r1;
import defpackage.z;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.reflect.KFunction;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002¨\u0006\u0005²\u0006\f\u0010\u0001\u001a\u00020\u00008\nX\u008a\u0084\u0002²\u0006\u0012\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\nX\u008a\u0084\u0002"}, d2 = {"Lcom/vuitton/android/presentation/screen/account/addressbook/models/AddressBookViewState;", "viewState", "Lkotlin/Function0;", "", "currentOnBackPressed", "presentation"}, k = 2, mv = {2, 3, 0}, xi = 48)
public abstract class AddressBookComposableKt {
    public static final void a(AddressBookViewModel addressBookViewModel, Function0 function0, Function0 function1, Function2 function2, Composer composer, int i2) {
        boolean z;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        addressBookViewModel.getClass();
        function0.getClass();
        function1.getClass();
        function2.getClass();
        GapComposer gapComposerH = composer.h(529904818);
        int i3 = i2 | (gapComposerH.K(addressBookViewModel) ? 4 : 2) | (gapComposerH.y(function0) ? 32 : 16) | (gapComposerH.y(function1) ? 256 : 128) | (gapComposerH.y(function2) ? 2048 : 1024);
        if (gapComposerH.p(i3 & 1, (i3 & 1171) != 1170)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            MutableState mutableStateB = SnapshotStateKt.b(addressBookViewModel.getM(), gapComposerH);
            int i4 = i3 >> 3;
            MutableState mutableStateL = SnapshotStateKt.l(function0, gapComposerH);
            Object objX = gapComposerH.x();
            Composer$Companion$Empty$1 composer$Companion$Empty$2 = Composer.Companion.f7939a;
            if (objX == composer$Companion$Empty$2) {
                ComposableLambdaImpl composableLambdaImpl = new ComposableLambdaImpl(388828025, true, new r1(2, mutableStateL));
                gapComposerH.q(composableLambdaImpl);
                objX = composableLambdaImpl;
            }
            Function2 function3 = (Function2) objX;
            if (((AddressBookViewState) mutableStateB.getF10755b()).f52197b) {
                gapComposerH.L(-1904856388);
                AddressLoadingScreenKt.a(function3, gapComposerH, 6);
                gapComposerH.Z(false);
            } else if (((AddressBookViewState) mutableStateB.getF10755b()).f52198c) {
                gapComposerH.L(-1904772781);
                AddressEmptyScreenKt.a(function3, function1, gapComposerH, (i4 & 112) | 6);
                gapComposerH.Z(false);
            } else {
                gapComposerH.L(-1904654950);
                AddressBookViewState addressBookViewState = (AddressBookViewState) mutableStateB.getF10755b();
                int i5 = i3 & 14;
                boolean z2 = i5 == 4;
                Object objX2 = gapComposerH.x();
                if (z2 || objX2 == composer$Companion$Empty$2) {
                    z = true;
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                    AddressBookComposableKt$AddressBookComposable$1$1 addressBookComposableKt$AddressBookComposable$1$1 = new AddressBookComposableKt$AddressBookComposable$1$1(1, addressBookViewModel, AddressBookViewModel.class, "setAddressIdToDelete", "setAddressIdToDelete(Ljava/lang/String;)V", 0);
                    gapComposerH.q(addressBookComposableKt$AddressBookComposable$1$1);
                    objX2 = addressBookComposableKt$AddressBookComposable$1$1;
                } else {
                    z = true;
                    composer$Companion$Empty$1 = composer$Companion$Empty$2;
                }
                Function1 function4 = (Function1) ((KFunction) objX2);
                boolean z3 = i5 != 4 ? false : z;
                Object objX3 = gapComposerH.x();
                if (z3 || objX3 == composer$Companion$Empty$1) {
                    AddressBookComposableKt$AddressBookComposable$2$1 addressBookComposableKt$AddressBookComposable$2$1 = new AddressBookComposableKt$AddressBookComposable$2$1(0, addressBookViewModel, AddressBookViewModel.class, "deleteAddress", "deleteAddress()V", 0);
                    gapComposerH.q(addressBookComposableKt$AddressBookComposable$2$1);
                    objX3 = addressBookComposableKt$AddressBookComposable$2$1;
                }
                AddressBookScreenKt.a(function3, addressBookViewState, function1, function2, function4, (Function0) ((KFunction) objX3), gapComposerH, (i3 & 896) | 6 | (i3 & 7168));
                gapComposerH.Z(false);
            }
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new z(addressBookViewModel, function0, function1, function2, i2, 4);
        }
    }

    public static final void b(Function0 function0, Composer composer, int i2) {
        GapComposer gapComposerH = composer.h(-59700150);
        int i3 = (gapComposerH.y(function0) ? 4 : 2) | i2;
        if (gapComposerH.p(i3 & 1, (i3 & 3) != 2)) {
            OpaqueKey opaqueKey = ComposerKt.f7940a;
            LVStandardTopBarKt.a(null, null, false, StringResources_androidKt.c(gapComposerH, R.string.mylv_dashboard_myaddress), null, null, function0, null, null, null, null, gapComposerH, (i3 << 18) & 3670016, 0, 4023);
        } else {
            gapComposerH.D();
        }
        RecomposeScopeImpl recomposeScopeImplB0 = gapComposerH.b0();
        if (recomposeScopeImplB0 != null) {
            recomposeScopeImplB0.d = new o0(i2, 4, function0);
        }
    }
}
