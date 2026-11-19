package com.vuitton.foundation.contracts.chat;

import com.vuitton.foundation.model.domain.model.config.PowerFrontConfig;
import kotlin.Metadata;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.StateFlow;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001¨\u0006\u0002À\u0006\u0003"}, d2 = {"Lcom/vuitton/foundation/contracts/chat/ChatManager;", "Lcom/vuitton/foundation/contracts/chat/ChatTracker;", "contracts"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface ChatManager extends ChatTracker {
    void a(PowerFrontConfig powerFrontConfig);

    void b();

    SharedFlow d();

    void e();

    void f();

    StateFlow g();

    void l(int i2, int i3);

    void m();
}
