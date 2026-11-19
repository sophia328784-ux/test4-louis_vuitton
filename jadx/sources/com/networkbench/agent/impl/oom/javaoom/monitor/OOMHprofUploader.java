package com.networkbench.agent.impl.oom.javaoom.monitor;

import java.io.File;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\bJ\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\t"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader;", "", "upload", "", "file", "Ljava/io/File;", "type", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader$HprofType;", "HprofType", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public interface OOMHprofUploader {

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/OOMHprofUploader$HprofType;", "", "(Ljava/lang/String;I)V", "ORIGIN", "STRIPPED", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
    public enum HprofType {
        ORIGIN,
        STRIPPED
    }

    void upload(File file, HprofType type);
}
