package androidx.camera.core.impl;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        d dVar = OptionsBundle.N;
        return ((AutoValue_Config_Option) ((Config.Option) obj)).f2170a.compareTo(((AutoValue_Config_Option) ((Config.Option) obj2)).f2170a);
    }
}
