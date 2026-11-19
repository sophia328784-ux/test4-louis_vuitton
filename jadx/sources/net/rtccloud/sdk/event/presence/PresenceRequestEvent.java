package net.rtccloud.sdk.event.presence;

import defpackage.d21;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import net.rtccloud.sdk.internal.util.Strings;

/* JADX INFO: loaded from: classes4.dex */
public final class PresenceRequestEvent {
    private final boolean isRoster;
    private final Map<String, Integer> values;

    public PresenceRequestEvent(Map<String, Integer> map, boolean z) {
        HashMap map2 = new HashMap();
        this.values = map2;
        map2.putAll(map);
        this.isRoster = z;
    }

    private String mapToString() {
        Set<Map.Entry<String, Integer>> setEntrySet = this.values.entrySet();
        StringBuilder sb = new StringBuilder(setEntrySet.size() * 16);
        sb.append("{");
        boolean z = true;
        for (Map.Entry<String, Integer> entry : setEntrySet) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append(Strings.ARROW_RIGHT);
            sb.append(entry.getValue());
        }
        sb.append("}");
        return sb.toString();
    }

    public final boolean contains(String str) {
        return this.values.containsKey(str);
    }

    public final int get(String str, int i2) {
        return this.values.containsKey(str) ? this.values.get(str).intValue() : i2;
    }

    public boolean isRoster() {
        return this.isRoster;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("PresenceRequestEvent{values=");
        sb.append(mapToString());
        sb.append(", isRoster=");
        return d21.q(sb, this.isRoster, '}');
    }

    public Map<String, Integer> values() {
        return this.values;
    }
}
