package androidx.compose.runtime.saveable;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c implements Function1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SaveableStateHolderImpl f8445b;

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        SaveableStateRegistry saveableStateRegistry = this.f8445b.d;
        return Boolean.valueOf(saveableStateRegistry != null ? saveableStateRegistry.a(obj) : true);
    }
}
