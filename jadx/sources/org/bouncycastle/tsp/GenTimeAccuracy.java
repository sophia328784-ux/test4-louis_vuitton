package org.bouncycastle.tsp;

import com.linkplay.medialib.ContentTree;
import com.sightcall.universal.media.offline.FileUtils;
import defpackage.pq0;
import org.bouncycastle.asn1.ASN1Integer;
import org.bouncycastle.asn1.tsp.Accuracy;

/* JADX INFO: loaded from: classes5.dex */
public class GenTimeAccuracy {
    private Accuracy accuracy;

    public GenTimeAccuracy(Accuracy accuracy) {
        this.accuracy = accuracy;
    }

    private String format(int i2) {
        String str;
        if (i2 < 10) {
            str = "00";
        } else {
            if (i2 >= 100) {
                return Integer.toString(i2);
            }
            str = ContentTree.ROOT_ID;
        }
        return pq0.k(i2, str);
    }

    private int getTimeComponent(ASN1Integer aSN1Integer) {
        if (aSN1Integer != null) {
            return aSN1Integer.intValueExact();
        }
        return 0;
    }

    public int getMicros() {
        return getTimeComponent(this.accuracy.getMicros());
    }

    public int getMillis() {
        return getTimeComponent(this.accuracy.getMillis());
    }

    public int getSeconds() {
        return getTimeComponent(this.accuracy.getSeconds());
    }

    public String toString() {
        return getSeconds() + FileUtils.HIDDEN_PREFIX + format(getMillis()) + format(getMicros());
    }
}
