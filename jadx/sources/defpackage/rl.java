package defpackage;

import android.content.Context;
import androidx.compose.runtime.State;
import androidx.navigation.NavHostController;
import com.vuitton.android.designkit.ui.theme.templates.LVModalBottomSheetState;
import com.vuitton.android.presentation.screen.options.settings.SettingsViewModel;
import com.vuitton.android.presentation.screen.orders.viewmodels.OrderViewModel;
import com.vuitton.android.presentation.screen.privacy.PrivacyViewModel;
import com.vuitton.android.presentation.screen.services.ServicesViewModel;
import com.vuitton.android.presentation.screen.storemode.PSPStoreModeViewModel;
import com.vuitton.android.presentation.screen.storemode.StoreModeViewModel;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rl implements Function4 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f79549b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f79550c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f79551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f79552f;
    public final /* synthetic */ Object g;

    public /* synthetic */ rl(SettingsViewModel settingsViewModel, PrivacyViewModel privacyViewModel, Function0 function0, NavHostController navHostController, Function0 function1) {
        this.f79549b = 6;
        this.f79550c = settingsViewModel;
        this.d = privacyViewModel;
        this.f79552f = function0;
        this.f79551e = navHostController;
        this.g = function1;
    }

    /* JADX WARN: Code duplicated, block: B:171:0x0647  */
    /* JADX WARN: Code duplicated, block: B:173:0x0651  */
    /* JADX WARN: Code duplicated, block: B:174:0x0654  */
    /* JADX WARN: Code duplicated, block: B:176:0x0657  */
    /* JADX WARN: Code duplicated, block: B:180:0x0670  */
    /* JADX WARN: Code duplicated, block: B:184:0x068d  */
    /* JADX WARN: Code duplicated, block: B:188:0x06aa  */
    /* JADX WARN: Code duplicated, block: B:192:0x06c7  */
    /* JADX WARN: Code duplicated, block: B:196:0x06e5  */
    /*  JADX ERROR: JadxRuntimeException in pass: IfRegionVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r5v8 java.lang.Object, still in use, count: 2, list:
          (r5v8 java.lang.Object) from 0x0642: PHI (r5 I:??) = (r5v6 java.lang.Object), (r5v8 java.lang.Object) binds: [B:168:0x0641, B:206:0x0642] A[DONT_GENERATE, DONT_INLINE]
          (r5v8 java.lang.Object) from 0x0636: CHECK_CAST (com.vuitton.android.presentation.screen.certificates.model.CertificateVisionnaireUiModel) (r5v8 java.lang.Object)
        	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
        	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
        	at jadx.core.utils.InsnRemover.unbindInsn(InsnRemover.java:93)
        	at jadx.core.dex.visitors.regions.TernaryMod.makeTernaryInsn(TernaryMod.java:132)
        	at jadx.core.dex.visitors.regions.TernaryMod.processRegion(TernaryMod.java:67)
        	at jadx.core.dex.visitors.regions.TernaryMod.enterRegion(TernaryMod.java:50)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:96)
        	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:27)
        	at jadx.core.dex.visitors.regions.TernaryMod.process(TernaryMod.java:36)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.process(IfRegionVisitor.java:44)
        	at jadx.core.dex.visitors.regions.IfRegionVisitor.visit(IfRegionVisitor.java:30)
        */
    @Override // kotlin.jvm.functions.Function4
    public final java.lang.Object g(java.lang.Object r32, java.lang.Object r33, java.lang.Object r34, java.lang.Object r35) {
        /*
            Method dump skipped, instruction units count: 1816
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rl.g(java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public /* synthetic */ rl(OrderViewModel orderViewModel, NavHostController navHostController, Function1 function1, Function1 function2, Function1 function3) {
        this.f79549b = 2;
        this.f79550c = orderViewModel;
        this.f79551e = navHostController;
        this.d = function1;
        this.f79552f = function2;
        this.g = function3;
    }

    public /* synthetic */ rl(ServicesViewModel servicesViewModel, Context context, LVModalBottomSheetState lVModalBottomSheetState, Function1 function1, State state) {
        this.f79549b = 5;
        this.f79550c = servicesViewModel;
        this.f79551e = context;
        this.f79552f = lVModalBottomSheetState;
        this.d = function1;
        this.g = state;
    }

    public /* synthetic */ rl(StoreModeViewModel storeModeViewModel, PSPStoreModeViewModel pSPStoreModeViewModel, Function0 function0, Function0 function1, Function1 function2) {
        this.f79549b = 7;
        this.f79550c = storeModeViewModel;
        this.f79551e = pSPStoreModeViewModel;
        this.f79552f = function0;
        this.g = function1;
        this.d = function2;
    }

    public /* synthetic */ rl(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, int i2) {
        this.f79549b = i2;
        this.f79550c = obj;
        this.d = obj2;
        this.f79551e = obj3;
        this.f79552f = obj4;
        this.g = obj5;
    }

    public /* synthetic */ rl(List list, List list2, Function2 function2, Set set, Function1 function1) {
        this.f79549b = 4;
        this.f79551e = list;
        this.f79552f = list2;
        this.f79550c = function2;
        this.g = set;
        this.d = function1;
    }
}
