package com.google.firebase.components;

import android.content.Context;

/* JADX INFO: loaded from: classes2.dex */
public final class ComponentDiscovery<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f34388a;

    public static class MetadataRegistrarNameRetriever implements RegistrarNameRetriever<Context> {
    }

    public interface RegistrarNameRetriever<T> {
    }

    public ComponentDiscovery(Context context, MetadataRegistrarNameRetriever metadataRegistrarNameRetriever) {
        this.f34388a = context;
    }

    public static ComponentDiscovery a(Context context) {
        return new ComponentDiscovery(context, new MetadataRegistrarNameRetriever());
    }
}
