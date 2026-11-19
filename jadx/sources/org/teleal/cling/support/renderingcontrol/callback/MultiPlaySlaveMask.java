package org.teleal.cling.support.renderingcontrol.callback;

import java.util.logging.Logger;
import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class MultiPlaySlaveMask extends ActionCallback {
    private static Logger log = Logger.getLogger(MultiPlaySlaveMask.class.getName());

    public MultiPlaySlaveMask(UnsignedIntegerFourBytes unsignedIntegerFourBytes, Service service, int i2) {
        super(new ActionInvocation(service.a("MultiPlaySlaveMask")));
        getActionInvocation().b(unsignedIntegerFourBytes, "InstanceID");
        getActionInvocation().b(new UnsignedIntegerFourBytes(i2), "SlaveMask");
    }

    public MultiPlaySlaveMask(Service service, int i2) {
        this(new UnsignedIntegerFourBytes(0L), service, i2);
    }
}
