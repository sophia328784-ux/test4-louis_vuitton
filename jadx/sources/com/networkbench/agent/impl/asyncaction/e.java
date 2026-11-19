package com.networkbench.agent.impl.asyncaction;

import com.networkbench.agent.impl.instrumentation.NBSTraceUnit;
import com.networkbench.agent.impl.instrumentation.NBSTransactionState;
import com.networkbench.agent.impl.instrumentation.NBSUnit;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public interface e {
    void a(long j2);

    void a(NBSUnit nBSUnit);

    void a(NBSUnit nBSUnit, NBSTransactionState nBSTransactionState);

    void a(UUID uuid);

    NBSTraceUnit b();

    void b(NBSUnit nBSUnit);

    boolean b(UUID uuid);

    boolean c();
}
