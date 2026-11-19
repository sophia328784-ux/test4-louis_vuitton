package androidx.media3.datasource.cache;

import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class ContentMetadataMutations {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f14510a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList f14511b = new ArrayList();

    public final void a(Object obj, String str) {
        obj.getClass();
        this.f14510a.put(str, obj);
        this.f14511b.remove(str);
    }
}
