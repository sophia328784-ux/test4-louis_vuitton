package com.networkbench.agent.impl.session;

import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface ITransaction extends ISpan {
    List<ISpan> getSpans();
}
