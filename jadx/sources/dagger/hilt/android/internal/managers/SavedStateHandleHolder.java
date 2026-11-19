package dagger.hilt.android.internal.managers;

import androidx.lifecycle.viewmodel.CreationExtras;

/* JADX INFO: loaded from: classes4.dex */
public final class SavedStateHandleHolder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public CreationExtras f68515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f68516b;

    public SavedStateHandleHolder(CreationExtras creationExtras) {
        this.f68516b = creationExtras != null;
        this.f68515a = creationExtras;
    }
}
