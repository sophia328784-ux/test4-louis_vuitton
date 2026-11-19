package org.teleal.cling.model;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class ValidationException extends Exception {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f78392b;

    public ValidationException(String str, List<ValidationError> list) {
        super(str);
        this.f78392b = list;
    }

    public ValidationException(String str, Throwable th) {
        super(str, th);
    }

    public ValidationException(String str) {
        super(str);
    }
}
