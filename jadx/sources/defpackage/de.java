package defpackage;

import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import com.perfectcorp.perfectlib.ShadeFinder;
import com.perfectcorp.perfectlib.ShadeFinderData;
import com.perfectcorp.perfectlib.ShadeFinderQualityCheck;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoActivity;
import com.vuitton.android.presentation.screen.pdp.vto.beauty.BeautyVtoViewModel;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class de implements ShadeFinder.ShadeFinderCallback, ActivityResultCallback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68554b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BeautyVtoActivity f68555c;

    public /* synthetic */ de(BeautyVtoActivity beautyVtoActivity, int i2) {
        this.f68554b = i2;
        this.f68555c = beautyVtoActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void b(Object obj) {
        be beVar;
        int i2 = this.f68554b;
        BeautyVtoActivity beautyVtoActivity = this.f68555c;
        ActivityResult activityResult = (ActivityResult) obj;
        switch (i2) {
            case 1:
                BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
                activityResult.getClass();
                if (activityResult.f731b == -1 && (beVar = beautyVtoActivity.A) != null) {
                    beVar.mo47invoke();
                    break;
                }
                break;
            default:
                BeautyVtoActivity.Companion companion2 = BeautyVtoActivity.D;
                activityResult.getClass();
                if (activityResult.f731b == -1) {
                    beautyVtoActivity.M().a1();
                }
                break;
        }
    }

    @Override // com.perfectcorp.perfectlib.ShadeFinder.ShadeFinderCallback
    public void onAnalyze(ShadeFinderData shadeFinderData, ShadeFinderQualityCheck shadeFinderQualityCheck) {
        BeautyVtoActivity.Companion companion = BeautyVtoActivity.D;
        BeautyVtoViewModel beautyVtoViewModelM = this.f68555c.M();
        shadeFinderQualityCheck.getClass();
        beautyVtoViewModelM.P2(shadeFinderQualityCheck);
    }
}
