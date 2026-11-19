package org.teleal.cling.model.message.control;

import defpackage.az;
import java.net.URL;
import java.util.logging.Logger;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.UpnpRequest;
import org.teleal.cling.model.message.header.ContentTypeHeader;
import org.teleal.cling.model.message.header.SoapActionHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.Action;
import org.teleal.cling.model.meta.QueryStateVariableAction;
import org.teleal.cling.model.types.SoapActionType;

/* JADX INFO: loaded from: classes5.dex */
public class OutgoingActionRequestMessage extends StreamRequestMessage implements ActionRequestMessage {
    public static final Logger g = Logger.getLogger(OutgoingActionRequestMessage.class.getName());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f78420f;

    public OutgoingActionRequestMessage(Action action, UpnpRequest upnpRequest) {
        SoapActionHeader soapActionHeader;
        super(upnpRequest);
        this.f78412c.h(UpnpHeader.Type.CONTENT_TYPE, new ContentTypeHeader(ContentTypeHeader.d));
        if (action instanceof QueryStateVariableAction) {
            g.fine("Adding magic control SOAP action header for state variable query action");
            soapActionHeader = new SoapActionHeader(new SoapActionType("schemas-upnp-org", "control-1-0", null, "QueryStateVariable"));
        } else {
            soapActionHeader = new SoapActionHeader(new SoapActionType(action.f78437e.f78479a, action.a()));
        }
        this.f78420f = ((SoapActionType) soapActionHeader.f78433a).a();
        if (((UpnpRequest) this.f78411b).f78415b.equals(UpnpRequest.Method.POST)) {
            this.f78412c.h(UpnpHeader.Type.SOAPACTION, soapActionHeader);
        } else {
            az.w(((UpnpRequest) this.f78411b).f78415b, "Can't send action with request method: ");
            throw null;
        }
    }

    @Override // org.teleal.cling.model.message.control.ActionMessage
    public final String b() {
        return this.f78420f;
    }

    public OutgoingActionRequestMessage(ActionInvocation actionInvocation, URL url) {
        this(actionInvocation.f78397a, new UpnpRequest(UpnpRequest.Method.POST, url));
    }
}
