package androidx.media3.extractor;

import android.net.Uri;
import androidx.media3.common.FileTypes;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.extractor.amr.AmrExtractor;
import androidx.media3.extractor.avi.AviExtractor;
import androidx.media3.extractor.avif.AvifExtractor;
import androidx.media3.extractor.bmp.BmpExtractor;
import androidx.media3.extractor.flac.FlacExtractor;
import androidx.media3.extractor.flv.FlvExtractor;
import androidx.media3.extractor.heif.HeifExtractor;
import androidx.media3.extractor.jpeg.JpegExtractor;
import androidx.media3.extractor.mkv.MatroskaExtractor;
import androidx.media3.extractor.mp3.Mp3Extractor;
import androidx.media3.extractor.mp4.FragmentedMp4Extractor;
import androidx.media3.extractor.mp4.Mp4Extractor;
import androidx.media3.extractor.ogg.OggExtractor;
import androidx.media3.extractor.png.PngExtractor;
import androidx.media3.extractor.text.DefaultSubtitleParserFactory;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.ts.Ac3Extractor;
import androidx.media3.extractor.ts.Ac4Extractor;
import androidx.media3.extractor.ts.AdtsExtractor;
import androidx.media3.extractor.ts.DefaultTsPayloadReaderFactory;
import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.extractor.ts.TsExtractor;
import androidx.media3.extractor.wav.WavExtractor;
import androidx.media3.extractor.webp.WebpExtractor;
import com.google.common.collect.ImmutableList;
import defpackage.az;
import defpackage.os;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public final class DefaultExtractorsFactory implements ExtractorsFactory {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int[] f16126h = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final ExtensionLoader f16127i = new ExtensionLoader(new os(22));

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final ExtensionLoader f16128j = new ExtensionLoader(new os(23));

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ImmutableList f16129b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f16132f;
    public int g;
    public SubtitleParser.Factory d = new DefaultSubtitleParserFactory();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f16130c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f16131e = 3;

    public static final class ExtensionLoader {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final ConstructorSupplier f16133a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final AtomicBoolean f16134b = new AtomicBoolean(false);

        public interface ConstructorSupplier {
            Constructor a();
        }

        public ExtensionLoader(ConstructorSupplier constructorSupplier) {
            this.f16133a = constructorSupplier;
        }

        public final Extractor a(Object... objArr) {
            Constructor constructorA;
            synchronized (this.f16134b) {
                if (!this.f16134b.get()) {
                    try {
                        constructorA = this.f16133a.a();
                    } catch (ClassNotFoundException unused) {
                        this.f16134b.set(true);
                        constructorA = null;
                    } catch (Exception e2) {
                        throw new RuntimeException("Error instantiating extension", e2);
                    }
                }
                constructorA = null;
            }
            if (constructorA == null) {
                return null;
            }
            try {
                return (Extractor) constructorA.newInstance(objArr);
            } catch (Exception e3) {
                az.s("Unexpected error creating extractor", e3);
                return null;
            }
        }
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public final void a(SubtitleParser.Factory factory) {
        synchronized (this) {
            this.d = factory;
        }
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public final void b(int i2) {
        synchronized (this) {
            this.f16131e = i2;
        }
    }

    public final void c(int i2, ArrayList arrayList) {
        switch (i2) {
            case 0:
                arrayList.add(new Ac3Extractor());
                break;
            case 1:
                arrayList.add(new Ac4Extractor());
                break;
            case 2:
                arrayList.add(new AdtsExtractor(0));
                break;
            case 3:
                arrayList.add(new AmrExtractor(0));
                break;
            case 4:
                Extractor extractorA = f16127i.a(0);
                if (extractorA == null) {
                    arrayList.add(new FlacExtractor(0));
                } else {
                    arrayList.add(extractorA);
                }
                break;
            case 5:
                arrayList.add(new FlvExtractor());
                break;
            case 6:
                arrayList.add(new MatroskaExtractor(this.d, this.f16130c ? 0 : 2));
                break;
            case 7:
                arrayList.add(new Mp3Extractor(0));
                break;
            case 8:
                SubtitleParser.Factory factory = this.d;
                int i3 = this.f16131e;
                int i4 = (i3 & 1) != 0 ? 64 : 0;
                if ((i3 & 2) != 0) {
                    i4 |= 128;
                }
                arrayList.add(new FragmentedMp4Extractor(factory, (this.f16130c ? 0 : 32) | i4));
                SubtitleParser.Factory factory2 = this.d;
                int i5 = this.f16131e;
                int i6 = (i5 & 1) == 0 ? 0 : 32;
                if ((2 & i5) != 0) {
                    i6 |= 128;
                }
                arrayList.add(new Mp4Extractor(factory2, i6 | (this.f16130c ? 0 : 16)));
                break;
            case 9:
                arrayList.add(new OggExtractor());
                break;
            case 10:
                arrayList.add(new PsExtractor());
                break;
            case 11:
                if (this.f16129b == null) {
                    this.f16129b = ImmutableList.x();
                }
                arrayList.add(new TsExtractor(1, !this.f16130c ? 1 : 0, this.d, new TimestampAdjuster(0L), new DefaultTsPayloadReaderFactory(0, this.f16129b), 112800));
                break;
            case 12:
                arrayList.add(new WavExtractor());
                break;
            case 14:
                arrayList.add(new JpegExtractor(this.f16132f));
                break;
            case 15:
                Extractor extractorA2 = f16128j.a(new Object[0]);
                if (extractorA2 != null) {
                    arrayList.add(extractorA2);
                }
                break;
            case 16:
                arrayList.add(new AviExtractor(!this.f16130c ? 1 : 0, this.d));
                break;
            case 17:
                arrayList.add(new PngExtractor());
                break;
            case 18:
                arrayList.add(new WebpExtractor());
                break;
            case 19:
                arrayList.add(new BmpExtractor());
                break;
            case 20:
                arrayList.add(new HeifExtractor(this.g));
                break;
            case 21:
                arrayList.add(new AvifExtractor());
                break;
        }
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public final void e(boolean z) {
        synchronized (this) {
            this.f16130c = z;
        }
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public final synchronized Extractor[] f(Uri uri, Map map) {
        ArrayList arrayList;
        try {
            int[] iArr = f16126h;
            arrayList = new ArrayList(21);
            List list = (List) map.get("Content-Type");
            int iA = FileTypes.a((list == null || list.isEmpty()) ? null : (String) list.get(0));
            if (iA != -1) {
                c(iA, arrayList);
            }
            int iB = FileTypes.b(uri);
            if (iB != -1 && iB != iA) {
                c(iB, arrayList);
            }
            for (int i2 = 0; i2 < 21; i2++) {
                int i3 = iArr[i2];
                if (i3 != iA && i3 != iB) {
                    c(i3, arrayList);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (Extractor[]) arrayList.toArray(new Extractor[0]);
    }

    @Override // androidx.media3.extractor.ExtractorsFactory
    public final synchronized Extractor[] j() {
        return f(Uri.EMPTY, new HashMap());
    }
}
