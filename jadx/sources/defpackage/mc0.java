package defpackage;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import com.batch.android.c0.a;
import com.batch.android.r0.h;
import com.linecorp.linesdk.openchat.OpenChatCategory;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoFragment;
import com.linecorp.linesdk.openchat.ui.OpenChatInfoViewModel;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sightcall.mediacapture.presenter.MediaCaptureFragment;
import com.sightcall.pratik.Result;
import com.sightcall.sharemedia.ShareMediaDialog;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class mc0 implements DialogInterface.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f76232b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f76233c;

    public /* synthetic */ mc0(Object obj, int i2) {
        this.f76232b = i2;
        this.f76233c = obj;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i2) {
        int i3 = this.f76232b;
        Object obj = this.f76233c;
        switch (i3) {
            case 0:
                MediaCaptureFragment.displayBackupError$lambda$0((Result) obj, dialogInterface, i2);
                return;
            case 1:
                MediaCaptureFragment.showSourceSelectionDialog$lambda$0((MediaCaptureFragment) obj, dialogInterface, i2);
                return;
            case 2:
                OpenChatInfoFragment openChatInfoFragment = (OpenChatInfoFragment) obj;
                OpenChatInfoFragment.Companion companion = OpenChatInfoFragment.D;
                if (openChatInfoFragment.B == null) {
                    Intrinsics.h("viewModel");
                    throw null;
                }
                OpenChatCategory[] openChatCategoryArrValues = OpenChatCategory.values();
                OpenChatCategory openChatCategory = (i2 < 0 || i2 > ArraysKt.A(openChatCategoryArrValues)) ? OpenChatInfoViewModel.n : openChatCategoryArrValues[i2];
                OpenChatInfoViewModel openChatInfoViewModel = openChatInfoFragment.B;
                if (openChatInfoViewModel == null) {
                    Intrinsics.h("viewModel");
                    throw null;
                }
                openChatInfoViewModel.f36273f.setValue(openChatCategory);
                SensorsDataAutoTrackHelper.trackDialog(dialogInterface, i2);
                return;
            case 3:
                ShareMediaDialog.show$lambda$0((Function1) obj, dialogInterface, i2);
                return;
            case 4:
                ((a) obj).a(dialogInterface, i2);
                return;
            default:
                h.a.a((JsPromptResult) obj, dialogInterface, i2);
                return;
        }
    }
}
