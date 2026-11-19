package kotlin.reflect.jvm.internal.impl.km.internal;

import kotlin.reflect.jvm.internal.impl.metadata.deserialization.Flags;

/* JADX INFO: loaded from: classes4.dex */
public final class FlagImpl {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f72776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f72777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f72778c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FlagImpl(Flags.FlagField<?> flagField, int i2) {
        this(flagField.f73582a, flagField.f73583b, i2);
        flagField.getClass();
    }

    public FlagImpl(int i2, int i3, int i4) {
        this.f72776a = i2;
        this.f72777b = i3;
        this.f72778c = i4;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FlagImpl(Flags.BooleanFlagField booleanFlagField) {
        this(booleanFlagField, 1);
        booleanFlagField.getClass();
    }
}
