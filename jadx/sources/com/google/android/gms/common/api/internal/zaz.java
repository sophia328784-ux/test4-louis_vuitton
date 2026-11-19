package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
final class zaz implements OnCompleteListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f29129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zaaa f29130c;

    public zaz(zaaa zaaaVar, TaskCompletionSource taskCompletionSource) {
        this.f29129b = taskCompletionSource;
        Objects.requireNonNull(zaaaVar);
        this.f29130c = zaaaVar;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        this.f29130c.f29068b.remove(this.f29129b);
    }
}
