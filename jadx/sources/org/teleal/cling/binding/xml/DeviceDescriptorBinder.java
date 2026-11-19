package org.teleal.cling.binding.xml;

import org.teleal.cling.model.Namespace;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.profile.ControlPointInfo;

/* JADX INFO: loaded from: classes5.dex */
public interface DeviceDescriptorBinder {
    String a(Device device, ControlPointInfo controlPointInfo, Namespace namespace);

    Device b(Device device, String str);
}
