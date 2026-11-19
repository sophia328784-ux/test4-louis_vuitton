package com.google.android.gms.internal.measurement;

import android.net.Uri;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableListIterator;

/* JADX INFO: loaded from: classes2.dex */
public final class zzsb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Uri.Builder f30902a = new Uri.Builder().scheme("file").authority("").path("/");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ImmutableList.Builder f30903b;

    public zzsb() {
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f33587c;
        this.f30903b = new ImmutableList.Builder();
    }
}
