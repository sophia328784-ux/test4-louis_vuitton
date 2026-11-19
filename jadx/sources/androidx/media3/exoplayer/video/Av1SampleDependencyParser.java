package androidx.media3.exoplayer.video;

import androidx.media3.container.ObuParser;
import java.nio.ByteBuffer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public final class Av1SampleDependencyParser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ByteBuffer f15868a = ByteBuffer.allocateDirect(500);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ObuParser.SequenceHeader f15869b;

    public final void a(ArrayList arrayList) {
        ObuParser.SequenceHeader sequenceHeader;
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            if (((ObuParser.Obu) arrayList.get(i2)).f14338a == 1) {
                try {
                    sequenceHeader = new ObuParser.SequenceHeader((ObuParser.Obu) arrayList.get(i2));
                } catch (ObuParser.NotYetImplementedException unused) {
                    sequenceHeader = null;
                }
                this.f15869b = sequenceHeader;
            }
        }
    }
}
