package org.teleal.cling.model.message.control;

import org.teleal.cling.model.action.ActionException;
import org.teleal.cling.model.message.StreamRequestMessage;
import org.teleal.cling.model.message.header.SoapActionHeader;
import org.teleal.cling.model.message.header.UpnpHeader;
import org.teleal.cling.model.meta.Action;
import org.teleal.cling.model.meta.LocalService;
import org.teleal.cling.model.types.ErrorCode;
import org.teleal.cling.model.types.ServiceType;
import org.teleal.cling.model.types.SoapActionType;

/* JADX INFO: loaded from: classes5.dex */
public class IncomingActionRequestMessage extends StreamRequestMessage implements ActionRequestMessage {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Action f78419f;
    public final String g;

    public IncomingActionRequestMessage(StreamRequestMessage streamRequestMessage, LocalService localService) throws ActionException {
        super(streamRequestMessage);
        SoapActionHeader soapActionHeader = (SoapActionHeader) this.f78412c.k(UpnpHeader.Type.SOAPACTION, SoapActionHeader.class);
        if (soapActionHeader == null) {
            throw new ActionException(ErrorCode.INVALID_ACTION, "Missing SOAP action header");
        }
        SoapActionType soapActionType = (SoapActionType) soapActionHeader.f78433a;
        String str = soapActionType.f78528c;
        String str2 = soapActionType.f78528c;
        Action actionA = localService.a(str);
        this.f78419f = actionA;
        if (actionA == null) {
            throw new ActionException(ErrorCode.INVALID_ACTION, "Service doesn't implement action: " + str2);
        }
        if (!"QueryStateVariable".equals(str2)) {
            ServiceType serviceType = localService.f78479a;
            Integer num = soapActionType.d;
            if (!serviceType.a(num == null ? null : new ServiceType(soapActionType.f78526a, soapActionType.f78527b, num.intValue()))) {
                throw new ActionException(ErrorCode.INVALID_ACTION, "Service doesn't support the requested service version");
            }
        }
        this.g = soapActionType.a();
    }

    @Override // org.teleal.cling.model.message.control.ActionMessage
    public final String b() {
        return this.g;
    }
}
