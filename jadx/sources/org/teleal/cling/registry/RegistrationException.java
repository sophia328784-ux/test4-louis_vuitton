package org.teleal.cling.registry;

import java.util.List;
import org.teleal.cling.model.ValidationError;

/* JADX INFO: loaded from: classes5.dex */
public class RegistrationException extends RuntimeException {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f78546b;

    public RegistrationException(String str, List<ValidationError> list) {
        super(str);
        this.f78546b = list;
    }

    public RegistrationException(String str, Throwable th) {
        super(str, th);
    }

    public RegistrationException(String str) {
        super(str);
    }
}
