package androidx.media3.extractor.metadata.emsg;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class EventMessageDecoder extends SimpleMetadataDecoder {
    public static EventMessage c(ParsableByteArray parsableByteArray) {
        String strV = parsableByteArray.v();
        strV.getClass();
        String strV2 = parsableByteArray.v();
        strV2.getClass();
        return new EventMessage(strV, strV2, parsableByteArray.u(), parsableByteArray.u(), Arrays.copyOfRange(parsableByteArray.f14194a, parsableByteArray.f14195b, parsableByteArray.f14196c));
    }

    @Override // androidx.media3.extractor.metadata.SimpleMetadataDecoder
    public final Metadata b(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        return new Metadata(c(new ParsableByteArray(byteBuffer.array(), byteBuffer.limit())));
    }
}
