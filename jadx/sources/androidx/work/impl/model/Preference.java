package androidx.work.impl.model;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0019\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\b¢\u0006\u0004\b\u0006\u0010\t¨\u0006\n"}, d2 = {"Landroidx/work/impl/model/Preference;", "", "", ConfigurationName.KEY, "", "value", "<init>", "(Ljava/lang/String;Ljava/lang/Long;)V", "", "(Ljava/lang/String;Z)V", "work-runtime_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final /* data */ class Preference {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f20487a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Long f20488b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Preference(String str, boolean z) {
        this(str, Long.valueOf(z ? 1L : 0L));
        str.getClass();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Preference)) {
            return false;
        }
        Preference preference = (Preference) obj;
        return Intrinsics.c(this.f20487a, preference.f20487a) && Intrinsics.c(this.f20488b, preference.f20488b);
    }

    public final int hashCode() {
        int iHashCode = this.f20487a.hashCode() * 31;
        Long l = this.f20488b;
        return iHashCode + (l == null ? 0 : l.hashCode());
    }

    public final String toString() {
        return "Preference(key=" + this.f20487a + ", value=" + this.f20488b + ')';
    }

    public Preference(String str, Long l) {
        str.getClass();
        this.f20487a = str;
        this.f20488b = l;
    }
}
