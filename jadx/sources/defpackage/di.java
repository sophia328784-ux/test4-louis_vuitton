package defpackage;

import com.sightcall.universal.internal.ui.CallActivity;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class di implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f68586b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CallActivity f68587c;

    public /* synthetic */ di(CallActivity callActivity, int i2) {
        this.f68586b = i2;
        this.f68587c = callActivity;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f68586b;
        CallActivity callActivity = this.f68587c;
        switch (i2) {
            case 0:
                return callActivity.lambda$onRequestPhotoError$13();
            case 1:
                return callActivity.lambda$createUi$7();
            case 2:
                return callActivity.lambda$createUi$6();
            case 3:
                return callActivity.lambda$stopGlobalShare$18();
            case 4:
                return callActivity.lambda$stopShareWeb$19();
            case 5:
                return callActivity.lambda$onCallButtonClickLocal$10();
            case 6:
                return callActivity.lambda$onForwardInbandDataChannel$16();
            case 7:
                return callActivity.switchUserUi();
            default:
                return callActivity.lambda$createUi$5();
        }
    }
}
