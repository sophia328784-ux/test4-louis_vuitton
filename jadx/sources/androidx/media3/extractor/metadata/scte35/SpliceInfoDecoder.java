package androidx.media3.extractor.metadata.scte35;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SpliceInfoDecoder extends SimpleMetadataDecoder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f16410a = new ParsableByteArray();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ParsableBitArray f16411b = new ParsableBitArray();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TimestampAdjuster f16412c;

    /* JADX WARN: Code duplicated, block: B:14:0x001a  */
    @Override // androidx.media3.extractor.metadata.SimpleMetadataDecoder
    public final Metadata b(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        Metadata.Entry spliceNullCommand;
        long j2;
        long j3;
        ParsableByteArray parsableByteArray = this.f16410a;
        ParsableBitArray parsableBitArray = this.f16411b;
        TimestampAdjuster timestampAdjuster = this.f16412c;
        if (timestampAdjuster != null) {
            long j4 = metadataInputBuffer.f16333k;
            synchronized (timestampAdjuster) {
                j3 = timestampAdjuster.f14240b;
            }
            if (j4 != j3) {
                TimestampAdjuster timestampAdjuster2 = new TimestampAdjuster(metadataInputBuffer.g);
                this.f16412c = timestampAdjuster2;
                timestampAdjuster2.a(metadataInputBuffer.g - metadataInputBuffer.f16333k);
            }
        } else {
            TimestampAdjuster timestampAdjuster3 = new TimestampAdjuster(metadataInputBuffer.g);
            this.f16412c = timestampAdjuster3;
            timestampAdjuster3.a(metadataInputBuffer.g - metadataInputBuffer.f16333k);
        }
        byte[] bArrArray = byteBuffer.array();
        int iLimit = byteBuffer.limit();
        parsableByteArray.L(iLimit, bArrArray);
        parsableBitArray.k(iLimit, bArrArray);
        parsableBitArray.o(39);
        long jG = (((long) parsableBitArray.g(1)) << 32) | ((long) parsableBitArray.g(32));
        parsableBitArray.o(20);
        int iG = parsableBitArray.g(12);
        int iG2 = parsableBitArray.g(8);
        parsableByteArray.O(14);
        if (iG2 == 0) {
            spliceNullCommand = new SpliceNullCommand();
        } else if (iG2 == 255) {
            long jC = parsableByteArray.C();
            int i2 = iG - 4;
            parsableByteArray.k(0, i2, new byte[i2]);
            spliceNullCommand = new PrivateCommand(jC, jG);
        } else if (iG2 == 4) {
            int iA = parsableByteArray.A();
            ArrayList arrayList = new ArrayList(iA);
            for (int i3 = 0; i3 < iA; i3++) {
                parsableByteArray.C();
                boolean z = (parsableByteArray.A() & 128) != 0;
                ArrayList arrayList2 = new ArrayList();
                if (!z) {
                    int iA2 = parsableByteArray.A();
                    boolean z2 = (iA2 & 64) != 0;
                    boolean z3 = (iA2 & 32) != 0;
                    if (z2) {
                        parsableByteArray.C();
                    }
                    if (!z2) {
                        int iA3 = parsableByteArray.A();
                        ArrayList arrayList3 = new ArrayList(iA3);
                        for (int i4 = 0; i4 < iA3; i4++) {
                            parsableByteArray.A();
                            parsableByteArray.C();
                            arrayList3.add(new SpliceScheduleCommand.ComponentSplice());
                        }
                        arrayList2 = arrayList3;
                    }
                    if (z3) {
                        parsableByteArray.A();
                        parsableByteArray.C();
                    }
                    parsableByteArray.H();
                    parsableByteArray.A();
                    parsableByteArray.A();
                }
                arrayList.add(new SpliceScheduleCommand.Event(arrayList2));
            }
            spliceNullCommand = new SpliceScheduleCommand(arrayList);
        } else if (iG2 == 5) {
            TimestampAdjuster timestampAdjuster4 = this.f16412c;
            parsableByteArray.C();
            boolean z4 = (parsableByteArray.A() & 128) != 0;
            List list = Collections.EMPTY_LIST;
            if (z4) {
                j2 = -9223372036854775807L;
            } else {
                int iA4 = parsableByteArray.A();
                boolean z5 = (iA4 & 64) != 0;
                boolean z6 = (iA4 & 32) != 0;
                boolean z7 = (iA4 & 16) != 0;
                long jD = (!z5 || z7) ? -9223372036854775807L : TimeSignalCommand.d(jG, parsableByteArray);
                if (!z5) {
                    int iA5 = parsableByteArray.A();
                    ArrayList arrayList4 = new ArrayList(iA5);
                    for (int i5 = 0; i5 < iA5; i5++) {
                        parsableByteArray.A();
                        timestampAdjuster4.b(!z7 ? TimeSignalCommand.d(jG, parsableByteArray) : -9223372036854775807L);
                        arrayList4.add(new SpliceInsertCommand.ComponentSplice());
                    }
                    list = arrayList4;
                }
                if (z6) {
                    parsableByteArray.A();
                    parsableByteArray.C();
                }
                parsableByteArray.H();
                parsableByteArray.A();
                parsableByteArray.A();
                j2 = jD;
            }
            spliceNullCommand = new SpliceInsertCommand(list, j2, timestampAdjuster4.b(j2));
        } else if (iG2 != 6) {
            spliceNullCommand = null;
        } else {
            TimestampAdjuster timestampAdjuster5 = this.f16412c;
            long jD2 = TimeSignalCommand.d(jG, parsableByteArray);
            spliceNullCommand = new TimeSignalCommand(jD2, timestampAdjuster5.b(jD2));
        }
        return spliceNullCommand == null ? new Metadata(new Metadata.Entry[0]) : new Metadata(spliceNullCommand);
    }
}
