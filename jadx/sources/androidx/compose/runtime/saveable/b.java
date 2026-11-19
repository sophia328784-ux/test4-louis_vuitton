package androidx.compose.runtime.saveable;

import defpackage.md;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements Function0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SaveableHolder f8444b;

    @Override // kotlin.jvm.functions.Function0
    /* JADX INFO: renamed from: invoke */
    public final Object mo47invoke() {
        SaveableHolder saveableHolder = this.f8444b;
        Saver saver = saveableHolder.f8417b;
        Object obj = saveableHolder.f8419e;
        if (obj != null) {
            return saver.a(saveableHolder, obj);
        }
        md.n("Value should be initialized");
        return null;
    }
}
