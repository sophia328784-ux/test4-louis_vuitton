package com.sightcall.universal.agent;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Target({ElementType.METHOD})
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0081\u0002\u0018\u00002\u00020\u0001:\u0003\n\u000b\fB8\u0012\u000e\b\u0002\u0010\u0002\u001a\u00020\u0003B\u0004\b\u0003\u0010\u0001\u0012\u000e\b\u0002\u0010\u0004\u001a\u00020\u0003B\u0004\b\u0003\u0010\u0001\u0012\u000e\b\u0002\u0010\u0005\u001a\u00020\u0003B\u0004\b\u0003\u0010\u0001\u0012\u0006\u0010\u0006\u001a\u00020\u0007R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\bR\u000f\u0010\u0004\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0004\u0010\bR\u000f\u0010\u0005\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0005\u0010\bR\u000f\u0010\u0006\u001a\u00020\u0007¢\u0006\u0006\u001a\u0004\b\u0006\u0010\t¨\u0006\r"}, d2 = {"Lcom/sightcall/universal/agent/Timeout;", "", "connect", "", "write", "read", "unit", "Ljava/util/concurrent/TimeUnit;", "()I", "()Ljava/util/concurrent/TimeUnit;", "Read", "Write", "Connect", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
@kotlin.annotation.Target
@Retention(RetentionPolicy.RUNTIME)
@kotlin.annotation.Retention
public @interface Timeout {

    @Target({ElementType.METHOD})
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0006R\u000f\u0010\u0004\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/agent/Timeout$Connect;", "", "value", "", "unit", "Ljava/util/concurrent/TimeUnit;", "()I", "()Ljava/util/concurrent/TimeUnit;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @kotlin.annotation.Target
    @Retention(RetentionPolicy.RUNTIME)
    @kotlin.annotation.Retention
    public @interface Connect {
        TimeUnit unit();

        int value();
    }

    @Target({ElementType.METHOD})
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0006R\u000f\u0010\u0004\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/agent/Timeout$Read;", "", "value", "", "unit", "Ljava/util/concurrent/TimeUnit;", "()I", "()Ljava/util/concurrent/TimeUnit;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @kotlin.annotation.Target
    @Retention(RetentionPolicy.RUNTIME)
    @kotlin.annotation.Retention
    public @interface Read {
        TimeUnit unit();

        int value();
    }

    @Target({ElementType.METHOD})
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0087\u0002\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005R\u000f\u0010\u0002\u001a\u00020\u0003¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0006R\u000f\u0010\u0004\u001a\u00020\u0005¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/sightcall/universal/agent/Timeout$Write;", "", "value", "", "unit", "Ljava/util/concurrent/TimeUnit;", "()I", "()Ljava/util/concurrent/TimeUnit;", "sdk_installedRelease"}, k = 1, mv = {2, 3, 0}, xi = 48)
    @kotlin.annotation.Target
    @Retention(RetentionPolicy.RUNTIME)
    @kotlin.annotation.Retention
    public @interface Write {
        TimeUnit unit();

        int value();
    }

    int connect() default -1;

    int read() default -1;

    TimeUnit unit();

    int write() default -1;
}
