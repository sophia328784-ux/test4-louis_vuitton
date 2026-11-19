package androidx.activity.compose;

import androidx.activity.compose.internal.BackHandlerCompat;
import kotlin.Function;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f718b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ BackHandlerCompat f719c;
    public final /* synthetic */ Function d;

    public /* synthetic */ a(BackHandlerCompat backHandlerCompat, Function function, int i2) {
        this.f718b = i2;
        this.f719c = backHandlerCompat;
        this.d = function;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        switch (this.f718b) {
            case 0:
                ((ComposeBackHandler) this.f719c).f702c = (Function0) this.d;
                break;
            default:
                ((ComposePredictiveBackHandler) this.f719c).d = (Function2) this.d;
                break;
        }
        return Unit.f71739a;
    }
}
