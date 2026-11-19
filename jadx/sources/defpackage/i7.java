package defpackage;

import com.perfectcorp.perfectlib.makeupcam.camera.ApplyEffectCtrl;
import com.perfectcorp.perfectlib.ymk.model.BeautyMode;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class i7 implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69888b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ApplyEffectCtrl f69889c;

    public /* synthetic */ i7(ApplyEffectCtrl applyEffectCtrl, int i2) {
        this.f69888b = i2;
        this.f69889c = applyEffectCtrl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f69888b;
        ApplyEffectCtrl applyEffectCtrl = this.f69889c;
        switch (i2) {
            case 0:
                applyEffectCtrl.g();
                break;
            default:
                applyEffectCtrl.f40489i.b(BeautyMode.NECKLACE);
                applyEffectCtrl.f40487f.SetEnabled(true);
                break;
        }
    }
}
