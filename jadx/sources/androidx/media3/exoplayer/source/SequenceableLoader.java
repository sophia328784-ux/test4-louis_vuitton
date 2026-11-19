package androidx.media3.exoplayer.source;

import androidx.media3.exoplayer.LoadingInfo;

/* JADX INFO: loaded from: classes.dex */
public interface SequenceableLoader {

    public interface Callback<T extends SequenceableLoader> {
        void l(SequenceableLoader sequenceableLoader);
    }

    boolean a(LoadingInfo loadingInfo);

    long c();

    boolean m();

    long s();

    void v(long j2);
}
