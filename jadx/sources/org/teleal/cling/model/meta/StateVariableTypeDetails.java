package org.teleal.cling.model.meta;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Logger;
import org.teleal.cling.model.Validatable;
import org.teleal.cling.model.types.Datatype;

/* JADX INFO: loaded from: classes5.dex */
public class StateVariableTypeDetails implements Validatable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Datatype f78492a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78493b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String[] f78494c;
    public final StateVariableAllowedValueRange d;

    static {
        Logger.getLogger(StateVariableTypeDetails.class.getName());
    }

    public StateVariableTypeDetails(Datatype datatype, String str, String[] strArr, StateVariableAllowedValueRange stateVariableAllowedValueRange) {
        this.f78492a = datatype;
        this.f78493b = str;
        this.f78494c = strArr;
        this.d = stateVariableAllowedValueRange;
    }

    public final String[] a() {
        String str = this.f78493b;
        String[] strArr = this.f78494c;
        if (str == null || strArr == null) {
            return strArr;
        }
        for (String str2 : strArr) {
            if (str2.equals(str)) {
                return strArr;
            }
        }
        ArrayList arrayList = new ArrayList(Arrays.asList(strArr));
        arrayList.add(str);
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public StateVariableTypeDetails(Datatype datatype, String str) {
        this(datatype, str, null, null);
    }

    public StateVariableTypeDetails(Datatype datatype) {
        this(datatype, null, null, null);
    }
}
