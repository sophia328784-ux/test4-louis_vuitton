package com.iceteck.silicompressorr.videocompression;

import android.media.MediaCodec;
import android.media.MediaFormat;
import com.coremedia.iso.AbstractBoxParser;
import com.coremedia.iso.IsoFile;
import com.coremedia.iso.boxes.Box;
import com.coremedia.iso.boxes.DataEntryUrlBox;
import com.coremedia.iso.boxes.DataInformationBox;
import com.coremedia.iso.boxes.DataReferenceBox;
import com.coremedia.iso.boxes.FileTypeBox;
import com.coremedia.iso.boxes.HandlerBox;
import com.coremedia.iso.boxes.MediaBox;
import com.coremedia.iso.boxes.MediaHeaderBox;
import com.coremedia.iso.boxes.MediaInformationBox;
import com.coremedia.iso.boxes.MovieBox;
import com.coremedia.iso.boxes.MovieHeaderBox;
import com.coremedia.iso.boxes.SampleDescriptionBox;
import com.coremedia.iso.boxes.SampleSizeBox;
import com.coremedia.iso.boxes.SampleTableBox;
import com.coremedia.iso.boxes.SampleToChunkBox;
import com.coremedia.iso.boxes.StaticChunkOffsetBox;
import com.coremedia.iso.boxes.SyncSampleBox;
import com.coremedia.iso.boxes.TimeToSampleBox;
import com.coremedia.iso.boxes.TrackBox;
import com.coremedia.iso.boxes.TrackHeaderBox;
import com.googlecode.mp4parser.BasicContainer;
import com.googlecode.mp4parser.DataSource;
import com.googlecode.mp4parser.util.DateHelper;
import com.googlecode.mp4parser.util.Matrix;
import defpackage.tr;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import org.aspectj.runtime.reflect.Factory;

/* JADX INFO: loaded from: classes2.dex */
public class MP4Builder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public InterleaveChunkMdat f35752a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Mp4Movie f35753b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public FileOutputStream f35754c = null;
    public FileChannel d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public long f35755e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f35756f = 0;
    public boolean g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final HashMap f35757h = new HashMap();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ByteBuffer f35758i = null;

    public class InterleaveChunkMdat implements Box {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f35759b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f35760c;

        @Override // com.coremedia.iso.boxes.Box
        public final void c(WritableByteChannel writableByteChannel) throws IOException {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            long size = getSize();
            long j2 = 8 + size;
            if (j2 < 4294967296L) {
                byteBufferAllocate.putInt((int) size);
            } else {
                byteBufferAllocate.putInt(1);
            }
            byteBufferAllocate.put(IsoFile.n("mdat"));
            if (j2 < 4294967296L) {
                byteBufferAllocate.put(new byte[8]);
            } else {
                byteBufferAllocate.putLong(size);
            }
            byteBufferAllocate.rewind();
            writableByteChannel.write(byteBufferAllocate);
        }

        @Override // com.coremedia.iso.boxes.Box
        public final void d(DataSource dataSource, ByteBuffer byteBuffer, long j2, AbstractBoxParser abstractBoxParser) {
        }

        @Override // com.coremedia.iso.boxes.Box
        public final void e(BasicContainer basicContainer) {
        }

        @Override // com.coremedia.iso.boxes.Box
        public final long getSize() {
            return this.f35759b + 16;
        }

        @Override // com.coremedia.iso.boxes.Box
        public final String getType() {
            return "mdat";
        }
    }

    public static long e(long j2, long j3) {
        return j3 == 0 ? j2 : e(j3, j2 % j3);
    }

    public static long f(Mp4Movie mp4Movie) {
        ArrayList arrayList = mp4Movie.f35765b;
        long jE = !arrayList.isEmpty() ? ((Track) arrayList.iterator().next()).f35791h : 0L;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            jE = e(((Track) it.next()).f35791h, jE);
        }
        return jE;
    }

    public final int a(MediaFormat mediaFormat, boolean z) {
        ArrayList arrayList = this.f35753b.f35765b;
        arrayList.add(new Track(arrayList.size(), mediaFormat, z));
        return arrayList.size() - 1;
    }

    public final void b(Mp4Movie mp4Movie) throws IOException {
        this.f35753b = mp4Movie;
        FileOutputStream fileOutputStream = new FileOutputStream(mp4Movie.f35766c);
        this.f35754c = fileOutputStream;
        this.d = fileOutputStream.getChannel();
        LinkedList linkedList = new LinkedList();
        linkedList.add("isom");
        linkedList.add("3gp4");
        FileTypeBox fileTypeBox = new FileTypeBox("isom", 0L, linkedList);
        fileTypeBox.c(this.d);
        long size = fileTypeBox.getSize() + this.f35755e;
        this.f35755e = size;
        this.f35756f += size;
        InterleaveChunkMdat interleaveChunkMdat = new InterleaveChunkMdat();
        interleaveChunkMdat.f35759b = 1073741824L;
        interleaveChunkMdat.f35760c = 0L;
        this.f35752a = interleaveChunkMdat;
        this.f35758i = ByteBuffer.allocateDirect(4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.googlecode.mp4parser.AbstractContainerBox] */
    /* JADX WARN: Type inference failed for: r19v2, types: [com.googlecode.mp4parser.BasicContainer] */
    /* JADX WARN: Type inference failed for: r19v3 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r4v7, types: [com.coremedia.iso.boxes.Box, com.coremedia.iso.boxes.MediaBox, com.googlecode.mp4parser.BasicContainer] */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r5v6, types: [com.coremedia.iso.boxes.Box, com.coremedia.iso.boxes.MediaInformationBox, com.googlecode.mp4parser.BasicContainer] */
    /* JADX WARN: Type inference failed for: r7v3, types: [com.coremedia.iso.boxes.Box, com.coremedia.iso.boxes.TrackBox, com.googlecode.mp4parser.BasicContainer] */
    /* JADX WARN: Type inference failed for: r8v22, types: [com.coremedia.iso.boxes.Box, com.coremedia.iso.boxes.DataInformationBox, com.googlecode.mp4parser.BasicContainer] */
    /* JADX WARN: Type inference failed for: r8v9, types: [com.coremedia.iso.boxes.Box, com.coremedia.iso.boxes.TrackHeaderBox, com.googlecode.mp4parser.AbstractBox, com.googlecode.mp4parser.AbstractFullBox, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v10 */
    public final void c() {
        HashMap map;
        long[] jArr;
        long j2;
        MP4Builder mP4Builder = this;
        long j3 = 0;
        if (mP4Builder.f35752a.f35759b != 0) {
            mP4Builder.d();
        }
        Iterator it = mP4Builder.f35753b.f35765b.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            map = mP4Builder.f35757h;
            if (!zHasNext) {
                break;
            }
            Track track = (Track) it.next();
            ArrayList arrayList = track.f35787b;
            int size = arrayList.size();
            long[] jArr2 = new long[size];
            for (int i2 = 0; i2 < size; i2++) {
                jArr2[i2] = ((Sample) arrayList.get(i2)).f35776b;
            }
            map.put(track, jArr2);
        }
        Mp4Movie mp4Movie = mP4Builder.f35753b;
        MovieBox movieBox = new MovieBox();
        MovieHeaderBox movieHeaderBox = new MovieHeaderBox();
        Date date = new Date();
        tr.B(Factory.c(MovieHeaderBox.L, movieHeaderBox, movieHeaderBox, date));
        movieHeaderBox.o = date;
        long j4 = 4294967296L;
        if (DateHelper.a(date) >= 4294967296L) {
            movieHeaderBox.n();
        }
        Date date2 = new Date();
        tr.B(Factory.c(MovieHeaderBox.M, movieHeaderBox, movieHeaderBox, date2));
        movieHeaderBox.p = date2;
        if (DateHelper.a(date2) >= 4294967296L) {
            movieHeaderBox.n();
        }
        Matrix matrix = Matrix.f35737j;
        tr.B(Factory.c(MovieHeaderBox.R, movieHeaderBox, movieHeaderBox, matrix));
        movieHeaderBox.u = matrix;
        long jF = f(mp4Movie);
        ArrayList<Track> arrayList2 = mp4Movie.f35765b;
        for (Track track2 : arrayList2) {
            long j5 = j4;
            MovieHeaderBox movieHeaderBox2 = movieHeaderBox;
            long j6 = (track2.f35788c * jF) / ((long) track2.f35791h);
            if (j6 > j3) {
                j3 = j6;
            }
            j4 = j5;
            movieHeaderBox = movieHeaderBox2;
        }
        MovieHeaderBox movieHeaderBox3 = movieHeaderBox;
        long j7 = j4;
        tr.B(Factory.c(MovieHeaderBox.O, movieHeaderBox3, movieHeaderBox3, new Long(j3)));
        movieHeaderBox3.r = j3;
        if (j3 >= j7) {
            movieHeaderBox3.n();
        }
        tr.B(Factory.c(MovieHeaderBox.N, movieHeaderBox3, movieHeaderBox3, new Long(jF)));
        movieHeaderBox3.q = jF;
        ?? r4 = 1;
        long size2 = arrayList2.size() + 1;
        tr.B(Factory.c(MovieHeaderBox.S, movieHeaderBox3, movieHeaderBox3, new Long(size2)));
        movieHeaderBox3.v = size2;
        movieBox.g(movieHeaderBox3);
        Iterator it2 = arrayList2.iterator();
        ?? r2 = movieBox;
        while (it2.hasNext()) {
            Track track3 = (Track) it2.next();
            ?? trackBox = new TrackBox();
            ?? trackHeaderBox = new TrackHeaderBox();
            tr.B(Factory.c(TrackHeaderBox.Z, trackHeaderBox, trackHeaderBox, new Boolean((boolean) r4)));
            if (!trackHeaderBox.f35685c) {
                trackHeaderBox.i();
            }
            trackHeaderBox.m((trackHeaderBox.l | r4) == true ? 1 : 0);
            tr.B(Factory.c(TrackHeaderBox.h0, trackHeaderBox, trackHeaderBox, new Boolean((boolean) r4)));
            if (!trackHeaderBox.f35685c) {
                trackHeaderBox.i();
            }
            trackHeaderBox.m(trackHeaderBox.l | 2);
            tr.B(Factory.c(TrackHeaderBox.t0, trackHeaderBox, trackHeaderBox, new Boolean((boolean) r4)));
            if (!trackHeaderBox.f35685c) {
                trackHeaderBox.i();
            }
            trackHeaderBox.m(trackHeaderBox.l | 4);
            track3.getClass();
            int i3 = track3.f35791h;
            Matrix matrix2 = mp4Movie.f35764a;
            tr.B(Factory.c(TrackHeaderBox.R, trackHeaderBox, trackHeaderBox, matrix2));
            trackHeaderBox.v = matrix2;
            tr.B(Factory.c(TrackHeaderBox.P, trackHeaderBox, trackHeaderBox, new Integer(0)));
            trackHeaderBox.t = 0;
            Date date3 = track3.f35792i;
            tr.B(Factory.c(TrackHeaderBox.K, trackHeaderBox, trackHeaderBox, date3));
            trackHeaderBox.o = date3;
            if (DateHelper.a(date3) >= j7) {
                trackHeaderBox.n();
            }
            long j8 = i3;
            long jF2 = (f(mp4Movie) * track3.f35788c) / j8;
            long j9 = j7;
            tr.B(Factory.c(TrackHeaderBox.N, trackHeaderBox, trackHeaderBox, new Long(jF2)));
            trackHeaderBox.r = jF2;
            if (jF2 >= j9) {
                trackHeaderBox.m(r4);
            }
            double d = track3.f35793j;
            tr.B(Factory.c(TrackHeaderBox.T, trackHeaderBox, trackHeaderBox, new Double(d)));
            trackHeaderBox.x = d;
            double d2 = track3.f35794k;
            tr.B(Factory.c(TrackHeaderBox.S, trackHeaderBox, trackHeaderBox, new Double(d2)));
            trackHeaderBox.w = d2;
            tr.B(Factory.c(TrackHeaderBox.O, trackHeaderBox, trackHeaderBox, new Integer(0)));
            trackHeaderBox.s = 0;
            Date date4 = new Date();
            tr.B(Factory.c(TrackHeaderBox.L, trackHeaderBox, trackHeaderBox, date4));
            trackHeaderBox.p = date4;
            if (DateHelper.a(date4) >= j9) {
                trackHeaderBox.n();
            }
            HashMap map2 = map;
            long j10 = track3.f35786a + 1;
            long j11 = 1;
            tr.B(Factory.c(TrackHeaderBox.M, trackHeaderBox, trackHeaderBox, new Long(j10)));
            trackHeaderBox.q = j10;
            float f2 = track3.l;
            tr.B(Factory.c(TrackHeaderBox.Q, trackHeaderBox, trackHeaderBox, new Float(f2)));
            trackHeaderBox.u = f2;
            trackBox.g(trackHeaderBox);
            ?? mediaBox = new MediaBox();
            trackBox.g(mediaBox);
            MediaHeaderBox mediaHeaderBox = new MediaHeaderBox();
            tr.B(Factory.c(MediaHeaderBox.y, mediaHeaderBox, mediaHeaderBox, date3));
            mediaHeaderBox.o = date3;
            long j12 = track3.f35788c;
            tr.B(Factory.c(MediaHeaderBox.B, mediaHeaderBox, mediaHeaderBox, new Long(j12)));
            mediaHeaderBox.r = j12;
            tr.B(Factory.c(MediaHeaderBox.A, mediaHeaderBox, mediaHeaderBox, new Long(j8)));
            mediaHeaderBox.q = j8;
            tr.B(Factory.c(MediaHeaderBox.C, mediaHeaderBox, mediaHeaderBox, "eng"));
            mediaHeaderBox.s = "eng";
            mediaBox.g(mediaHeaderBox);
            HandlerBox handlerBox = new HandlerBox();
            tr.B(Factory.c(HandlerBox.x, handlerBox, handlerBox, "VideoHandle"));
            handlerBox.p = "VideoHandle";
            String str = track3.d;
            tr.B(Factory.c(HandlerBox.y, handlerBox, handlerBox, str));
            handlerBox.o = str;
            mediaBox.g(handlerBox);
            ?? mediaInformationBox = new MediaInformationBox();
            mediaInformationBox.g(track3.f35789e);
            ?? dataInformationBox = new DataInformationBox();
            DataReferenceBox dataReferenceBox = new DataReferenceBox();
            dataInformationBox.g(dataReferenceBox);
            DataEntryUrlBox dataEntryUrlBox = new DataEntryUrlBox();
            dataEntryUrlBox.m(1);
            dataReferenceBox.g(dataEntryUrlBox);
            mediaInformationBox.g(dataInformationBox);
            SampleTableBox sampleTableBox = new SampleTableBox();
            SampleDescriptionBox sampleDescriptionBox = track3.f35790f;
            ArrayList<Sample> arrayList3 = track3.f35787b;
            sampleTableBox.g(sampleDescriptionBox);
            ArrayList arrayList4 = new ArrayList();
            Iterator it3 = track3.m.iterator();
            TimeToSampleBox.Entry entry = null;
            while (it3.hasNext()) {
                long jLongValue = ((Long) it3.next()).longValue();
                Mp4Movie mp4Movie2 = mp4Movie;
                if (entry == null || entry.f25326b != jLongValue) {
                    j2 = j11;
                    entry = new TimeToSampleBox.Entry(j2, jLongValue);
                    arrayList4.add(entry);
                } else {
                    entry.f25325a += j11;
                    j2 = j11;
                }
                j11 = j2;
                mp4Movie = mp4Movie2;
            }
            Mp4Movie mp4Movie3 = mp4Movie;
            TimeToSampleBox timeToSampleBox = new TimeToSampleBox();
            tr.B(Factory.c(TimeToSampleBox.q, timeToSampleBox, timeToSampleBox, arrayList4));
            timeToSampleBox.o = arrayList4;
            sampleTableBox.g(timeToSampleBox);
            LinkedList linkedList = track3.g;
            if (linkedList == null || linkedList.isEmpty()) {
                jArr = null;
            } else {
                jArr = new long[linkedList.size()];
                int i4 = 0;
                while (i4 < linkedList.size()) {
                    jArr[i4] = ((Integer) linkedList.get(i4)).intValue();
                    i4++;
                    linkedList = linkedList;
                }
            }
            if (jArr != null && jArr.length > 0) {
                SyncSampleBox syncSampleBox = new SyncSampleBox();
                tr.B(Factory.c(SyncSampleBox.r, syncSampleBox, syncSampleBox, jArr));
                syncSampleBox.o = jArr;
                sampleTableBox.g(syncSampleBox);
            }
            SampleToChunkBox sampleToChunkBox = new SampleToChunkBox();
            LinkedList linkedList2 = new LinkedList();
            tr.B(Factory.c(SampleToChunkBox.q, sampleToChunkBox, sampleToChunkBox, linkedList2));
            sampleToChunkBox.o = linkedList2;
            int size3 = arrayList3.size();
            int i5 = -1;
            int i6 = 0;
            int i7 = 0;
            int i8 = 1;
            ?? r3 = r2;
            while (i6 < size3) {
                Sample sample = (Sample) arrayList3.get(i6);
                int i9 = size3;
                ?? r19 = r3;
                long j13 = sample.f35775a + sample.f35776b;
                i7++;
                if (i6 == i9 - 1 || j13 != ((Sample) arrayList3.get(i6 + 1)).f35775a) {
                    if (i5 != i7) {
                        tr.B(Factory.b(SampleToChunkBox.p, sampleToChunkBox, sampleToChunkBox));
                        sampleToChunkBox.o.add(new SampleToChunkBox.Entry(i8, i7, 1L));
                        i5 = i7;
                    }
                    i8++;
                    i7 = 0;
                } else {
                    it2 = it2;
                }
                i6++;
                it2 = it2;
                r3 = r19;
                size3 = i9;
            }
            ?? r110 = r3;
            Iterator it4 = it2;
            sampleTableBox.g(sampleToChunkBox);
            SampleSizeBox sampleSizeBox = new SampleSizeBox();
            long[] jArr3 = (long[]) map2.get(track3);
            tr.B(Factory.c(SampleSizeBox.w, sampleSizeBox, sampleSizeBox, jArr3));
            sampleSizeBox.p = jArr3;
            sampleTableBox.g(sampleSizeBox);
            ArrayList arrayList5 = new ArrayList();
            long j14 = -1;
            for (Sample sample2 : arrayList3) {
                long j15 = sample2.f35775a;
                if (j14 != -1 && j14 != j15) {
                    j14 = -1;
                }
                if (j14 == -1) {
                    arrayList5.add(Long.valueOf(j15));
                }
                j14 = sample2.f35776b + j15;
            }
            long[] jArr4 = new long[arrayList5.size()];
            for (int i10 = 0; i10 < arrayList5.size(); i10++) {
                jArr4[i10] = ((Long) arrayList5.get(i10)).longValue();
            }
            StaticChunkOffsetBox staticChunkOffsetBox = new StaticChunkOffsetBox();
            tr.B(Factory.c(StaticChunkOffsetBox.r, staticChunkOffsetBox, staticChunkOffsetBox, jArr4));
            staticChunkOffsetBox.p = jArr4;
            sampleTableBox.g(staticChunkOffsetBox);
            mediaInformationBox.g(sampleTableBox);
            mediaBox.g(mediaInformationBox);
            r110.g(trackBox);
            r2 = r110;
            map = map2;
            it2 = it4;
            mp4Movie = mp4Movie3;
            j7 = j9;
            r4 = 1;
            mP4Builder = this;
        }
        MP4Builder mP4Builder2 = mP4Builder;
        r2.c(mP4Builder2.d);
        mP4Builder2.f35754c.flush();
        mP4Builder2.d.close();
        mP4Builder2.f35754c.close();
    }

    public final void d() throws IOException {
        long jPosition = this.d.position();
        this.d.position(this.f35752a.f35760c);
        this.f35752a.c(this.d);
        this.d.position(jPosition);
        InterleaveChunkMdat interleaveChunkMdat = this.f35752a;
        interleaveChunkMdat.f35760c = 0L;
        interleaveChunkMdat.f35759b = 0L;
        this.f35754c.flush();
    }

    public final boolean g(int i2, ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo, boolean z) throws IOException {
        boolean z2;
        if (this.g) {
            InterleaveChunkMdat interleaveChunkMdat = this.f35752a;
            interleaveChunkMdat.f35759b = 0L;
            interleaveChunkMdat.c(this.d);
            InterleaveChunkMdat interleaveChunkMdat2 = this.f35752a;
            long j2 = this.f35755e;
            interleaveChunkMdat2.f35760c = j2;
            this.f35755e = j2 + 16;
            this.f35756f += 16;
            this.g = false;
        }
        InterleaveChunkMdat interleaveChunkMdat3 = this.f35752a;
        long j3 = interleaveChunkMdat3.f35759b;
        long j4 = bufferInfo.size;
        interleaveChunkMdat3.f35759b = j3 + j4;
        long j5 = this.f35756f + j4;
        this.f35756f = j5;
        if (j5 >= 32768) {
            d();
            this.g = true;
            this.f35756f -= 32768;
            z2 = true;
        } else {
            z2 = false;
        }
        Mp4Movie mp4Movie = this.f35753b;
        long j6 = this.f35755e;
        ArrayList arrayList = mp4Movie.f35765b;
        if (i2 >= 0 && i2 < arrayList.size()) {
            Track track = (Track) arrayList.get(i2);
            ArrayList arrayList2 = track.f35787b;
            boolean z3 = (bufferInfo.flags & 1) != 0;
            arrayList2.add(new Sample(j6, bufferInfo.size));
            LinkedList linkedList = track.g;
            if (linkedList != null && z3) {
                linkedList.add(Integer.valueOf(arrayList2.size()));
            }
            long j7 = bufferInfo.presentationTimeUs;
            long j8 = j7 - track.n;
            track.n = j7;
            long j9 = ((j8 * ((long) track.f35791h)) + 500000) / 1000000;
            if (!track.o) {
                ArrayList arrayList3 = track.m;
                arrayList3.add(arrayList3.size() - 1, Long.valueOf(j9));
                track.f35788c += j9;
            }
            track.o = false;
        }
        byteBuffer.position(bufferInfo.offset + (z ? 0 : 4));
        byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
        if (!z) {
            this.f35758i.position(0);
            this.f35758i.putInt(bufferInfo.size - 4);
            this.f35758i.position(0);
            this.d.write(this.f35758i);
        }
        this.d.write(byteBuffer);
        this.f35755e += (long) bufferInfo.size;
        if (z2) {
            this.f35754c.flush();
        }
        return z2;
    }
}
