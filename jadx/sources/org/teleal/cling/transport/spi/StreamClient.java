package org.teleal.cling.transport.spi;

import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.transport.spi.StreamClientConfiguration;

/* JADX INFO: loaded from: classes5.dex */
public interface StreamClient<C extends StreamClientConfiguration> {
    StreamResponseMessage a(StreamRequestMessage streamRequestMessage);

    void stop();
}
