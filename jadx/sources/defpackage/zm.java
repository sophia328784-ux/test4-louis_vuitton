package defpackage;

import androidx.activity.ComponentActivity;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zm implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f81670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity f81671c;

    public /* synthetic */ zm(ComponentActivity componentActivity, int i2) {
        this.f81670b = i2;
        this.f81671c = componentActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f81670b;
        ComponentActivity componentActivity = this.f81671c;
        switch (i2) {
            case 0:
                int i3 = ComponentActivity.g;
                componentActivity.invalidateMenu();
                break;
            default:
                ComponentActivity.r(componentActivity);
                break;
        }
    }
}
