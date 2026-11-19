package okio;

import com.networkbench.agent.impl.harvest.ConfigurationName;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import defpackage.ct0;
import defpackage.md;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001:\u0001\rB\t\b\u0016¢\u0006\u0004\b\u0002\u0010\u0003B1\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\b\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0004\b\u0002\u0010\f¨\u0006\u000e"}, d2 = {"Lokio/Segment;", "", "<init>", "()V", "", DbParams.KEY_DATA, "", "pos", ConfigurationName.CELLINFO_LIMIT, "", "shared", "owner", "([BIIZZ)V", "Companion", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Segment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f77446a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f77447b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f77448c;
    public boolean d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final boolean f77449e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Segment f77450f;
    public Segment g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lokio/Segment$Companion;", "", "", "SIZE", "I", "SHARE_MINIMUM", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    static {
        new Companion(null);
    }

    public Segment(byte[] bArr, int i2, int i3, boolean z, boolean z2) {
        bArr.getClass();
        this.f77446a = bArr;
        this.f77447b = i2;
        this.f77448c = i3;
        this.d = z;
        this.f77449e = z2;
    }

    public final Segment a() {
        Segment segment = this.f77450f;
        if (segment == this) {
            segment = null;
        }
        Segment segment2 = this.g;
        segment2.getClass();
        segment2.f77450f = this.f77450f;
        Segment segment3 = this.f77450f;
        segment3.getClass();
        segment3.g = this.g;
        this.f77450f = null;
        this.g = null;
        return segment;
    }

    public final void b(Segment segment) {
        segment.getClass();
        segment.g = this;
        segment.f77450f = this.f77450f;
        Segment segment2 = this.f77450f;
        segment2.getClass();
        segment2.g = segment;
        this.f77450f = segment;
    }

    public final Segment c() {
        this.d = true;
        return new Segment(this.f77446a, this.f77447b, this.f77448c, true, false);
    }

    public final void d(Segment segment, int i2) {
        segment.getClass();
        byte[] bArr = segment.f77446a;
        if (!segment.f77449e) {
            md.k("only owner can write");
            return;
        }
        int i3 = segment.f77448c;
        int i4 = i3 + i2;
        if (i4 > 8192) {
            if (segment.d) {
                ct0.c();
                return;
            }
            int i5 = segment.f77447b;
            if (i4 - i5 > 8192) {
                ct0.c();
                return;
            } else {
                ArraysKt.j(0, bArr, i5, bArr, i3);
                segment.f77448c -= segment.f77447b;
                segment.f77447b = 0;
            }
        }
        int i6 = segment.f77448c;
        int i7 = this.f77447b;
        ArraysKt.j(i6, this.f77446a, i7, bArr, i7 + i2);
        segment.f77448c += i2;
        this.f77447b += i2;
    }

    public Segment() {
        this.f77446a = new byte[8192];
        this.f77449e = true;
        this.d = false;
    }
}
