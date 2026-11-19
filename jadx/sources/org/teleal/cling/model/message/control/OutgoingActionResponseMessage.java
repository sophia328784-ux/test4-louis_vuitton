package org.teleal.cling.model.message.control;

import org.teleal.cling.model.message.StreamResponseMessage;
import org.teleal.cling.model.message.UpnpResponse;
import org.teleal.cling.model.message.header.ContentTypeHeader;
import org.teleal.cling.model.message.header.EXTHeader;
import org.teleal.cling.model.message.header.ServerHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.Action;
import org.teleal.cling.model.meta.QueryStateVariableAction;

/* JADX INFO: loaded from: classes5.dex */
public class OutgoingActionResponseMessage extends StreamResponseMessage implements ActionResponseMessage {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final String f78421f;

    public OutgoingActionResponseMessage(UpnpResponse.Status status, Action action) {
        super(new UpnpResponse(status));
        if (action != null) {
            if (action instanceof QueryStateVariableAction) {
                this.f78421f = "urn:schemas-upnp-org:control-1-0";
            } else {
                this.f78421f = action.f78437e.f78479a.toString();
            }
        }
        this.f78412c.h(UpnpHeader.Type.CONTENT_TYPE, new ContentTypeHeader(ContentTypeHeader.d));
        this.f78412c.h(UpnpHeader.Type.SERVER, new ServerHeader());
        this.f78412c.h(UpnpHeader.Type.EXT, new EXTHeader());
    }

    @Override // org.teleal.cling.model.message.control.ActionMessage
    public final String b() {
        return this.f78421f;
    }

    public OutgoingActionResponseMessage(UpnpResponse.Status status) {
        this(status, null);
    }

    public OutgoingActionResponseMessage(Action action) {
        this(UpnpResponse.Status.OK, action);
    }
}
