package com.google.crypto.tink.monitoring;

import com.google.crypto.tink.KeyStatus;
import com.google.errorprone.annotations.Immutable;
import defpackage.md;
import defpackage.tr;
import defpackage.v40;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class MonitoringKeysetInfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MonitoringAnnotations f34091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List f34092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Integer f34093c;

    public static final class Builder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ArrayList f34094a = new ArrayList();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public MonitoringAnnotations f34095b = MonitoringAnnotations.f34088b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Integer f34096c = null;

        public final MonitoringKeysetInfo a() throws GeneralSecurityException {
            if (this.f34094a == null) {
                md.k("cannot call build() twice");
                return null;
            }
            Integer num = this.f34096c;
            if (num != null) {
                int iIntValue = num.intValue();
                Iterator it = this.f34094a.iterator();
                while (it.hasNext()) {
                    if (((Entry) it.next()).f34098b == iIntValue) {
                    }
                }
                v40.j("primary key ID is not present in entries");
                return null;
            }
            MonitoringKeysetInfo monitoringKeysetInfo = new MonitoringKeysetInfo(this.f34095b, Collections.unmodifiableList(this.f34094a), this.f34096c);
            this.f34094a = null;
            return monitoringKeysetInfo;
        }
    }

    @Immutable
    public static final class Entry {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final KeyStatus f34097a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f34098b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f34099c;
        public final String d;

        public Entry(KeyStatus keyStatus, int i2, String str, String str2) {
            this.f34097a = keyStatus;
            this.f34098b = i2;
            this.f34099c = str;
            this.d = str2;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Entry)) {
                return false;
            }
            Entry entry = (Entry) obj;
            return this.f34097a == entry.f34097a && this.f34098b == entry.f34098b && this.f34099c.equals(entry.f34099c) && this.d.equals(entry.d);
        }

        public final int hashCode() {
            return Objects.hash(this.f34097a, Integer.valueOf(this.f34098b), this.f34099c, this.d);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("(status=");
            sb.append(this.f34097a);
            sb.append(", keyId=");
            sb.append(this.f34098b);
            sb.append(", keyType='");
            return tr.l(sb, this.f34099c, "', keyPrefix='", this.d, "')");
        }
    }

    public MonitoringKeysetInfo(MonitoringAnnotations monitoringAnnotations, List list, Integer num) {
        this.f34091a = monitoringAnnotations;
        this.f34092b = list;
        this.f34093c = num;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof MonitoringKeysetInfo)) {
            return false;
        }
        MonitoringKeysetInfo monitoringKeysetInfo = (MonitoringKeysetInfo) obj;
        return this.f34091a.equals(monitoringKeysetInfo.f34091a) && this.f34092b.equals(monitoringKeysetInfo.f34092b) && Objects.equals(this.f34093c, monitoringKeysetInfo.f34093c);
    }

    public final int hashCode() {
        return Objects.hash(this.f34091a, this.f34092b);
    }

    public final String toString() {
        return String.format("(annotations=%s, entries=%s, primaryKeyId=%s)", this.f34091a, this.f34092b, this.f34093c);
    }
}
