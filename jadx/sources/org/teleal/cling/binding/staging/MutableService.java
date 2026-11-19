package org.teleal.cling.binding.staging;

import java.net.URI;
import java.util.ArrayList;
import org.teleal.cling.model.meta.Action;
import org.teleal.cling.model.meta.ActionArgument;
import org.teleal.cling.model.meta.Device;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.meta.StateVariable;
import org.teleal.cling.model.meta.StateVariableAllowedValueRange;
import org.teleal.cling.model.meta.StateVariableTypeDetails;
import org.teleal.cling.model.types.Datatype;
import org.teleal.cling.model.types.ServiceId;
import org.teleal.cling.model.types.ServiceType;

/* JADX INFO: loaded from: classes5.dex */
public class MutableService {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ServiceType f78334a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ServiceId f78335b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public URI f78336c;
    public URI d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public URI f78337e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public ArrayList f78338f = new ArrayList();
    public ArrayList g = new ArrayList();

    public final Service a(Device device) {
        String[] strArr;
        ServiceType serviceType = this.f78334a;
        ServiceId serviceId = this.f78335b;
        URI uri = this.f78336c;
        URI uri2 = this.d;
        URI uri3 = this.f78337e;
        Action[] actionArr = new Action[this.f78338f.size()];
        int i2 = 0;
        for (MutableAction mutableAction : this.f78338f) {
            int i3 = i2 + 1;
            mutableAction.getClass();
            String str = mutableAction.f78313a;
            ActionArgument[] actionArgumentArr = new ActionArgument[mutableAction.f78314b.size()];
            int i4 = 0;
            for (MutableActionArgument mutableActionArgument : mutableAction.f78314b) {
                mutableActionArgument.getClass();
                actionArgumentArr[i4] = new ActionArgument(mutableActionArgument.f78315a, mutableActionArgument.f78316b, mutableActionArgument.f78317c, mutableActionArgument.d);
                i4++;
                serviceType = serviceType;
                serviceId = serviceId;
                uri = uri;
                uri2 = uri2;
            }
            actionArr[i2] = new Action(str, actionArgumentArr);
            i2 = i3;
        }
        ServiceType serviceType2 = serviceType;
        ServiceId serviceId2 = serviceId;
        URI uri4 = uri;
        URI uri5 = uri2;
        StateVariable[] stateVariableArr = new StateVariable[this.g.size()];
        int i5 = 0;
        for (MutableStateVariable mutableStateVariable : this.g) {
            int i6 = i5 + 1;
            mutableStateVariable.getClass();
            String str2 = mutableStateVariable.f78339a;
            Datatype datatype = mutableStateVariable.f78340b;
            String str3 = mutableStateVariable.f78341c;
            ArrayList arrayList = mutableStateVariable.d;
            StateVariableAllowedValueRange stateVariableAllowedValueRange = null;
            if (arrayList == null || arrayList.size() == 0) {
                strArr = null;
            } else {
                ArrayList arrayList2 = mutableStateVariable.d;
                strArr = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
            }
            if (mutableStateVariable.f78342e != null) {
                stateVariableAllowedValueRange = new StateVariableAllowedValueRange(mutableStateVariable.f78342e.f78318a.longValue(), mutableStateVariable.f78342e.f78319b.longValue(), mutableStateVariable.f78342e.f78320c.longValue());
            }
            stateVariableArr[i5] = new StateVariable(str2, new StateVariableTypeDetails(datatype, str3, strArr, stateVariableAllowedValueRange), mutableStateVariable.f78343f);
            i5 = i6;
        }
        return device.p(serviceType2, serviceId2, uri4, uri5, uri3, actionArr, stateVariableArr);
    }
}
