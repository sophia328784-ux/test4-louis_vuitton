package defpackage;

import androidx.compose.material3.DatePickerState;
import androidx.compose.material3.DisplayMode;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class hs implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f69771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ DatePickerState f69772c;

    public /* synthetic */ hs(DatePickerState datePickerState, int i2) {
        this.f69771b = i2;
        this.f69772c = datePickerState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f69771b) {
            case 0:
                this.f69772c.f(((DisplayMode) obj).f6902a);
                break;
            case 1:
                this.f69772c.e((Long) obj);
                break;
            default:
                this.f69772c.a(((Long) obj).longValue());
                break;
        }
        return Unit.f71739a;
    }
}
