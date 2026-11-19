package com.google.common.collect;

import com.google.common.base.Function;
import defpackage.fw;
import defpackage.uh;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a implements Function {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f33732b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f33733c;

    public /* synthetic */ a(Object obj, int i2) {
        this.f33732b = i2;
        this.f33733c = obj;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        int i2 = this.f33732b;
        Object obj2 = this.f33733c;
        switch (i2) {
            case 0:
                final Maps.EntryTransformer entryTransformer = (Maps.EntryTransformer) obj2;
                final Map.Entry entry = (Map.Entry) obj;
                entryTransformer.getClass();
                entry.getClass();
                return new AbstractMapEntry<Object, Object>() { // from class: com.google.common.collect.Maps.9

                    /* JADX INFO: renamed from: b */
                    public final /* synthetic */ Map.Entry f33669b;

                    /* JADX INFO: renamed from: c */
                    public final /* synthetic */ EntryTransformer f33670c;

                    public AnonymousClass9() {
                        entry = entry;
                        entryTransformer = entryTransformer;
                    }

                    @Override // java.util.Map.Entry
                    public final Object getKey() {
                        return entry.getKey();
                    }

                    @Override // java.util.Map.Entry
                    public final Object getValue() {
                        Map.Entry entry2 = entry;
                        return entryTransformer.c(entry2.getKey(), entry2.getValue());
                    }
                };
            default:
                Map.Entry entry2 = (Map.Entry) obj;
                fw fwVar = ((Multimaps.TransformedEntriesMultimap) obj2).g;
                entry2.getKey();
                return ((uh) fwVar.f69221c).apply(entry2.getValue());
        }
    }
}
