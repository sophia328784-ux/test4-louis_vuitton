package org.teleal.cling.model.meta;

import defpackage.pq0;
import java.util.logging.Logger;
import org.teleal.cling.model.Validatable;

/* JADX INFO: loaded from: classes5.dex */
public class StateVariableAllowedValueRange implements Validatable {
    public static final Logger d = Logger.getLogger(StateVariableAllowedValueRange.class.getName());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f78486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f78487b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f78488c;

    public StateVariableAllowedValueRange(long j2, long j3, long j4) {
        if (j2 > j3) {
            StringBuilder sbQ = pq0.q(j2, "UPnP specification violation, allowed value range minimum '", "' is greater than maximum '");
            sbQ.append(j3);
            sbQ.append("', switching values.");
            d.warning(sbQ.toString());
            this.f78486a = j3;
            this.f78487b = j2;
        } else {
            this.f78486a = j2;
            this.f78487b = j3;
        }
        this.f78488c = j4;
    }

    public final String toString() {
        return "Range Min: " + this.f78486a + " Max: " + this.f78487b + " Step: " + this.f78488c;
    }

    public StateVariableAllowedValueRange(long j2, long j3) {
        this(j2, j3, 1L);
    }
}
