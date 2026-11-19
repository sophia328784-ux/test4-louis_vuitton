package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes2.dex */
public final class zaf extends zad {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zacd f29110c;

    public zaf(zacd zacdVar, TaskCompletionSource taskCompletionSource) {
        super(3, taskCompletionSource);
        this.f29110c = zacdVar;
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zai
    public final /* bridge */ /* synthetic */ void c(zaaa zaaaVar, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] f(zabk zabkVar) {
        return this.f29110c.f29099a.f29050b;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean g(zabk zabkVar) {
        return this.f29110c.f29099a.f29051c;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final int h(zabk zabkVar) {
        return this.f29110c.f29099a.d;
    }

    @Override // com.google.android.gms.common.api.internal.zad
    public final void i(zabk zabkVar) {
        zacd zacdVar = this.f29110c;
        RegisterListenerMethod registerListenerMethod = zacdVar.f29099a;
        ((zace) registerListenerMethod).f29102e.f29055a.accept(zabkVar.f29075b, this.f29108b);
        ListenerHolder.ListenerKey listenerKey = registerListenerMethod.f29049a.f29038b;
        if (listenerKey != null) {
            zabkVar.m.put(listenerKey, zacdVar);
        }
    }
}
