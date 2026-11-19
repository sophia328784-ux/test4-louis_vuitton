package kotlin.reflect.jvm.internal.impl.name;

import io.jsonwebtoken.JwtParser;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class CallableId {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FqName f73673a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Name f73674b;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
        Name name = SpecialNames.f73695f;
        FqName.f73678c.getClass();
        FqName.Companion.a(name);
    }

    public CallableId(FqName fqName, Name name) {
        fqName.getClass();
        name.getClass();
        this.f73673a = fqName;
        this.f73674b = name;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CallableId)) {
            return false;
        }
        CallableId callableId = (CallableId) obj;
        return Intrinsics.c(this.f73673a, callableId.f73673a) && Intrinsics.c(this.f73674b, callableId.f73674b);
    }

    public final int hashCode() {
        return this.f73674b.hashCode() + ((this.f73673a.hashCode() + 527) * 961);
    }

    public final String toString() {
        return StringsKt.I(this.f73673a.f73679a.f73683a, JwtParser.SEPARATOR_CHAR, '/') + "/" + this.f73674b;
    }
}
