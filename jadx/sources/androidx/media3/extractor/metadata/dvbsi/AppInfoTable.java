package androidx.media3.extractor.metadata.dvbsi;

import androidx.media3.common.Metadata;
import defpackage.n00;

/* JADX INFO: loaded from: classes.dex */
public final class AppInfoTable implements Metadata.Entry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16335a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f16336b;

    public AppInfoTable(int i2, String str) {
        this.f16335a = i2;
        this.f16336b = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Ait(controlCode=");
        sb.append(this.f16335a);
        sb.append(",url=");
        return n00.r(this.f16336b, ")", sb);
    }
}
