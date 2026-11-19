package defpackage;

import com.vuitton.android.presentation.screen.connectivity.trunkspeaker.scan.bottomsheet.ScanMainBottomSheet;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class du0 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ScanMainBottomSheet f68671c;

    public /* synthetic */ du0(ScanMainBottomSheet scanMainBottomSheet, int i2) {
        this.f68670b = i2;
        this.f68671c = scanMainBottomSheet;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f68670b;
        ScanMainBottomSheet scanMainBottomSheet = this.f68671c;
        switch (i2) {
            case 0:
                ScanMainBottomSheet.Companion companion = ScanMainBottomSheet.R;
                scanMainBottomSheet.getChildFragmentManager().V();
                break;
            default:
                scanMainBottomSheet.dismiss();
                break;
        }
    }
}
