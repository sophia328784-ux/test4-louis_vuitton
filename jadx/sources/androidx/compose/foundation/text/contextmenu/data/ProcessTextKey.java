package androidx.compose.foundation.text.contextmenu.data;

import com.batch.android.s.b;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Landroidx/compose/foundation/text/contextmenu/data/ProcessTextKey;", "", "", b.a.f24015b, "<init>", "(I)V", "foundation"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ProcessTextKey {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6064a;

    public ProcessTextKey(int i2) {
        this.f6064a = i2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ProcessTextKey) {
            return this.f6064a == ((ProcessTextKey) obj).f6064a;
        }
        return false;
    }

    /* JADX INFO: renamed from: hashCode, reason: from getter */
    public final int getF6064a() {
        return this.f6064a;
    }
}
