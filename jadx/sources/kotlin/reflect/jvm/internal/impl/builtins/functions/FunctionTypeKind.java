package kotlin.reflect.jvm.internal.impl.builtins.functions;

import com.sightcall.advancedannotations.domain.parser.ResourceParser;
import defpackage.fc;
import io.jsonwebtoken.JwtParser;
import kotlin.reflect.jvm.internal.impl.builtins.StandardNames;
import kotlin.reflect.jvm.internal.impl.name.ClassId;
import kotlin.reflect.jvm.internal.impl.name.FqName;
import kotlin.reflect.jvm.internal.impl.name.Name;

/* JADX INFO: loaded from: classes4.dex */
public abstract class FunctionTypeKind {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final FqName f72291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f72292b;

    public static final class Function extends FunctionTypeKind {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Function f72293c = new Function(StandardNames.l, "Function", false, null, true);
    }

    public static final class KFunction extends FunctionTypeKind {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final KFunction f72294c = new KFunction(StandardNames.f72268i, "KFunction", true, null, false);
    }

    public static final class KSuspendFunction extends FunctionTypeKind {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final KSuspendFunction f72295c = new KSuspendFunction(StandardNames.f72268i, "KSuspendFunction", true, null, false);
    }

    public static final class SuspendFunction extends FunctionTypeKind {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final SuspendFunction f72296c = new SuspendFunction(StandardNames.f72266f, "SuspendFunction", false, null, true);
    }

    public FunctionTypeKind(FqName fqName, String str, boolean z, ClassId classId, boolean z2) {
        fqName.getClass();
        str.getClass();
        this.f72291a = fqName;
        this.f72292b = str;
    }

    public final Name a(int i2) {
        return Name.e(this.f72292b + i2);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f72291a);
        sb.append(JwtParser.SEPARATOR_CHAR);
        return fc.l(sb, this.f72292b, ResourceParser.ResourceInstruction);
    }
}
