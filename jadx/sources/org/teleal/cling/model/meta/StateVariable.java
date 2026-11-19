package org.teleal.cling.model.meta;

import java.util.logging.Logger;
import org.teleal.cling.model.Validatable;
import org.teleal.cling.model.meta.Service;
import org.teleal.cling.model.types.Datatype;

/* JADX INFO: loaded from: classes5.dex */
public class StateVariable<S extends Service> implements Validatable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f78483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final StateVariableTypeDetails f78484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final StateVariableEventDetails f78485c;
    public Service d;

    static {
        Logger.getLogger(StateVariable.class.getName());
    }

    public StateVariable(String str, StateVariableTypeDetails stateVariableTypeDetails, StateVariableEventDetails stateVariableEventDetails) {
        this.f78483a = str;
        this.f78484b = stateVariableTypeDetails;
        this.f78485c = stateVariableEventDetails;
    }

    public final boolean a() {
        Datatype.Builtin builtinD = this.f78484b.f78492a.d();
        if (builtinD != null) {
            return (builtinD.equals(Datatype.Builtin.UI1) || builtinD.equals(Datatype.Builtin.UI2) || builtinD.equals(Datatype.Builtin.UI4) || builtinD.equals(Datatype.Builtin.I1) || builtinD.equals(Datatype.Builtin.I2) || builtinD.equals(Datatype.Builtin.I4) || builtinD.equals(Datatype.Builtin.INT)) && this.f78485c.f78491c > 0;
        }
        Datatype.Builtin builtin = Datatype.Builtin.UI1;
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("(");
        sb.append(getClass().getSimpleName());
        sb.append(", Name: ");
        sb.append(this.f78483a);
        sb.append(", Type: ");
        StateVariableTypeDetails stateVariableTypeDetails = this.f78484b;
        Datatype datatype = stateVariableTypeDetails.f78492a;
        String str = stateVariableTypeDetails.f78493b;
        sb.append(datatype.c());
        sb.append(")");
        if (!this.f78485c.f78489a) {
            sb.append(" (No Events)");
        }
        if (str != null) {
            sb.append(" Default Value: '");
            sb.append(str);
            sb.append("'");
        }
        if (stateVariableTypeDetails.a() != null) {
            sb.append(" Allowed Values: ");
            for (String str2 : stateVariableTypeDetails.a()) {
                sb.append(str2);
                sb.append("|");
            }
        }
        return sb.toString();
    }

    public StateVariable(String str, StateVariableTypeDetails stateVariableTypeDetails) {
        this(str, stateVariableTypeDetails, new StateVariableEventDetails());
    }
}
