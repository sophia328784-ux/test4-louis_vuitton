package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public final class zah extends zad {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ListenerHolder.ListenerKey f29113c;

    public zah(ListenerHolder.ListenerKey listenerKey, TaskCompletionSource taskCompletionSource) {
        super(4, taskCompletionSource);
        this.f29113c = listenerKey;
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zai
    public final /* bridge */ /* synthetic */ void c(zaaa zaaaVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] f(zabk zabkVar) {
        zacd zacdVar = (zacd) zabkVar.m.get(this.f29113c);
        if (zacdVar == null) {
            return null;
        }
        return zacdVar.f29099a.f29050b;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean g(zabk zabkVar) {
        zacd zacdVar = (zacd) zabkVar.m.get(this.f29113c);
        return zacdVar != null && zacdVar.f29099a.f29051c;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final int h(zabk zabkVar) {
        zacd zacdVar = (zacd) zabkVar.m.get(this.f29113c);
        if (zacdVar != null) {
            return zacdVar.f29099a.d;
        }
        return -1;
    }

    @Override // com.google.android.gms.common.api.internal.zad
    public final void i(zabk zabkVar) {
        zacd zacdVar = (zacd) zabkVar.m.remove(this.f29113c);
        if (zacdVar == null) {
            this.f29108b.d(Boolean.FALSE);
            return;
        }
        ((zacf) zacdVar.f29100b).f29103b.f29056b.accept(zabkVar.f29075b, this.f29108b);
        zacdVar.f29099a.f29049a.f29038b = null;
    }
}
