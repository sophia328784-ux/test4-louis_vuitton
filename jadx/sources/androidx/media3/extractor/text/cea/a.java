package androidx.media3.extractor.text.cea;

import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return Integer.compare(((Cea708Decoder.Cea708CueInfo) obj2).f16720b, ((Cea708Decoder.Cea708CueInfo) obj).f16720b);
    }
}
