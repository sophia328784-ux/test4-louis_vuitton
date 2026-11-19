package defpackage;

import androidx.compose.ui.focus.FocusManager;
import androidx.navigation.NavHostController;
import androidx.navigation3.runtime.NavBackStack;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionActivity;
import com.vuitton.android.presentation.screen.aicompanion.AICompanionViewModel;
import com.vuitton.android.presentation.screen.audioplayer.model.AudioPlayerEvent;
import com.vuitton.android.presentation.screen.certificates.CertificateViewModel;
import com.vuitton.android.presentation.screen.osa.OsaActivity;
import com.vuitton.android.presentation.screen.osa.OsaDestinations;
import com.vuitton.android.presentation.screen.osa.OsaDestinationsKt;
import com.vuitton.android.presentation.screen.osa.OsaRoutes;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.components.ModelSizeItemKt;
import com.vuitton.android.presentation.screen.pdp.contextualsizing.models.ModelSizeVariationUiModel;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class d implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68372b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f68373c;
    public final /* synthetic */ Object d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f68374e;

    public /* synthetic */ d(NavHostController navHostController, boolean z, CertificateViewModel certificateViewModel) {
        this.f68372b = 2;
        this.d = navHostController;
        this.f68373c = z;
        this.f68374e = certificateViewModel;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68372b;
        boolean z = this.f68373c;
        Object obj = this.f68374e;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                AICompanionActivity.Companion companion = AICompanionActivity.v;
                ((AICompanionViewModel) ((AICompanionActivity) obj2).p.getF71699b()).Z1((String) obj, z);
                break;
            case 1:
                FocusManager focusManager = (FocusManager) obj2;
                Function0 function0 = (Function0) obj;
                if (!z) {
                    focusManager.z(false);
                    function0.mo47invoke();
                }
                break;
            case 2:
                CertificateViewModel certificateViewModel = (CertificateViewModel) obj;
                ((NavHostController) obj2).e();
                if (z) {
                    certificateViewModel.u2();
                }
                break;
            case 3:
                Function1 function1 = (Function1) obj2;
                Function0 function2 = (Function0) obj;
                if (z) {
                    function1.invoke(AudioPlayerEvent.Pause.f53250a);
                } else {
                    function1.invoke(AudioPlayerEvent.Resume.f53254a);
                    function2.mo47invoke();
                }
                break;
            case 4:
                Function1 function3 = (Function1) obj2;
                ModelSizeVariationUiModel modelSizeVariationUiModel = (ModelSizeVariationUiModel) obj;
                float f2 = ModelSizeItemKt.f61506a;
                if (!z) {
                    function3.invoke(modelSizeVariationUiModel);
                }
                break;
            case 5:
                OsaActivity osaActivity = (OsaActivity) obj2;
                NavBackStack navBackStack = (NavBackStack) obj;
                OsaActivity.Companion companion2 = OsaActivity.u;
                if (z) {
                    osaActivity.startActivity(OsaDestinationsKt.a(OsaDestinations.ToMyExperiencesPage.f60568a, osaActivity));
                    osaActivity.finish();
                } else {
                    OsaActivity.K(navBackStack, OsaRoutes.List.INSTANCE);
                }
                break;
            default:
                ((Function2) obj2).invoke((String) obj, Boolean.valueOf(!z));
                break;
        }
        return Unit.f71739a;
    }

    public /* synthetic */ d(Object obj, String str, boolean z, int i2) {
        this.f68372b = i2;
        this.d = obj;
        this.f68374e = str;
        this.f68373c = z;
    }

    public /* synthetic */ d(boolean z, Object obj, Object obj2, int i2) {
        this.f68372b = i2;
        this.f68373c = z;
        this.d = obj;
        this.f68374e = obj2;
    }
}
