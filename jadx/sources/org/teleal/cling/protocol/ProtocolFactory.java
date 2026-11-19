package org.teleal.cling.protocol;

import java.net.URL;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.gena.RemoteGENASubscription;
import org.teleal.cling.model.message.IncomingDatagramMessage;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.protocol.async.ReceivingSearchResponse;
import org.teleal.cling.protocol.async.SendingSearch;
import org.teleal.cling.protocol.sync.SendingAction;
import org.teleal.cling.protocol.sync.SendingSubscribe;
import org.teleal.cling.protocol.sync.SendingUnsubscribe;

/* JADX INFO: loaded from: classes5.dex */
public interface ProtocolFactory {
    SendingAction a(ActionInvocation actionInvocation, URL url);

    SendingSubscribe b(RemoteGENASubscription remoteGENASubscription);

    ReceivingSearchResponse c(IncomingDatagramMessage incomingDatagramMessage);

    SendingUnsubscribe d(RemoteGENASubscription remoteGENASubscription);

    ReceivingSync e(StreamRequestMessage streamRequestMessage);

    SendingSearch f(UpnpHeader upnpHeader);
}
