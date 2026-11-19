package androidx.media3.session;

import android.os.Bundle;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableSet;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class SessionCommands {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SessionCommands f17542b = new SessionCommands(new Builder().f17545a);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f17543c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ImmutableSet f17544a;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final HashSet f17545a = new HashSet();

        public final void a(List list) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f17545a.add(new SessionCommand(((Integer) list.get(i2)).intValue()));
            }
        }
    }

    static {
        String str = Util.f14242a;
        f17543c = Integer.toString(0, 36);
    }

    public SessionCommands(HashSet hashSet) {
        this.f17544a = ImmutableSet.s(hashSet);
    }

    public static SessionCommands a(Bundle bundle) {
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(f17543c);
        if (parcelableArrayList == null) {
            Log.g("Missing commands. Creating an empty SessionCommands");
            return f17542b;
        }
        Builder builder = new Builder();
        int i2 = 0;
        while (true) {
            int size = parcelableArrayList.size();
            HashSet hashSet = builder.f17545a;
            if (i2 >= size) {
                return new SessionCommands(hashSet);
            }
            hashSet.add(SessionCommand.a((Bundle) parcelableArrayList.get(i2)));
            i2++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SessionCommands) {
            return this.f17544a.equals(((SessionCommands) obj).f17544a);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f17544a);
    }
}
