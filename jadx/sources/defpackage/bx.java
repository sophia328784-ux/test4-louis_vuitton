package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.batch.android.g0.c;
import com.batch.android.m0.a;
import com.dynatrace.android.callback.Callback;
import com.linecorp.linesdk.widget.LoginButton;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.graphik.dialog.UniversalRichDialogFragment;
import com.vuitton.android.presentation.screen.connectivity.faqcategory.FaqCategoriesActivity;
import com.vuitton.android.presentation.screen.connectivity.lightup.common.detail.PowerManagementAdapter;
import com.vuitton.android.presentation.screen.connectivity.lightup.keepall.KeepAllDetailFragment;
import com.vuitton.android.presentation.screen.connectivity.lightup.sneakers.SneakerDetailFragment;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqCategory;
import com.vuitton.foundation.model.domain.model.connectivity.common.FaqPdf;
import com.vuitton.foundation.model.domain.model.connectivity.lightup.LVLightUpPowerMode;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class bx implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f20983b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f20984c;
    public final /* synthetic */ Object d;

    public /* synthetic */ bx(Object obj, Object obj2, int i2) {
        this.f20983b = i2;
        this.d = obj;
        this.f20984c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i2 = this.f20983b;
        Object obj = this.f20984c;
        Object obj2 = this.d;
        switch (i2) {
            case 0:
                FaqCategoriesActivity faqCategoriesActivity = (FaqCategoriesActivity) obj2;
                FaqPdf faqPdf = (FaqPdf) obj;
                FaqCategoriesActivity.Companion companion = FaqCategoriesActivity.s;
                Callback.n(view);
                try {
                    String str = faqPdf.f67313a;
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.addFlags(268435456);
                    intent.addFlags(1);
                    intent.setDataAndType(Uri.parse(str), "application/pdf");
                    faqCategoriesActivity.startActivity(Intent.createChooser(intent, null));
                    return;
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            case 1:
                KeepAllDetailFragment keepAllDetailFragment = (KeepAllDetailFragment) obj2;
                FaqPdf faqPdf2 = (FaqPdf) obj;
                KeepAllDetailFragment.Companion companion2 = KeepAllDetailFragment.Y;
                Callback.n(view);
                try {
                    keepAllDetailFragment.c0(faqPdf2.f67313a);
                    return;
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            case 2:
                KeepAllDetailFragment keepAllDetailFragment2 = (KeepAllDetailFragment) obj2;
                FaqCategory faqCategory = (FaqCategory) obj;
                KeepAllDetailFragment.Companion companion3 = KeepAllDetailFragment.Y;
                Callback.n(view);
                try {
                    KeepAllDetailFragment.G0(keepAllDetailFragment2, faqCategory);
                    return;
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            case 3:
                LoginButton.m41xfd968b64((LoginButton) obj2, (View.OnClickListener) obj, view);
                return;
            case 4:
                LVLightUpPowerMode lVLightUpPowerMode = (LVLightUpPowerMode) obj2;
                PowerManagementAdapter powerManagementAdapter = (PowerManagementAdapter) obj;
                int i3 = PowerManagementAdapter.f56146f;
                Callback.n(view);
                try {
                    LVLightUpPowerMode lVLightUpPowerMode2 = powerManagementAdapter.f56147b;
                    if (lVLightUpPowerMode != lVLightUpPowerMode2) {
                        powerManagementAdapter.d.invoke(lVLightUpPowerMode, lVLightUpPowerMode2);
                    }
                    return;
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            case 5:
                SneakerDetailFragment sneakerDetailFragment = (SneakerDetailFragment) obj2;
                FaqPdf faqPdf3 = (FaqPdf) obj;
                SneakerDetailFragment.Companion companion4 = SneakerDetailFragment.Z;
                Callback.n(view);
                try {
                    sneakerDetailFragment.c0(faqPdf3.f67313a);
                    return;
                } finally {
                    Callback.o();
                    SensorsDataAutoTrackHelper.trackViewOnClick(view);
                }
            case 6:
                UniversalRichDialogFragment.m58xf64d23e6((UniversalRichDialogFragment) obj2, (UniversalRichDialogFragment.Action) obj, view);
                return;
            default:
                a.m20xb92bf87a((a) obj2, (c.a) obj, view);
                return;
        }
    }
}
