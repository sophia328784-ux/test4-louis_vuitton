package defpackage;

import androidx.compose.runtime.SnapshotStateKt;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p10 implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f78727b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f78728c;

    public /* synthetic */ p10(boolean z, int i2) {
        this.f78727b = i2;
        this.f78728c = z;
    }

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        int i2 = this.f78727b;
        boolean z = this.f78728c;
        switch (i2) {
            case 0:
                return SnapshotStateKt.g(Boolean.valueOf(!z));
            default:
                return SnapshotStateKt.g(Boolean.valueOf(z));
        }
    }
}
