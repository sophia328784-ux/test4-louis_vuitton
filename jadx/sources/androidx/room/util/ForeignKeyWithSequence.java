package androidx.room.util;

import com.batch.android.s.b;
import kotlin.Metadata;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Landroidx/room/util/ForeignKeyWithSequence;", "", "", b.a.f24015b, "sequence", "", "from", MvelScriptManager.VAR_TO, "<init>", "(IILjava/lang/String;Ljava/lang/String;)V", "room-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
final class ForeignKeyWithSequence implements Comparable<ForeignKeyWithSequence> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f19761b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f19762c;
    public final String d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f19763e;

    public ForeignKeyWithSequence(int i2, int i3, String str, String str2) {
        str.getClass();
        str2.getClass();
        this.f19761b = i2;
        this.f19762c = i3;
        this.d = str;
        this.f19763e = str2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(ForeignKeyWithSequence foreignKeyWithSequence) {
        ForeignKeyWithSequence foreignKeyWithSequence2 = foreignKeyWithSequence;
        foreignKeyWithSequence2.getClass();
        int i2 = this.f19761b - foreignKeyWithSequence2.f19761b;
        return i2 == 0 ? this.f19762c - foreignKeyWithSequence2.f19762c : i2;
    }
}
