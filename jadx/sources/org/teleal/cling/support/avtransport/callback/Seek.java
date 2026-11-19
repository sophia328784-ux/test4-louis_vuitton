package org.teleal.cling.support.avtransport.callback;

import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallbackNotResponse;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;
import org.teleal.cling.support.model.SeekMode;

/* JADX INFO: loaded from: classes5.dex */
public abstract class Seek extends ActionCallbackNotResponse {
    private static Logger log = Logger.getLogger(Seek.class.getName());

    public Seek(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, SeekMode seekMode, String str) {
        super(new ActionInvocation(service.a("Seek")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
        getActionInvocation().b(seekMode.name(), "Unit");
        getActionInvocation().b(str, "Target");
    }

    @Override // org.teleal.cling.controlpoint.ActionCallbackNotResponse
    public void success(ActionInvocation actionInvocation) {
        log.fine("Execution successful");
    }

    public Seek(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, String str) {
        this(unsignedIntegerFourBytes, service, SeekMode.REL_TIME, str);
    }

    public Seek(Service service, SeekMode seekMode, String str) {
        this(new UnsignedIntegerFourBytes(0L), service, seekMode, str);
    }

    public Seek(Service service, String str) {
        this(new UnsignedIntegerFourBytes(0L), service, SeekMode.REL_TIME, str);
    }
}
