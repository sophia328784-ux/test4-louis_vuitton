package com.bumptech.glide.manager;

import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
final class LifecycleRequestManagerRetriever {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f24889a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final RequestManagerRetriever.RequestManagerFactory f24890b;

    public final class SupportRequestManagerTreeNode implements RequestManagerTreeNode {
    }

    public LifecycleRequestManagerRetriever(RequestManagerRetriever.RequestManagerFactory requestManagerFactory) {
        this.f24890b = requestManagerFactory;
    }
}
