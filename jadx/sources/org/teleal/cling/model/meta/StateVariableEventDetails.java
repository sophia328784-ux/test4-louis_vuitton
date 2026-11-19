package org.teleal.cling.model.meta;

/* JADX INFO: loaded from: classes5.dex */
public class StateVariableEventDetails {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f78489a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f78490b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f78491c;

    public StateVariableEventDetails(boolean z, int i2, int i3) {
        this.f78489a = z;
        this.f78490b = i2;
        this.f78491c = i3;
    }

    public StateVariableEventDetails(boolean z) {
        this(z, 0, 0);
    }

    public StateVariableEventDetails() {
        this(true, 0, 0);
    }
}
