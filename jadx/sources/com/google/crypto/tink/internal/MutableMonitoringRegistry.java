package com.google.crypto.tink.internal;

import com.google.crypto.tink.monitoring.MonitoringClient;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class MutableMonitoringRegistry {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MutableMonitoringRegistry f33997b = new MutableMonitoringRegistry();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final DoNothingClient f33998c = new DoNothingClient();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicReference f33999a = new AtomicReference();

    public static class DoNothingClient implements MonitoringClient {
    }
}
