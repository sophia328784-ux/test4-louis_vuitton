package org.teleal.cling.support.playqueue.callback.keymappingqueue;

import org.teleal.cling.controlpoint.ActionCallback;
import org.teleal.cling.controlpoint.ControlPoint;
import org.teleal.cling.model.action.ActionInvocation;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.UnsignedIntegerFourBytes;

/* JADX INFO: loaded from: classes5.dex */
public abstract class SetSpotifyPreset extends ActionCallback {
    public int keyIndex;

    public SetSpotifyPreset(Service service, int i2) {
        this(new ActionInvocation(service.a("SetSpotifyPreset")));
        getActionInvocation().b(new UnsignedIntegerFourBytes(i2), "KeyIndex");
    }

    public SetSpotifyPreset(ActionInvocation actionInvocation) {
        super(actionInvocation);
        this.keyIndex = 0;
    }

    public SetSpotifyPreset(ActionInvocation actionInvocation, ControlPoint controlPoint) {
        super(actionInvocation, controlPoint);
        this.keyIndex = 0;
    }
}
