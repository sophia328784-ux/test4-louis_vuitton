package defpackage;

import androidx.compose.runtime.MutableLongState;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class tb implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f80030b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ MutableLongState f80031c;

    public /* synthetic */ tb(MutableLongState mutableLongState, int i2) {
        this.f80030b = i2;
        this.f80031c = mutableLongState;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f80030b) {
            case 0:
                this.f80031c.D((long) ((Float) obj).floatValue());
                break;
            case 1:
                this.f80031c.D((long) ((Float) obj).floatValue());
                break;
            default:
                this.f80031c.D(((Long) obj).longValue());
                break;
        }
        return Unit.f71739a;
    }
}
