package com.networkbench.agent.impl.oom.javaoom.monitor.utils;

import com.networkbench.agent.impl.NBSSpanMetricUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\n\u000b\fB\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H&J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H&\u0082\u0001\u0003\r\u000e\u000f¨\u0006\u0010"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit;", "", "()V", "toByte", "", "value", "", "", "toKB", "toMB", "BYTE", NBSSpanMetricUnit.Kilobytes, NBSSpanMetricUnit.Megabytes, "Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$KB;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$MB;", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
public abstract class SizeUnit {

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016¨\u0006\n"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$BYTE;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit;", "()V", "toByte", "", "value", "", "", "toKB", "toMB", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
    public static final class BYTE extends SizeUnit {
        public static final BYTE INSTANCE = new BYTE();

        private BYTE() {
            super(null);
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toByte(int value) {
            return value;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toKB(int value) {
            return value / 1024.0f;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toMB(int value) {
            return (value / 1024.0f) / 1024.0f;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toByte(long value) {
            return value;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toKB(long value) {
            return value / 1024.0f;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toMB(long value) {
            return (value / 1024.0f) / 1024.0f;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016¨\u0006\n"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$KB;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit;", "()V", "toByte", "", "value", "", "", "toKB", "toMB", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
    public static final class KB extends SizeUnit {
        public static final KB INSTANCE = new KB();

        private KB() {
            super(null);
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toByte(int value) {
            return value * 1024.0f;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toKB(int value) {
            return value;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toMB(int value) {
            return value / 1024.0f;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toKB(long value) {
            return value;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toByte(long value) {
            return value * 1024.0f;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toMB(long value) {
            return value / 1024.0f;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\b\n\u0002\u0010\t\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0007H\u0016¨\u0006\n"}, d2 = {"Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit$MB;", "Lcom/networkbench/agent/impl/oom/javaoom/monitor/utils/SizeUnit;", "()V", "toByte", "", "value", "", "", "toKB", "toMB", "koom-java-leak_release"}, k = 1, mv = {1, 4, 1})
    public static final class MB extends SizeUnit {
        public static final MB INSTANCE = new MB();

        private MB() {
            super(null);
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toByte(int value) {
            return value * 1024.0f * 1024.0f;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toKB(int value) {
            return value * 1024.0f;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toMB(int value) {
            return value;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toMB(long value) {
            return value;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toKB(long value) {
            return value * 1024.0f;
        }

        @Override // com.networkbench.agent.impl.oom.javaoom.monitor.utils.SizeUnit
        public float toByte(long value) {
            return value * 1024.0f * 1024.0f;
        }
    }

    private SizeUnit() {
    }

    public abstract float toByte(int value);

    public abstract float toByte(long value);

    public abstract float toKB(int value);

    public abstract float toKB(long value);

    public abstract float toMB(int value);

    public abstract float toMB(long value);

    public /* synthetic */ SizeUnit(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
