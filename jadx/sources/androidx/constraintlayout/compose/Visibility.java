package androidx.constraintlayout.compose;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0007"}, d2 = {"Landroidx/constraintlayout/compose/Visibility;", "", "", "name", "<init>", "(Ljava/lang/String;)V", "Companion", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class Visibility {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f11279b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Visibility f11280c = new Visibility("visible");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f11281a;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/constraintlayout/compose/Visibility$Companion;", "", "constraintlayout-compose_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Visibility("invisible");
        new Visibility("gone");
    }

    public Visibility(String str) {
        this.f11281a = str;
    }
}
