package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Landroidx/work/impl/StartStopTokensImpl;", "Landroidx/work/impl/StartStopTokens;", "<init>", "()V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
final class StartStopTokensImpl implements StartStopTokens {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f20321a = new LinkedHashMap();

    @Override // androidx.work.impl.StartStopTokens
    public final boolean a(WorkGenerationalId workGenerationalId) {
        return this.f20321a.containsKey(workGenerationalId);
    }

    @Override // androidx.work.impl.StartStopTokens
    public final StartStopToken b(WorkGenerationalId workGenerationalId) {
        workGenerationalId.getClass();
        return (StartStopToken) this.f20321a.remove(workGenerationalId);
    }

    @Override // androidx.work.impl.StartStopTokens
    public final StartStopToken d(WorkGenerationalId workGenerationalId) {
        LinkedHashMap linkedHashMap = this.f20321a;
        Object startStopToken = linkedHashMap.get(workGenerationalId);
        if (startStopToken == null) {
            startStopToken = new StartStopToken(workGenerationalId);
            linkedHashMap.put(workGenerationalId, startStopToken);
        }
        return (StartStopToken) startStopToken;
    }

    @Override // androidx.work.impl.StartStopTokens
    public final List remove(String str) {
        str.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = this.f20321a;
        for (Map.Entry entry : linkedHashMap2.entrySet()) {
            if (Intrinsics.c(((WorkGenerationalId) entry.getKey()).f20499a, str)) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
        }
        Iterator it = linkedHashMap.keySet().iterator();
        while (it.hasNext()) {
            linkedHashMap2.remove((WorkGenerationalId) it.next());
        }
        return CollectionsKt.y0(linkedHashMap.values());
    }
}
